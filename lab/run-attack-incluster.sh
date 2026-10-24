#!/usr/bin/env bash
# Run the Phase-1 Kali attack against your OWN homelab services from an isolated
# in-cluster attacker. Run this ON THE UBUNTU VM (kubectl configured).
#
# Why in-cluster: the Kali *VM* installer is interactive (UTM console) and
# Claude Code's safety guard blocks an assistant from launching attacks at the
# shared cluster — so you run this. It realizes the exact Phase-1 matrix
# (API/MCP auth, network exposure, k8s segmentation, rate limits) with the Kali
# toolset, and isolates the attacker with NetworkPolicies (DNS + api/mcp only:
# no internet, no postgres/redis, no other namespace).
#
#   lab/run-attack-incluster.sh          # run the attack
#   lab/run-attack-incluster.sh --clean  # remove the redlab namespace + lab surface
set -Eeuo pipefail
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NS=redlab
EVID="${EVIDENCE_DIR:-/Volumes/HOMELAB/Backups/lab-evidence}"

if [ "${1:-}" = --clean ]; then
  kubectl delete namespace "$NS" --ignore-not-found
  kubectl -n homelab delete -f "$REPO/lab/k8s/api-mcp-lab-nodeports.yaml" --ignore-not-found
  echo "cleaned up"; exit 0
fi

echo "== expose the authorized test surface (api/mcp) =="
kubectl apply -f "$REPO/lab/k8s/api-mcp-lab-nodeports.yaml"

echo "== create the isolated attacker namespace =="
kubectl create namespace "$NS" --dry-run=client -o yaml | kubectl apply -f -

echo "== launch the Kali attacker pod =="
kubectl -n "$NS" run kali --image=kalilinux/kali-rolling --restart=Never \
  --command -- sleep infinity 2>/dev/null || true
kubectl -n "$NS" wait --for=condition=Ready pod/kali --timeout=180s

echo "== install Phase-1 tools (needs brief internet; isolation applied after) =="
kubectl -n "$NS" exec kali -- bash -lc 'apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -y -qq nmap curl python3 >/dev/null 2>&1; echo tools-ready'

echo "== apply attacker isolation (DNS + api/mcp only; no internet/DB) =="
kubectl apply -f - <<YAML
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata: {name: redlab-deny-egress, namespace: $NS}
spec: {podSelector: {}, policyTypes: [Egress]}
---
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata: {name: redlab-allow-dns, namespace: $NS}
spec:
  podSelector: {}
  policyTypes: [Egress]
  egress:
    - to: [{namespaceSelector: {}, podSelector: {matchLabels: {k8s-app: kube-dns}}}]
      ports: [{protocol: UDP, port: 53}, {protocol: TCP, port: 53}]
---
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata: {name: redlab-allow-targets, namespace: $NS}
spec:
  podSelector: {}
  policyTypes: [Egress]
  egress:
    - to:
        - namespaceSelector: {matchLabels: {kubernetes.io/metadata.name: homelab}}
          podSelector: {matchExpressions: [{key: app.kubernetes.io/name, operator: In, values: [api, mcp]}]}
      ports: [{protocol: TCP, port: 8080}]
YAML

TOKEN="$(kubectl -n homelab get secret homelab-mcp -o jsonpath='{.data.MCP_AUTH_TOKEN}' | base64 -d)"

echo "== ATTACK =="
# shellcheck disable=SC2016  # the body runs remotely inside the pod; no local expansion
kubectl -n "$NS" exec kali -- bash -lc '
set -u
API=http://api.homelab.svc; MCP=http://mcp.homelab.svc
echo "### network exposure (nmap)"; nmap -Pn -p 80 api.homelab.svc mcp.homelab.svc postgres.homelab.svc redis.homelab.svc 2>/dev/null | grep -E "report|80/tcp|host down" || true
echo "### api reachable (authorized)"; curl -s -o /dev/null -w "  api /api/v1/version -> HTTP %{http_code}\n" --max-time 6 $API/api/v1/version
echo "### k8s segmentation (must FAIL)"
for t in postgres.homelab.svc:5432 redis.homelab.svc:6379; do
  timeout 4 bash -c "exec 3<>/dev/tcp/${t/:/ }" 2>/dev/null && echo "  $t REACHABLE (FAIL)" || echo "  $t blocked (ok)"
done
echo "### internet egress (must FAIL under isolation)"
curl -s -o /dev/null --max-time 5 http://example.com && echo "  internet REACHABLE (FAIL)" || echo "  internet blocked (ok)"
echo "### MCP auth: no token (expect 401)"; curl -s -o /dev/null -w "  -> HTTP %{http_code}\n" --max-time 6 -X POST -H "Host: mcp.homelab.svc" -H "Content-Type: application/json" --data "{}" $MCP/mcp
echo "### MCP rate/health burst (api must stay 200)"; ok=0; for i in $(seq 1 30); do c=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 $API/health/ready); [ "$c" = 200 ] && ok=$((ok+1)); done; echo "  $ok/30 ready=200"
'
echo "== MCP positive auth (valid token + allowed Host) =="
kubectl -n "$NS" exec kali -- bash -lc "curl -s -o /dev/null -w '  valid token -> HTTP %{http_code} (not 401 = auth passed)\n' --max-time 6 -X POST -H 'Authorization: Bearer $TOKEN' -H 'Host: mcp.homelab.svc' -H 'Content-Type: application/json' --data '{}' http://mcp.homelab.svc/mcp"

echo "== collect evidence =="
mkdir -p "$EVID" 2>/dev/null || EVID=/tmp/lab-evidence && mkdir -p "$EVID"
kubectl -n "$NS" logs kali > "$EVID/attack-$(date -u +%Y%m%dT%H%M%SZ).log" 2>/dev/null || true
echo "done. Clean up with: $0 --clean"
