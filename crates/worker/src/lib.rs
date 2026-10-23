//! Tokio job worker. One job at a time per process (no unbounded fan-out).
//! PostgreSQL leases make processing restart-safe; Redis BRPOP only shortens
//! idle latency and the loop falls back to polling when Redis is unavailable.

use std::{
    sync::{
        Arc,
        atomic::{AtomicBool, AtomicI64, Ordering},
    },
    time::Duration,
};

use homelab_common::{
    BuildInfo,
    jobs::{self, Claimed, JobKind},
    redis_handle::{JOB_WAKEUP_KEY, RedisHandle},
};
use serde_json::{Value, json};
use sqlx::PgPool;
use tokio_util::sync::CancellationToken;

pub const BUILD: BuildInfo = BuildInfo::new("worker", env!("CARGO_PKG_VERSION"));

#[derive(Debug, Clone)]
pub struct WorkerConfig {
    pub lease: Duration,
    pub max_attempts: i32,
    pub idle_wait: Duration,
    pub error_backoff: Duration,
}

impl Default for WorkerConfig {
    fn default() -> Self {
        Self {
            lease: Duration::from_secs(60),
            max_attempts: 3,
            idle_wait: Duration::from_secs(5),
            error_backoff: Duration::from_secs(2),
        }
    }
}

/// Liveness = the loop is still turning; readiness = the database answers.
#[derive(Debug, Default)]
pub struct Health {
    last_beat_ms: AtomicI64,
    db_ok: AtomicBool,
}

impl Health {
    fn beat(&self) {
        self.last_beat_ms.store(now_ms(), Ordering::Relaxed);
    }

    fn set_db(&self, ok: bool) {
        self.db_ok.store(ok, Ordering::Relaxed);
    }

    pub fn is_live(&self, window: Duration) -> bool {
        let last = self.last_beat_ms.load(Ordering::Relaxed);
        last > 0 && now_ms() - last < window.as_millis() as i64
    }

    pub fn is_ready(&self) -> bool {
        self.db_ok.load(Ordering::Relaxed)
    }
}

fn now_ms() -> i64 {
    std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)
        .map_or(0, |d| d.as_millis() as i64)
}

/// Execute one job. Pure functions of the payload, so retries are safe.
pub async fn execute(kind: &str, payload: &Value) -> Result<Value, String> {
    match JobKind::parse(kind) {
        Some(JobKind::Echo) => Ok(payload.clone()),
        Some(JobKind::Sleep) => {
            let ms = jobs::sleep_ms(payload).map_err(|e| e.to_string())?;
            tokio::time::sleep(Duration::from_millis(ms)).await;
            Ok(json!({ "slept_ms": ms }))
        }
        None => Err(format!("unknown job kind: {kind}")),
    }
}

/// Run until `shutdown` is cancelled. A job already started is finished
/// (jobs are bounded to seconds, well inside the pod's grace period).
pub async fn run(
    pool: PgPool,
    redis: Option<Arc<RedisHandle>>,
    cfg: WorkerConfig,
    health: Arc<Health>,
    shutdown: CancellationToken,
) {
    tracing::info!(?cfg, "worker loop started");
    while !shutdown.is_cancelled() {
        health.beat();

        match jobs::sweep_expired(&pool, cfg.max_attempts).await {
            Ok(0) => {}
            Ok(n) => tracing::warn!(count = n, "failed jobs whose final lease expired"),
            Err(err) => tracing::warn!(error = %err, "sweep failed"),
        }

        match jobs::claim(&pool, cfg.lease, cfg.max_attempts).await {
            Ok(Some(job)) => {
                health.set_db(true);
                process(&pool, job, cfg.max_attempts).await;
            }
            Ok(None) => {
                health.set_db(true);
                wait_for_work(redis.as_deref(), cfg.idle_wait, &shutdown).await;
            }
            Err(err) => {
                health.set_db(false);
                tracing::error!(error = %err, "claim failed; backing off");
                tokio::select! {
                    () = shutdown.cancelled() => {},
                    () = tokio::time::sleep(cfg.error_backoff) => {},
                }
            }
        }
    }
    tracing::info!("worker loop stopped");
}

async fn process(pool: &PgPool, job: Claimed, max_attempts: i32) {
    let span =
        tracing::info_span!("job", job_id = %job.id, kind = %job.kind, attempt = job.attempts);
    let _enter = span.enter();
    match execute(&job.kind, &job.payload).await {
        Ok(result) => match jobs::complete(pool, job.id, &result).await {
            Ok(true) => tracing::info!("job succeeded"),
            Ok(false) => tracing::warn!("job no longer running (lease lost); result discarded"),
            Err(err) => {
                tracing::error!(error = %err, "could not record success; lease will expire and retry")
            }
        },
        Err(msg) => {
            tracing::warn!(error = %msg, "job failed");
            if let Err(err) = jobs::fail(pool, job.id, &msg, max_attempts).await {
                tracing::error!(error = %err, "could not record failure");
            }
        }
    }
}

/// Block on the Redis wake-up list, or just sleep if Redis is unavailable.
async fn wait_for_work(redis: Option<&RedisHandle>, idle: Duration, shutdown: &CancellationToken) {
    let wait = async {
        if let Some(redis) = redis {
            match brpop(redis, idle).await {
                Ok(()) => return,
                Err(err) => tracing::debug!(error = %err, "redis wait unavailable; polling"),
            }
        }
        tokio::time::sleep(idle).await;
    };
    tokio::select! {
        () = shutdown.cancelled() => {},
        () = wait => {},
    }
}

async fn brpop(redis: &RedisHandle, idle: Duration) -> redis::RedisResult<()> {
    let mut conn = redis.conn().await?;
    redis::cmd("BRPOP")
        .arg(JOB_WAKEUP_KEY)
        .arg(idle.as_secs_f64())
        .query_async::<Option<(String, String)>>(&mut conn)
        .await?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[tokio::test]
    async fn echo_returns_payload() {
        let p = json!({"a": [1, 2]});
        assert_eq!(execute("echo", &p).await, Ok(p));
    }

    #[tokio::test(start_paused = true)]
    async fn sleep_is_bounded() {
        assert_eq!(
            execute("sleep", &json!({"ms": 5})).await,
            Ok(json!({"slept_ms": 5}))
        );
        assert!(execute("sleep", &json!({"ms": 60_000})).await.is_err());
    }

    #[tokio::test]
    async fn unknown_kind_fails() {
        assert!(execute("shell", &json!({})).await.is_err());
    }

    #[test]
    fn liveness_window() {
        let h = Health::default();
        assert!(
            !h.is_live(Duration::from_secs(60)),
            "not live before first beat"
        );
        h.beat();
        assert!(h.is_live(Duration::from_secs(60)));
        assert!(!h.is_ready());
    }
}
