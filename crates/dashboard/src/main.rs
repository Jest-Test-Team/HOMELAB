//! `dashboard`: read-only status API + static frontend for the homelab namespace.
//!
//! Binds `BIND_ADDR` (default 0.0.0.0:3000). Uses the in-cluster ServiceAccount
//! for Kubernetes access (or the local kubeconfig when run outside the cluster).

use std::{sync::Arc, time::Duration};

use anyhow::Context;
use homelab_common::config;
use homelab_dashboard::{AppState, BUILD, DEFAULT_NAMESPACE, default_probes, router};
use kube::Client;

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    homelab_common::telemetry::init(&BUILD);

    let bind = config::or_default("BIND_ADDR", "0.0.0.0:3000");
    let namespace = config::or_default("WATCH_NAMESPACE", DEFAULT_NAMESPACE);

    // In-cluster config from the mounted ServiceAccount, else the kubeconfig.
    let client = Client::try_default()
        .await
        .context("initialise Kubernetes client")?;

    let http = reqwest::Client::builder()
        .timeout(Duration::from_secs(5))
        .build()
        .context("build http client")?;

    let state = AppState {
        client,
        probes: Arc::new(default_probes(&namespace)),
        namespace,
        http,
    };

    let app = router(state);
    let listener = tokio::net::TcpListener::bind(&bind)
        .await
        .with_context(|| format!("bind {bind}"))?;
    tracing::info!(%bind, "dashboard listening");
    axum::serve(listener, app)
        .with_graceful_shutdown(homelab_common::shutdown_signal())
        .await?;
    tracing::info!("stopped");
    Ok(())
}
