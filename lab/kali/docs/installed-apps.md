# Installed applications on this Kali VM — complete list (English / 繁體中文)

> Auto-generated from the VM on 2026-10-25 by enumerating every visible `.desktop` entry
> in `/usr/share/applications`. Regenerate after installing tools with
> [`../scripts/list-apps.sh`](../scripts/list-apps.sh).
> Curated offensive **tutorials** live in [`applications.en.md`](applications.en.md) /
> [`applications.zh-TW.md`](applications.zh-TW.md); this file is the exhaustive inventory.

**Fact check (this VM, `Kali-Red5`):** it is a **minimal** install — `kali-linux-core`
only. **79** applications are in the menu, but they are mostly the Xfce desktop, Kali
web-links, and a handful of tools (`tcpdump`, `netcat`, `nmap`→ via core). The large
offensive toolset (nmap/nuclei/metasploit/…) is **not installed yet** — those menu
categories (01-Reconnaissance, 12-Command and Control, …) are populated by installing the
Kali metapackages. Install them with [`../scripts/install-tools.sh`](../scripts/install-tools.sh)
or `sudo apt install kali-linux-default`, then re-run `list-apps.sh` to regenerate this file.

To **use** any security tool below from one entry point, see
[`../scripts/toolkit.sh`](../scripts/toolkit.sh) and [`../scripts/README.md`](../scripts/README.md).
To open a GUI app over the VNC desktop: `../scripts/toolkit.sh launch <exec>` (e.g. `launch burpsuite`).

---

## English — all 79 menu applications, grouped

### 1. Security / networking tools

| Application | What it is |
|---|---|
| maltego (installer) | OSINT/link-analysis tool — this entry installs it on first run. |
| netcat | The TCP/UDP Swiss-army knife (nc) — banners, simple exfil/listener tests. |
| tcpdump | CLI packet sniffer — capture traffic to/from the target. |

### 2. Kali resources (web links)

| Application | What it is |
|---|---|
| Exploit Database | Opens exploit-db.com (see searchsploit for the offline copy). |
| Kali Bugs | Link to the Kali bug tracker. |
| Kali Docs | Link to the Kali documentation. |
| Kali Forums | Link to the Kali community forums. |
| Kali Linux | Link to kali.org. |
| Kali Tools | Link to the Kali tools listing (tools.kali.org). |
| NetHunter | Link to Kali NetHunter (mobile). |
| OffSec Training | Link to OffSec courses. |
| VulnHub | Link to VulnHub practice VMs. |

### 3. Terminals

| Application | What it is |
|---|---|
| QTerminal | The default terminal emulator — where you run every tool below. |
| QTerminal Drop-down | Drop-down (Quake-style) terminal. |
| Root Terminal Emulator | Terminal that opens as root. |

### 4. Editors

| Application | What it is |
|---|---|
| Mousepad | Lightweight GUI text editor. |
| Text Editor | Default text editor. |
| Vim | Modal CLI text editor. |

### 5. Files & archives

| Application | What it is |
|---|---|
| Bulk Rename | Thunar bulk file renamer. |
| Engrampa Archive Manager | Create/extract archives — unpack wordlists, bundle evidence. |
| Help | Yelp help browser. |
| Thunar File Manager | Graphical file manager — browse ~/lab-evidence. |

### 6. Media & documents

| Application | What it is |
|---|---|
| Atril Document Viewer | PDF/document viewer — read exported reports. |
| Parole Media Player | Media player. |
| Ristretto Image Viewer | Image viewer — review screenshots. |
| Volume Control | Xfce/desktop setting. |

### 7. Web & network

| Application | What it is |
|---|---|
| Firefox ESR | Browser — proxy it through Burp/ZAP to inspect the lab web/API. |
| Mail Reader | Default mail client launcher. |
| Web Browser | Default web browser launcher. |
| Web Browser | Default web browser launcher. |

### 8. Accessibility

| Application | What it is |
|---|---|
| Onboard | On-screen keyboard. |
| Onboard Settings | Xfce/desktop setting. |

### 9. Settings & desktop

| Application | What it is |
|---|---|
| Accessibility | Assistive settings (sticky keys, etc.). |
| Advanced Network Configuration | NetworkManager editor — set the VM IP/DNS, add the isolated-lab NIC. |
| Appearance | Xfce/desktop setting. |
| Clipboard Manager Settings | Xfce/desktop setting. |
| Color Profiles | Xfce/desktop setting. |
| Default Applications | Xfce/desktop setting. |
| Desktop | Xfce/desktop setting. |
| Display | Xfce/desktop setting. |
| Kali HiDPI Mode | Toggle HiDPI scaling for high-res displays. |
| Kali Tweaks | Central Kali config — enable tool metapackages, undercover mode, shells. |
| Keyboard | Xfce/desktop setting. |
| LightDM GTK Greeter settings | Configure the login screen. |
| Mouse and Touchpad | Xfce/desktop setting. |
| Notifications | Xfce/desktop setting. |
| Panel | Xfce/desktop setting. |
| Panel Profiles | Xfce/desktop setting. |
| Power Manager | Xfce/desktop setting. |
| Qt5 Settings | Xfce/desktop setting. |
| Qt6 Settings | Xfce/desktop setting. |
| Removable Drives and Media | Xfce/desktop setting. |
| Session and Startup | Xfce/desktop setting. |
| Settings Editor | Xfce/desktop setting. |
| Settings Manager | Xfce/desktop setting. |
| Thunar Preferences | Xfce/desktop setting. |
| Time and Date | Xfce/desktop setting. |
| Users and Groups | Manage local accounts. |
| Window Manager | Xfce/desktop setting. |
| Window Manager Tweaks | Xfce/desktop setting. |
| Workspaces | Xfce/desktop setting. |
| Xfce Screensaver | Xfce/desktop setting. |

### 10. System & utilities

| Application | What it is |
|---|---|
| About Xfce | Shows the Xfce desktop version. |
| Application Finder | Search & launch any installed app (the whisker menu search). |
| BackTrack Mode | Kali Tweaks toggle for the legacy BackTrack look. |
| Catfish File Search | Desktop file-content search. |
| Clipboard Manager | Clipboard history tray applet. |
| Disks | GNOME Disks — partition/format/mount drives, image a disk. |
| File Manager | Thunar file manager (opener). |
| GtkHash | Compute file checksums (MD5/SHA) — verify evidence integrity. |
| Kali Halloween Mode | Kali Tweaks seasonal theme toggle. |
| Kali Undercover Mode | Makes the desktop look like Windows (stealth demo). |
| Log Out | End the desktop session. |
| MATE Calculator | Calculator. |
| Run Program... | Run an arbitrary command (app launcher). |
| Screenshot | Capture the screen — attach to evidence. |
| Sensor Viewer | Show hardware sensors. |
| Task Manager | Process/resource monitor. |
| Terminal Emulator | Xfce terminal (opener). |

---

## 繁體中文 —— 選單中所有應用程式（依類別）

### 1. Security / networking tools

| 應用程式 | 說明 |
|---|---|
| maltego (installer) | OSINT／關聯分析工具 —— 此項目首次執行時安裝。 |
| netcat | TCP/UDP 萬用工具（nc）—— 抓 banner、簡單外洩/監聽測試。 |
| tcpdump | CLI 封包嗅探器 —— 擷取與目標間的流量。 |

### 2. Kali resources (web links)

| 應用程式 | 說明 |
|---|---|
| Exploit Database | 開啟 exploit-db.com（離線版見 searchsploit）。 |
| Kali Bugs | Kali bug 追蹤系統連結。 |
| Kali Docs | Kali 官方文件連結。 |
| Kali Forums | Kali 社群論壇連結。 |
| Kali Linux | kali.org 連結。 |
| Kali Tools | Kali 工具清單連結（tools.kali.org）。 |
| NetHunter | Kali NetHunter（行動版）連結。 |
| OffSec Training | OffSec 課程連結。 |
| VulnHub | VulnHub 練習 VM 連結。 |

### 3. Terminals

| 應用程式 | 說明 |
|---|---|
| QTerminal | 預設終端機 —— 以下所有工具都在這裡執行。 |
| QTerminal Drop-down | 下拉式（Quake 風格）終端機。 |
| Root Terminal Emulator | 以 root 開啟的終端機。 |

### 4. Editors

| 應用程式 | 說明 |
|---|---|
| Mousepad | 輕量 GUI 文字編輯器。 |
| Text Editor | 預設文字編輯器。 |
| Vim | 模式化 CLI 文字編輯器。 |

### 5. Files & archives

| 應用程式 | 說明 |
|---|---|
| Bulk Rename | Thunar 批次檔名重新命名。 |
| Engrampa Archive Manager | 建立／解開壓縮檔 —— 解壓字典、打包證據。 |
| Help | Yelp 說明瀏覽器。 |
| Thunar File Manager | 圖形檔案管理員 —— 瀏覽 ~/lab-evidence。 |

### 6. Media & documents

| 應用程式 | 說明 |
|---|---|
| Atril Document Viewer | PDF／文件檢視器 —— 閱讀匯出的報告。 |
| Parole Media Player | 媒體播放器。 |
| Ristretto Image Viewer | 圖片檢視器 —— 檢視截圖。 |
| Volume Control | Xfce／桌面設定。 |

### 7. Web & network

| 應用程式 | 說明 |
|---|---|
| Firefox ESR | 瀏覽器 —— 透過 Burp/ZAP 代理檢視 lab 的 web/API。 |
| Mail Reader | 預設郵件程式啟動器。 |
| Web Browser | 預設瀏覽器啟動器。 |
| Web Browser | 預設瀏覽器啟動器。 |

### 8. Accessibility

| 應用程式 | 說明 |
|---|---|
| Onboard | 螢幕小鍵盤。 |
| Onboard Settings | Xfce／桌面設定。 |

### 9. Settings & desktop

| 應用程式 | 說明 |
|---|---|
| Accessibility | 輔助使用設定（黏滯鍵等）。 |
| Advanced Network Configuration | NetworkManager 編輯器 —— 設定 VM 的 IP/DNS、加入隔離 lab 網卡。 |
| Appearance | Xfce／桌面設定。 |
| Clipboard Manager Settings | Xfce／桌面設定。 |
| Color Profiles | Xfce／桌面設定。 |
| Default Applications | Xfce／桌面設定。 |
| Desktop | Xfce／桌面設定。 |
| Display | Xfce／桌面設定。 |
| Kali HiDPI Mode | 切換 HiDPI 高解析度縮放。 |
| Kali Tweaks | Kali 設定中心 —— 啟用工具套件、undercover 模式、shell。 |
| Keyboard | Xfce／桌面設定。 |
| LightDM GTK Greeter settings | 設定登入畫面。 |
| Mouse and Touchpad | Xfce／桌面設定。 |
| Notifications | Xfce／桌面設定。 |
| Panel | Xfce／桌面設定。 |
| Panel Profiles | Xfce／桌面設定。 |
| Power Manager | Xfce／桌面設定。 |
| Qt5 Settings | Xfce／桌面設定。 |
| Qt6 Settings | Xfce／桌面設定。 |
| Removable Drives and Media | Xfce／桌面設定。 |
| Session and Startup | Xfce／桌面設定。 |
| Settings Editor | Xfce／桌面設定。 |
| Settings Manager | Xfce／桌面設定。 |
| Thunar Preferences | Xfce／桌面設定。 |
| Time and Date | Xfce／桌面設定。 |
| Users and Groups | 管理本機帳號。 |
| Window Manager | Xfce／桌面設定。 |
| Window Manager Tweaks | Xfce／桌面設定。 |
| Workspaces | Xfce／桌面設定。 |
| Xfce Screensaver | Xfce／桌面設定。 |

### 10. System & utilities

| 應用程式 | 說明 |
|---|---|
| About Xfce | 顯示 Xfce 桌面版本資訊。 |
| Application Finder | 搜尋並啟動任何已安裝程式（選單搜尋）。 |
| BackTrack Mode | Kali Tweaks 切換成舊版 BackTrack 外觀。 |
| Catfish File Search | 桌面檔案／內容搜尋。 |
| Clipboard Manager | 剪貼簿歷史列小工具。 |
| Disks | GNOME Disks —— 分割／格式化／掛載磁碟、製作磁碟映像。 |
| File Manager | Thunar 檔案管理員。 |
| GtkHash | 計算檔案雜湊（MD5/SHA）—— 驗證證據完整性。 |
| Kali Halloween Mode | Kali Tweaks 節慶主題切換。 |
| Kali Undercover Mode | 讓桌面偽裝成 Windows（隱蔽示範）。 |
| Log Out | 結束桌面工作階段。 |
| MATE Calculator | 計算機。 |
| Run Program... | 執行任意指令（啟動器）。 |
| Screenshot | 擷取螢幕畫面 —— 附加到證據。 |
| Sensor Viewer | 顯示硬體感測器。 |
| Task Manager | 程序／資源監視器。 |
| Terminal Emulator | Xfce 終端機。 |

---

> 註：這 79 個是**目前**選單中的程式。安裝工具套件後（見 install-tools.sh），
> 01-Reconnaissance、08-Exploitation、12-Command and Control 等分類會出現數十到數百個工具；
> 之後重跑 `list-apps.sh` 即可更新本清單。每個攻擊工具的逐步教學見 `applications.zh-TW.md`。
