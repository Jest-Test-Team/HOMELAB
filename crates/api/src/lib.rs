//! Axum HTTP API: health probes, version, and a small job API backed by the
//! PostgreSQL queue in `homelab_common::jobs`.

use std::{sync::Arc, time::Duration};

use axum::{
    Json, Router,
    extract::{Path, State},
    http::StatusCode,
    response::{IntoResponse, Response},
    routing::get,
};
use homelab_common::{
    BuildInfo,
    jobs::{self, JobKind},
    redis_handle::{JOB_WAKEUP_KEY, RedisHandle},
};
use serde::{Deserialize, Serialize};
use serde_json::{Value, json};
use sqlx::PgPool;
use uuid::Uuid;

pub const BUILD: BuildInfo = BuildInfo::new("api", env!("CARGO_PKG_VERSION"));
const MAX_BODY_BYTES: usize = 64 * 1024;
const PROBE_TIMEOUT: Duration = Duration::from_secs(2);

#[derive(Clone)]
pub struct AppState {
    pub pool: PgPool,
    pub redis: Arc<RedisHandle>,
}

pub fn router(state: AppState) -> Router {
    let routes = Router::new()
        .route("/health/live", get(live))
        .route("/health/ready", get(ready))
        .route("/api/v1/version", get(version))
        .route("/api/v1/jobs", axum::routing::post(create_job))
        .route("/api/v1/jobs/{id}", get(get_job))
        .with_state(state);
    homelab_common::http::with_standard_layers(routes, &BUILD, MAX_BODY_BYTES)
}

async fn live() -> &'static str {
    "ok"
}

#[derive(Serialize)]
struct Readiness {
    postgres: &'static str,
    redis: &'static str,
}

/// Ready only when both PostgreSQL and Redis answer within the probe timeout.
async fn ready(State(state): State<AppState>) -> Response {
    let pg = tokio::time::timeout(PROBE_TIMEOUT, sqlx::query("SELECT 1").execute(&state.pool));
    let rd = tokio::time::timeout(PROBE_TIMEOUT, state.redis.ping());
    let (pg, rd) = tokio::join!(pg, rd);
    let pg_ok = matches!(pg, Ok(Ok(_)));
    let rd_ok = matches!(rd, Ok(Ok(())));
    if !pg_ok {
        tracing::warn!("readiness: postgres unavailable");
    }
    if !rd_ok {
        tracing::warn!("readiness: redis unavailable");
    }
    let body = Readiness {
        postgres: if pg_ok { "ok" } else { "unavailable" },
        redis: if rd_ok { "ok" } else { "unavailable" },
    };
    let code = if pg_ok && rd_ok {
        StatusCode::OK
    } else {
        StatusCode::SERVICE_UNAVAILABLE
    };
    (code, Json(body)).into_response()
}

async fn version() -> Json<BuildInfo> {
    Json(BUILD)
}

#[derive(Debug, Deserialize)]
pub struct CreateJob {
    pub kind: String,
    #[serde(default)]
    pub payload: Value,
    pub idempotency_key: Option<String>,
}

pub enum ApiError {
    BadRequest(String),
    NotFound,
    Internal,
}

impl IntoResponse for ApiError {
    fn into_response(self) -> Response {
        let (code, msg) = match self {
            Self::BadRequest(m) => (StatusCode::BAD_REQUEST, m),
            Self::NotFound => (StatusCode::NOT_FOUND, "not found".to_owned()),
            Self::Internal => (
                StatusCode::INTERNAL_SERVER_ERROR,
                "internal error".to_owned(),
            ),
        };
        (code, Json(json!({ "error": msg }))).into_response()
    }
}

impl From<sqlx::Error> for ApiError {
    fn from(err: sqlx::Error) -> Self {
        // Details go to the log only; clients get a generic message.
        tracing::error!(error = %err, "database error");
        Self::Internal
    }
}

/// `201` for a new job, `200` when the idempotency key matched an existing one.
async fn create_job(
    State(state): State<AppState>,
    Json(req): Json<CreateJob>,
) -> Result<Response, ApiError> {
    let kind = JobKind::parse(&req.kind)
        .ok_or_else(|| ApiError::BadRequest(format!("unknown job kind: {}", req.kind)))?;
    let payload = if req.payload.is_null() {
        json!({})
    } else {
        req.payload
    };
    jobs::validate(kind, &payload, req.idempotency_key.as_deref())
        .map_err(|e| ApiError::BadRequest(e.to_string()))?;

    let (job, created) =
        jobs::enqueue(&state.pool, kind, &payload, req.idempotency_key.as_deref()).await?;

    if created {
        // Best effort: the worker also polls, so a lost wake-up only adds latency.
        if let Err(err) = wake_worker(&state.redis, job.id).await {
            tracing::warn!(error = %err, job_id = %job.id, "could not signal worker");
        }
        tracing::info!(job_id = %job.id, kind = kind.as_str(), "job enqueued");
    }
    let code = if created {
        StatusCode::CREATED
    } else {
        StatusCode::OK
    };
    Ok((code, Json(job)).into_response())
}

async fn wake_worker(redis: &RedisHandle, id: Uuid) -> redis::RedisResult<()> {
    let mut conn = redis.conn().await?;
    redis::cmd("LPUSH")
        .arg(JOB_WAKEUP_KEY)
        .arg(id.to_string())
        .query_async::<i64>(&mut conn)
        .await?;
    // Keep the hint list bounded; stale hints are harmless.
    redis::cmd("LTRIM")
        .arg(JOB_WAKEUP_KEY)
        .arg(0)
        .arg(999)
        .query_async::<()>(&mut conn)
        .await
}

async fn get_job(
    State(state): State<AppState>,
    Path(id): Path<Uuid>,
) -> Result<Json<jobs::Job>, ApiError> {
    jobs::get(&state.pool, id)
        .await?
        .map(Json)
        .ok_or(ApiError::NotFound)
}
