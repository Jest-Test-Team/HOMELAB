//! MCP server over rmcp Streamable HTTP (stateless, JSON responses).
//!
//! `/mcp` requires `Authorization: Bearer <MCP_AUTH_TOKEN>`; the process will
//! not start without a token of at least `MIN_TOKEN_LEN` bytes. rmcp also
//! validates the `Host` header against `allowed_hosts` (DNS-rebinding guard).
//! `/health/*` is unauthenticated and returns no data.

use std::sync::Arc;

use axum::{
    Router,
    extract::{Request, State},
    http::{HeaderValue, StatusCode, header},
    middleware::{self, Next},
    response::{IntoResponse, Response},
    routing::get,
};
use homelab_common::{BuildInfo, constant_time_eq};
use rmcp::{
    ErrorData, ServerHandler,
    handler::server::wrapper::Parameters,
    schemars, tool, tool_handler, tool_router,
    transport::streamable_http_server::{
        StreamableHttpServerConfig, StreamableHttpService, session::local::LocalSessionManager,
    },
};
use tokio_util::sync::CancellationToken;

pub const BUILD: BuildInfo = BuildInfo::new("mcp-server", env!("CARGO_PKG_VERSION"));
pub const MIN_TOKEN_LEN: usize = 32;
pub const MAX_ECHO_CHARS: usize = 1024;
const MAX_BODY_BYTES: usize = 256 * 1024;

#[derive(Debug, Clone, Default)]
pub struct HomelabMcp;

#[derive(Debug, serde::Deserialize, schemars::JsonSchema)]
pub struct EchoRequest {
    #[schemars(description = "Text to echo back (at most 1024 characters)")]
    pub text: String,
}

#[tool_router]
impl HomelabMcp {
    #[tool(description = "Return the service name, version and git commit SHA of this server")]
    fn server_version(&self) -> String {
        serde_json::to_string(&BUILD).unwrap_or_default()
    }

    #[tool(description = "Echo the given text back unchanged")]
    fn echo(
        &self,
        Parameters(EchoRequest { text }): Parameters<EchoRequest>,
    ) -> Result<String, ErrorData> {
        if text.chars().count() > MAX_ECHO_CHARS {
            return Err(ErrorData::invalid_params(
                format!("text exceeds {MAX_ECHO_CHARS} characters"),
                None,
            ));
        }
        Ok(text)
    }
}

#[tool_handler(
    name = "homelab-mcp",
    instructions = "Homelab sample MCP server. Tools: server_version, echo."
)]
impl ServerHandler for HomelabMcp {}

#[derive(Clone)]
pub struct McpSettings {
    pub token: Arc<str>,
    pub allowed_hosts: Vec<String>,
}

#[derive(Debug, PartialEq, Eq)]
pub struct WeakToken;

impl McpSettings {
    pub fn new(token: String, allowed_hosts: Vec<String>) -> Result<Self, WeakToken> {
        if token.len() < MIN_TOKEN_LEN {
            return Err(WeakToken);
        }
        Ok(Self {
            token: token.into(),
            allowed_hosts,
        })
    }
}

pub fn router(settings: McpSettings, cancel: CancellationToken) -> Router {
    let config = StreamableHttpServerConfig::default()
        .with_legacy_session_mode(false)
        .with_json_response(true)
        .with_sse_keep_alive(None)
        .with_allowed_hosts(settings.allowed_hosts.clone())
        .with_max_request_body_bytes(MAX_BODY_BYTES)
        .with_cancellation_token(cancel);
    let mcp: StreamableHttpService<HomelabMcp, LocalSessionManager> =
        StreamableHttpService::new(|| Ok(HomelabMcp), Default::default(), config);

    let protected = Router::new()
        .nest_service("/mcp", mcp)
        .layer(middleware::from_fn_with_state(
            settings.token.clone(),
            require_bearer,
        ));

    let routes = Router::new()
        .route("/health/live", get(|| async { "ok" }))
        .route("/health/ready", get(|| async { "ok" }))
        .merge(protected);
    homelab_common::http::with_standard_layers(routes, &BUILD, MAX_BODY_BYTES)
}

async fn require_bearer(State(token): State<Arc<str>>, req: Request, next: Next) -> Response {
    let presented = req
        .headers()
        .get(header::AUTHORIZATION)
        .and_then(|v| v.to_str().ok())
        .and_then(|v| v.strip_prefix("Bearer "));
    match presented {
        Some(p) if constant_time_eq(p.as_bytes(), token.as_bytes()) => next.run(req).await,
        _ => {
            tracing::warn!("rejected MCP request without valid bearer token");
            let mut resp = StatusCode::UNAUTHORIZED.into_response();
            resp.headers_mut()
                .insert(header::WWW_AUTHENTICATE, HeaderValue::from_static("Bearer"));
            resp
        }
    }
}
