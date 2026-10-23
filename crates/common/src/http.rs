//! Shared HTTP middleware: request IDs, request spans, timeouts, body limits.

use std::time::Duration;

use axum::{
    Router,
    extract::Request,
    http::{HeaderName, StatusCode},
};
use tower_http::{
    limit::RequestBodyLimitLayer,
    request_id::{MakeRequestUuid, PropagateRequestIdLayer, SetRequestIdLayer},
    timeout::TimeoutLayer,
    trace::TraceLayer,
};

use crate::BuildInfo;

pub const REQUEST_ID_HEADER: &str = "x-request-id";

/// Wrap a router with the standard stack. Request order (outermost first):
/// set request id -> trace span -> propagate id to response -> timeout -> body limit.
/// Spans record the path only, never the query string, to keep tokens out of logs.
pub fn with_standard_layers(router: Router, build: &BuildInfo, max_body_bytes: usize) -> Router {
    let git_sha = build.git_sha;
    let header = HeaderName::from_static(REQUEST_ID_HEADER);
    router
        .layer(RequestBodyLimitLayer::new(max_body_bytes))
        .layer(TimeoutLayer::with_status_code(
            StatusCode::REQUEST_TIMEOUT,
            Duration::from_secs(30),
        ))
        .layer(PropagateRequestIdLayer::new(header.clone()))
        .layer(
            TraceLayer::new_for_http().make_span_with(move |req: &Request| {
                let request_id = req
                    .headers()
                    .get(REQUEST_ID_HEADER)
                    .and_then(|v| v.to_str().ok())
                    .unwrap_or("-");
                tracing::info_span!(
                    "http",
                    method = %req.method(),
                    path = %req.uri().path(),
                    request_id = %request_id,
                    git_sha = git_sha,
                )
            }),
        )
        .layer(SetRequestIdLayer::new(header, MakeRequestUuid))
}
