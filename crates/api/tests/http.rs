//! Router tests. Infrastructure-free tests always run; the end-to-end job
//! test needs TEST_DATABASE_URL and TEST_REDIS_URL (CI service containers).

#[path = "../../common/tests/support/mod.rs"]
mod support;

use std::{sync::Arc, time::Duration};

use axum::{
    Router,
    body::Body,
    http::{Request, StatusCode, header},
};
use homelab_api::{AppState, BUILD, router};
use homelab_common::redis_handle::RedisHandle;
use http_body_util::BodyExt;
use serde_json::{Value, json};
use sqlx::postgres::PgPoolOptions;
use tower::ServiceExt;

/// Points at closed ports so dependency checks fail fast.
fn offline_app() -> Router {
    let pool = PgPoolOptions::new()
        .acquire_timeout(Duration::from_millis(300))
        .connect_lazy("postgres://u:p@127.0.0.1:1/db")
        .unwrap();
    let redis =
        Arc::new(RedisHandle::new("redis://127.0.0.1:1/0", Duration::from_millis(300)).unwrap());
    router(AppState { pool, redis })
}

async fn send(app: &Router, req: Request<Body>) -> (StatusCode, Option<String>, Value) {
    let resp = app.clone().oneshot(req).await.unwrap();
    let status = resp.status();
    let rid = resp
        .headers()
        .get("x-request-id")
        .map(|v| v.to_str().unwrap().to_owned());
    let bytes = resp.into_body().collect().await.unwrap().to_bytes();
    let body = serde_json::from_slice(&bytes)
        .unwrap_or(Value::String(String::from_utf8_lossy(&bytes).into()));
    (status, rid, body)
}

fn get(uri: &str) -> Request<Body> {
    Request::get(uri).body(Body::empty()).unwrap()
}

fn post_json(uri: &str, body: &Value) -> Request<Body> {
    Request::post(uri)
        .header(header::CONTENT_TYPE, "application/json")
        .body(Body::from(body.to_string()))
        .unwrap()
}

#[tokio::test]
async fn live_is_ok_and_sets_request_id() {
    let (status, rid, body) = send(&offline_app(), get("/health/live")).await;
    assert_eq!(status, StatusCode::OK);
    assert_eq!(body, Value::String("ok".into()));
    assert!(
        rid.is_some_and(|r| r.len() == 36),
        "generated UUID request id"
    );
}

#[tokio::test]
async fn request_id_is_propagated() {
    let req = Request::get("/health/live")
        .header("x-request-id", "abc-123")
        .body(Body::empty())
        .unwrap();
    let (_, rid, _) = send(&offline_app(), req).await;
    assert_eq!(rid.as_deref(), Some("abc-123"));
}

#[tokio::test]
async fn version_reports_build() {
    let (status, _, body) = send(&offline_app(), get("/api/v1/version")).await;
    assert_eq!(status, StatusCode::OK);
    assert_eq!(body["service"], "api");
    assert_eq!(body["git_sha"], BUILD.git_sha);
}

#[tokio::test]
async fn ready_is_503_without_dependencies() {
    let (status, _, body) = send(&offline_app(), get("/health/ready")).await;
    assert_eq!(status, StatusCode::SERVICE_UNAVAILABLE);
    assert_eq!(
        body,
        json!({"postgres": "unavailable", "redis": "unavailable"})
    );
}

#[tokio::test]
async fn rejects_unknown_kind_and_bad_payload() {
    let app = offline_app();
    let (status, _, body) = send(&app, post_json("/api/v1/jobs", &json!({"kind": "shell"}))).await;
    assert_eq!(status, StatusCode::BAD_REQUEST);
    assert!(body["error"].as_str().unwrap().contains("unknown job kind"));

    let (status, _, _) = send(
        &app,
        post_json(
            "/api/v1/jobs",
            &json!({"kind": "sleep", "payload": {"ms": 999_999}}),
        ),
    )
    .await;
    assert_eq!(status, StatusCode::BAD_REQUEST);
}

#[tokio::test]
async fn rejects_oversized_body() {
    let big = json!({"kind": "echo", "payload": {"x": "a".repeat(70 * 1024)}});
    let (status, _, _) = send(&offline_app(), post_json("/api/v1/jobs", &big)).await;
    assert_eq!(status, StatusCode::PAYLOAD_TOO_LARGE);
}

#[tokio::test]
async fn job_lifecycle_with_real_dependencies() {
    let Some(pool) = support::test_pool().await else {
        return;
    };
    let Ok(redis_url) = std::env::var("TEST_REDIS_URL") else {
        eprintln!("TEST_REDIS_URL not set; skipping");
        return;
    };
    let redis = Arc::new(RedisHandle::new(&redis_url, Duration::from_secs(2)).unwrap());
    let app = router(AppState { pool, redis });

    let (status, _, _) = send(&app, get("/health/ready")).await;
    assert_eq!(status, StatusCode::OK);

    let key = format!("it-{}", uuid::Uuid::new_v4());
    let req = json!({"kind": "echo", "payload": {"hello": "world"}, "idempotency_key": key});
    let (s1, _, first) = send(&app, post_json("/api/v1/jobs", &req)).await;
    let (s2, _, second) = send(&app, post_json("/api/v1/jobs", &req)).await;
    assert_eq!(s1, StatusCode::CREATED);
    assert_eq!(s2, StatusCode::OK);
    assert_eq!(first["id"], second["id"]);
    assert_eq!(first["status"], "queued");

    let id = first["id"].as_str().unwrap();
    let (status, _, fetched) = send(&app, get(&format!("/api/v1/jobs/{id}"))).await;
    assert_eq!(status, StatusCode::OK);
    assert_eq!(fetched["payload"], json!({"hello": "world"}));

    let (status, _, _) = send(&app, get(&format!("/api/v1/jobs/{}", uuid::Uuid::new_v4()))).await;
    assert_eq!(status, StatusCode::NOT_FOUND);
}
