//! APP-02: authorised tool invocation over Streamable HTTP; unauthorised and
//! wrong-Host requests are refused.

use homelab_mcp_server::{McpSettings, WeakToken, router};
use serde_json::{Value, json};
use tokio_util::sync::CancellationToken;

const TOKEN: &str = "test-token-0123456789abcdef0123456789";
const PROTOCOL: &str = "2025-06-18";

struct Server {
    url: String,
    cancel: CancellationToken,
}

impl Drop for Server {
    fn drop(&mut self) {
        self.cancel.cancel();
    }
}

async fn spawn() -> Server {
    let settings =
        McpSettings::new(TOKEN.into(), vec!["127.0.0.1".into(), "localhost".into()]).unwrap();
    let cancel = CancellationToken::new();
    let app = router(settings, cancel.clone());
    let listener = tokio::net::TcpListener::bind("127.0.0.1:0").await.unwrap();
    let addr = listener.local_addr().unwrap();
    let ct = cancel.clone();
    tokio::spawn(async move {
        axum::serve(listener, app)
            .with_graceful_shutdown(async move { ct.cancelled().await })
            .await
            .unwrap();
    });
    Server {
        url: format!("http://{addr}"),
        cancel,
    }
}

async fn rpc(base: &str, token: Option<&str>, body: Value) -> reqwest::Response {
    let mut req = reqwest::Client::new()
        .post(format!("{base}/mcp"))
        .header("Content-Type", "application/json")
        .header("Accept", "application/json, text/event-stream")
        .header("MCP-Protocol-Version", PROTOCOL)
        .body(body.to_string());
    if let Some(t) = token {
        req = req.bearer_auth(t);
    }
    req.send().await.unwrap()
}

fn init() -> Value {
    json!({"jsonrpc": "2.0", "id": 1, "method": "initialize", "params": {
        "protocolVersion": PROTOCOL, "capabilities": {},
        "clientInfo": {"name": "homelab-test", "version": "1.0"}}})
}

fn call(id: u32, name: &str, args: Value) -> Value {
    json!({"jsonrpc": "2.0", "id": id, "method": "tools/call", "params": {"name": name, "arguments": args}})
}

#[test]
fn short_tokens_are_refused() {
    assert_eq!(
        McpSettings::new("short".into(), vec![]).err(),
        Some(WeakToken)
    );
}

#[tokio::test]
async fn health_needs_no_token() {
    let s = spawn().await;
    let r = reqwest::get(format!("{}/health/live", s.url))
        .await
        .unwrap();
    assert_eq!(r.status(), 200);
}

#[tokio::test]
async fn missing_or_wrong_token_is_401() {
    let s = spawn().await;
    let r = rpc(&s.url, None, init()).await;
    assert_eq!(r.status(), 401);
    assert_eq!(r.headers()["www-authenticate"], "Bearer");
    let r = rpc(
        &s.url,
        Some("test-token-0123456789abcdef0123456780"),
        init(),
    )
    .await;
    assert_eq!(r.status(), 401);
}

#[tokio::test]
async fn foreign_host_header_is_rejected() {
    let s = spawn().await;
    let r = reqwest::Client::new()
        .post(format!("{}/mcp", s.url))
        .header("Host", "evil.example")
        .header("Content-Type", "application/json")
        .header("Accept", "application/json, text/event-stream")
        .bearer_auth(TOKEN)
        .body(init().to_string())
        .send()
        .await
        .unwrap();
    assert!(r.status().is_client_error(), "got {}", r.status());
}

#[tokio::test]
async fn authorised_tool_calls_work() {
    let s = spawn().await;
    let r = rpc(&s.url, Some(TOKEN), init()).await;
    assert_eq!(r.status(), 200);
    let v: Value = r.json().await.unwrap();
    assert_eq!(v["result"]["serverInfo"]["name"], "homelab-mcp");

    let r = rpc(
        &s.url,
        Some(TOKEN),
        json!({"jsonrpc": "2.0", "id": 2, "method": "tools/list"}),
    )
    .await;
    let v: Value = r.json().await.unwrap();
    let mut names: Vec<_> = v["result"]["tools"]
        .as_array()
        .unwrap()
        .iter()
        .map(|t| t["name"].as_str().unwrap().to_owned())
        .collect();
    names.sort();
    assert_eq!(names, ["echo", "server_version"]);

    let v: Value = rpc(&s.url, Some(TOKEN), call(3, "echo", json!({"text": "hi"})))
        .await
        .json()
        .await
        .unwrap();
    assert_eq!(v["result"]["content"][0]["text"], "hi", "{v}");

    let v: Value = rpc(&s.url, Some(TOKEN), call(4, "server_version", json!({})))
        .await
        .json()
        .await
        .unwrap();
    let info: Value =
        serde_json::from_str(v["result"]["content"][0]["text"].as_str().unwrap()).unwrap();
    assert_eq!(info["service"], "mcp-server");

    let v: Value = rpc(
        &s.url,
        Some(TOKEN),
        call(5, "echo", json!({"text": "x".repeat(2000)})),
    )
    .await
    .json()
    .await
    .unwrap();
    assert!(
        v.get("error").is_some() || v["result"]["isError"] == true,
        "oversized echo must fail: {v}"
    );
}
