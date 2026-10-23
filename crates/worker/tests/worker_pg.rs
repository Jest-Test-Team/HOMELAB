//! APP-03 in CI: jobs are processed exactly once and a crashed worker's job
//! is recovered. Skipped unless TEST_DATABASE_URL is set.

#[path = "../../common/tests/support/mod.rs"]
mod support;

use std::{sync::Arc, time::Duration};

use homelab_common::{
    jobs::{self, JobKind},
    redis_handle::RedisHandle,
};
use homelab_worker::{Health, WorkerConfig, run};
use serde_json::json;
use sqlx::PgPool;
use tokio_util::sync::CancellationToken;

fn fast_cfg() -> WorkerConfig {
    WorkerConfig {
        lease: Duration::from_secs(30),
        max_attempts: 3,
        idle_wait: Duration::from_millis(100),
        error_backoff: Duration::from_millis(100),
    }
}

async fn wait_until_done(pool: &PgPool, ids: &[uuid::Uuid]) {
    for _ in 0..100 {
        let mut done = 0;
        for id in ids {
            let status = jobs::get(pool, *id).await.unwrap().unwrap().status;
            if status == "succeeded" || status == "failed" {
                done += 1;
            }
        }
        if done == ids.len() {
            return;
        }
        tokio::time::sleep(Duration::from_millis(50)).await;
    }
    panic!("jobs did not finish in time");
}

#[tokio::test]
async fn processes_queue_and_shuts_down() {
    let Some(pool) = support::test_pool().await else {
        return;
    };
    let redis = std::env::var("TEST_REDIS_URL")
        .ok()
        .map(|u| Arc::new(RedisHandle::new(&u, Duration::from_secs(2)).unwrap()));

    let mut ids = Vec::new();
    for i in 0..3 {
        ids.push(
            jobs::enqueue(&pool, JobKind::Echo, &json!({"i": i}), None)
                .await
                .unwrap()
                .0
                .id,
        );
    }
    ids.push(
        jobs::enqueue(&pool, JobKind::Sleep, &json!({"ms": 20}), None)
            .await
            .unwrap()
            .0
            .id,
    );

    let health = Arc::new(Health::default());
    let shutdown = CancellationToken::new();
    let handle = tokio::spawn(run(
        pool.clone(),
        redis,
        fast_cfg(),
        health.clone(),
        shutdown.clone(),
    ));

    wait_until_done(&pool, &ids).await;
    assert!(health.is_ready());
    assert!(health.is_live(Duration::from_secs(5)));

    for (i, id) in ids[..3].iter().enumerate() {
        let job = jobs::get(&pool, *id).await.unwrap().unwrap();
        assert_eq!(job.status, "succeeded");
        assert_eq!(job.attempts, 1, "processed exactly once");
        assert_eq!(job.result, Some(json!({"i": i})));
    }

    shutdown.cancel();
    tokio::time::timeout(Duration::from_secs(5), handle)
        .await
        .expect("worker stops promptly on shutdown")
        .unwrap();
}

#[tokio::test]
async fn recovers_job_from_crashed_worker() {
    let Some(pool) = support::test_pool().await else {
        return;
    };
    let (job, _) = jobs::enqueue(&pool, JobKind::Echo, &json!({"r": 1}), None)
        .await
        .unwrap();
    // A previous worker leased the job and died (lease already expired).
    jobs::claim(&pool, Duration::ZERO, 3)
        .await
        .unwrap()
        .expect("crashed claim");

    let shutdown = CancellationToken::new();
    let handle = tokio::spawn(run(
        pool.clone(),
        None,
        fast_cfg(),
        Arc::default(),
        shutdown.clone(),
    ));
    wait_until_done(&pool, &[job.id]).await;
    shutdown.cancel();
    handle.await.unwrap();

    let stored = jobs::get(&pool, job.id).await.unwrap().unwrap();
    assert_eq!(stored.status, "succeeded");
    assert_eq!(stored.attempts, 2);
}
