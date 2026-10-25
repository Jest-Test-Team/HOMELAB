# Kali 應用程式 — 清單、介紹與逐步教學（繁體中文）

> English: [`applications.en.md`](applications.en.md) · 索引：[`README.md`](README.md)

**範圍 / 交戰規則（ROE）。** 以下所有指令只能對**你自己擁有的資產**執行 —— HOMELAB
節點（`$TARGET`，占位符 `<NODE_IP>`）與 Kali VM 本身，依 [`../../ROE.md`](../../ROE.md)。
所有範例都是非破壞性、低速率。**請勿**對其他任何目標執行。

這台 Kali VM（`Kali-Red5`）是**最小安裝**，因此以下大多數工具尚未安裝。需要時用
[`../scripts/install-tools.sh`](../scripts/install-tools.sh) 安裝（或 `sudo apt install <套件>`）。
Whisker 選單的分類與本文件相同（01-Reconnaissance、09-Discovery、12-Command and
Control、13-Exfiltration …）。

每則條目的讀法：**是什麼** → **安裝** → **對 lab 的逐步操作**。`$TARGET` 來自
[`../scripts/_common.sh`](../scripts/_common.sh)，先設定一次：

```bash
export TARGET=<NODE_IP>        # 你擁有的 homelab 節點
```

---

## 00 · 終端基礎（選單列上的：Terminal、Files、Firefox）

| 應用程式 | 是什麼 |
|---|---|
| **qterminal / xfce4-terminal** | 終端機模擬器，以下一切都在這裡執行。 |
| **Firefox ESR** | 瀏覽器 —— 可透過 Burp/ZAP 代理來檢視 lab 的 web/API。 |
| **Thunar（Files）** | 檔案管理員，瀏覽 `~/lab-evidence`。 |
| **Engrampa** | 壓縮檔管理員 —— 解壓字典、打包證據。 |

---

## 01 · 偵察 / 資訊蒐集（Reconnaissance）

### nmap — 網路與服務掃描器
- **是什麼：** 核心的連接埠/服務/OS 掃描器，任何測試的第一個工具。
- **安裝：** `sudo apt install -y nmap`
- **逐步（lab）：**
  1. 快速掃描：`nmap -Pn -T3 --top-ports 100 "$TARGET"`
  2. 對開放埠做版本辨識：`nmap -Pn -sV -p 22,30080,30081,30300 "$TARGET"`
  3. 確認控制有效 —— DB/k3s 應被過濾：
     `nmap -Pn -p 5432,6379,6443 "$TARGET"` → 預期 `filtered`/`closed`。
  4. 安全腳本：`nmap -Pn -sV --script "default and safe" -p 30080,30081 "$TARGET"`

### masscan — 大範圍高速 TCP 掃描
- **是什麼：** 非同步掃描器，比 nmap 快很多但細節較少。
- **安裝：** `sudo apt install -y masscan`
- **逐步：** `sudo masscan "$TARGET"/32 -p1-65535 --rate 1000`，再把開放埠丟回 `nmap -sV`。

### arp-scan / netdiscover — 第二層主機探索
- **是什麼：** 以 ARP 找出網段上的存活主機（即使 ICMP 被擋也有效）。
- **安裝：** `sudo apt install -y arp-scan netdiscover`
- **逐步：** `sudo arp-scan --localnet` —— 確認 lab 網段只有節點＋閘道＋Kali。

### dnsrecon / dnsenum / fierce — DNS 列舉
- **是什麼：** 列舉 DNS 記錄、嘗試區域轉送、暴力子網域。
- **安裝：** `sudo apt install -y dnsrecon dnsenum fierce`
- **逐步（僅限你擁有的網域）：** `dnsrecon -d homelab.local -n "$TARGET"`

### whatweb — web 技術指紋
- **是什麼：** 辨識 web app 的伺服器、框架與標頭。
- **安裝：** `sudo apt install -y whatweb`
- **逐步：** `whatweb -a 3 "http://$TARGET:30080/"` —— 注意 banner，確認沒洩漏版本。

### theHarvester — OSINT 郵件/主機蒐集
- **是什麼：** 從公開來源抓 email、子網域、主機。純 OSINT、唯讀。
- **安裝：** `sudo apt install -y theharvester`
- **逐步（僅限自有網域）：** `theHarvester -d example.com -b duckduckgo`

### enum4linux-ng / smbmap — SMB 列舉
- **是什麼：** 列舉 Windows/Samba 分享、使用者、政策。（lab 沒有 SMB —— 用來**證明** 445 已關。）
- **安裝：** `sudo apt install -y enum4linux-ng smbmap`
- **逐步：** `smbmap -H "$TARGET"` → 預期連線被拒（沒有暴露 SMB＝正確）。

---

## 02 · 弱點分析（Vulnerability Analysis）

### nuclei — 模板化弱點掃描器
- **是什麼：** 以社群模板快速掃 CVE、錯誤設定、暴露點。現代主力工具。
- **安裝：** `sudo apt install -y nuclei && nuclei -update-templates`
- **逐步（lab）：**
  1. `nuclei -u "http://$TARGET:30080" -tags cve,exposure,misconfiguration -rl 50`
  2. 檢視結果；`-severity low,medium,high,critical` 篩選。用 `-rl` 限速保持溫和。

### nikto — web 伺服器掃描器
- **是什麼：** 經典的 web 錯誤設定／危險檔案掃描器，吵但徹底。
- **安裝：** `sudo apt install -y nikto`
- **逐步：** `nikto -host "http://$TARGET:30080" -maxtime 120s`

### wpscan — WordPress 掃描器（本 lab 不適用）
- **是什麼：** WordPress 專用列舉。lab 沒有 WordPress，列出以求完整。
- **安裝：** `sudo apt install -y wpscan`

### lynis — 本機強化稽核
- **是什麼：** 稽核**本機**的強化狀態（在 Kali 或你擁有的主機上執行）。
- **安裝：** `sudo apt install -y lynis`
- **逐步：** `sudo lynis audit system`

---

## 03 · Web 應用分析

### Burp Suite（Community）— 攔截式代理
- **是什麼：** 攔截、重放、竄改 HTTP(S) 的標準 web 代理。
- **安裝：** `sudo apt install -y burpsuite` · GUI —— 需要桌面（VNC/xrdp）。
- **逐步：**
  1. 啟動 `burpsuite &`，瀏覽器代理設 `127.0.0.1:8080`，在 Firefox 安裝 Burp CA。
  2. 瀏覽 `http://$TARGET:30080`；把重要請求送到 **Repeater**；測試 MCP 端點（`:30081`）的驗證。

### OWASP ZAP — 開源 web 掃描器/代理
- **是什麼：** Burp 的開源對應品，含自動掃描器＋代理。
- **安裝：** `sudo apt install -y zaproxy`
- **逐步（無頭）：** `zaproxy -cmd -quickurl "http://$TARGET:30080" -quickout ~/lab-evidence/zap.html`

### ffuf / gobuster / dirb — 內容與路徑 fuzzing
- **是什麼：** 用字典暴力列舉目錄、檔案、vhost、參數。
- **安裝：** `sudo apt install -y ffuf gobuster dirb seclists`
- **逐步：**
  1. `ffuf -u "http://$TARGET:30080/FUZZ" -w /usr/share/seclists/Discovery/Web-Content/common.txt -mc 200,301,302,401 -rate 50`
  2. `gobuster dir -u "http://$TARGET:30080" -w /usr/share/wordlists/dirb/common.txt -q`

### sqlmap — 自動化 SQL 注入
- **是什麼：** 偵測並利用 SQL 注入；只能對你擁有的端點使用。
- **安裝：** `sudo apt install -y sqlmap`
- **逐步：** `sqlmap -u "http://$TARGET:30080/api/items?id=1" --batch --level 2 --risk 1`（偵測到即停，不要 dump 真實資料）。

### wfuzz / commix / whatweb — 其他 web
- **wfuzz：** 參數 fuzzing（`sudo apt install -y wfuzz`）。
- **commix：** 命令注入測試器（`sudo apt install -y commix`）—— lab 內僅做偵測。

---

## 04 · 資料庫評估
- **sqlmap**（如上）是主要工具。lab 的 PostgreSQL（5432）必須**無法**從 Kali 連到 —— 用
  `nmap -p 5432` 與 `psql -h "$TARGET"`（預期逾時/拒絕）驗證。`sudo apt install -y postgresql-client` 取得 `psql`。

---

## 05 · 密碼攻擊（Password Attacks）⚠️ 需明確同意

> 這些會產生失敗登入。**只能**對你自己的服務執行，且要加 `CONFIRM=yes`。字典保持極小 ——
> 這是控制測試，不是真的破密。

### hydra — 網路登入暴力破解
- **是什麼：** 對 SSH、HTTP 等做線上暴力/噴灑。
- **安裝：** `sudo apt install -y hydra`
- **逐步（僅自有 SSH、極小字典）：**
  `hydra -l test -P <(printf 'wrong1\nwrong2\n') -t 1 -f ssh://"$TARGET"` → 預期鎖定/拒絕＝控制有效。

### john / hashcat — 離線雜湊破解
- **是什麼：** 破解你已合法持有的密碼雜湊（例如測試雜湊）。
- **安裝：** `sudo apt install -y john hashcat`
- **逐步：** `echo 'user:$1$abc$...' > h.txt && john h.txt`（僅示範雜湊）。

### crunch / cewl / hashid — 字典與雜湊辨識
- **crunch：** 產生字典。**cewl：** 從網站爬成字典。**hashid：** 辨識雜湊類型。
- **安裝：** `sudo apt install -y crunch cewl hashid wordlists`

---

## 06 · 無線攻擊（本 VM 無 Wi-Fi 介面，不適用）
- **aircrack-ng / wifite / reaver / kismet** 需要可進入 monitor 模式的無線網卡。UTM VM 沒有；
  列出以求完整。若有 USB Wi-Fi 直通才安裝。

---

## 07 · 逆向工程
- **radare2 / rizin** —— CLI 反組譯/除錯（`sudo apt install -y radare2`）。`r2 ./binary`。
- **gdb** —— 除錯器（`sudo apt install -y gdb`）。
- **ghidra** —— NSA 反編譯套件，GUI（`sudo apt install -y ghidra`）。
- 用在你擁有的二進位（例如 homelab-api 映像的執行檔）上研究，不要攻擊第三方。

---

## 08 · 漏洞利用（Exploitation）

### Metasploit Framework — 漏洞利用平台
- **是什麼：** 利用/驗證框架（模組、payload、session）。
- **安裝：** `sudo apt install -y metasploit-framework`
- **逐步（lab，僅驗證）：**
  1. `sudo msfdb init && msfconsole -q`
  2. `db_nmap -sV -p 22,30080,30081 $TARGET`
  3. 只用 auxiliary **scanner** 模組（如 `auxiliary/scanner/http/http_version`）；勿對正式環境發射真實 exploit。

### searchsploit / exploitdb — 離線 exploit 資料庫
- **是什麼：** 可搜尋的本機 Exploit-DB；依產品/版本查 PoC。
- **安裝：** `sudo apt install -y exploitdb`
- **逐步：** `searchsploit nginx 1.2` —— 唯讀查詢，供參考（不是執行）。

### msfvenom / set — payload 與社交工程
- **msfvenom：** payload 產生器（metasploit 一部分）。**set（SET）：** 釣魚/社交工程模擬 —— 僅 lab 內、需同意。

---

## 09 · 嗅探與欺騙 / 探索（Sniffing & Spoofing）

### Wireshark / tshark — 封包擷取與分析
- **是什麼：** 擷取並解析流量。GUI（wireshark）＋ CLI（tshark）。
- **安裝：** `sudo apt install -y wireshark tshark`（加入群組：`sudo usermod -aG wireshark kali`）。
- **逐步：** 一邊 curl API 一邊擷取握手 ——
  `sudo tshark -i eth0 -f "host $TARGET and tcp port 30080" -c 50 -w ~/lab-evidence/cap.pcap`

### tcpdump — CLI 嗅探器
- **安裝：** `sudo apt install -y tcpdump`
- **逐步：** `sudo tcpdump -ni eth0 host "$TARGET" and port 30081 -c 20`

### bettercap / ettercap / responder — MITM 與欺騙 ⚠️
- **是什麼：** ARP 欺騙、MITM、LLMNR/NBT-NS 投毒。**具破壞性** —— 只能在你擁有的隔離 lab 網段，絕不可用於共享網路。
- **安裝：** `sudo apt install -y bettercap ettercap-graphical responder`

---

## 10 · 後滲透（Post-Exploitation）
- **weevely**（PHP web shell 產生器）、**powersploit**、**mimikatz**（Windows 憑證）—— 在你擁有的
  主機**取得立足點後**才相關。目前黑箱 lab 不適用，列出以求分類完整。

---

## 11 · 鑑識（Forensics）
- **binwalk** —— 切割韌體/檔案（`sudo apt install -y binwalk`）：`binwalk -e firmware.bin`。
- **foremost** —— 依檔頭還原檔案（`sudo apt install -y foremost`）。
- **autopsy / sleuthkit** —— 磁碟鑑識 GUI/CLI。
- **volatility3** —— 記憶體鑑識（`pipx install volatility3`）。
- 用於你擁有的映像（例如分析 VM 快照）。

---

## 12 · 命令與控制（選單分類）⚠️ 僅限 lab 內
- **是什麼：** C2 框架模擬攻擊者入侵後的控制通道。**只能**在你擁有、隔離的 lab 內、你自己的主機之間
  使用，以測試偵測能力 —— 絕不可對第三方。
- **工具：** `sliver`、`empire`/`starkiller`、`covenant`、`merlin`。最小安裝多半沒有；
  例如 `sudo apt install -y sliver`。beacon/listener 視為敏感 —— 不要對外暴露。

---

## 13 · 外洩（選單分類）⚠️ 僅做偵測測試
- **是什麼：** 隱蔽外移資料的工具/技術 —— 這裡用來**測試你的 egress 控制是否察覺**。
  lab 的對外流量受限，請加以證明。
- **工具：** `dnscat2` / `iodine`（DNS 隧道）、`nc`/`ncat`（明文）、`cloakify`，以及本倉庫的加密管線。
  範例控制測試：嘗試建立 DNS 隧道外洩，確認其失敗/告警。

---

## 16 · 服務與其他工具
- **postgresql、ssh、apache2、nginx** —— 啟動本機服務供測試（`sudo systemctl start ssh`）。
- **openvas / greenbone** —— 完整弱點管理掃描器（較重；`sudo gvm-setup`）。
- **CyberChef、Burp、ZAP** —— 資料轉換與 web 測試工具。

---

## 報告（Reporting）
- **cherrytree / dradis / faraday** —— 整理發現並產生報告。
- 在本倉庫中，證據會落在 Kali 的 `~/lab-evidence/`，再經加密分析管線處理
  （[`../../crypto/README.md`](../../crypto/README.md)）。原始證據不要進 git。

---

## 快速對照 —— 工具 → 倉庫腳本

| 目標 | 倉庫腳本 | 驅動的工具 |
|---|---|---|
| 基準攻擊套件（Phase-1 控制） | [`../scripts/run-all.sh`](../scripts/run-all.sh) | curl、TCP 檢查 |
| 安裝本文件的工具 | [`../scripts/install-tools.sh`](../scripts/install-tools.sh) | apt |
| 驅動／串接個別工具 | [`../scripts/toolkit.sh`](../scripts/toolkit.sh) | nmap、whatweb、nuclei、nikto、ffuf、tcpdump、searchsploit、hydra |

工具組的參數與串接見 [`../scripts/README.md`](../scripts/README.md)。
