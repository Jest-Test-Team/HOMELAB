//! JSON structured logging. OpenTelemetry export is not part of v1.

use tracing_subscriber::{EnvFilter, fmt, prelude::*};

use crate::BuildInfo;

/// Install a JSON subscriber filtered by `RUST_LOG` (default `info`) and log
/// the build metadata once so every log stream starts with the git SHA.
pub fn init(build: &BuildInfo) {
    let filter = EnvFilter::try_from_default_env().unwrap_or_else(|_| EnvFilter::new("info"));
    tracing_subscriber::registry()
        .with(filter)
        .with(
            fmt::layer()
                .json()
                .flatten_event(true)
                .with_current_span(true)
                .with_span_list(false),
        )
        .init();
    tracing::info!(
        service = build.service,
        version = build.version,
        git_sha = build.git_sha,
        "starting"
    );
}
