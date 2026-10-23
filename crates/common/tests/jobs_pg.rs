//! Queue semantics against a real PostgreSQL (CI service container).
//! Skipped unless TEST_DATABASE_URL is set.

mod support;

use std::time::Duration;

use homelab_common::jobs::{self, JobKind};
use serde_json::json;

#[tokio::test]
async fn idempotency_key_dedupes() {
    let Some(pool) = support::test_pool().await else {
        return;
    };
    let (a, created_a) = jobs::enqueue(&pool, JobKind::Echo, &json!({"n": 1}), Some("k1"))
        .await
        .unwrap();
    let (b, created_b) = jobs::enqueue(&pool, JobKind::Echo, &json!({"n": 2}), Some("k1"))
        .await
        .unwrap();
    assert!(created_a);
    assert!(!created_b);
    assert_eq!(a.id, b.id);
    assert_eq!(b.payload, json!({"n": 1}), "first payload wins");
}

#[tokio::test]
async fn claim_complete_is_exactly_once() {
    let Some(pool) = support::test_pool().await else {
        return;
    };
    let (job, _) = jobs::enqueue(&pool, JobKind::Echo, &json!({"x": true}), None)
        .await
        .unwrap();

    let claimed = jobs::claim(&pool, Duration::from_secs(60), 3)
        .await
        .unwrap()
        .expect("claimable");
    assert_eq!(claimed.id, job.id);
    assert_eq!(claimed.attempts, 1);
    assert!(
        jobs::claim(&pool, Duration::from_secs(60), 3)
            .await
            .unwrap()
            .is_none(),
        "leased job is not re-claimed"
    );

    assert!(
        jobs::complete(&pool, job.id, &json!({"ok": 1}))
            .await
            .unwrap()
    );
    assert!(
        !jobs::complete(&pool, job.id, &json!({"ok": 2}))
            .await
            .unwrap(),
        "second completion is a no-op"
    );
    let stored = jobs::get(&pool, job.id).await.unwrap().unwrap();
    assert_eq!(stored.status, "succeeded");
    assert_eq!(stored.result, Some(json!({"ok": 1})));
}

#[tokio::test]
async fn expired_lease_is_reclaimed_after_worker_crash() {
    let Some(pool) = support::test_pool().await else {
        return;
    };
    let (job, _) = jobs::enqueue(&pool, JobKind::Echo, &json!({}), None)
        .await
        .unwrap();
    // Simulate a worker that claimed the job and died: zero-length lease.
    jobs::claim(&pool, Duration::ZERO, 3)
        .await
        .unwrap()
        .expect("first claim");
    tokio::time::sleep(Duration::from_millis(20)).await;
    let again = jobs::claim(&pool, Duration::from_secs(60), 3)
        .await
        .unwrap()
        .expect("reclaimed");
    assert_eq!(again.id, job.id);
    assert_eq!(again.attempts, 2);
}

#[tokio::test]
async fn failures_retry_then_fail() {
    let Some(pool) = support::test_pool().await else {
        return;
    };
    let (job, _) = jobs::enqueue(&pool, JobKind::Echo, &json!({}), None)
        .await
        .unwrap();
    for attempt in 1..=2 {
        let c = jobs::claim(&pool, Duration::from_secs(60), 2)
            .await
            .unwrap()
            .expect("claim");
        assert_eq!(c.attempts, attempt);
        jobs::fail(&pool, c.id, "boom", 2).await.unwrap();
    }
    let stored = jobs::get(&pool, job.id).await.unwrap().unwrap();
    assert_eq!(stored.status, "failed");
    assert_eq!(stored.last_error.as_deref(), Some("boom"));
    assert!(
        jobs::claim(&pool, Duration::from_secs(60), 2)
            .await
            .unwrap()
            .is_none()
    );
}

#[tokio::test]
async fn sweep_fails_expired_final_attempt() {
    let Some(pool) = support::test_pool().await else {
        return;
    };
    let (job, _) = jobs::enqueue(&pool, JobKind::Echo, &json!({}), None)
        .await
        .unwrap();
    jobs::claim(&pool, Duration::ZERO, 1)
        .await
        .unwrap()
        .expect("claim");
    tokio::time::sleep(Duration::from_millis(20)).await;
    assert_eq!(jobs::sweep_expired(&pool, 1).await.unwrap(), 1);
    assert_eq!(
        jobs::get(&pool, job.id).await.unwrap().unwrap().status,
        "failed"
    );
}
