//! Read-only status dashboard backend.
//!
//! Serves a small JSON view of the `homelab` namespace (nodes, workloads, pods,
//! PVCs, recent warnings) plus the live health of the `api` and `mcp` services,
//! and the static frontend. It only ever reads from the Kubernetes API: the
//! ServiceAccount has `get/list/watch` and nothing else (see
//! `deploy/k8s/base/dashboard-sa-rbac.yaml`).

use std::{sync::Arc, time::Duration};

use axum::{Json, Router, extract::State, http::StatusCode, response::IntoResponse, routing::get};
use homelab_common::BuildInfo;
use k8s_openapi::api::{
    apps::v1::{Deployment, StatefulSet},
    core::v1::{Event, Node, PersistentVolumeClaim, Pod},
};
use kube::{Api, Client, api::ListParams};
use serde::Serialize;
use serde_json::Value;

pub const BUILD: BuildInfo = BuildInfo::new("dashboard", env!("CARGO_PKG_VERSION"));
const MAX_BODY_BYTES: usize = 64 * 1024;
/// Namespace the dashboard reports on. Override with `WATCH_NAMESPACE`.
pub const DEFAULT_NAMESPACE: &str = "homelab";
const PROBE_TIMEOUT: Duration = Duration::from_secs(3);

#[derive(Clone)]
pub struct AppState {
    pub client: Client,
    pub namespace: String,
    pub http: reqwest::Client,
    /// Base URLs of the services to probe, as (name, url_base).
    pub probes: Arc<Vec<ProbeTarget>>,
}

#[derive(Clone)]
pub struct ProbeTarget {
    pub name: &'static str,
    pub base: String,
    /// Health path that should return 200 when the service is up.
    pub health_path: &'static str,
    /// Optional path returning JSON to surface (e.g. version).
    pub info_path: Option<&'static str>,
}

/// Build the default probe set for the in-cluster service DNS names.
pub fn default_probes(namespace: &str) -> Vec<ProbeTarget> {
    vec![
        ProbeTarget {
            name: "api",
            base: format!("http://api.{namespace}.svc"),
            health_path: "/health/ready",
            info_path: Some("/api/v1/version"),
        },
        ProbeTarget {
            name: "mcp",
            base: format!("http://mcp.{namespace}.svc"),
            health_path: "/health/ready",
            info_path: None,
        },
    ]
}

pub fn router(state: AppState) -> Router {
    let static_dir = homelab_common::config::or_default("STATIC_DIR", "/usr/local/share/dashboard");
    let routes = Router::new()
        .route("/healthz", get(|| async { "ok" }))
        .route("/api/status", get(status))
        .with_state(state)
        // SPA/static assets last so /api/* and /healthz win.
        .fallback_service(tower_http::services::ServeDir::new(static_dir));
    homelab_common::http::with_standard_layers(routes, &BUILD, MAX_BODY_BYTES)
}

// ---- status report shapes ---------------------------------------------------

#[derive(Serialize)]
pub struct StatusReport {
    pub dashboard: BuildInfo,
    pub generated_at: String,
    pub nodes: Vec<NodeStatus>,
    pub workloads: Vec<WorkloadStatus>,
    pub pods: Vec<PodStatus>,
    pub pvcs: Vec<PvcStatus>,
    pub services: Vec<ServiceHealth>,
    pub warnings: Vec<EventLine>,
    /// Non-fatal collection errors (RBAC, API hiccups) so the UI can show them.
    pub errors: Vec<String>,
}

#[derive(Serialize)]
pub struct NodeStatus {
    pub name: String,
    pub ready: bool,
    pub kubelet_version: String,
}

#[derive(Serialize)]
pub struct WorkloadStatus {
    pub kind: &'static str,
    pub name: String,
    pub desired: i32,
    pub ready: i32,
}

#[derive(Serialize)]
pub struct PodStatus {
    pub name: String,
    pub phase: String,
    pub ready: bool,
    pub restarts: i32,
    pub image: String,
    pub age_seconds: i64,
}

#[derive(Serialize)]
pub struct PvcStatus {
    pub name: String,
    pub phase: String,
    pub capacity: String,
}

#[derive(Serialize)]
pub struct ServiceHealth {
    pub name: String,
    pub healthy: bool,
    pub status_code: Option<u16>,
    pub info: Option<Value>,
}

#[derive(Serialize)]
pub struct EventLine {
    pub object: String,
    pub reason: String,
    pub message: String,
    pub count: i32,
}

async fn status(State(state): State<AppState>) -> impl IntoResponse {
    let report = collect(&state).await;
    (StatusCode::OK, Json(report))
}

/// Collect the whole report. Every section degrades independently: a failure
/// becomes an entry in `errors` rather than failing the request.
pub async fn collect(state: &AppState) -> StatusReport {
    let mut report = StatusReport {
        dashboard: BUILD.clone(),
        generated_at: now_rfc3339(),
        nodes: Vec::new(),
        workloads: Vec::new(),
        pods: Vec::new(),
        pvcs: Vec::new(),
        services: Vec::new(),
        warnings: Vec::new(),
        errors: Vec::new(),
    };

    let nodes: Api<Node> = Api::all(state.client.clone());
    match nodes.list(&ListParams::default()).await {
        Ok(list) => report.nodes = list.items.iter().map(node_status).collect(),
        Err(e) => report.errors.push(format!("nodes: {e}")),
    }

    let deploys: Api<Deployment> = Api::namespaced(state.client.clone(), &state.namespace);
    match deploys.list(&ListParams::default()).await {
        Ok(list) => {
            for d in &list.items {
                let spec_replicas = d.spec.as_ref().and_then(|s| s.replicas).unwrap_or(0);
                let ready = d
                    .status
                    .as_ref()
                    .and_then(|s| s.ready_replicas)
                    .unwrap_or(0);
                report.workloads.push(WorkloadStatus {
                    kind: "Deployment",
                    name: name_of(&d.metadata.name),
                    desired: spec_replicas,
                    ready,
                });
            }
        }
        Err(e) => report.errors.push(format!("deployments: {e}")),
    }

    let sts: Api<StatefulSet> = Api::namespaced(state.client.clone(), &state.namespace);
    match sts.list(&ListParams::default()).await {
        Ok(list) => {
            for s in &list.items {
                let desired = s.spec.as_ref().and_then(|s| s.replicas).unwrap_or(0);
                let ready = s
                    .status
                    .as_ref()
                    .and_then(|s| s.ready_replicas)
                    .unwrap_or(0);
                report.workloads.push(WorkloadStatus {
                    kind: "StatefulSet",
                    name: name_of(&s.metadata.name),
                    desired,
                    ready,
                });
            }
        }
        Err(e) => report.errors.push(format!("statefulsets: {e}")),
    }

    let pods: Api<Pod> = Api::namespaced(state.client.clone(), &state.namespace);
    match pods.list(&ListParams::default()).await {
        Ok(list) => report.pods = list.items.iter().map(pod_status).collect(),
        Err(e) => report.errors.push(format!("pods: {e}")),
    }

    let pvcs: Api<PersistentVolumeClaim> = Api::namespaced(state.client.clone(), &state.namespace);
    match pvcs.list(&ListParams::default()).await {
        Ok(list) => report.pvcs = list.items.iter().map(pvc_status).collect(),
        Err(e) => report.errors.push(format!("pvcs: {e}")),
    }

    let events: Api<Event> = Api::namespaced(state.client.clone(), &state.namespace);
    match events.list(&ListParams::default()).await {
        Ok(list) => {
            let mut lines: Vec<EventLine> = list
                .items
                .iter()
                .filter(|e| e.type_.as_deref() == Some("Warning"))
                .map(event_line)
                .collect();
            // Most-repeated first; cap the list.
            lines.sort_by_key(|a| std::cmp::Reverse(a.count));
            lines.truncate(15);
            report.warnings = lines;
        }
        Err(e) => report.errors.push(format!("events: {e}")),
    }

    report.services = probe_services(state).await;
    report
}

async fn probe_services(state: &AppState) -> Vec<ServiceHealth> {
    let mut out = Vec::with_capacity(state.probes.len());
    for p in state.probes.iter() {
        let url = format!("{}{}", p.base, p.health_path);
        let (healthy, code) = match state.http.get(&url).timeout(PROBE_TIMEOUT).send().await {
            Ok(resp) => (resp.status().is_success(), Some(resp.status().as_u16())),
            Err(_) => (false, None),
        };
        let info = match p.info_path {
            Some(path) => fetch_json(state, &format!("{}{}", p.base, path)).await,
            None => None,
        };
        out.push(ServiceHealth {
            name: p.name.to_string(),
            healthy,
            status_code: code,
            info,
        });
    }
    out
}

async fn fetch_json(state: &AppState, url: &str) -> Option<Value> {
    let resp = state
        .http
        .get(url)
        .timeout(PROBE_TIMEOUT)
        .send()
        .await
        .ok()?;
    if !resp.status().is_success() {
        return None;
    }
    resp.json::<Value>().await.ok()
}

// ---- mappers ----------------------------------------------------------------

fn node_status(n: &Node) -> NodeStatus {
    let ready = n
        .status
        .as_ref()
        .and_then(|s| s.conditions.as_ref())
        .map(|cs| cs.iter().any(|c| c.type_ == "Ready" && c.status == "True"))
        .unwrap_or(false);
    let kubelet = n
        .status
        .as_ref()
        .and_then(|s| s.node_info.as_ref())
        .map(|i| i.kubelet_version.clone())
        .unwrap_or_default();
    NodeStatus {
        name: name_of(&n.metadata.name),
        ready,
        kubelet_version: kubelet,
    }
}

fn pod_status(p: &Pod) -> PodStatus {
    let status = p.status.as_ref();
    let phase = status
        .and_then(|s| s.phase.clone())
        .unwrap_or_else(|| "Unknown".to_string());
    let containers = status.and_then(|s| s.container_statuses.as_ref());
    let ready = containers
        .map(|cs| !cs.is_empty() && cs.iter().all(|c| c.ready))
        .unwrap_or(false);
    let restarts = containers
        .map(|cs| cs.iter().map(|c| c.restart_count).sum())
        .unwrap_or(0);
    // Prefer the resolved imageID (has the digest); fall back to image.
    let image = containers
        .and_then(|cs| cs.first())
        .map(|c| {
            if c.image_id.is_empty() {
                c.image.clone()
            } else {
                c.image_id.clone()
            }
        })
        .unwrap_or_default();
    let age_seconds = status
        .and_then(|s| s.start_time.as_ref())
        .map(|t| (now_unix() - t.0.as_second()).max(0))
        .unwrap_or(0);
    PodStatus {
        name: name_of(&p.metadata.name),
        phase,
        ready,
        restarts,
        image: short_image(&image),
        age_seconds,
    }
}

fn pvc_status(p: &PersistentVolumeClaim) -> PvcStatus {
    let phase = p
        .status
        .as_ref()
        .and_then(|s| s.phase.clone())
        .unwrap_or_else(|| "Unknown".to_string());
    let capacity = p
        .status
        .as_ref()
        .and_then(|s| s.capacity.as_ref())
        .and_then(|c| c.get("storage"))
        .map(|q| q.0.clone())
        .unwrap_or_default();
    PvcStatus {
        name: name_of(&p.metadata.name),
        phase,
        capacity,
    }
}

fn event_line(e: &Event) -> EventLine {
    let object = e
        .involved_object
        .name
        .clone()
        .unwrap_or_else(|| "-".to_string());
    EventLine {
        object,
        reason: e.reason.clone().unwrap_or_default(),
        message: e.message.clone().unwrap_or_default(),
        count: e.count.unwrap_or(1),
    }
}

fn name_of(n: &Option<String>) -> String {
    n.clone().unwrap_or_else(|| "-".to_string())
}

/// Trim a long `docker-pullable://repo@sha256:...` down to `repo@sha256:abcdef…`.
fn short_image(image: &str) -> String {
    let img = image.strip_prefix("docker-pullable://").unwrap_or(image);
    match img.split_once("@sha256:") {
        Some((repo, digest)) => {
            let repo_tail = repo.rsplit('/').next().unwrap_or(repo);
            let short = &digest[..digest.len().min(12)];
            format!("{repo_tail}@sha256:{short}")
        }
        None => img.rsplit('/').next().unwrap_or(img).to_string(),
    }
}

fn now_unix() -> i64 {
    std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)
        .map(|d| d.as_secs() as i64)
        .unwrap_or(0)
}

/// RFC3339 UTC timestamp without pulling in chrono formatting at call sites.
fn now_rfc3339() -> String {
    // k8s-openapi 0.28 re-exports jiff; its Timestamp Display is RFC3339 (UTC).
    k8s_openapi::jiff::Timestamp::now().to_string()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn short_image_keeps_repo_and_short_digest() {
        let s = short_image(
            "docker-pullable://ghcr.io/jest-test-team/homelab-api@sha256:894095fd077988b7b1",
        );
        assert_eq!(s, "homelab-api@sha256:894095fd0779");
    }

    #[test]
    fn short_image_without_digest() {
        assert_eq!(
            short_image("postgres:18.6-alpine3.24"),
            "postgres:18.6-alpine3.24"
        );
    }

    #[test]
    fn default_probes_use_namespace_dns() {
        let p = default_probes("homelab");
        assert_eq!(p[0].base, "http://api.homelab.svc");
        assert_eq!(p[1].base, "http://mcp.homelab.svc");
    }
}
