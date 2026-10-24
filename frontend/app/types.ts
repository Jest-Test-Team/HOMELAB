// Mirrors crates/dashboard StatusReport.
export interface BuildInfo { service: string; version: string; git_sha: string; }
export interface NodeStatus { name: string; ready: boolean; kubelet_version: string; }
export interface WorkloadStatus { kind: string; name: string; desired: number; ready: number; }
export interface PodStatus { name: string; phase: string; ready: boolean; restarts: number; image: string; age_seconds: number; }
export interface PvcStatus { name: string; phase: string; capacity: string; }
export interface ServiceHealth { name: string; healthy: boolean; status_code: number | null; info: unknown; }
export interface EventLine { object: string; reason: string; message: string; count: number; }
export interface StatusReport {
  dashboard: BuildInfo;
  generated_at: string;
  nodes: NodeStatus[];
  workloads: WorkloadStatus[];
  pods: PodStatus[];
  pvcs: PvcStatus[];
  services: ServiceHealth[];
  warnings: EventLine[];
  errors: string[];
}
