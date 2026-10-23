//! `api`          serve HTTP on BIND_ADDR (default 0.0.0.0:8080)
//! `api migrate`  apply embedded SQL migrations, then exit (explicit Job only)

use std::{sync::Arc, time::Duration};

use anyhow::Context;
use homelab_api::{AppState, BUILD, router};
use homelab_common::{config, jobs::MIGRATOR, redis_handle::RedisHandle};
use sqlx::postgres::PgPoolOptions;

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    homelab_common::telemetry::init(&BUILD);
    let database_url = config::required("DATABASE_URL")?;

    match std::env::args().nth(1).as_deref() {
        None | Some("serve") => serve(&database_url).await,
        Some("migrate") => migrate(&database_url).await,
        Some(other) => anyhow::bail!("unknown command {other:?}; expected `serve` or `migrate`"),
    }
}

async fn serve(database_url: &str) -> anyhow::Result<()> {
    let bind = config::or_default("BIND_ADDR", "0.0.0.0:8080");
    let max_conns: u32 = config::parse_or("DB_MAX_CONNECTIONS", 5)?;
    let redis_url = config::required("REDIS_URL")?;

    // Lazy pool: the process starts and serves /health/live even while the
    // database is down; /health/ready reports the real state.
    let pool = PgPoolOptions::new()
        .max_connections(max_conns)
        .acquire_timeout(Duration::from_secs(3))
        .connect_lazy(database_url)
        .context("invalid DATABASE_URL")?;
    tracing::info!(database = %config::redact_url(database_url), redis = %config::redact_url(&redis_url), "configured");

    let redis = Arc::new(
        RedisHandle::new(&redis_url, Duration::from_secs(2)).context("invalid REDIS_URL")?,
    );
    let app = router(AppState {
        pool: pool.clone(),
        redis,
    });

    let listener = tokio::net::TcpListener::bind(&bind)
        .await
        .with_context(|| format!("bind {bind}"))?;
    tracing::info!(%bind, "listening");
    axum::serve(listener, app)
        .with_graceful_shutdown(homelab_common::shutdown_signal())
        .await?;
    pool.close().await;
    tracing::info!("stopped");
    Ok(())
}

async fn migrate(database_url: &str) -> anyhow::Result<()> {
    let pool = PgPoolOptions::new()
        .max_connections(1)
        .acquire_timeout(Duration::from_secs(10))
        .connect(database_url)
        .await
        .context("connect for migration")?;
    MIGRATOR.run(&pool).await.context("apply migrations")?;
    for m in MIGRATOR.iter() {
        tracing::info!(version = m.version, description = %m.description, "migration known");
    }
    tracing::info!("migrations applied");
    pool.close().await;
    Ok(())
}
