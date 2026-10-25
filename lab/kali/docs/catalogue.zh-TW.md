# Kali 工具總表 —— 依選單分類列出所有應用程式（繁體中文）

> English：[`catalogue.en.md`](catalogue.en.md) · 每個桌面程式的教學：[`installed-apps.md`](installed-apps.md)

由 VM 的 apt 中繼資料產生（`kali-tools-*` 中繼套件定義每個選單分類）。
**382 個工具**、29 個分類 —— 完整的 Kali 工具集，無論這台最小安裝的 VM 是否已安裝。


## 如何使用下列「任何」工具（這 4 個步驟適用於每一個）

```bash
# 1. 安裝整個分類（或單一工具）
lab/kali/scripts/install-tools.sh cat:web          # 整個分類
sudo apt install -y <工具>                          # 或單一工具
# 2. 看它的說明／手冊
<工具> -h ;  man <工具>
# 3. 對你「擁有」的資產執行（lab/ROE.md），並擷取證據
lab/kali/scripts/tool.sh <工具> [參數...]           # ROE 橫幅 + ~/lab-evidence 紀錄
# 4. GUI 工具？在 VNC 桌面開啟
lab/kali/scripts/apps.sh open "<名稱>"
```

> 範圍：僅限操作者擁有的資產（`lab/ROE.md`）。非破壞性、限速。


## 01 · 資訊蒐集／偵察  (`kali-tools-information-gathering`, 50)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `0trace` | 可在既有 TCP 連線中執行的 traceroute 工具 | `apt install 0trace` |
| `arping` | 送出 IP 與/或 ARP ping（到 MAC 位址） | `apt install arping` |
| `braa` | 大量 SNMP 掃描器 | `apt install braa` |
| `dmitry` | Deepmagic 資訊蒐集工具 | `apt install dmitry` |
| `dnsenum` | 列舉網域 DNS 資訊的工具 | `apt install dnsenum` |
| `dnsmap` | DNS 網域名稱暴力破解工具 | `apt install dnsmap` |
| `dnsrecon` | 強大的 DNS 列舉腳本 | `apt install dnsrecon` |
| `dnstracer` | 追蹤 DNS 查詢到來源 | `apt install dnstracer` |
| `dnswalk` | 以 nameserver 查詢檢查 DNS 區域資訊 | `apt install dnswalk` |
| `enum4linux` | 列舉 Windows 與 Samba 系統資訊 | `apt install enum4linux` |
| `fierce` | 網域 DNS 掃描器 | `apt install fierce` |
| `firewalk` | 主動式偵察的網路安全工具 | `apt install firewalk` |
| `fping` | 對多台主機送出 ICMP ECHO_REQUEST | `apt install fping` |
| `fragrouter` | IDS 規避工具組 | `apt install fragrouter` |
| `ftester` | 測試防火牆與 IDS 的工具 | `apt install ftester` |
| `hping3` | 主動式網路壓測工具 | `apt install hping3` |
| `ike-scan` | 探索與指紋辨識 IKE 主機（IPsec VPN 伺服器） | `apt install ike-scan` |
| `intrace` | 搭載既有 TCP 連線的 traceroute 類工具 | `apt install intrace` |
| `iputils-arping` | 對 ARP 位址送 ICMP echo 的工具 | `apt install iputils-arping` |
| `irpas` | 網際路由協定攻擊套件 | `apt install irpas` |
| `lbd` | 負載平衡器偵測器 | `apt install lbd` |
| `legion` | 半自動化網路滲透測試工具 | `apt install legion` |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` |
| `masscan` | TCP 連接埠掃描器 | `apt install masscan` |
| `metagoofil` | 擷取公開文件中繼資料的工具 | `apt install metagoofil` |
| `nbtscan` | 掃描網路尋找 NetBIOS 資訊 | `apt install nbtscan` |
| `ncat` | NMAP 版 netcat 重製 | `apt install ncat` |
| `netdiscover` | 以 ARP 請求做主動/被動網路位址掃描 | `apt install netdiscover` |
| `netmask` | 協助計算網路遮罩 | `apt install netmask` |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` |
| `onesixtyone` | 快速簡單的 SNMP 掃描器 | `apt install onesixtyone` |
| `p0f` | 被動式 OS 指紋辨識工具 | `apt install p0f` |
| `qsslcaudit` | 測試 SSL/TLS 用戶端安全性 | `apt install qsslcaudit` |
| `recon-ng` | 以 Python 撰寫的 web 偵察框架 | `apt install recon-ng` |
| `smbmap` | 好用的 SMB 列舉工具 | `apt install smbmap` |
| `smtp-user-enum` | SMTP 服務使用者名稱猜測工具 | `apt install smtp-user-enum` |
| `snmpcheck` | SNMP 服務列舉工具 | `apt install snmpcheck` |
| `ssldump` | SSLv3/TLS 網路協定分析器 | `apt install ssldump` |
| `sslh` | 應用協定多工器 | `apt install sslh` |
| `sslscan` | 測試 SSL/TLS 服務支援的加密套件 | `apt install sslscan` |
| `sslyze` | 快速且功能完整的 SSL 掃描器 | `apt install sslyze` |
| `swaks` | SMTP 命令列測試工具 | `apt install swaks` |
| `thc-ipv6` | THC 的 IPv6 攻擊工具組 | `apt install thc-ipv6` |
| `theharvester` | 從公開來源蒐集 email 與子網域的工具 | `apt install theharvester` |
| `tlssled` | 評估目標 SSL/TLS（HTTPS）伺服器安全性 | `apt install tlssled` |
| `twofi` | Twitter 關鍵字字典 | `apt install twofi` |
| `unicornscan` | 使用者態分散式 TCP/IP 堆疊 | `apt install unicornscan` |
| `urlcrazy` | 網域誤植產生器 | `apt install urlcrazy` |
| `wafw00f` | 辨識並指紋辨識 Web 應用防火牆 | `apt install wafw00f` |
| `zenmap` | Nmap 的圖形前端 | `apt install zenmap` |

## 02 · 弱點分析  (`kali-tools-vulnerability`, 35)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `afl++` | 以插樁驅動的二進位格式模糊測試器 | `apt install afl++` |
| `bed` | 網路協定模糊測試器 | `apt install bed` |
| `cisco-auditing-tool` | 掃描 Cisco 路由器弱點 | `apt install cisco-auditing-tool` |
| `cisco-global-exploiter` | 簡易快速的 Cisco 漏洞利用工具 | `apt install cisco-global-exploiter` |
| `cisco-ocs` | 大量 Cisco 掃描器 | `apt install cisco-ocs` |
| `cisco-torch` | Cisco 裝置掃描器 | `apt install cisco-torch` |
| `dhcpig` | 使用 scapy 的 DHCP 耗盡攻擊腳本 | `apt install dhcpig` |
| `enumiax` | IAX 協定使用者名稱列舉器 | `apt install enumiax` |
| `gvm` | 遠端網路安全稽核器（中繼套件與腳本） | `apt install gvm` |
| `iaxflood` | VoIP 洪泛工具 | `apt install iaxflood` |
| `inviteflood` | 透過 UDP/IP 洪泛 SIP/SDP INVITE 訊息 | `apt install inviteflood` |
| `legion` | 半自動化網路滲透測試工具 | `apt install legion` |
| `lynis` | Unix 系統安全稽核工具 | `apt install lynis` |
| `nikto` | web 伺服器安全掃描器 | `apt install nikto` |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` |
| `ohrwurm` | RTP 模糊測試器 | `apt install ohrwurm` |
| `peass` | 權限提升腳本套件（PEASS） | `apt install peass` |
| `protos-sip` | SIP 測試套件 | `apt install protos-sip` |
| `rtpbreak` | 偵測、重建並分析 RTP 工作階段 | `apt install rtpbreak` |
| `rtpflood` | 洪泛任何 RTP 裝置的工具 | `apt install rtpflood` |
| `rtpinsertsound` | 將音訊插入指定串流 | `apt install rtpinsertsound` |
| `rtpmixsound` | 即時混入預錄音訊 | `apt install rtpmixsound` |
| `sfuzz` | 黑箱測試工具 | `apt install sfuzz` |
| `siege` | HTTP 回歸測試與壓力測試工具 | `apt install siege` |
| `siparmyknife` | SIP 模糊測試工具 | `apt install siparmyknife` |
| `sipp` | SIP 協定流量產生器 | `apt install sipp` |
| `sipsak` | SIP 瑞士刀 | `apt install sipsak` |
| `sipvicious` | 稽核 SIP VoIP 系統的工具 | `apt install sipvicious` |
| `slowhttptest` | 應用層 DoS 攻擊模擬工具 | `apt install slowhttptest` |
| `spike` | 網路協定模糊測試器 | `apt install spike` |
| `t50` | 多協定封包注入工具 | `apt install t50` |
| `thc-ssl-dos` | SSL 握手壓測工具 | `apt install thc-ssl-dos` |
| `unix-privesc-check` | 檢查簡易權限提升向量的腳本 | `apt install unix-privesc-check` |
| `voiphopper` | 執行 VLAN hop 安全測試 | `apt install voiphopper` |
| `yersinia` | 網路弱點檢查軟體 | `apt install yersinia` |

## 03 · Web 應用程式分析  (`kali-tools-web`, 73)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `apache-users` | 列舉啟用 Apache UserDir 模組系統上的使用者名稱 | `apt install apache-users` |
| `apache2` | Apache HTTP 伺服器 | `apt install apache2` |
| `beef-xss` | 瀏覽器漏洞利用框架（BeEF） | `apt install beef-xss` |
| `cadaver` | 命令列 WebDAV 用戶端 | `apt install cadaver` |
| `commix` | 自動化一站式 OS 命令注入與利用工具 | `apt install commix` |
| `cutycapt` | 擷取 WebKit 網頁算繪結果的工具 | `apt install cutycapt` |
| `davtest` | WebDAV 伺服器測試工具 | `apt install davtest` |
| `default-mysql-server` | MySQL 資料庫伺服器（中繼套件） | `apt install default-mysql-server` |
| `dirb` | URL 暴力列舉工具 | `apt install dirb` |
| `dirbuster` | Web 伺服器目錄暴力列舉器 | `apt install dirbuster` |
| `dotdotpwn` | 目錄遍歷模糊測試器 | `apt install dotdotpwn` |
| `eyewitness` | 快速的 web 應用分流工具 | `apt install eyewitness` |
| `ferret-sidejack` | 監看資料並擷取感興趣的內容 | `apt install ferret-sidejack` |
| `ftester` | 測試防火牆與 IDS 的工具 | `apt install ftester` |
| `hakrawler` | 快速探索端點與資產的 web 爬蟲 | `apt install hakrawler` |
| `hamster-sidejack` | Sidejacking 工具 | `apt install hamster-sidejack` |
| `heartleech` | 偵測 Heartbleed OpenSSL 漏洞的掃描器 | `apt install heartleech` |
| `httrack` | 將網站複製到本機（離線瀏覽器） | `apt install httrack` |
| `hydra` | 非常快速的網路登入破解器 | `apt install hydra` |
| `hydra-gtk` | 非常快速的網路登入破解器（GTK+ GUI） | `apt install hydra-gtk` |
| `jboss-autopwn` | 取得 JBoss 遠端 shell 的腳本 | `apt install jboss-autopwn` |
| `joomscan` | OWASP Joomla 弱點掃描器 | `apt install joomscan` |
| `jsql-injection` | 自動資料庫注入的 Java 工具 | `apt install jsql-injection` |
| `laudanum` | 可注入的 web 檔案集 | `apt install laudanum` |
| `lbd` | 負載平衡器偵測器 | `apt install lbd` |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` |
| `medusa` | 快速、平行、模組化的網路服務登入暴力破解器 | `apt install medusa` |
| `mitmproxy` | 支援 SSL 的中間人 HTTP 代理 | `apt install mitmproxy` |
| `ncrack` | 高速網路驗證破解工具 | `apt install ncrack` |
| `nikto` | web 伺服器安全掃描器 | `apt install nikto` |
| `nishang` | PowerShell 腳本與 payload 集 | `apt install nishang` |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` |
| `oscanner` | Oracle 評估框架 | `apt install oscanner` |
| `padbuster` | 執行 Padding Oracle 攻擊的腳本 | `apt install padbuster` |
| `paros` | web 應用程式代理 | `apt install paros` |
| `patator` | 多用途暴力破解器 | `apt install patator` |
| `php` | 伺服器端 HTML 內嵌腳本語言（預設） | `apt install php` |
| `php-mysql` | PHP 的 MySQL 模組（預設） | `apt install php-mysql` |
| `proxychains4` | 透過 socks/http 代理轉送連線（proxychains-ng） | `apt install proxychains4` |
| `proxytunnel` | 協助 SSH 等協定穿過 HTTP(S) 代理 | `apt install proxytunnel` |
| `qsslcaudit` | 測試 SSL/TLS 用戶端安全性 | `apt install qsslcaudit` |
| `redsocks` | 將任意 TCP 連線重導到 SOCKS/HTTPS 代理 | `apt install redsocks` |
| `sidguesser` | 對 Oracle 資料庫猜測 SID | `apt install sidguesser` |
| `siege` | HTTP 回歸測試與壓力測試工具 | `apt install siege` |
| `skipfish` | 全自動主動式 web 應用安全偵察工具 | `apt install skipfish` |
| `slowhttptest` | 應用層 DoS 攻擊模擬工具 | `apt install slowhttptest` |
| `sqlitebrowser` | SQLite 資料庫的 GUI 編輯器 | `apt install sqlitebrowser` |
| `sqlmap` | 自動化 SQL 注入工具 | `apt install sqlmap` |
| `sqlninja` | SQL Server 注入與接管工具 | `apt install sqlninja` |
| `sqlsus` | MySQL 注入工具 | `apt install sqlsus` |
| `ssldump` | SSLv3/TLS 網路協定分析器 | `apt install ssldump` |
| `sslh` | 應用協定多工器 | `apt install sslh` |
| `sslscan` | 測試 SSL/TLS 服務支援的加密套件 | `apt install sslscan` |
| `sslsniff` | SSL/TLS 中間人攻擊工具 | `apt install sslsniff` |
| `sslsplit` | 透明且可擴充的 SSL/TLS 攔截 | `apt install sslsplit` |
| `sslyze` | 快速且功能完整的 SSL 掃描器 | `apt install sslyze` |
| `stunnel4` | 網路守護程式的通用 SSL 隧道（相容套件） | `apt install stunnel4` |
| `thc-ssl-dos` | SSL 握手壓測工具 | `apt install thc-ssl-dos` |
| `tlssled` | 評估目標 SSL/TLS（HTTPS）伺服器安全性 | `apt install tlssled` |
| `tnscmd10g` | 探測 Oracle tnslsnr 程序的工具 | `apt install tnscmd10g` |
| `uniscan` | LFI、RFI、RCE 弱點掃描器 | `apt install uniscan` |
| `wafw00f` | 辨識並指紋辨識 Web 應用防火牆 | `apt install wafw00f` |
| `wapiti` | web 應用弱點掃描器 | `apt install wapiti` |
| `webacoo` | Web 後門 cookie 腳本套件 | `apt install webacoo` |
| `webscarab` | web 應用審查工具 | `apt install webscarab` |
| `webshells` | web shell 集合 | `apt install webshells` |
| `weevely` | 隱匿的微型 web shell | `apt install weevely` |
| `wfuzz` | web 應用暴力列舉器 | `apt install wfuzz` |
| `whatweb` | 下一代 web 掃描器 | `apt install whatweb` |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` |
| `wpscan` | 黑箱 WordPress 弱點掃描器 | `apt install wpscan` |
| `xsser` | XSS 測試框架 | `apt install xsser` |
| `zaproxy` | 尋找 web 應用弱點的測試工具 | `apt install zaproxy` |

## 04 · 資料庫評估  (`kali-tools-database`, 9)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `jsql-injection` | 自動資料庫注入的 Java 工具 | `apt install jsql-injection` |
| `mdbtools` | JET / MS Access 資料庫（MDB）工具 | `apt install mdbtools` |
| `oscanner` | Oracle 評估框架 | `apt install oscanner` |
| `sidguesser` | 對 Oracle 資料庫猜測 SID | `apt install sidguesser` |
| `sqlitebrowser` | SQLite 資料庫的 GUI 編輯器 | `apt install sqlitebrowser` |
| `sqlmap` | 自動化 SQL 注入工具 | `apt install sqlmap` |
| `sqlninja` | SQL Server 注入與接管工具 | `apt install sqlninja` |
| `sqlsus` | MySQL 注入工具 | `apt install sqlsus` |
| `tnscmd10g` | 探測 Oracle tnslsnr 程序的工具 | `apt install tnscmd10g` |

## 05 · 密碼攻擊  (`kali-tools-passwords`, 46)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `cewl` | 自訂字典產生器 | `apt install cewl` |
| `chntpw` | NT SAM 密碼救援工具 | `apt install chntpw` |
| `cisco-auditing-tool` | 掃描 Cisco 路由器弱點 | `apt install cisco-auditing-tool` |
| `crackle` | 破解與解密 BLE 加密 | `apt install crackle` |
| `creddump7` | 從 Windows registry hive 擷取憑證與機密的 Python 工具 | `apt install creddump7` |
| `crunch` | 字典產生工具 | `apt install crunch` |
| `fcrackzip` | zip 壓縮檔密碼破解器 | `apt install fcrackzip` |
| `freerdp3-x11` | Windows 終端服務的 RDP 用戶端（X11 轉接套件） | `apt install freerdp3-x11` |
| `gpp-decrypt` | 群組原則偏好設定解密器 | `apt install gpp-decrypt` |
| `hash-identifier` | 辨識雜湊類型的工具 | `apt install hash-identifier` |
| `hashcat` | 世上最快、最先進的密碼還原工具 | `apt install hashcat` |
| `hashcat-utils` | 進階密碼破解的小工具集 | `apt install hashcat-utils` |
| `hashid` | 辨識用於加密資料的各種雜湊類型 | `apt install hashid` |
| `hydra` | 非常快速的網路登入破解器 | `apt install hydra` |
| `hydra-gtk` | 非常快速的網路登入破解器（GTK+ GUI） | `apt install hydra-gtk` |
| `john` | 主動式密碼破解工具 | `apt install john` |
| `johnny` | John the Ripper 的 GUI | `apt install johnny` |
| `kali-tools-gpu` | Kali 的 GPU 工具 | `apt install kali-tools-gpu` |
| `maskprocessor` | 可依位置設定字元集的高效字詞產生器 | `apt install maskprocessor` |
| `medusa` | 快速、平行、模組化的網路服務登入暴力破解器 | `apt install medusa` |
| `mimikatz` | 利用 Windows 管理權限明文顯示密碼 | `apt install mimikatz` |
| `ncrack` | 高速網路驗證破解工具 | `apt install ncrack` |
| `onesixtyone` | 快速簡單的 SNMP 掃描器 | `apt install onesixtyone` |
| `ophcrack` | 用彩虹表破解 Windows 密碼（GUI） | `apt install ophcrack` |
| `ophcrack-cli` | 用彩虹表破解 Windows 密碼（命令列） | `apt install ophcrack-cli` |
| `pack` | 密碼分析與破解工具組 | `apt install pack` |
| `pack2` | 密碼分析與破解工具組 2 | `apt install pack2` |
| `passing-the-hash` | 以密碼雜湊作為驗證輸入的修補工具 | `apt install passing-the-hash` |
| `patator` | 多用途暴力破解器 | `apt install patator` |
| `pdfcrack` | PDF 檔密碼破解器 | `apt install pdfcrack` |
| `pipal` | 對密碼傾印做統計分析 | `apt install pipal` |
| `polenum` | 擷取 Windows 系統的密碼政策 | `apt install polenum` |
| `rarcrack` | rar 壓縮檔密碼破解器 | `apt install rarcrack` |
| `rcracki-mt` | 支援混合與索引表的 rcrack 版本 | `apt install rcracki-mt` |
| `rsmangler` | 字典變形工具 | `apt install rsmangler` |
| `samdump2` | 傾印 Windows 2k/NT/XP 密碼雜湊 | `apt install samdump2` |
| `seclists` | 多種類型安全清單的集合 | `apt install seclists` |
| `sipcrack` | SIP 登入傾印/破解器 | `apt install sipcrack` |
| `sipvicious` | 稽核 SIP VoIP 系統的工具 | `apt install sipvicious` |
| `smbmap` | 好用的 SMB 列舉工具 | `apt install smbmap` |
| `statsprocessor` | 以每位置 Markov 鏈為基礎的字詞產生器 | `apt install statsprocessor` |
| `sucrack` | 多執行緒 su 暴力破解器 | `apt install sucrack` |
| `thc-pptp-bruter` | THC PPTP 暴力破解 | `apt install thc-pptp-bruter` |
| `truecrack` | TrueCrypt 磁區密碼暴力破解器 | `apt install truecrack` |
| `twofi` | Twitter 關鍵字字典 | `apt install twofi` |
| `wordlists` | 內含 rockyou 字典 | `apt install wordlists` |

## 06 · 無線攻擊  (`kali-tools-wireless`, 8)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `kali-tools-802-11` | Kali 的 802.11 攻擊工具 | `apt install kali-tools-802-11` |
| `kali-tools-bluetooth` | Kali 的藍牙攻擊工具 | `apt install kali-tools-bluetooth` |
| `kali-tools-rfid` | Kali 的 RFID 工具 | `apt install kali-tools-rfid` |
| `kali-tools-sdr` | Kali 的 SDR 工具 | `apt install kali-tools-sdr` |
| `rfcat` | sub-GHz 無線電瑞士刀 | `apt install rfcat` |
| `rfkill` | 啟用/停用無線裝置的工具 | `apt install rfkill` |
| `sakis3g` | 建立 3G 連線的工具 | `apt install sakis3g` |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` |

## 06b · 802.11 Wi-Fi 攻擊  (`kali-tools-802-11`, 19)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `aircrack-ng` | 無線 WEP/WPA 破解工具組 | `apt install aircrack-ng` |
| `airgeddon` | 稽核無線網路的多功能 bash 腳本 | `apt install airgeddon` |
| `asleap` | 利用 Cisco LEAP 網路的工具 | `apt install asleap` |
| `bully` | 以 C 撰寫的 WPS 暴力破解實作 | `apt install bully` |
| `cowpatty` | WPA 字典暴力破解 | `apt install cowpatty` |
| `eapmd5pass` | 擷取並破解 EAP-MD5 的工具 | `apt install eapmd5pass` |
| `fern-wifi-cracker` | 自動化 Wi-Fi 破解器 | `apt install fern-wifi-cracker` |
| `freeradius-wpe` | FreeRadius 無線 Pwn 版 | `apt install freeradius-wpe` |
| `hashcat` | 世上最快、最先進的密碼還原工具 | `apt install hashcat` |
| `hostapd-wpe` | 協助 AP 偽冒攻擊的 hostapd 修改版 | `apt install hostapd-wpe` |
| `iw` | 設定 Linux 無線裝置的工具 | `apt install iw` |
| `kismet` | 無線網路與裝置偵測器（中繼套件） | `apt install kismet` |
| `macchanger` | 操作網卡 MAC 位址的工具 | `apt install macchanger` |
| `mdk3` | IEEE 802.11 無線攻擊工具 | `apt install mdk3` |
| `mdk4` | IEEE 802.11 無線攻擊工具 | `apt install mdk4` |
| `pixiewps` | 離線 WPS 暴力破解工具 | `apt install pixiewps` |
| `reaver` | 針對 WPS PIN 的暴力破解攻擊工具 | `apt install reaver` |
| `wifi-honey` | Wi-Fi 蜜罐 | `apt install wifi-honey` |
| `wifite` | 以 aircrack-ng 自動化無線稽核的 Python 腳本 | `apt install wifite` |

## 06c · 藍牙攻擊  (`kali-tools-bluetooth`, 10)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `blue-hydra` | 藍牙裝置探索服務 | `apt install blue-hydra` |
| `bluelog` | 藍牙掃描與紀錄器 | `apt install bluelog` |
| `blueranger` | 定位藍牙裝置的簡易 Bash 腳本 | `apt install blueranger` |
| `bluesnarfer` | Bluesnarfing 工具 | `apt install bluesnarfer` |
| `bluez` | 藍牙工具與守護程式 | `apt install bluez` |
| `btscanner` | 以 ncurses 為介面的藍牙裝置掃描器 | `apt install btscanner` |
| `crackle` | 破解與解密 BLE 加密 | `apt install crackle` |
| `redfang` | 定位不可被探索的藍牙裝置 | `apt install redfang` |
| `spooftooph` | 自動偽冒或複製藍牙裝置 | `apt install spooftooph` |
| `ubertooth` | 2.4 GHz 藍牙實驗用無線開發平台 | `apt install ubertooth` |

## 06d · RFID/NFC 工具  (`kali-tools-rfid`, 2)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `proxmark3` | Proxmark3 的韌體、燒錄器與用戶端 | `apt install proxmark3` |
| `rfdump` | 解碼 RFID 標籤資料的工具 | `apt install rfdump` |

## 06e · 軟體定義無線電  (`kali-tools-sdr`, 7)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `chirp` | 業餘無線電設定工具 | `apt install chirp` |
| `hackrf` | 軟體定義無線電週邊（工具組） | `apt install hackrf` |
| `inspectrum` | 視覺化擷取到的無線訊號工具 | `apt install inspectrum` |
| `kalibrate-rtl` | 用 GSM 基地台計算本地振盪器頻率偏移 | `apt install kalibrate-rtl` |
| `multimon-ng` | 數位無線電傳輸解碼器 | `apt install multimon-ng` |
| `uhd-host` | Ettus Research 產品的通用硬體驅動（主機應用） | `apt install uhd-host` |
| `uhd-images` | 各種 UHD 映像檔 | `apt install uhd-images` |

## 07 · 逆向工程  (`kali-tools-reverse-engineering`, 12)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `apktool` | 反編譯 Android apk 檔的工具 | `apt install apktool` |
| `bytecode-viewer` | Java 8+ Jar 與 Android APK 逆向工程套件 | `apt install bytecode-viewer` |
| `clang` | 以 LLVM 為基礎的 C/C++/Objective-C 編譯器 | `apt install clang` |
| `dex2jar` | 處理 Android .dex 與 Java .class 檔的工具 | `apt install dex2jar` |
| `jadx` | Dex 轉 Java 反編譯器 | `apt install jadx` |
| `javasnoop` | 在本機攔截 Java 應用程式 | `apt install javasnoop` |
| `jd-gui` | 圖形化 Java .class 反編譯器 | `apt install jd-gui` |
| `metasploit-framework` | 漏洞開發與弱點研究框架 | `apt install metasploit-framework` |
| `radare2` | 免費進階的命令列十六進位編輯器 | `apt install radare2` |
| `rizin` | 逆向工程框架與命令列工具組 | `apt install rizin` |
| `rizin-cutter` | 以 rizin 為核心的逆向工程平台 | `apt install rizin-cutter` |
| `rz-ghidra` | rizin 的 ghidra 反編譯器與 sleigh 反組譯器 | `apt install rz-ghidra` |

## 08 · 漏洞利用  (`kali-tools-exploitation`, 8)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `armitage` | Metasploit 的圖形化攻擊管理介面 | `apt install armitage` |
| `beef-xss` | 瀏覽器漏洞利用框架（BeEF） | `apt install beef-xss` |
| `exploitdb` | 可搜尋的 Exploit-DB 封存 | `apt install exploitdb` |
| `metasploit-framework` | 漏洞開發與弱點研究框架 | `apt install metasploit-framework` |
| `msfpc` | MSFvenom Payload 產生器（MSFPC） | `apt install msfpc` |
| `set` | 社交工程工具組（SET） | `apt install set` |
| `sqlmap` | 自動化 SQL 注入工具 | `apt install sqlmap` |
| `termineter` | 智慧電表測試框架 | `apt install termineter` |

## 09 · 嗅探與欺騙  (`kali-tools-sniffing-spoofing`, 25)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `above` | 尋找網路弱點的網路安全嗅探器 | `apt install above` |
| `bettercap` | 完整、模組化、可攜、易擴充的 MITM 框架 | `apt install bettercap` |
| `darkstat` | 網路流量分析器 | `apt install darkstat` |
| `dnschef` | 滲透測試用的 DNS 代理 | `apt install dnschef` |
| `driftnet` | 從網路流量擷取並顯示圖片 | `apt install driftnet` |
| `dsniff` | 嗅探網路明文機密的各種工具 | `apt install dsniff` |
| `ettercap-graphical` | Ettercap 圖形介面版 | `apt install ettercap-graphical` |
| `ettercap-text-only` | Ettercap 文字模式版 | `apt install ettercap-text-only` |
| `ferret-sidejack` | 監看資料並擷取感興趣的內容 | `apt install ferret-sidejack` |
| `fiked` | Cisco VPN 攻擊工具 | `apt install fiked` |
| `hamster-sidejack` | Sidejacking 工具 | `apt install hamster-sidejack` |
| `hexinject` | 多功能封包注入與嗅探器 | `apt install hexinject` |
| `isr-evilgrade` | Evilgrade 框架 | `apt install isr-evilgrade` |
| `macchanger` | 操作網卡 MAC 位址的工具 | `apt install macchanger` |
| `mitmproxy` | 支援 SSL 的中間人 HTTP 代理 | `apt install mitmproxy` |
| `netsniff-ng` | Linux 網路封包嗅探工具組 | `apt install netsniff-ng` |
| `rebind` | DNS rebinding 工具 | `apt install rebind` |
| `responder` | LLMNR/NBT-NS/mDNS 投毒器 | `apt install responder` |
| `sniffjoke` | 透明的 TCP 連線擾亂器 | `apt install sniffjoke` |
| `sslsniff` | SSL/TLS 中間人攻擊工具 | `apt install sslsniff` |
| `sslsplit` | 透明且可擴充的 SSL/TLS 攔截 | `apt install sslsplit` |
| `tcpflow` | TCP 流量記錄器 | `apt install tcpflow` |
| `tcpreplay` | 以任意速度重播 tcpdump 檔的工具 | `apt install tcpreplay` |
| `wifi-honey` | Wi-Fi 蜜罐 | `apt install wifi-honey` |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` |

## 10 · 後滲透  (`kali-tools-post-exploitation`, 19)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `dbd` | 含加密的 Netcat 複製品 | `apt install dbd` |
| `dns2tcp` | TCP-over-DNS 隧道伺服器與用戶端 | `apt install dns2tcp` |
| `exe2hexbat` | 將 EXE 轉成 bat | `apt install exe2hexbat` |
| `iodine` | 透過 DNS 伺服器隧道傳輸 IPv4 資料 | `apt install iodine` |
| `laudanum` | 可注入的 web 檔案集 | `apt install laudanum` |
| `mimikatz` | 利用 Windows 管理權限明文顯示密碼 | `apt install mimikatz` |
| `miredo` | 透過 NAT 的 Teredo IPv6 隧道 | `apt install miredo` |
| `nishang` | PowerShell 腳本與 payload 集 | `apt install nishang` |
| `powersploit` | PowerShell 後滲透框架 | `apt install powersploit` |
| `proxychains4` | 透過 socks/http 代理轉送連線（proxychains-ng） | `apt install proxychains4` |
| `proxytunnel` | 協助 SSH 等協定穿過 HTTP(S) 代理 | `apt install proxytunnel` |
| `ptunnel` | 透過 ICMP 封包隧道傳輸 TCP 連線 | `apt install ptunnel` |
| `pwnat` | NAT 對 NAT 的用戶端-伺服器通訊 | `apt install pwnat` |
| `sbd` | Linux/Windows 的安全後門 | `apt install sbd` |
| `sslh` | 應用協定多工器 | `apt install sslh` |
| `stunnel4` | 網路守護程式的通用 SSL 隧道（相容套件） | `apt install stunnel4` |
| `udptunnel` | 透過 TCP 連線隧道傳輸 UDP 封包 | `apt install udptunnel` |
| `webacoo` | Web 後門 cookie 腳本套件 | `apt install webacoo` |
| `weevely` | 隱匿的微型 web shell | `apt install weevely` |

## 11 · 數位鑑識  (`kali-tools-forensics`, 94)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `7zip` | 高壓縮比的 7-Zip 壓縮工具 | `apt install 7zip` |
| `afflib-tools` | 進階鑑識格式函式庫（工具組） | `apt install afflib-tools` |
| `apktool` | 反編譯 Android apk 檔的工具 | `apt install apktool` |
| `autopsy` | SleuthKit 的圖形化介面 | `apt install autopsy` |
| `binwalk` | 分析二進位資料與可執行碼的工具函式庫 | `apt install binwalk` |
| `binwalk3` | 分析二進位資料與可執行碼的工具函式庫 | `apt install binwalk3` |
| `bulk-extractor` | 不解析檔案系統即擷取資訊的鑑識工具 | `apt install bulk-extractor` |
| `bytecode-viewer` | Java 8+ Jar 與 Android APK 逆向工程套件 | `apt install bytecode-viewer` |
| `cabextract` | 微軟 Cabinet 檔解壓工具 | `apt install cabextract` |
| `chkrootkit` | rootkit 偵測器 | `apt install chkrootkit` |
| `creddump7` | 從 Windows registry hive 擷取憑證與機密的 Python 工具 | `apt install creddump7` |
| `dc3dd` | 具鑑識功能的 GNU dd 修改版 | `apt install dc3dd` |
| `dcfldd` | 鑑識與安全用途的 dd 強化版 | `apt install dcfldd` |
| `ddrescue` | 資料救援與保護工具 | `apt install ddrescue` |
| `dumpzilla` | Mozilla 瀏覽器鑑識工具 | `apt install dumpzilla` |
| `ewf-tools` | 讀寫 EWF 檔的工具集 | `apt install ewf-tools` |
| `exifprobe` | 讀取數位相片的中繼資料 | `apt install exifprobe` |
| `exiv2` | EXIF/IPTC/XMP 中繼資料操作工具 | `apt install exiv2` |
| `ext3grep` | 協助還原 ext3 已刪除檔案的工具 | `apt install ext3grep` |
| `ext4magic` | 從 ext3/ext4 分割區救回已刪除檔案 | `apt install ext4magic` |
| `extundelete` | 從 ext3/ext4 分割區救回已刪除檔案的工具 | `apt install extundelete` |
| `fcrackzip` | zip 壓縮檔密碼破解器 | `apt install fcrackzip` |
| `foremost` | 救回遺失檔案的鑑識程式 | `apt install foremost` |
| `forensic-artifacts` | 鑑識痕跡知識庫（資料檔） | `apt install forensic-artifacts` |
| `forensics-colorize` | 以彩色圖形顯示檔案差異 | `apt install forensics-colorize` |
| `galleta` | IE cookie 鑑識分析工具 | `apt install galleta` |
| `gdb` | GNU 除錯器 | `apt install gdb` |
| `gparted` | GNOME 磁碟分割編輯器 | `apt install gparted` |
| `grokevt` | 讀取 Windows 事件紀錄檔的腳本 | `apt install grokevt` |
| `guymager` | 以 Qt 為基礎的鑑識映像工具 | `apt install guymager` |
| `hashdeep` | 遞迴計算雜湊或分段雜湊 | `apt install hashdeep` |
| `inetsim` | 模擬常見網際網路服務的軟體套件 | `apt install inetsim` |
| `jadx` | Dex 轉 Java 反編譯器 | `apt install jadx` |
| `javasnoop` | 在本機攔截 Java 應用程式 | `apt install javasnoop` |
| `libhivex-bin` | 讀寫 Windows Registry hive 的工具 | `apt install libhivex-bin` |
| `libsmali-java` | Android dex 格式的組譯/反組譯器 | `apt install libsmali-java` |
| `lvm2` | Linux 邏輯磁區管理器 | `apt install lvm2` |
| `lynis` | Unix 系統安全稽核工具 | `apt install lynis` |
| `mac-robber` | 收集已掛載檔案系統中檔案的資料 | `apt install mac-robber` |
| `magicrescue` | 以 magic bytes 救回檔案 | `apt install magicrescue` |
| `mdbtools` | JET / MS Access 資料庫（MDB）工具 | `apt install mdbtools` |
| `memdump` | 將記憶體內容輸出到標準輸出的工具 | `apt install memdump` |
| `metacam` | 從數位相機檔擷取 EXIF 資訊 | `apt install metacam` |
| `missidentify` | 尋找 win32 應用程式 | `apt install missidentify` |
| `myrescue` | 從受損磁碟救回資料 | `apt install myrescue` |
| `nasm` | 通用 x86 組譯器 | `apt install nasm` |
| `nasty` | 協助還原 GPG 通關密語的工具 | `apt install nasty` |
| `parted` | 磁碟分割操作工具 | `apt install parted` |
| `pasco` | IE 快取鑑識分析工具 | `apt install pasco` |
| `pdf-parser` | 解析 PDF 檔以辨識基本元素 | `apt install pdf-parser` |
| `pdfid` | 掃描 PDF 檔中的特定關鍵字 | `apt install pdfid` |
| `plaso` | 超級時間軸工具（中繼套件） | `apt install plaso` |
| `polenum` | 擷取 Windows 系統的密碼政策 | `apt install polenum` |
| `pst-utils` | 讀取 Outlook PST 檔的工具 | `apt install pst-utils` |
| `python3-capstone` | 輕量多架構反組譯框架（Python 綁定） | `apt install python3-capstone` |
| `python3-dfdatetime` | Python 3 數位鑑識日期時間函式庫 | `apt install python3-dfdatetime` |
| `python3-dfvfs` | 數位鑑識虛擬檔案系統 | `apt install python3-dfvfs` |
| `python3-dfwinreg` | Python 3 數位鑑識 Windows Registry 函式庫 | `apt install python3-dfwinreg` |
| `python3-distorm3` | x86/AMD64 強力反組譯函式庫（Python3 綁定） | `apt install python3-distorm3` |
| `radare2` | 免費進階的命令列十六進位編輯器 | `apt install radare2` |
| `readpe` | 操作 Windows PE 檔的命令列工具 | `apt install readpe` |
| `recoverdm` | 從壞軌磁碟救回檔案 | `apt install recoverdm` |
| `recoverjpeg` | 救回 JPEG 圖片與 MOV 影片 | `apt install recoverjpeg` |
| `reglookup` | 分析 Windows NT registry 的工具 | `apt install reglookup` |
| `rephrase` | GnuPG 專用的通關密語還原工具 | `apt install rephrase` |
| `rifiuti` | MS Windows 資源回收桶分析工具 | `apt install rifiuti` |
| `rifiuti2` | rifiuti 的替代品，分析 Windows 資源回收桶 | `apt install rifiuti2` |
| `rizin-cutter` | 以 rizin 為核心的逆向工程平台 | `apt install rizin-cutter` |
| `rkhunter` | rootkit、後門、嗅探器與 exploit 掃描器 | `apt install rkhunter` |
| `rsakeyfind` | 在記憶體映像中定位 BER 編碼的 RSA 私鑰 | `apt install rsakeyfind` |
| `rz-ghidra` | rizin 的 ghidra 反編譯器與 sleigh 反組譯器 | `apt install rz-ghidra` |
| `safecopy` | 問題或受損媒體的資料救援工具 | `apt install safecopy` |
| `samdump2` | 傾印 Windows 2k/NT/XP 密碼雜湊 | `apt install samdump2` |
| `scalpel` | 快速、與檔案系統無關的檔案救援 | `apt install scalpel` |
| `scrounge-ntfs` | NTFS 檔案系統資料救援程式 | `apt install scrounge-ntfs` |
| `sleuthkit` | 磁區與檔案系統鑑識分析工具 | `apt install sleuthkit` |
| `sqlitebrowser` | SQLite 資料庫的 GUI 編輯器 | `apt install sqlitebrowser` |
| `ssdeep` | 遞迴分段雜湊工具 | `apt install ssdeep` |
| `tcpdump` | 命令列網路流量分析器 | `apt install tcpdump` |
| `tcpflow` | TCP 流量記錄器 | `apt install tcpflow` |
| `tcpick` | TCP 串流嗅探與連線追蹤器 | `apt install tcpick` |
| `tcpreplay` | 以任意速度重播 tcpdump 檔的工具 | `apt install tcpreplay` |
| `truecrack` | TrueCrypt 磁區密碼暴力破解器 | `apt install truecrack` |
| `unar` | 多種格式的解壓縮工具 | `apt install unar` |
| `undbx` | 從 .dbx 檔擷取與救回郵件訊息 | `apt install undbx` |
| `unhide` | 尋找隱藏程序與連接埠的鑑識工具 | `apt install unhide` |
| `unrar` | .rar 檔解壓工具（非自由版） | `apt install unrar` |
| `upx-ucl` | 高效的執行檔即時壓縮器 | `apt install upx-ucl` |
| `vinetto` | 檢視 Thumbs.db 檔的鑑識工具 | `apt install vinetto` |
| `wce` | Windows 憑證編輯器 | `apt install wce` |
| `winregfs` | Windows registry 的 FUSE 檔案系統 | `apt install winregfs` |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` |
| `xmount` | 磁碟映像格式間交叉掛載的工具 | `apt install xmount` |
| `yara` | 惡意程式研究者的模式比對瑞士刀 | `apt install yara` |

## 12 · 報告工具  (`kali-tools-reporting`, 7)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `cutycapt` | 擷取 WebKit 網頁算繪結果的工具 | `apt install cutycapt` |
| `eyewitness` | 快速的 web 應用分流工具 | `apt install eyewitness` |
| `faraday` | 協作式滲透測試 IDE | `apt install faraday` |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` |
| `metagoofil` | 擷取公開文件中繼資料的工具 | `apt install metagoofil` |
| `pipal` | 對密碼傾印做統計分析 | `apt install pipal` |
| `recordmydesktop` | 擷取 Linux 桌面工作階段的影音 | `apt install recordmydesktop` |

## 13 · 社交工程  (`kali-tools-social-engineering`, 4)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `beef-xss` | 瀏覽器漏洞利用框架（BeEF） | `apt install beef-xss` |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` |
| `msfpc` | MSFvenom Payload 產生器（MSFPC） | `apt install msfpc` |
| `set` | 社交工程工具組（SET） | `apt install set` |

## 14 · 辨識（分流／偵察輔助）  (`kali-tools-identify`, 15)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `amass` | 深入的 DNS 列舉與網路測繪 | `apt install amass` |
| `assetfinder` | 找出與指定網域相關的網域與子網域 | `apt install assetfinder` |
| `cisco-auditing-tool` | 掃描 Cisco 路由器弱點 | `apt install cisco-auditing-tool` |
| `defectdojo` | 安全協調與弱點管理平台 | `apt install defectdojo` |
| `exploitdb` | 可搜尋的 Exploit-DB 封存 | `apt install exploitdb` |
| `kali-autopilot` | Kali 自動攻擊腳本工具 | `apt install kali-autopilot` |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` |
| `maryam` | OWASP Maryam 模組化開源 OSINT 框架 | `apt install maryam` |
| `nipper-ng` | 裝置安全設定審查工具 | `apt install nipper-ng` |
| `osrframework` | 開源研究框架（OSINT） | `apt install osrframework` |
| `spiderfoot` | OSINT 蒐集與偵察工具 | `apt install spiderfoot` |
| `tiger` | Linux 安全稽核與入侵偵測工具 | `apt install tiger` |
| `wapiti` | web 應用弱點掃描器 | `apt install wapiti` |
| `witnessme` | Web 清查工具 | `apt install witnessme` |
| `zaproxy` | 尋找 web 應用弱點的測試工具 | `apt install zaproxy` |

## 15 · 模糊測試  (`kali-tools-fuzzing`, 4)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `afl++` | 以插樁驅動的二進位格式模糊測試器 | `apt install afl++` |
| `sfuzz` | 黑箱測試工具 | `apt install sfuzz` |
| `spike` | 網路協定模糊測試器 | `apt install spike` |
| `wfuzz` | web 應用暴力列舉器 | `apt install wfuzz` |

## 16 · VoIP 工具  (`kali-tools-voip`, 17)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `enumiax` | IAX 協定使用者名稱列舉器 | `apt install enumiax` |
| `iaxflood` | VoIP 洪泛工具 | `apt install iaxflood` |
| `inviteflood` | 透過 UDP/IP 洪泛 SIP/SDP INVITE 訊息 | `apt install inviteflood` |
| `libfindrtp` | 多個 VoIP 工具所需的函式庫 | `apt install libfindrtp` |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` |
| `ohrwurm` | RTP 模糊測試器 | `apt install ohrwurm` |
| `protos-sip` | SIP 測試套件 | `apt install protos-sip` |
| `rtpbreak` | 偵測、重建並分析 RTP 工作階段 | `apt install rtpbreak` |
| `rtpflood` | 洪泛任何 RTP 裝置的工具 | `apt install rtpflood` |
| `rtpinsertsound` | 將音訊插入指定串流 | `apt install rtpinsertsound` |
| `rtpmixsound` | 即時混入預錄音訊 | `apt install rtpmixsound` |
| `siparmyknife` | SIP 模糊測試工具 | `apt install siparmyknife` |
| `sipcrack` | SIP 登入傾印/破解器 | `apt install sipcrack` |
| `sipp` | SIP 協定流量產生器 | `apt install sipp` |
| `sipvicious` | 稽核 SIP VoIP 系統的工具 | `apt install sipvicious` |
| `voiphopper` | 執行 VLAN hop 安全測試 | `apt install voiphopper` |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` |

## 17 · 硬體攻擊  (`kali-tools-hardware`, 11)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `binwalk` | 分析二進位資料與可執行碼的工具函式庫 | `apt install binwalk` |
| `binwalk3` | 分析二進位資料與可執行碼的工具函式庫 | `apt install binwalk3` |
| `cutecom` | 圖形化序列埠終端機（類似 minicom） | `apt install cutecom` |
| `flashrom` | 辨識、讀寫、清除與驗證 BIOS/ROM/flash 晶片 | `apt install flashrom` |
| `minicom` | 選單式序列埠通訊程式 | `apt install minicom` |
| `openocd` | 嵌入式目標的開源 JTAG/SWD 除錯方案 | `apt install openocd` |
| `qemu-system-x86` | QEMU 全系統模擬（x86） | `apt install qemu-system-x86` |
| `qemu-user` | QEMU 使用者模式模擬（靜態執行檔） | `apt install qemu-user` |
| `radare2` | 免費進階的命令列十六進位編輯器 | `apt install radare2` |
| `rizin-cutter` | 以 rizin 為核心的逆向工程平台 | `apt install rizin-cutter` |
| `rz-ghidra` | rizin 的 ghidra 反編譯器與 sleigh 反組譯器 | `apt install rz-ghidra` |

## 18 · 密碼學與隱寫術  (`kali-tools-crypto-stego`, 5)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `aesfix` | 修正 AES 金鑰排程位元錯誤的工具 | `apt install aesfix` |
| `ccrypt` | 安全加解密檔案與串流 | `apt install ccrypt` |
| `steghide` | 隱寫術隱藏工具 | `apt install steghide` |
| `stegosuite` | 將資訊藏入圖片的隱寫術工具 | `apt install stegosuite` |
| `stegsnow` | 以 ASCII 檔進行隱寫術 | `apt install stegsnow` |

## 19 · GPU 工具  (`kali-tools-gpu`, 1)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `truecrack` | TrueCrypt 磁區密碼暴力破解器 | `apt install truecrack` |

## 20 · 資料救援  (`kali-tools-recover`, 8)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `ddrescue` | 資料救援與保護工具 | `apt install ddrescue` |
| `ext3grep` | 協助還原 ext3 已刪除檔案的工具 | `apt install ext3grep` |
| `extundelete` | 從 ext3/ext4 分割區救回已刪除檔案的工具 | `apt install extundelete` |
| `myrescue` | 從受損磁碟救回資料 | `apt install myrescue` |
| `recoverdm` | 從壞軌磁碟救回檔案 | `apt install recoverdm` |
| `recoverjpeg` | 救回 JPEG 圖片與 MOV 影片 | `apt install recoverjpeg` |
| `scrounge-ntfs` | NTFS 檔案系統資料救援程式 | `apt install scrounge-ntfs` |
| `undbx` | 從 .dbx 檔擷取與救回郵件訊息 | `apt install undbx` |

## 21 · 偵測  (`kali-tools-detect`, 2)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `grokevt` | 讀取 Windows 事件紀錄檔的腳本 | `apt install grokevt` |
| `sentrypeer` | VoIP 的 SIP 點對點蜜罐 | `apt install sentrypeer` |

## 22 · 防護／強化  (`kali-tools-protect`, 5)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `clamav` | Unix 防毒工具（命令列介面） | `apt install clamav` |
| `cryptsetup` | 磁碟加密支援（啟動腳本） | `apt install cryptsetup` |
| `cryptsetup-initramfs` | 磁碟加密支援（initramfs 整合） | `apt install cryptsetup-initramfs` |
| `cryptsetup-nuke-password` | 在解鎖提示輸入特殊密碼即清除 LUKS 金鑰 | `apt install cryptsetup-nuke-password` |
| `fwbuilder` | 防火牆管理 GUI | `apt install fwbuilder` |

## 23 · 事件回應  (`kali-tools-respond`, 6)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `ewf-tools` | 讀寫 EWF 檔的工具集 | `apt install ewf-tools` |
| `guymager` | 以 Qt 為基礎的鑑識映像工具 | `apt install guymager` |
| `hashrat` | 支援多種雜湊與遞迴的雜湊工具 | `apt install hashrat` |
| `impacket-scripts` | 實用 impacket 腳本範例連結 | `apt install impacket-scripts` |
| `kali-tools-forensics` | Kali 的鑑識工具選單 | `apt install kali-tools-forensics` |
| `netsniff-ng` | Linux 網路封包嗅探工具組 | `apt install netsniff-ng` |

## 24 · Windows 資源  (`kali-tools-windows-resources`, 13)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `dbd` | 含加密的 Netcat 複製品 | `apt install dbd` |
| `dnschef` | 滲透測試用的 DNS 代理 | `apt install dnschef` |
| `heartleech` | 偵測 Heartbleed OpenSSL 漏洞的掃描器 | `apt install heartleech` |
| `hyperion` | 32 位元 PE 執行檔的執行期加密器 | `apt install hyperion` |
| `mimikatz` | 利用 Windows 管理權限明文顯示密碼 | `apt install mimikatz` |
| `ncat-w32` | 21 世紀的 Netcat | `apt install ncat-w32` |
| `powercat` | 以 PowerShell 實作的 netcat 功能 | `apt install powercat` |
| `sbd` | Linux/Windows 的安全後門 | `apt install sbd` |
| `secure-socket-funneling-windows-binaries` | SSF（Windows 執行檔） | `apt install secure-socket-funneling-windows-binaries` |
| `tftpd32` | 支援 IPv6 的開源 Windows TFTP 伺服器 | `apt install tftpd32` |
| `wce` | Windows 憑證編輯器 | `apt install wce` |
| `windows-binaries` | 各種滲透測試用 Windows 執行檔 | `apt install windows-binaries` |
| `windows-privesc-check` | Windows 權限提升檢查工具 | `apt install windows-privesc-check` |

## T · 最常用 10 大工具  (`kali-tools-top10`, 9)

| 工具 | 說明 | 安裝 |
|---|---|---|
| `aircrack-ng` | 無線 WEP/WPA 破解工具組 | `apt install aircrack-ng` |
| `hydra` | 非常快速的網路登入破解器 | `apt install hydra` |
| `john` | 主動式密碼破解工具 | `apt install john` |
| `metasploit-framework` | 漏洞開發與弱點研究框架 | `apt install metasploit-framework` |
| `netexec` | 網路執行工具（NetExec） | `apt install netexec` |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` |
| `responder` | LLMNR/NBT-NS/mDNS 投毒器 | `apt install responder` |
| `sqlmap` | 自動化 SQL 注入工具 | `apt install sqlmap` |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` |

---

全部安裝：`lab/kali/scripts/install-tools.sh --all`（kali-linux-default），或依分類 `install-tools.sh cat:<slug>`。驅動任何工具：`tool.sh <名稱>`；串接常用流程：`toolkit.sh chain recon,web,vuln`。

