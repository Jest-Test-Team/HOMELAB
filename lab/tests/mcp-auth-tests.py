#!/usr/bin/env python3
"""Phase-1 MCP access-control checks. Run on Kali. Scope: ROE.md.

Verifies, against the mcp lab NodePort:
  1. no Authorization header            -> 401
  2. valid token but a FOREIGN Host hdr -> rejected by the DNS-rebinding guard
  3. valid token + an allowed Host hdr  -> auth passes (NOT 401)

The token is the operator's own; pass it via MCP_TOKEN to run the positive
checks (2 and 3). Without it, only check 1 runs.
"""
import json
import os
import sys
import urllib.error
import urllib.request

BASE = os.environ.get("MCP_BASE", "http://10.66.6.10:30081")
TOKEN = os.environ.get("MCP_TOKEN", "")
ALLOWED_HOST = os.environ.get("MCP_ALLOWED_HOST", "mcp.homelab.svc")
URL = BASE + "/mcp"

BODY = json.dumps({
    "jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {},
}).encode()


def call(headers):
    req = urllib.request.Request(URL, data=BODY, method="POST")
    req.add_header("Content-Type", "application/json")
    req.add_header("Accept", "application/json, text/event-stream")
    for k, v in headers.items():
        req.add_header(k, v)
    try:
        with urllib.request.urlopen(req, timeout=6) as r:
            return r.status
    except urllib.error.HTTPError as e:
        return e.code
    except Exception as e:  # noqa: BLE001
        print(f"    (transport error: {e})")
        return None


def check(name, got, predicate, expectation):
    ok = predicate(got)
    print(f"[{'PASS' if ok else 'FAIL'}] {name}: got {got} ({expectation})")
    return ok


def main():
    results = []
    results.append(check(
        "no token -> 401",
        call({"Host": ALLOWED_HOST}),
        lambda c: c == 401,
        "expect 401",
    ))
    if TOKEN:
        results.append(check(
            "valid token + foreign Host -> rejected",
            call({"Authorization": f"Bearer {TOKEN}", "Host": "evil.example"}),
            lambda c: c not in (200, None),
            "expect non-200 (host allowlist)",
        ))
        results.append(check(
            "valid token + allowed Host -> auth passes",
            call({"Authorization": f"Bearer {TOKEN}", "Host": ALLOWED_HOST}),
            lambda c: c is not None and c != 401,
            "expect not 401",
        ))
    else:
        print("[skip] positive checks: set MCP_TOKEN to run them")
    sys.exit(0 if all(results) else 1)


if __name__ == "__main__":
    main()
