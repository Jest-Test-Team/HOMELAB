"use client";

import { useCallback, useEffect, useState } from "react";
import type { StatusReport } from "./types";

const POLL_MS = 5000;

function age(seconds: number): string {
  if (seconds < 60) return `${seconds}s`;
  if (seconds < 3600) return `${Math.floor(seconds / 60)}m`;
  if (seconds < 86400) return `${Math.floor(seconds / 3600)}h`;
  return `${Math.floor(seconds / 86400)}d`;
}

function deployedSha(report: StatusReport): string | null {
  const api = report.services.find((s) => s.name === "api");
  const info = api?.info as { git_sha?: string } | undefined;
  return info?.git_sha ?? null;
}

export default function Page() {
  const [report, setReport] = useState<StatusReport | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [fetchedAt, setFetchedAt] = useState<Date | null>(null);

  const load = useCallback(async () => {
    try {
      const res = await fetch("/api/status", { cache: "no-store" });
      if (!res.ok) throw new Error(`status ${res.status}`);
      setReport((await res.json()) as StatusReport);
      setError(null);
      setFetchedAt(new Date());
    } catch (e) {
      setError(e instanceof Error ? e.message : String(e));
    }
  }, []);

  useEffect(() => {
    load();
    const id = setInterval(load, POLL_MS);
    return () => clearInterval(id);
  }, [load]);

  const sha = report ? deployedSha(report) : null;
  const nodesReady = report ? report.nodes.filter((n) => n.ready).length : 0;
  const podsReady = report ? report.pods.filter((p) => p.ready).length : 0;
  const servicesUp = report ? report.services.filter((s) => s.healthy).length : 0;

  return (
    <main>
      <header className="top">
        <div>
          <h1>HOMELAB status</h1>
          <div className="sub">
            namespace <span className="mono">homelab</span>
            {sha && <> · deployed <span className="mono">{sha.slice(0, 12)}</span></>}
            {fetchedAt && <> · updated {fetchedAt.toLocaleTimeString()}</>}
          </div>
        </div>
        <button className="refresh" onClick={load}>Refresh</button>
      </header>

      {error && <div className="errbox">dashboard unreachable: {error}</div>}
      {report?.errors.map((e, i) => (
        <div className="errbox" key={i}>collection error: {e}</div>
      ))}

      {report && (
        <>
          <div className="tiles">
            <Tile label="Nodes ready" value={`${nodesReady}/${report.nodes.length}`} good={nodesReady === report.nodes.length} />
            <Tile label="Pods ready" value={`${podsReady}/${report.pods.length}`} good={podsReady === report.pods.length} />
            <Tile label="Services up" value={`${servicesUp}/${report.services.length}`} good={servicesUp === report.services.length} />
            <Tile label="Warnings" value={String(report.warnings.length)} good={report.warnings.length === 0} />
          </div>

          <Section title="Service health">
            <Table head={["Service", "Health", "HTTP"]}>
              {report.services.map((s) => (
                <tr key={s.name}>
                  <td className="mono">{s.name}</td>
                  <td><span className={`pill ${s.healthy ? "ok" : "bad"}`}>{s.healthy ? "up" : "down"}</span></td>
                  <td className="mono">{s.status_code ?? "—"}</td>
                </tr>
              ))}
            </Table>
          </Section>

          <Section title="Workloads">
            <Table head={["Kind", "Name", "Ready"]}>
              {report.workloads.map((w) => (
                <tr key={`${w.kind}/${w.name}`}>
                  <td>{w.kind}</td>
                  <td className="mono">{w.name}</td>
                  <td>
                    <span className={`dot ${w.ready === w.desired && w.desired > 0 ? "ok" : "bad"}`} />
                    {w.ready}/{w.desired}
                  </td>
                </tr>
              ))}
            </Table>
          </Section>

          <Section title="Pods">
            <Table head={["Name", "Phase", "Ready", "Restarts", "Image", "Age"]}>
              {report.pods.map((p) => (
                <tr key={p.name}>
                  <td className="mono">{p.name}</td>
                  <td>{p.phase}</td>
                  <td><span className={`dot ${p.ready ? "ok" : "bad"}`} />{p.ready ? "yes" : "no"}</td>
                  <td className="right">{p.restarts}</td>
                  <td className="mono">{p.image}</td>
                  <td>{age(p.age_seconds)}</td>
                </tr>
              ))}
            </Table>
          </Section>

          <Section title="Volumes">
            <Table head={["Claim", "Phase", "Capacity"]}>
              {report.pvcs.map((v) => (
                <tr key={v.name}>
                  <td className="mono">{v.name}</td>
                  <td><span className={`dot ${v.phase === "Bound" ? "ok" : "warn"}`} />{v.phase}</td>
                  <td className="mono">{v.capacity || "—"}</td>
                </tr>
              ))}
            </Table>
          </Section>

          {report.warnings.length > 0 && (
            <Section title="Recent warnings">
              <Table head={["Object", "Reason", "Message", "Count"]}>
                {report.warnings.map((w, i) => (
                  <tr key={i}>
                    <td className="mono">{w.object}</td>
                    <td>{w.reason}</td>
                    <td>{w.message}</td>
                    <td className="right">{w.count}</td>
                  </tr>
                ))}
              </Table>
            </Section>
          )}
        </>
      )}

      {!report && !error && <p className="empty">Loading…</p>}
    </main>
  );
}

function Tile({ label, value, good }: { label: string; value: string; good: boolean }) {
  return (
    <div className="tile">
      <div className="label">{label}</div>
      <div className="value"><span className={`dot ${good ? "ok" : "bad"}`} />{value}</div>
    </div>
  );
}

function Section({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <section>
      <h2>{title}</h2>
      <div className="card">{children}</div>
    </section>
  );
}

function Table({ head, children }: { head: string[]; children: React.ReactNode }) {
  const rows = Array.isArray(children) ? children : [children];
  return (
    <table>
      <thead>
        <tr>{head.map((h) => <th key={h}>{h}</th>)}</tr>
      </thead>
      <tbody>{rows.length > 0 ? children : <tr><td className="empty" colSpan={head.length}>none</td></tr>}</tbody>
    </table>
  );
}
