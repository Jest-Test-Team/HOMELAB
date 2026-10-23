//! `mcp-server`: Streamable HTTP MCP endpoint at /mcp on BIND_ADDR.

use anyhow::Context;
use homelab_common::config;
use homelab_mcp_server::{BUILD, MIN_TOKEN_LEN, McpSettings, router};
use tokio_util::sync::CancellationToken;

/// In-cluster names clients use to reach the Service, plus loopback for
/// `kubectl port-forward`.
const DEFAULT_ALLOWED_HOSTS: &[&str] = &[
    "localhost",
    "127.0.0.1",
    "::1",
    "mcp",
    "mcp.homelab",
    "mcp.homelab.svc",
    "mcp.homelab.svc.cluster.local",
];

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    homelab_common::telemetry::init(&BUILD);
    let bind = config::or_default("BIND_ADDR", "0.0.0.0:8080");
    let token = config::required("MCP_AUTH_TOKEN")?;
    let allowed_hosts = config::list_or("MCP_ALLOWED_HOSTS", DEFAULT_ALLOWED_HOSTS);
    let settings = McpSettings::new(token, allowed_hosts.clone()).map_err(|_| {
        anyhow::anyhow!("MCP_AUTH_TOKEN must be at least {MIN_TOKEN_LEN} bytes; refusing to start")
    })?;

    let cancel = CancellationToken::new();
    let app = router(settings, cancel.clone());
    let listener = tokio::net::TcpListener::bind(&bind)
        .await
        .with_context(|| format!("bind {bind}"))?;
    tracing::info!(%bind, ?allowed_hosts, "listening");
    axum::serve(listener, app)
        .with_graceful_shutdown(async move {
            homelab_common::shutdown_signal().await;
            cancel.cancel();
        })
        .await?;
    tracing::info!("stopped");
    Ok(())
}
