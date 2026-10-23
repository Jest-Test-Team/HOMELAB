//! Shared building blocks for the homelab services: configuration, tracing,
//! shutdown handling, build metadata, Redis access and the job queue.

pub mod config;
pub mod http;
pub mod jobs;
pub mod redis_handle;
pub mod telemetry;

use serde::Serialize;

/// Build metadata reported by every service (`/api/v1/version`, MCP tool, logs).
#[derive(Debug, Clone, Serialize, PartialEq, Eq)]
pub struct BuildInfo {
    pub service: &'static str,
    pub version: &'static str,
    pub git_sha: &'static str,
}

impl BuildInfo {
    /// `version` should be the caller's `env!("CARGO_PKG_VERSION")`.
    pub const fn new(service: &'static str, version: &'static str) -> Self {
        Self {
            service,
            version,
            git_sha: match option_env!("GIT_SHA") {
                Some(sha) => sha,
                None => "unknown",
            },
        }
    }
}

/// Resolves on SIGINT or SIGTERM (Kubernetes sends SIGTERM on pod stop).
pub async fn shutdown_signal() {
    let ctrl_c = async {
        if let Err(err) = tokio::signal::ctrl_c().await {
            tracing::error!(error = %err, "failed to listen for ctrl-c");
            std::future::pending::<()>().await;
        }
    };

    #[cfg(unix)]
    let terminate = async {
        match tokio::signal::unix::signal(tokio::signal::unix::SignalKind::terminate()) {
            Ok(mut sig) => {
                sig.recv().await;
            }
            Err(err) => {
                tracing::error!(error = %err, "failed to listen for SIGTERM");
                std::future::pending::<()>().await;
            }
        }
    };
    #[cfg(not(unix))]
    let terminate = std::future::pending::<()>();

    tokio::select! {
        () = ctrl_c => {},
        () = terminate => {},
    }
    tracing::info!("shutdown signal received");
}

/// Constant-time byte comparison for secrets such as bearer tokens.
pub fn constant_time_eq(a: &[u8], b: &[u8]) -> bool {
    if a.len() != b.len() {
        return false;
    }
    a.iter().zip(b).fold(0u8, |acc, (x, y)| acc | (x ^ y)) == 0
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn constant_time_eq_matches_only_identical_input() {
        assert!(constant_time_eq(b"secret-token", b"secret-token"));
        assert!(!constant_time_eq(b"secret-token", b"secret-tokeN"));
        assert!(!constant_time_eq(b"short", b"longer-value"));
        assert!(constant_time_eq(b"", b""));
    }

    #[test]
    fn build_info_has_a_sha() {
        let info = BuildInfo::new("test", "0.0.0");
        assert!(!info.git_sha.is_empty());
    }
}
