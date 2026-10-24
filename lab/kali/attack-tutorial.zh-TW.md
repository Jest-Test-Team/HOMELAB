# 從 Kali 攻擊 HOMELAB — 教學（繁體中文）

> **範圍與倫理。** 這裡所有的攻擊目標都是操作者自己的 homelab。請只對你擁有的資產
> 執行測試，並遵守 [`../ROE.md`](../ROE.md)。這些腳本皆為非破壞性、低速率。
> 請勿指向任何其他目標。

本教學帶你從 **Kali 虛擬機** 對 k3s homelab 執行第一階段（Phase-1）資安評估，
驗證各項防護措施是否有效，並產生測試證據。

---

## 0. 你要測試什麼

homelab 僅「刻意」對實驗室開放兩個應用程式連接埠：

- **api** NodePort `30080` — REST API。
- **mcp** NodePort `30081` — MCP server（Bearer token 驗證 + Host 白名單）。

其餘所有服務，從攻擊機都必須是「無法連線」的：

- PostgreSQL `5432`、Redis `6379` — 資料庫，僅限叢集內部。
- dashboard NodePort `30300` — 僅限 `tailscale0` 介面存取。
- k3s API `6443` — 控制平面；請用
  `deploy/scripts/local_migrate/24-guest-apiserver-firewall.sh` 加以限制。

| 防護項目 | 預期結果 | 為何重要 |
|---|---|---|
| 連接埠暴露 | 僅 22 / 30080 / 30081 開放 | 最小攻擊面 |
| API 驗證/健康 | version/health 回 200；亂打路徑回 404（非 5xx） | 不洩漏內部資訊 |
| MCP 無/錯 token | `401` | 強制身分驗證 |
| MCP 偽造 `Host` | `403` | 防 DNS rebinding |
| MCP 正確 token + 正確 `Host` | 非 `401` | 驗證確實通過 |
| PostgreSQL / Redis | 連線被阻擋 | 網路分段 |
| dashboard `30300` | 從 Shared 網段被阻擋 | 僅限 tailnet 暴露 |
| k3s API `6443` | 被阻擋 | 控制平面隔離 |
| 連線爆量（30 次） | api 維持 `200` | 韌性，不易被 DoS |

---

## 1. 事前準備

在 Kali 虛擬機上（預設帳密 `kali` / `kali`）：

```bash
sudo apt update && sudo apt install -y nmap curl   # zaproxy 選用
```

把腳本放到 Kali — 可以 clone 整個 repo，或只從你的 Mac 複製 scripts：

```bash
# 在 Mac 上執行（請改成你的 Kali IP）
scp -r lab/kali/scripts kali@192.168.64.7:~/kali-scripts
```

決定你的 `TARGET`：

- **Shared 網路（目前設定）：** homelab 節點，例如 `192.168.64.4`。
- **隔離實驗室網段（跑完 `lab/` 佈署後）：** 閘道 `10.66.6.10`。

---

## 2. 執行

### 一次跑完所有步驟（建議）

```bash
cd ~/kali-scripts
TARGET=192.168.64.4 ./run-all.sh
```

這會依序執行每個步驟，並寫入
`~/lab-evidence/kali-attack-<timestamp>.md`。

### 逐步執行

```bash
TARGET=192.168.64.4 ./00-recon.sh          # 哪些連接埠開著
TARGET=192.168.64.4 ./10-api-test.sh       # api 健康、不洩漏資訊
TARGET=192.168.64.4 ./20-mcp-auth.sh       # MCP 驗證 + Host 白名單
TARGET=192.168.64.4 ./30-segmentation.sh   # DB / 6443 必須被阻擋
TARGET=192.168.64.4 ./40-rate-limit.sh 30  # 受控爆量
```

### 驗證「正確 token」的 MCP 路徑

`401`（無/錯 token）證明「拒絕」有效。若要再證明「有效」token 會被接受，
請在節點上取出 token 並傳入：

```bash
# 在 homelab 節點（透過 SSH）：
sudo k3s kubectl -n homelab get secret mcp-auth -o jsonpath='{.data.token}' | base64 -d; echo
# 接著在 Kali 上：
MCP_TOKEN='<貼上 token>' TARGET=192.168.64.4 ./20-mcp-auth.sh
```

使用有效 token 的預期結果：偽造 `Host` → `403`；正確 `Host` → 非 `401`
（通常是 `406`，代表驗證已通過、只是請求內容不是完整的 MCP 呼叫）。

---

## 3. 解讀結果

在「隔離」實驗室網段上，健康的基準線是「全部 PASS」。但在目前的「Shared」
網路上，你會看到一個預期中的 `FAIL`：

```
  FAIL k3s API :6443 -> open (expected closed)
```

這就是真正的發現（finding）：k3s 把 `6443` 綁在所有介面上，而在 UTM Shared
網路中，另一台 VM 就能連到它。有兩種修法：

1. **Guest 防火牆（不中斷服務）：** 在 homelab 節點上執行
   `deploy/scripts/local_migrate/24-guest-apiserver-firewall.sh --yes`。它會在
   管理介面上丟棄 `6443`，同時保留 loopback、Tailscale 與叢集內部
   （ClusterIP → DNAT）流量。再跑一次 `30-segmentation.sh`，`6443` 那行
   應會變成 **PASS**。
2. **隔離網段：** 把 Kali 移到 host-only 的實驗室網卡（`lab/` 腳本）；
   `ubuntu-lab` 的 nftables 角色在那裡本來就會丟棄 `6443`。

---

## 4. 收集證據

```bash
# 在 Mac 上，透過 Ubuntu 跳板把證據從 Kali 取回：
scp -o ProxyJump=<vm-user>@utm-homelab \
  kali@10.66.6.20:lab-evidence/'*' /Volumes/HOMELAB/Backups/lab-evidence/
```

（在 Shared 網路上：`scp -i ~/.ssh/homelab_utm_ed25519 kali@192.168.64.7:lab-evidence/'*' …`。）

---

## 5. 第二階段（Phase-2）構想（不在這些腳本內）

- 在隔離網段上部署「刻意有漏洞」的標靶（DVWA、juice-shop）。
- 偵測工程：在實驗室橋接介面上跑 Zeek / Suricata，對上述掃描產生告警。
  路線圖請見 `implementation.md`。
