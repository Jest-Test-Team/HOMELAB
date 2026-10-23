//! Worker process: job loop plus a probe-only HTTP listener on HEALTH_BIND
//! (default 0.0.0.0:8081). The listener serves no application data.

use std::{sync::Arc, time::Duration};

use anyhow::Context;
use axum::{Router, extract::State, http::StatusCode, routing::get};
use homelab_common::{config, redis_handle::RedisHandle};
use homelab_worker::{BUILD, Health, WorkerConfig, run};
use sqlx::postgres::PgPoolOptions;
use tokio_util::sync::CancellationToken;

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    homelab_common::telemetry::init(&BUILD);
    let database_url = config::required("DATABASE_URL")?;
    let redis_url = config::required("REDIS_URL")?;
    let health_bind = config::or_default("HEALTH_BIND", "0.0.0.0:8081");
    let cfg = WorkerConfig {
        lease: Duration::from_secs(config::parse_or("JOB_LEASE_SECS", 60)?),
        max_attempts: config::parse_or("JOB_MAX_ATTEMPTS", 3)?,
        idle_wait: Duration::from_secs(config::parse_or("IDLE_WAIT_SECS", 5)?),
        ..WorkerConfig::default()
    };
    let live_window = cfg.lease + cfg.idle_wait + Duration::from_secs(30);

    let pool = PgPoolOptions::new()
        .max_connections(2)
        .acquire_timeout(Duration::from_secs(3))
        .connect_lazy(&database_url)
        .context("invalid DATABASE_URL")?;
    // BRPOP blocks for idle_wait; the response timeout must outlast it.
    let redis = RedisHandle::new(&redis_url, cfg.idle_wait + Duration::from_secs(2))
        .context("invalid REDIS_URL")?;
    tracing::info!(database = %config::redact_url(&database_url), redis = %config::redact_url(&redis_url), "configured");

    let health = Arc::new(Health::default());
    let shutdown = CancellationToken::new();

    let probes = Router::new()
        .route(
            "/health/live",
            get(move |State(h): State<Arc<Health>>| async move {
                if h.is_live(live_window) {
                    StatusCode::OK
                } else {
                    StatusCode::SERVICE_UNAVAILABLE
                }
            }),
        )
        .route(
            "/health/ready",
            get(|State(h): State<Arc<Health>>| async move {
                if h.is_ready() {
                    StatusCode::OK
                } else {
                    StatusCode::SERVICE_UNAVAILABLE
                }
            }),
        )
        .with_state(health.clone());
    let listener = tokio::net::TcpListener::bind(&health_bind)
        .await
        .with_context(|| format!("bind {health_bind}"))?;
    tracing::info!(bind = %health_bind, "health listener up");
    let probe_server = tokio::spawn({
        let shutdown = shutdown.clone();
        async move {
            axum::serve(listener, probes)
                .with_graceful_shutdown(async move { shutdown.cancelled().await })
                .await
        }
    });

    tokio::spawn({
        let shutdown = shutdown.clone();
        async move {
            homelab_common::shutdown_signal().await;
            shutdown.cancel();
        }
    });

    run(
        pool.clone(),
        Some(Arc::new(redis)),
        cfg,
        health,
        shutdown.clone(),
    )
    .await;
    shutdown.cancel();
    probe_server.await??;
    pool.close().await;
    tracing::info!("stopped");
    Ok(())
}
