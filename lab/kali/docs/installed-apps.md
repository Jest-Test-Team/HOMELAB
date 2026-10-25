# Every application on this Kali VM — introductions & step-by-step (English / 繁體中文)

> Auto-generated from the VM on 2026-10-25 by enumerating every visible `.desktop` entry.
> Regenerate the list with [`../scripts/list-apps.sh`](../scripts/list-apps.sh); launch any
> of these with [`../scripts/apps.sh`](../scripts/apps.sh) (`apps.sh open "<name>"`).
> The offensive-tool deep-dives live in [`applications.en.md`](applications.en.md) /
> [`applications.zh-TW.md`](applications.zh-TW.md).

**Honest status (this VM, `Kali-Red5`):** a **minimal** install — `kali-linux-core` only,
**78** applications in the menu (mostly the Xfce desktop, Kali web-links, terminals/editors,
and `tcpdump`/`netcat`). The large offensive toolset is **not installed yet**; the numbered
menu categories (01-Reconnaissance … 16-Services) fill in after
[`../scripts/install-tools.sh`](../scripts/install-tools.sh) or `sudo apt install kali-linux-default`.
Re-run `list-apps.sh` afterwards and this file can be regenerated to include the new tools.

**How to use any app below:**
- GUI app → `../scripts/apps.sh open "<Name>"` (opens on the VNC/xrdp desktop), or the whisker menu.
- CLI security tool → `../scripts/toolkit.sh <module>` (run/chain), see [`../scripts/README.md`](../scripts/README.md).

每個應用程式都附**英文與繁體中文的介紹與逐步步驟**。GUI 程式用 `apps.sh open "<名稱>"`
在 VNC 桌面開啟；CLI 安全工具用 `toolkit.sh`。攻擊工具的深入教學見 `applications.zh-TW.md`。

## 1. Security / networking tools｜安全與網路工具

### maltego (installer)

- **EN:** OSINT & link-analysis — this menu entry installs Maltego on first run.
- **繁中:** OSINT 與關聯分析 —— 此選單項目首次執行時安裝 Maltego。
- **Steps｜步驟:**
  1. Launch once; it downloads/installs Maltego (needs internet).
     - 啟動一次；它會下載/安裝 Maltego（需網路）。
  2. After install, register a free CE account; use only on your own data.
     - 安裝後註冊免費 CE 帳號；僅對自有資料使用。

### netcat

- **EN:** nc — the TCP/UDP Swiss-army knife: banners, listeners, simple transfers.
- **繁中:** nc —— TCP/UDP 萬用工具：抓 banner、監聽、簡單傳輸。
- **Steps｜步驟:**
  1. Banner grab: `nc -v <NODE_IP> 30080` then type a request.
     - 抓 banner：`nc -v <NODE_IP> 30080` 再輸入請求。
  2. Egress test: `nc -zv <NODE_IP> 5432` — refused = DB control holds.
     - 出站測試：`nc -zv <NODE_IP> 5432` —— 被拒＝DB 控制有效。
  3. Listener (own hosts only): `nc -lvnp 4444`.
     - 監聽（僅自有主機）：`nc -lvnp 4444`。

### tcpdump

- **EN:** CLI packet sniffer — capture traffic to/from the target.
- **繁中:** CLI 封包嗅探器 —— 擷取與目標間流量。
- **Steps｜步驟:**
  1. `sudo tcpdump -ni eth0 host <NODE_IP> and port 30080 -c 40 -w cap.pcap`.
     - `sudo tcpdump -ni eth0 host <NODE_IP> and port 30080 -c 40 -w cap.pcap`。
  2. Or let the toolkit do it: `./toolkit.sh sniff eth0 40`.
     - 或用工具組：`./toolkit.sh sniff eth0 40`。
  3. Open the .pcap in Wireshark to analyse.
     - 用 Wireshark 開 .pcap 分析。


## 2. Kali resources (web links)｜Kali 資源（網頁連結）

### Exploit Database

- **EN:** Opens exploit-db.com in the browser (offline copy = searchsploit).
- **繁中:** 在瀏覽器開啟 exploit-db.com（離線版 = searchsploit）。
- **Steps｜步驟:**
  1. Launch it to browse exploits online.
     - 啟動以線上瀏覽 exploit。
  2. For offline/CLI: `toolkit.sh search <product version>`.
     - 離線/CLI 用：`toolkit.sh search <產品 版本>`。

### Kali Bugs

- **EN:** Opens the Kali bug tracker (bugs.kali.org).
- **繁中:** 開啟 Kali bug 追蹤系統（bugs.kali.org）。
- **Steps｜步驟:**
  1. Launch to report or search Kali bugs.
     - 啟動以回報或搜尋 Kali bug。

### Kali Docs

- **EN:** Opens kali.org/docs.
- **繁中:** 開啟 kali.org/docs。
- **Steps｜步驟:**
  1. Launch for official how-tos (install, tools, troubleshooting).
     - 啟動查官方教學（安裝、工具、疑難排解）。

### Kali Forums

- **EN:** Opens forums.kali.org.
- **繁中:** 開啟 forums.kali.org。
- **Steps｜步驟:**
  1. Launch to ask/search community questions.
     - 啟動以提問/搜尋社群問題。

### Kali Linux

- **EN:** Opens kali.org.
- **繁中:** 開啟 kali.org。
- **Steps｜步驟:**
  1. Launch for downloads/news.
     - 啟動查下載/消息。

### Kali Tools

- **EN:** Opens tools.kali.org — the full tool catalogue.
- **繁中:** 開啟 tools.kali.org —— 完整工具目錄。
- **Steps｜步驟:**
  1. Launch to look up any Kali tool's docs/usage.
     - 啟動查任何 Kali 工具的文件/用法。

### NetHunter

- **EN:** Opens the Kali NetHunter (mobile) page.
- **繁中:** 開啟 Kali NetHunter（行動版）頁面。
- **Steps｜步驟:**
  1. Launch for NetHunter docs (Android pentest platform).
     - 啟動查 NetHunter 文件（Android 滲透平台）。

### OffSec Training

- **EN:** Opens OffSec course catalogue.
- **繁中:** 開啟 OffSec 課程目錄。
- **Steps｜步驟:**
  1. Launch to browse PEN-200/OSCP etc.
     - 啟動瀏覽 PEN-200/OSCP 等課程。

### VulnHub

- **EN:** Opens VulnHub — downloadable vulnerable practice VMs.
- **繁中:** 開啟 VulnHub —— 可下載的練習靶機 VM。
- **Steps｜步驟:**
  1. Launch to find legal practice targets (run them isolated).
     - 啟動找合法練習靶機（隔離執行）。


## 3. Terminals｜終端機

### QTerminal

- **EN:** The default terminal — where you run every CLI tool here.
- **繁中:** 預設終端機 —— 以下所有 CLI 工具都在這裡執行。
- **Steps｜步驟:**
  1. Open it; `cd ~/kali-scripts`.
     - 開啟後 `cd ~/kali-scripts`。
  2. Run the toolkit, e.g. `TARGET=<NODE_IP> ./toolkit.sh chain recon,web`.
     - 執行工具組，例如 `TARGET=<NODE_IP> ./toolkit.sh chain recon,web`。

### QTerminal Drop-down

- **EN:** Quake-style drop-down terminal.
- **繁中:** Quake 風格下拉終端機。
- **Steps｜步驟:**
  1. Press its hotkey to drop the terminal from the top.
     - 按熱鍵從上方拉下終端機。

### Root Terminal Emulator

- **EN:** Terminal that opens as root.
- **繁中:** 以 root 開啟的終端機。
- **Steps｜步驟:**
  1. Launch (asks for the password); use only when sudo isn't enough.
     - 啟動（需密碼）；僅在 sudo 不足時使用。


## 4. Editors｜編輯器

### Mousepad

- **EN:** Lightweight GUI text editor.
- **繁中:** 輕量 GUI 文字編輯器。
- **Steps｜步驟:**
  1. `apps.sh open Mousepad notes.txt` or File → Open.
     - `apps.sh open Mousepad notes.txt` 或 File → Open。
  2. Edit; Ctrl+S to save.
     - 編輯；Ctrl+S 儲存。

### Text Editor

- **EN:** Opens the default text editor.
- **繁中:** 開啟預設文字編輯器。
- **Steps｜步驟:**
  1. Launch; edit and save config/notes.
     - 啟動；編輯並儲存設定/筆記。

### Vim

- **EN:** Modal CLI text editor (powerful once learned).
- **繁中:** 模式化 CLI 文字編輯器（熟練後很強大）。
- **Steps｜步驟:**
  1. `vim file` ; press i to insert, Esc then :wq to save+quit.
     - `vim file`；按 i 進入編輯，Esc 後 :wq 儲存離開。


## 5. Files & archives｜檔案與壓縮

### Bulk Rename

- **EN:** Thunar's batch file renamer.
- **繁中:** Thunar 的批次檔名重新命名工具。
- **Steps｜步驟:**
  1. Open it; add files with the + button.
     - 開啟後用 + 加入檔案。
  2. Choose a rule (replace/numbering); preview; Rename.
     - 選規則（取代/編號）；預覽；Rename。

### Engrampa Archive Manager

- **EN:** Create/extract zip/tar/7z — unpack wordlists, bundle evidence.
- **繁中:** 建立/解開 zip/tar/7z —— 解壓字典、打包證據。
- **Steps｜步驟:**
  1. `apps.sh open "Engrampa Archive Manager" file.zip` or File → Open.
     - `apps.sh open ... file.zip` 或 File → Open。
  2. Extract button → choose a folder; or drag files in and Save to create.
     - Extract → 選資料夾；或拖入檔案後 Save 建立壓縮檔。

### Help

- **EN:** Yelp documentation browser.
- **繁中:** Yelp 說明文件瀏覽器。
- **Steps｜步驟:**
  1. Open it; browse or search the help topics.
     - 開啟後瀏覽或搜尋說明主題。

### Thunar File Manager

- **EN:** Graphical file manager — browse ~/lab-evidence.
- **繁中:** 圖形檔案管理員 —— 瀏覽 ~/lab-evidence。
- **Steps｜步驟:**
  1. Open it; navigate to your evidence folder.
     - 開啟後進入證據資料夾。
  2. Tools → Open Terminal Here to act on a folder.
     - Tools → Open Terminal Here 以對資料夾操作。


## 6. Media & documents｜媒體與文件

### Atril Document Viewer

- **EN:** PDF/PostScript/DjVu viewer — read exported reports.
- **繁中:** PDF/PostScript/DjVu 檢視器 —— 閱讀匯出的報告。
- **Steps｜步驟:**
  1. `apps.sh open "Atril Document Viewer" report.pdf` or File → Open.
     - `apps.sh open "Atril Document Viewer" report.pdf` 或 File → Open。
  2. Navigate with the sidebar; Ctrl+F to search text.
     - 用側欄導覽；Ctrl+F 搜尋文字。

### Parole Media Player

- **EN:** Audio/video player.
- **繁中:** 音訊/影片播放器。
- **Steps｜步驟:**
  1. `apps.sh open "Parole Media Player" clip.mp4` or Open.
     - `apps.sh open "Parole Media Player" clip.mp4` 或 Open。

### Ristretto Image Viewer

- **EN:** Image viewer — review screenshots/evidence.
- **繁中:** 圖片檢視器 —— 檢視截圖/證據。
- **Steps｜步驟:**
  1. `apps.sh open "Ristretto Image Viewer" shot.png`.
     - `apps.sh open "Ristretto Image Viewer" shot.png`。
  2. Arrow keys to page through a folder.
     - 方向鍵逐張瀏覽資料夾。

### Volume Control

- **EN:** Audio mixer.
- **繁中:** 音訊混音器。
- **Steps｜步驟:**
  1. Open it; adjust output/input levels.
     - 開啟後調整輸出/輸入音量。


## 7. Web & network｜網頁與網路

### Firefox ESR

- **EN:** Browser — proxy through Burp/ZAP to inspect the lab web/API.
- **繁中:** 瀏覽器 —— 透過 Burp/ZAP 代理檢視 lab 的 web/API。
- **Steps｜步驟:**
  1. `apps.sh open "Firefox ESR" http://<NODE_IP>:30080`.
     - `apps.sh open "Firefox ESR" http://<NODE_IP>:30080`。
  2. Settings → Network → Manual proxy 127.0.0.1:8080 to route through Burp.
     - Settings → Network → 手動代理 127.0.0.1:8080 以經 Burp。
  3. Import Burp's CA cert to intercept HTTPS.
     - 匯入 Burp 的 CA 憑證以攔截 HTTPS。

### Mail Reader

- **EN:** Launches the default mail client.
- **繁中:** 啟動預設郵件程式。
- **Steps｜步驟:**
  1. Launch; configure an account if prompted.
     - 啟動；若提示則設定帳號。

### Web Browser

- **EN:** Launches the default browser.
- **繁中:** 啟動預設瀏覽器。
- **Steps｜步驟:**
  1. Launch; same proxy workflow as Firefox ESR above.
     - 啟動；代理流程同上方 Firefox ESR。


## 8. Accessibility｜輔助使用

### Onboard

- **EN:** On-screen keyboard (useful over VNC without a keyboard).
- **繁中:** 螢幕小鍵盤（VNC 無實體鍵盤時好用）。
- **Steps｜步驟:**
  1. Launch it; click keys with the mouse.
     - 啟動後用滑鼠點按鍵。

### Onboard Settings

- **EN:** Configure the on-screen keyboard.
- **繁中:** 設定螢幕小鍵盤。
- **Steps｜步驟:**
  1. Open it; set layout/theme/auto-show.
     - 開啟後設定配置/佈景/自動顯示。


## 9. Settings & desktop｜設定與桌面

### Accessibility

- **EN:** Assistive input settings (sticky/bounce/slow keys, mouse keys).
- **繁中:** 輔助輸入設定（黏滯鍵、彈回鍵、慢速鍵、滑鼠鍵）。
- **Steps｜步驟:**
  1. Open it; pick the Keyboard or Mouse tab.
     - 開啟後選 Keyboard 或 Mouse 分頁。
  2. Toggle the assists you need; changes apply live.
     - 開啟需要的輔助；即時生效。

### Advanced Network Configuration

- **EN:** NetworkManager editor — set the VM's IP/DNS and add the isolated-lab NIC.
- **繁中:** NetworkManager 編輯器 —— 設定 VM 的 IP/DNS、加入隔離 lab 網卡。
- **Steps｜步驟:**
  1. Open it; click + to add a connection or select the existing Ethernet.
     - 開啟後按 + 新增連線，或選現有的 Ethernet。
  2. IPv4 tab → Manual → add address/netmask/gateway for the lab segment.
     - IPv4 分頁 → Manual → 填入 lab 網段的位址/遮罩/閘道。
  3. Save; re-activate the connection to apply.
     - 儲存後重新啟用連線以套用。

### Appearance

- **EN:** Theme, icons and fonts for the desktop.
- **繁中:** 桌面的佈景、圖示與字型。
- **Steps｜步驟:**
  1. Open it; choose a Style/Icons on the first tabs.
     - 開啟後在前幾個分頁選 Style/Icons。
  2. Fonts tab → adjust DPI if text is tiny over VNC.
     - Fonts 分頁 → 若 VNC 下字太小可調 DPI。

### Clipboard Manager Settings

- **EN:** Configure clipboard history size/behaviour.
- **繁中:** 設定剪貼簿歷史大小/行為。
- **Steps｜步驟:**
  1. Open it; set history length and ignore rules.
     - 開啟後設定歷史長度與忽略規則。
  2. Close to save.
     - 關閉即儲存。

### Color Profiles

- **EN:** Manage ICC colour profiles for displays.
- **繁中:** 管理顯示器的 ICC 色彩設定檔。
- **Steps｜步驟:**
  1. Open it; select the display; add/assign a profile.
     - 開啟後選顯示器；新增/指定設定檔。

### Default Applications

- **EN:** Pick default browser/mail/terminal/file-manager.
- **繁中:** 選預設瀏覽器/郵件/終端機/檔案管理員。
- **Steps｜步驟:**
  1. Open it; set each default on the Internet/Utilities tabs.
     - 開啟後在 Internet/Utilities 分頁設定各預設。

### Desktop

- **EN:** Wallpaper, desktop icons and menu behaviour.
- **繁中:** 桌布、桌面圖示與選單行為。
- **Steps｜步驟:**
  1. Open it; Background tab → choose wallpaper.
     - 開啟後 Background 分頁選桌布。
  2. Icons tab → toggle which icons show.
     - Icons 分頁 → 切換要顯示的圖示。

### Display

- **EN:** Resolution, scaling and multi-monitor layout.
- **繁中:** 解析度、縮放與多螢幕配置。
- **Steps｜步驟:**
  1. Open it; set resolution to match your VNC geometry (e.g. 1440x900).
     - 開啟後把解析度設成與 VNC 相符（例如 1440x900）。
  2. Apply; confirm to keep.
     - Apply 後確認保留。

### Kali HiDPI Mode

- **EN:** Toggle HiDPI scaling for high-resolution screens.
- **繁中:** 切換 HiDPI 高解析度縮放。
- **Steps｜步驟:**
  1. Launch once to enable; run again to disable.
     - 執行一次啟用；再執行停用。

### Kali Tweaks

- **EN:** Central config — enable tool metapackages, undercover mode, shell, VPN.
- **繁中:** 設定中心 —— 啟用工具套件、undercover 模式、shell、VPN。
- **Steps｜步驟:**
  1. Open it (runs in a terminal); arrow-keys to a section.
     - 開啟（在終端機中執行）；方向鍵移到區段。
  2. 'Metapackages' → tick kali-linux-default to install the full toolset.
     - 'Metapackages' → 勾選 kali-linux-default 安裝完整工具集。
  3. Apply; it runs apt for you.
     - 套用；它會替你跑 apt。

### Keyboard

- **EN:** Layout, repeat rate and shortcuts.
- **繁中:** 鍵盤配置、重複速率與快捷鍵。
- **Steps｜步驟:**
  1. Open it; Layout tab → add/select your layout.
     - 開啟後 Layout 分頁新增/選配置。
  2. Application Shortcuts tab → bind keys to commands.
     - Application Shortcuts 分頁 → 綁定按鍵到指令。

### LightDM GTK Greeter settings

- **EN:** Configure the graphical login screen.
- **繁中:** 設定圖形登入畫面。
- **Steps｜步驟:**
  1. Open it (asks for sudo); set theme/background/user list.
     - 開啟（需 sudo）；設定佈景/背景/使用者清單。
  2. Save; changes show at next login.
     - 儲存；下次登入生效。

### Mouse and Touchpad

- **EN:** Pointer speed, buttons and touchpad behaviour.
- **繁中:** 指標速度、按鍵與觸控板行為。
- **Steps｜步驟:**
  1. Open it; adjust Acceleration/Buttons.
     - 開啟後調整 Acceleration/Buttons。

### Notifications

- **EN:** Desktop notification appearance/behaviour.
- **繁中:** 桌面通知外觀/行為。
- **Steps｜步驟:**
  1. Open it; set position and do-not-disturb.
     - 開啟後設定位置與勿擾。

### Panel

- **EN:** Add/remove panels and panel items.
- **繁中:** 新增/移除面板與面板項目。
- **Steps｜步驟:**
  1. Open it; Items tab → add a launcher/clock/systray.
     - 開啟後 Items 分頁新增啟動器/時鐘/系統匣。

### Panel Profiles

- **EN:** Save/restore panel layouts.
- **繁中:** 儲存/還原面板配置。
- **Steps｜步驟:**
  1. Open it; Save the current layout, or load a backup.
     - 開啟後儲存目前配置，或載入備份。

### Power Manager

- **EN:** Battery/sleep/screen-blank behaviour.
- **繁中:** 電源/睡眠/螢幕變暗行為。
- **Steps｜步驟:**
  1. Open it; set 'display sleep' to never for long scans.
     - 開啟後把顯示睡眠設為 never 以利長時掃描。

### Qt5 Settings

- **EN:** Theme/behaviour for Qt5 apps.
- **繁中:** Qt5 程式的佈景/行為。
- **Steps｜步驟:**
  1. Open it; match the Qt theme to the GTK one.
     - 開啟後把 Qt 佈景調成與 GTK 一致。

### Qt6 Settings

- **EN:** Theme/behaviour for Qt6 apps.
- **繁中:** Qt6 程式的佈景/行為。
- **Steps｜步驟:**
  1. Open it; match the Qt theme to the GTK one.
     - 開啟後把 Qt 佈景調成與 GTK 一致。

### Removable Drives and Media

- **EN:** Auto-mount/auto-run behaviour for USB/CD.
- **繁中:** USB/CD 的自動掛載/自動執行行為。
- **Steps｜步驟:**
  1. Open it; toggle auto-mount per media type.
     - 開啟後依媒體類型切換自動掛載。

### Session and Startup

- **EN:** Auto-started apps and session save/restore.
- **繁中:** 自動啟動的程式與工作階段儲存/還原。
- **Steps｜步驟:**
  1. Open it; Application Autostart tab → add e.g. the VNC server.
     - 開啟後 Application Autostart 分頁 → 加入例如 VNC server。

### Settings Editor

- **EN:** Low-level registry of all Xfconf settings.
- **繁中:** 所有 Xfconf 設定的底層登錄。
- **Steps｜步驟:**
  1. Open it; browse channels; edit values carefully.
     - 開啟後瀏覽 channel；謹慎編輯值。

### Settings Manager

- **EN:** The hub linking every settings dialog above.
- **繁中:** 連到以上所有設定對話框的中心。
- **Steps｜步驟:**
  1. Open it; click any icon to reach that setting.
     - 開啟後點任一圖示進入該設定。

### Thunar Preferences

- **EN:** Configure the file manager's views/behaviour.
- **繁中:** 設定檔案管理員的檢視/行為。
- **Steps｜步驟:**
  1. Open it; set default view and show-hidden.
     - 開啟後設定預設檢視與顯示隱藏檔。

### Time and Date

- **EN:** System clock, timezone and NTP.
- **繁中:** 系統時鐘、時區與 NTP。
- **Steps｜步驟:**
  1. Open it (sudo); set timezone to UTC for consistent evidence stamps.
     - 開啟（sudo）；時區設 UTC 讓證據時間戳一致。

### Users and Groups

- **EN:** Manage local accounts and group membership.
- **繁中:** 管理本機帳號與群組成員。
- **Steps｜步驟:**
  1. Open it (sudo); add a user or add yourself to a group (e.g. wireshark).
     - 開啟（sudo）；新增使用者或把自己加入群組（例如 wireshark）。

### Window Manager

- **EN:** Keybindings, focus and window theme.
- **繁中:** 視窗按鍵綁定、焦點與佈景。
- **Steps｜步驟:**
  1. Open it; Keyboard tab → set tiling/switch shortcuts.
     - 開啟後 Keyboard 分頁設定視窗切換/排列快捷鍵。

### Window Manager Tweaks

- **EN:** Advanced compositor/focus tweaks.
- **繁中:** 進階合成器/焦點微調。
- **Steps｜步驟:**
  1. Open it; Compositor tab → disable shadows if VNC is laggy.
     - 開啟後 Compositor 分頁 → VNC 卡頓時關閉陰影。

### Workspaces

- **EN:** Number/naming of virtual desktops.
- **繁中:** 虛擬桌面數量/命名。
- **Steps｜步驟:**
  1. Open it; set the workspace count and margins.
     - 開啟後設定工作區數量與邊界。

### Xfce Screensaver

- **EN:** Screen-lock/blank settings.
- **繁中:** 螢幕鎖定/變暗設定。
- **Steps｜步驟:**
  1. Open it; disable lock-on-idle for long unattended scans.
     - 開啟後關閉閒置鎖定以利長時無人掃描。


## 10. System & utilities｜系統與工具

### About Xfce

- **EN:** Shows the desktop-environment version and credits.
- **繁中:** 顯示桌面環境版本與致謝。
- **Steps｜步驟:**
  1. Menu → About Xfce (or `apps.sh open "About Xfce"`).
     - 選單 → About Xfce（或 `apps.sh open "About Xfce"`）。
  2. Read the version on the first tab; close when done.
     - 在第一頁看版本；看完關閉。

### Application Finder

- **EN:** Search-and-launch box for every installed app.
- **繁中:** 搜尋並啟動任何已安裝程式的輸入框。
- **Steps｜步驟:**
  1. Press the shortcut or open it; type an app name.
     - 按快捷鍵或開啟後輸入程式名稱。
  2. Enter to launch; this is the fastest way to open tools.
     - Enter 啟動；這是開啟工具最快的方式。

### BackTrack Mode

- **EN:** Kali-Tweaks toggle for the retro BackTrack theme.
- **繁中:** Kali-Tweaks 切換成復古 BackTrack 佈景。
- **Steps｜步驟:**
  1. Launch it (runs kali-undercover variant) to switch theme.
     - 啟動它（kali-undercover 變體）切換佈景。
  2. Run again to revert.
     - 再執行一次即可還原。

### Catfish File Search

- **EN:** Fast filename/content search across the disk.
- **繁中:** 快速搜尋磁碟上的檔名/內容。
- **Steps｜步驟:**
  1. Open it; type a term; optionally tick 'search file contents'.
     - 開啟後輸入關鍵字；可勾選搜尋檔案內容。
  2. Double-click a result to open it.
     - 雙擊結果開啟。

### Clipboard Manager

- **EN:** Tray applet keeping clipboard history.
- **繁中:** 保留剪貼簿歷史的列小工具。
- **Steps｜步驟:**
  1. It runs in the tray; click it to see recent clips.
     - 在系統列執行；點它看近期剪貼。
  2. Click an entry to copy it back.
     - 點一筆即可重新複製。

### Disks

- **EN:** GNOME Disks — partition, format, mount, and image drives.
- **繁中:** GNOME Disks —— 分割、格式化、掛載、製作磁碟映像。
- **Steps｜步驟:**
  1. Open it; select a disk in the left list.
     - 開啟後在左側清單選磁碟。
  2. Use the ⋮ menu → Create Disk Image / Format for forensics or prep.
     - 用 ⋮ 選單 → Create Disk Image / Format 做鑑識或準備。
  3. Mount/unmount with the ▶/⏏ buttons; never touch a disk you don't own.
     - 用 ▶/⏏ 掛載/卸載；絕不動不屬於你的磁碟。

### File Manager

- **EN:** Opens the default file manager (Thunar).
- **繁中:** 開啟預設檔案管理員（Thunar）。
- **Steps｜步驟:**
  1. Launch it; browse to ~/lab-evidence.
     - 啟動後瀏覽到 ~/lab-evidence。

### GtkHash

- **EN:** Compute file checksums (MD5/SHA-256) — verify evidence integrity.
- **繁中:** 計算檔案雜湊（MD5/SHA-256）—— 驗證證據完整性。
- **Steps｜步驟:**
  1. Open it; pick a file; tick the hash algorithms.
     - 開啟後選檔案；勾選雜湊演算法。
  2. Hash; compare against the expected value.
     - 按 Hash；與預期值比對。

### Kali Halloween Mode

- **EN:** Seasonal theme toggle (Kali Tweaks).
- **繁中:** 節慶佈景切換（Kali Tweaks）。
- **Steps｜步驟:**
  1. Launch to apply/revert the theme.
     - 啟動以套用/還原佈景。

### Kali Undercover Mode

- **EN:** Disguises the desktop as Windows (quick stealth).
- **繁中:** 把桌面偽裝成 Windows（快速隱蔽）。
- **Steps｜步驟:**
  1. Launch to toggle the Windows-like look on/off.
     - 啟動以切換類 Windows 外觀。

### Log Out

- **EN:** End the desktop session (logout/restart/shutdown).
- **繁中:** 結束桌面工作階段（登出/重開/關機）。
- **Steps｜步驟:**
  1. Launch; pick Log Out / Restart / Shut Down.
     - 啟動後選 Log Out / Restart / Shut Down。

### MATE Calculator

- **EN:** Calculator (basic/scientific/programmer modes).
- **繁中:** 計算機（基本/科學/程式設計模式）。
- **Steps｜步驟:**
  1. Open it; Mode menu → Programmer for hex/bitwise.
     - 開啟後 Mode 選單 → Programmer 做十六進位/位元運算。

### Run Program...

- **EN:** Run an arbitrary command from a dialog.
- **繁中:** 從對話框執行任意指令。
- **Steps｜步驟:**
  1. Launch; type a command and Enter.
     - 啟動；輸入指令並 Enter。

### Screenshot

- **EN:** Capture the screen/window/region for evidence.
- **繁中:** 擷取螢幕/視窗/區域作為證據。
- **Steps｜步驟:**
  1. Launch; pick Full/Window/Region and delay.
     - 啟動；選全螢幕/視窗/區域與延遲。
  2. Save into ~/lab-evidence.
     - 存到 ~/lab-evidence。

### Sensor Viewer

- **EN:** Show hardware temperature/fan sensors.
- **繁中:** 顯示硬體溫度/風扇感測器。
- **Steps｜步驟:**
  1. Open it to read available sensors (limited in a VM).
     - 開啟查看可用感測器（VM 內有限）。

### Task Manager

- **EN:** Process/CPU/memory monitor; kill runaway tools.
- **繁中:** 程序/CPU/記憶體監視器；可結束失控工具。
- **Steps｜步驟:**
  1. Open it; sort by CPU/MEM.
     - 開啟後依 CPU/MEM 排序。
  2. Right-click a process → Kill if a scan hangs.
     - 右鍵程序 → Kill 以結束當掉的掃描。

### Terminal Emulator

- **EN:** The Xfce terminal (alternative to QTerminal).
- **繁中:** Xfce 終端機（QTerminal 的替代）。
- **Steps｜步驟:**
  1. Open it; same usage as QTerminal.
     - 開啟；用法同 QTerminal。


<!-- apps covered: 78 -->
