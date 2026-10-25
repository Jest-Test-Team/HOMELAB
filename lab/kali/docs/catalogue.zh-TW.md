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

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `0trace` | 可在既有 TCP 連線中執行的 traceroute 工具 | `apt install 0trace` | [home](https://lcamtuf.coredump.cx) |
| `arping` | 送出 IP 與/或 ARP ping（到 MAC 位址） | `apt install arping` | [home](https://www.habets.pp.se/synscan/programs.php?prog=arping) |
| `braa` | 大量 SNMP 掃描器 | `apt install braa` | [home](https://github.com/mteg/braa) |
| `dmitry` | Deepmagic 資訊蒐集工具 | `apt install dmitry` | [home](https://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/) |
| `dnsenum` | 列舉網域 DNS 資訊的工具 | `apt install dnsenum` | [home](https://github.com/SparrowOchon/dnsenum2) |
| `dnsmap` | DNS 網域名稱暴力破解工具 | `apt install dnsmap` | [home](https://github.com/resurrecting-open-source-projects/dnsmap) |
| `dnsrecon` | 強大的 DNS 列舉腳本 | `apt install dnsrecon` | [home](https://github.com/darkoperator/dnsrecon) |
| `dnstracer` | 追蹤 DNS 查詢到來源 | `apt install dnstracer` | [home](http://www.mavetju.org/unix/dnstracer.php) |
| `dnswalk` | 以 nameserver 查詢檢查 DNS 區域資訊 | `apt install dnswalk` | [home](https://github.com/davebarr/dnswalk) |
| `enum4linux` | 列舉 Windows 與 Samba 系統資訊 | `apt install enum4linux` | [home](https://labs.portcullis.co.uk/tools/enum4linux/) |
| `fierce` | 網域 DNS 掃描器 | `apt install fierce` | [home](https://github.com/mschwager/fierce) |
| `firewalk` | 主動式偵察的網路安全工具 | `apt install firewalk` | [home](http://packetfactory.openwall.net/projects/firewalk/) |
| `fping` | 對多台主機送出 ICMP ECHO_REQUEST | `apt install fping` | [home](https://www.fping.org/) |
| `fragrouter` | IDS 規避工具組 | `apt install fragrouter` | [home](http://www.anzen.com/research/nidsbench/fragrouter.html) |
| `ftester` | 測試防火牆與 IDS 的工具 | `apt install ftester` | [home](https://dev.inversepath.com/ftester/) |
| `hping3` | 主動式網路壓測工具 | `apt install hping3` | [home](http://www.hping.org/) |
| `ike-scan` | 探索與指紋辨識 IKE 主機（IPsec VPN 伺服器） | `apt install ike-scan` | [home](https://github.com/royhills/ike-scan) |
| `intrace` | 搭載既有 TCP 連線的 traceroute 類工具 | `apt install intrace` | [home](https://github.com/robertswiecki/intrace) |
| `iputils-arping` | 對 ARP 位址送 ICMP echo 的工具 | `apt install iputils-arping` | [home](https://github.com/iputils/iputils/) |
| `irpas` | 網際路由協定攻擊套件 | `apt install irpas` | [home](https://web.archive.org/web/20200208113522fw_/http://phenoelit.org/fr/tools.html) |
| `lbd` | 負載平衡器偵測器 | `apt install lbd` | [home](http://ge.mine.nu/code/) |
| `legion` | 半自動化網路滲透測試工具 | `apt install legion` | [home](https://github.com/Hackman238/legion) |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` | [home](https://www.maltego.com) |
| `masscan` | TCP 連接埠掃描器 | `apt install masscan` | [home](https://github.com/robertdavidgraham/masscan) |
| `metagoofil` | 擷取公開文件中繼資料的工具 | `apt install metagoofil` | [home](https://github.com/opsdisk/metagoofil) |
| `nbtscan` | 掃描網路尋找 NetBIOS 資訊 | `apt install nbtscan` | [home](https://github.com/resurrecting-open-source-projects/nbtscan) |
| `ncat` | NMAP 版 netcat 重製 | `apt install ncat` | [home](https://nmap.org/) |
| `netdiscover` | 以 ARP 請求做主動/被動網路位址掃描 | `apt install netdiscover` | [home](https://github.com/netdiscover-scanner/netdiscover) |
| `netmask` | 協助計算網路遮罩 | `apt install netmask` | [home](https://github.com/tlby/netmask) |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` | [home](https://nmap.org/) |
| `onesixtyone` | 快速簡單的 SNMP 掃描器 | `apt install onesixtyone` | [home](https://github.com/trailofbits/onesixtyone) |
| `p0f` | 被動式 OS 指紋辨識工具 | `apt install p0f` | [home](https://lcamtuf.coredump.cx/p0f3/) |
| `qsslcaudit` | 測試 SSL/TLS 用戶端安全性 | `apt install qsslcaudit` | [home](https://github.com/gremwell/qsslcaudit) |
| `recon-ng` | 以 Python 撰寫的 web 偵察框架 | `apt install recon-ng` | [home](https://github.com/lanmaster53/recon-ng) |
| `smbmap` | 好用的 SMB 列舉工具 | `apt install smbmap` | [home](https://github.com/ShawnDEvans/smbmap) |
| `smtp-user-enum` | SMTP 服務使用者名稱猜測工具 | `apt install smtp-user-enum` | [home](http://pentestmonkey.net/tools/user-enumeration/smtp-user-enum) |
| `snmpcheck` | SNMP 服務列舉工具 | `apt install snmpcheck` | [home](http://www.nothink.org/codes/snmpcheck/index.php) |
| `ssldump` | SSLv3/TLS 網路協定分析器 | `apt install ssldump` | [home](https://github.com/adulau/ssldump) |
| `sslh` | 應用協定多工器 | `apt install sslh` | [home](http://www.rutschle.net/tech/sslh/README.html) |
| `sslscan` | 測試 SSL/TLS 服務支援的加密套件 | `apt install sslscan` | [home](https://github.com/rbsec/sslscan) |
| `sslyze` | 快速且功能完整的 SSL 掃描器 | `apt install sslyze` | [home](https://github.com/nabla-c0d3/sslyze) |
| `swaks` | SMTP 命令列測試工具 | `apt install swaks` | [home](https://www.jetmore.org/john/code/swaks/) |
| `thc-ipv6` | THC 的 IPv6 攻擊工具組 | `apt install thc-ipv6` | [home](http://www.thc.org/thc-ipv6/) |
| `theharvester` | 從公開來源蒐集 email 與子網域的工具 | `apt install theharvester` | [home](https://github.com/laramies/theHarvester) |
| `tlssled` | 評估目標 SSL/TLS（HTTPS）伺服器安全性 | `apt install tlssled` | [home](http://www.taddong.com/en/lab.html) |
| `twofi` | Twitter 關鍵字字典 | `apt install twofi` | [home](https://www.digininja.org/projects/twofi.php) |
| `unicornscan` | 使用者態分散式 TCP/IP 堆疊 | `apt install unicornscan` | [home](http://www.unicornscan.org/) |
| `urlcrazy` | 網域誤植產生器 | `apt install urlcrazy` | [home](https://www.morningstarsecurity.com/research/urlcrazy) |
| `wafw00f` | 辨識並指紋辨識 Web 應用防火牆 | `apt install wafw00f` | [home](https://github.com/EnableSecurity/wafw00f) |
| `zenmap` | Nmap 的圖形前端 | `apt install zenmap` | [home](https://nmap.org/) |

## 02 · 弱點分析  (`kali-tools-vulnerability`, 35)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `afl++` | 以插樁驅動的二進位格式模糊測試器 | `apt install afl++` | [home](https://github.com/AFLplusplus/AFLplusplus) |
| `bed` | 網路協定模糊測試器 | `apt install bed` | [home](http://www.snake-basket.de) |
| `cisco-auditing-tool` | 掃描 Cisco 路由器弱點 | `apt install cisco-auditing-tool` | [home](http://www.scrypt.net/) |
| `cisco-global-exploiter` | 簡易快速的 Cisco 漏洞利用工具 | `apt install cisco-global-exploiter` | [home](http://www.blackangels.it) |
| `cisco-ocs` | 大量 Cisco 掃描器 | `apt install cisco-ocs` | [home](http://hacklab.altervista.org/) |
| `cisco-torch` | Cisco 裝置掃描器 | `apt install cisco-torch` | `man cisco-torch` |
| `dhcpig` | 使用 scapy 的 DHCP 耗盡攻擊腳本 | `apt install dhcpig` | [home](https://github.com/kamorin/DHCPig) |
| `enumiax` | IAX 協定使用者名稱列舉器 | `apt install enumiax` | [home](https://enumiax.sourceforge.net/) |
| `gvm` | 遠端網路安全稽核器（中繼套件與腳本） | `apt install gvm` | [home](https://www.greenbone.net/) |
| `iaxflood` | VoIP 洪泛工具 | `apt install iaxflood` | [home](http://www.hackingexposedvoip.com/sec_tools.html) |
| `inviteflood` | 透過 UDP/IP 洪泛 SIP/SDP INVITE 訊息 | `apt install inviteflood` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `legion` | 半自動化網路滲透測試工具 | `apt install legion` | [home](https://github.com/Hackman238/legion) |
| `lynis` | Unix 系統安全稽核工具 | `apt install lynis` | [home](https://cisofy.com/lynis/) |
| `nikto` | web 伺服器安全掃描器 | `apt install nikto` | [home](https://github.com/sullo/nikto) |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` | [home](https://nmap.org/) |
| `ohrwurm` | RTP 模糊測試器 | `apt install ohrwurm` | [home](http://mazzoo.de/blog/2006/08/25#ohrwurm) |
| `peass` | 權限提升腳本套件（PEASS） | `apt install peass` | [home](https://github.com/carlospolop/PEASS-ng) |
| `protos-sip` | SIP 測試套件 | `apt install protos-sip` | [home](https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip) |
| `rtpbreak` | 偵測、重建並分析 RTP 工作階段 | `apt install rtpbreak` | [home](http://dallachiesa.com/code/rtpbreak/) |
| `rtpflood` | 洪泛任何 RTP 裝置的工具 | `apt install rtpflood` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `rtpinsertsound` | 將音訊插入指定串流 | `apt install rtpinsertsound` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `rtpmixsound` | 即時混入預錄音訊 | `apt install rtpmixsound` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `sfuzz` | 黑箱測試工具 | `apt install sfuzz` | [home](http://aconole.brad-x.com/programs/sfuzz.html) |
| `siege` | HTTP 回歸測試與壓力測試工具 | `apt install siege` | [home](https://www.joedog.org/JoeDog/Siege) |
| `siparmyknife` | SIP 模糊測試工具 | `apt install siparmyknife` | [home](https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html) |
| `sipp` | SIP 協定流量產生器 | `apt install sipp` | [home](https://sipp.sourceforge.net/) |
| `sipsak` | SIP 瑞士刀 | `apt install sipsak` | [home](https://github.com/nils-ohlmeier/sipsak) |
| `sipvicious` | 稽核 SIP VoIP 系統的工具 | `apt install sipvicious` | [home](https://github.com/EnableSecurity/sipvicious) |
| `slowhttptest` | 應用層 DoS 攻擊模擬工具 | `apt install slowhttptest` | [home](https://github.com/shekyan/slowhttptest) |
| `spike` | 網路協定模糊測試器 | `apt install spike` | [home](http://www.immunitysec.com/resources-freesoftware.shtml) |
| `t50` | 多協定封包注入工具 | `apt install t50` | [home](https://gitlab.com/fredericopissarra/t50) |
| `thc-ssl-dos` | SSL 握手壓測工具 | `apt install thc-ssl-dos` | [home](http://www.thc.org/thc-ssl-dos/) |
| `unix-privesc-check` | 檢查簡易權限提升向量的腳本 | `apt install unix-privesc-check` | [home](https://pentestmonkey.net/tools/audit/unix-privesc-check) |
| `voiphopper` | 執行 VLAN hop 安全測試 | `apt install voiphopper` | [home](https://sourceforge.net/projects/voiphopper) |
| `yersinia` | 網路弱點檢查軟體 | `apt install yersinia` | [home](https://github.com/tomac/yersinia) |

## 03 · Web 應用程式分析  (`kali-tools-web`, 73)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `apache-users` | 列舉啟用 Apache UserDir 模組系統上的使用者名稱 | `apt install apache-users` | [home](https://labs.portcullis.co.uk/downloads/) |
| `apache2` | Apache HTTP 伺服器 | `apt install apache2` | [home](https://httpd.apache.org/) |
| `beef-xss` | 瀏覽器漏洞利用框架（BeEF） | `apt install beef-xss` | [home](https://beefproject.com/) |
| `cadaver` | 命令列 WebDAV 用戶端 | `apt install cadaver` | [home](https://github.com/notroj/cadaver) |
| `commix` | 自動化一站式 OS 命令注入與利用工具 | `apt install commix` | [home](https://commixproject.com) |
| `cutycapt` | 擷取 WebKit 網頁算繪結果的工具 | `apt install cutycapt` | [home](https://github.com/Crystalix007/CutyCapt) |
| `davtest` | WebDAV 伺服器測試工具 | `apt install davtest` | [home](https://github.com/cldrn/davtest) |
| `default-mysql-server` | MySQL 資料庫伺服器（中繼套件） | `apt install default-mysql-server` | `man default-mysql-server` |
| `dirb` | URL 暴力列舉工具 | `apt install dirb` | [home](https://dirb.sourceforge.net/) |
| `dirbuster` | Web 伺服器目錄暴力列舉器 | `apt install dirbuster` | [home](https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project) |
| `dotdotpwn` | 目錄遍歷模糊測試器 | `apt install dotdotpwn` | [home](https://dotdotpwn.blogspot.ca) |
| `eyewitness` | 快速的 web 應用分流工具 | `apt install eyewitness` | [home](https://www.christophertruncer.com/eyewitness-triage-tool/) |
| `ferret-sidejack` | 監看資料並擷取感興趣的內容 | `apt install ferret-sidejack` | [home](https://github.com/robertdavidgraham/ferret) |
| `ftester` | 測試防火牆與 IDS 的工具 | `apt install ftester` | [home](https://dev.inversepath.com/ftester/) |
| `hakrawler` | 快速探索端點與資產的 web 爬蟲 | `apt install hakrawler` | [home](https://github.com/hakluke/hakrawler) |
| `hamster-sidejack` | Sidejacking 工具 | `apt install hamster-sidejack` | [home](http://www.erratasec.com/research.html) |
| `heartleech` | 偵測 Heartbleed OpenSSL 漏洞的掃描器 | `apt install heartleech` | [home](https://github.com/robertdavidgraham/heartleech) |
| `httrack` | 將網站複製到本機（離線瀏覽器） | `apt install httrack` | [home](https://www.httrack.com) |
| `hydra` | 非常快速的網路登入破解器 | `apt install hydra` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `hydra-gtk` | 非常快速的網路登入破解器（GTK+ GUI） | `apt install hydra-gtk` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `jboss-autopwn` | 取得 JBoss 遠端 shell 的腳本 | `apt install jboss-autopwn` | [home](https://github.com/SpiderLabs/jboss-autopwn) |
| `joomscan` | OWASP Joomla 弱點掃描器 | `apt install joomscan` | [home](https://www.owasp.org/index.php/Category:OWASP_Joomla_Vulnerability_Scanner_Project) |
| `jsql-injection` | 自動資料庫注入的 Java 工具 | `apt install jsql-injection` | [home](https://github.com/ron190/jsql-injection) |
| `laudanum` | 可注入的 web 檔案集 | `apt install laudanum` | [home](https://sourceforge.net/projects/laudanum/) |
| `lbd` | 負載平衡器偵測器 | `apt install lbd` | [home](http://ge.mine.nu/code/) |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` | [home](https://www.maltego.com) |
| `medusa` | 快速、平行、模組化的網路服務登入暴力破解器 | `apt install medusa` | [home](http://foofus.net/?page_id=51) |
| `mitmproxy` | 支援 SSL 的中間人 HTTP 代理 | `apt install mitmproxy` | [home](https://mitmproxy.org) |
| `ncrack` | 高速網路驗證破解工具 | `apt install ncrack` | [home](https://nmap.org/ncrack/) |
| `nikto` | web 伺服器安全掃描器 | `apt install nikto` | [home](https://github.com/sullo/nikto) |
| `nishang` | PowerShell 腳本與 payload 集 | `apt install nishang` | [home](https://github.com/samratashok/nishang) |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` | [home](https://nmap.org/) |
| `oscanner` | Oracle 評估框架 | `apt install oscanner` | [home](http://www.cqure.net/wp/tools/database/oscanner/) |
| `padbuster` | 執行 Padding Oracle 攻擊的腳本 | `apt install padbuster` | [home](https://github.com/GDSSecurity/PadBuster) |
| `paros` | web 應用程式代理 | `apt install paros` | [home](http://www.parosproxy.org/index.shtml) |
| `patator` | 多用途暴力破解器 | `apt install patator` | [home](https://github.com/lanjelot/patator) |
| `php` | 伺服器端 HTML 內嵌腳本語言（預設） | `apt install php` | `man php` |
| `php-mysql` | PHP 的 MySQL 模組（預設） | `apt install php-mysql` | `man php-mysql` |
| `proxychains4` | 透過 socks/http 代理轉送連線（proxychains-ng） | `apt install proxychains4` | [home](https://github.com/rofl0r/proxychains-ng) |
| `proxytunnel` | 協助 SSH 等協定穿過 HTTP(S) 代理 | `apt install proxytunnel` | [home](https://proxytunnel.sourceforge.io/) |
| `qsslcaudit` | 測試 SSL/TLS 用戶端安全性 | `apt install qsslcaudit` | [home](https://github.com/gremwell/qsslcaudit) |
| `redsocks` | 將任意 TCP 連線重導到 SOCKS/HTTPS 代理 | `apt install redsocks` | [home](http://darkk.net.ru/redsocks/) |
| `sidguesser` | 對 Oracle 資料庫猜測 SID | `apt install sidguesser` | [home](http://www.cqure.net/wp/tools/database/sidguesser/) |
| `siege` | HTTP 回歸測試與壓力測試工具 | `apt install siege` | [home](https://www.joedog.org/JoeDog/Siege) |
| `skipfish` | 全自動主動式 web 應用安全偵察工具 | `apt install skipfish` | `man skipfish` |
| `slowhttptest` | 應用層 DoS 攻擊模擬工具 | `apt install slowhttptest` | [home](https://github.com/shekyan/slowhttptest) |
| `sqlitebrowser` | SQLite 資料庫的 GUI 編輯器 | `apt install sqlitebrowser` | [home](https://sqlitebrowser.org/) |
| `sqlmap` | 自動化 SQL 注入工具 | `apt install sqlmap` | [home](https://sqlmap.org/) |
| `sqlninja` | SQL Server 注入與接管工具 | `apt install sqlninja` | [home](https://sqlninja.sourceforge.net/) |
| `sqlsus` | MySQL 注入工具 | `apt install sqlsus` | [home](https://sqlsus.sourceforge.net/) |
| `ssldump` | SSLv3/TLS 網路協定分析器 | `apt install ssldump` | [home](https://github.com/adulau/ssldump) |
| `sslh` | 應用協定多工器 | `apt install sslh` | [home](http://www.rutschle.net/tech/sslh/README.html) |
| `sslscan` | 測試 SSL/TLS 服務支援的加密套件 | `apt install sslscan` | [home](https://github.com/rbsec/sslscan) |
| `sslsniff` | SSL/TLS 中間人攻擊工具 | `apt install sslsniff` | [home](https://github.com/moxie0/sslsniff) |
| `sslsplit` | 透明且可擴充的 SSL/TLS 攔截 | `apt install sslsplit` | [home](https://www.roe.ch/SSLsplit) |
| `sslyze` | 快速且功能完整的 SSL 掃描器 | `apt install sslyze` | [home](https://github.com/nabla-c0d3/sslyze) |
| `stunnel4` | 網路守護程式的通用 SSL 隧道（相容套件） | `apt install stunnel4` | [home](https://www.stunnel.org/) |
| `thc-ssl-dos` | SSL 握手壓測工具 | `apt install thc-ssl-dos` | [home](http://www.thc.org/thc-ssl-dos/) |
| `tlssled` | 評估目標 SSL/TLS（HTTPS）伺服器安全性 | `apt install tlssled` | [home](http://www.taddong.com/en/lab.html) |
| `tnscmd10g` | 探測 Oracle tnslsnr 程序的工具 | `apt install tnscmd10g` | [home](http://www.red-database-security.com/) |
| `uniscan` | LFI、RFI、RCE 弱點掃描器 | `apt install uniscan` | [home](https://sourceforge.net/projects/uniscan/) |
| `wafw00f` | 辨識並指紋辨識 Web 應用防火牆 | `apt install wafw00f` | [home](https://github.com/EnableSecurity/wafw00f) |
| `wapiti` | web 應用弱點掃描器 | `apt install wapiti` | [home](https://wapiti.sourceforge.net/) |
| `webacoo` | Web 後門 cookie 腳本套件 | `apt install webacoo` | [home](https://github.com/anestisb/WeBaCoo) |
| `webscarab` | web 應用審查工具 | `apt install webscarab` | [home](https://github.com/OWASP/OWASP-WebScarab) |
| `webshells` | web shell 集合 | `apt install webshells` | [home](https://www.kali.org) |
| `weevely` | 隱匿的微型 web shell | `apt install weevely` | [home](https://github.com/epinna/weevely3/) |
| `wfuzz` | web 應用暴力列舉器 | `apt install wfuzz` | [home](http://www.edge-security.com/wfuzz.php) |
| `whatweb` | 下一代 web 掃描器 | `apt install whatweb` | [home](https://github.com/urbanadventurer/WhatWeb) |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` | [home](https://www.wireshark.org/) |
| `wpscan` | 黑箱 WordPress 弱點掃描器 | `apt install wpscan` | [home](https://wpscan.com/wordpress-security-scanner) |
| `xsser` | XSS 測試框架 | `apt install xsser` | [home](https://xsser.03c8.net/) |
| `zaproxy` | 尋找 web 應用弱點的測試工具 | `apt install zaproxy` | [home](https://github.com/zaproxy/zaproxy) |

## 04 · 資料庫評估  (`kali-tools-database`, 9)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `jsql-injection` | 自動資料庫注入的 Java 工具 | `apt install jsql-injection` | [home](https://github.com/ron190/jsql-injection) |
| `mdbtools` | JET / MS Access 資料庫（MDB）工具 | `apt install mdbtools` | [home](https://github.com/mdbtools/mdbtools) |
| `oscanner` | Oracle 評估框架 | `apt install oscanner` | [home](http://www.cqure.net/wp/tools/database/oscanner/) |
| `sidguesser` | 對 Oracle 資料庫猜測 SID | `apt install sidguesser` | [home](http://www.cqure.net/wp/tools/database/sidguesser/) |
| `sqlitebrowser` | SQLite 資料庫的 GUI 編輯器 | `apt install sqlitebrowser` | [home](https://sqlitebrowser.org/) |
| `sqlmap` | 自動化 SQL 注入工具 | `apt install sqlmap` | [home](https://sqlmap.org/) |
| `sqlninja` | SQL Server 注入與接管工具 | `apt install sqlninja` | [home](https://sqlninja.sourceforge.net/) |
| `sqlsus` | MySQL 注入工具 | `apt install sqlsus` | [home](https://sqlsus.sourceforge.net/) |
| `tnscmd10g` | 探測 Oracle tnslsnr 程序的工具 | `apt install tnscmd10g` | [home](http://www.red-database-security.com/) |

## 05 · 密碼攻擊  (`kali-tools-passwords`, 46)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `cewl` | 自訂字典產生器 | `apt install cewl` | [home](https://github.com/digininja/CeWL) |
| `chntpw` | NT SAM 密碼救援工具 | `apt install chntpw` | [home](http://pogostick.net/~pnh/ntpasswd/) |
| `cisco-auditing-tool` | 掃描 Cisco 路由器弱點 | `apt install cisco-auditing-tool` | [home](http://www.scrypt.net/) |
| `crackle` | 破解與解密 BLE 加密 | `apt install crackle` | [home](https://github.com/mikeryan/crackle) |
| `creddump7` | 從 Windows registry hive 擷取憑證與機密的 Python 工具 | `apt install creddump7` | [home](https://github.com/CiscoCXSecurity/creddump7) |
| `crunch` | 字典產生工具 | `apt install crunch` | [home](http://sourceforge.net/projects/crunch-wordlist/) |
| `fcrackzip` | zip 壓縮檔密碼破解器 | `apt install fcrackzip` | [home](http://oldhome.schmorp.de/marc/fcrackzip.html) |
| `freerdp3-x11` | Windows 終端服務的 RDP 用戶端（X11 轉接套件） | `apt install freerdp3-x11` | [home](https://www.freerdp.com/) |
| `gpp-decrypt` | 群組原則偏好設定解密器 | `apt install gpp-decrypt` | [home](http://carnal0wnage.attackresearch.com/2012/10/group-policy-preferences-and-getting.html) |
| `hash-identifier` | 辨識雜湊類型的工具 | `apt install hash-identifier` | [home](https://github.com/blackploit/hash-identifier) |
| `hashcat` | 世上最快、最先進的密碼還原工具 | `apt install hashcat` | [home](https://hashcat.net/hashcat/) |
| `hashcat-utils` | 進階密碼破解的小工具集 | `apt install hashcat-utils` | [home](https://github.com/hashcat/hashcat-utils/) |
| `hashid` | 辨識用於加密資料的各種雜湊類型 | `apt install hashid` | [home](https://psypanda.github.io/hashID/) |
| `hydra` | 非常快速的網路登入破解器 | `apt install hydra` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `hydra-gtk` | 非常快速的網路登入破解器（GTK+ GUI） | `apt install hydra-gtk` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `john` | 主動式密碼破解工具 | `apt install john` | [home](https://github.com/openwall/john) |
| `johnny` | John the Ripper 的 GUI | `apt install johnny` | [home](https://openwall.info/wiki/john/johnny) |
| `kali-tools-gpu` | Kali 的 GPU 工具 | `apt install kali-tools-gpu` | [home](https://www.kali.org) |
| `maskprocessor` | 可依位置設定字元集的高效字詞產生器 | `apt install maskprocessor` | [home](https://github.com/hashcat/maskprocessor) |
| `medusa` | 快速、平行、模組化的網路服務登入暴力破解器 | `apt install medusa` | [home](http://foofus.net/?page_id=51) |
| `mimikatz` | 利用 Windows 管理權限明文顯示密碼 | `apt install mimikatz` | [home](https://blog.gentilkiwi.com/mimikatz) |
| `ncrack` | 高速網路驗證破解工具 | `apt install ncrack` | [home](https://nmap.org/ncrack/) |
| `onesixtyone` | 快速簡單的 SNMP 掃描器 | `apt install onesixtyone` | [home](https://github.com/trailofbits/onesixtyone) |
| `ophcrack` | 用彩虹表破解 Windows 密碼（GUI） | `apt install ophcrack` | [home](https://ophcrack.sourceforge.net/) |
| `ophcrack-cli` | 用彩虹表破解 Windows 密碼（命令列） | `apt install ophcrack-cli` | [home](https://ophcrack.sourceforge.net/) |
| `pack` | 密碼分析與破解工具組 | `apt install pack` | [home](https://github.com/Hydraze/pack) |
| `pack2` | 密碼分析與破解工具組 2 | `apt install pack2` | [home](https://github.com/hops/pack2) |
| `passing-the-hash` | 以密碼雜湊作為驗證輸入的修補工具 | `apt install passing-the-hash` | [home](http://passing-the-hash.blogspot.fr) |
| `patator` | 多用途暴力破解器 | `apt install patator` | [home](https://github.com/lanjelot/patator) |
| `pdfcrack` | PDF 檔密碼破解器 | `apt install pdfcrack` | [home](http://pdfcrack.sf.net) |
| `pipal` | 對密碼傾印做統計分析 | `apt install pipal` | [home](https://www.digininja.org/projects/pipal.php) |
| `polenum` | 擷取 Windows 系統的密碼政策 | `apt install polenum` | [home](https://github.com/Wh1t3Fox/polenum/) |
| `rarcrack` | rar 壓縮檔密碼破解器 | `apt install rarcrack` | [home](http://rarcrack.sourceforge.net/) |
| `rcracki-mt` | 支援混合與索引表的 rcrack 版本 | `apt install rcracki-mt` | [home](https://freerainbowtables.com/) |
| `rsmangler` | 字典變形工具 | `apt install rsmangler` | [home](https://digi.ninja/projects/rsmangler.php) |
| `samdump2` | 傾印 Windows 2k/NT/XP 密碼雜湊 | `apt install samdump2` | [home](https://ophcrack.sourceforge.net/) |
| `seclists` | 多種類型安全清單的集合 | `apt install seclists` | [home](https://github.com/danielmiessler/SecLists) |
| `sipcrack` | SIP 登入傾印/破解器 | `apt install sipcrack` | [home](http://www.remote-exploit.org/codes_sipcrack.html) |
| `sipvicious` | 稽核 SIP VoIP 系統的工具 | `apt install sipvicious` | [home](https://github.com/EnableSecurity/sipvicious) |
| `smbmap` | 好用的 SMB 列舉工具 | `apt install smbmap` | [home](https://github.com/ShawnDEvans/smbmap) |
| `statsprocessor` | 以每位置 Markov 鏈為基礎的字詞產生器 | `apt install statsprocessor` | [home](https://github.com/hashcat/statsprocessor) |
| `sucrack` | 多執行緒 su 暴力破解器 | `apt install sucrack` | [home](https://labs.portcullis.co.uk/tools/sucrack/) |
| `thc-pptp-bruter` | THC PPTP 暴力破解 | `apt install thc-pptp-bruter` | [home](http://www.thc.org/releases.php) |
| `truecrack` | TrueCrypt 磁區密碼暴力破解器 | `apt install truecrack` | [home](https://github.com/lvaccaro/truecrack) |
| `twofi` | Twitter 關鍵字字典 | `apt install twofi` | [home](https://www.digininja.org/projects/twofi.php) |
| `wordlists` | 內含 rockyou 字典 | `apt install wordlists` | [home](https://www.kali.org) |

## 06 · 無線攻擊  (`kali-tools-wireless`, 8)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `kali-tools-802-11` | Kali 的 802.11 攻擊工具 | `apt install kali-tools-802-11` | [home](https://www.kali.org) |
| `kali-tools-bluetooth` | Kali 的藍牙攻擊工具 | `apt install kali-tools-bluetooth` | [home](https://www.kali.org) |
| `kali-tools-rfid` | Kali 的 RFID 工具 | `apt install kali-tools-rfid` | [home](https://www.kali.org) |
| `kali-tools-sdr` | Kali 的 SDR 工具 | `apt install kali-tools-sdr` | [home](https://www.kali.org) |
| `rfcat` | sub-GHz 無線電瑞士刀 | `apt install rfcat` | [home](https://github.com/atlas0fd00m/rfcat) |
| `rfkill` | 啟用/停用無線裝置的工具 | `apt install rfkill` | [home](https://github.com/util-linux/util-linux) |
| `sakis3g` | 建立 3G 連線的工具 | `apt install sakis3g` | [home](http://www.sakis3g.org) |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` | [home](https://www.wireshark.org/) |

## 06b · 802.11 Wi-Fi 攻擊  (`kali-tools-802-11`, 19)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `aircrack-ng` | 無線 WEP/WPA 破解工具組 | `apt install aircrack-ng` | [home](https://www.aircrack-ng.org/) |
| `airgeddon` | 稽核無線網路的多功能 bash 腳本 | `apt install airgeddon` | [home](https://github.com/v1s1t0r1sh3r3/airgeddon) |
| `asleap` | 利用 Cisco LEAP 網路的工具 | `apt install asleap` | [home](https://www.willhackforsushi.com/) |
| `bully` | 以 C 撰寫的 WPS 暴力破解實作 | `apt install bully` | [home](https://github.com/kimocoder/bully) |
| `cowpatty` | WPA 字典暴力破解 | `apt install cowpatty` | [home](https://www.willhackforsushi.com/?page_id=50) |
| `eapmd5pass` | 擷取並破解 EAP-MD5 的工具 | `apt install eapmd5pass` | [home](https://www.willhackforsushi.com/?page_id=67) |
| `fern-wifi-cracker` | 自動化 Wi-Fi 破解器 | `apt install fern-wifi-cracker` | [home](https://github.com/savio-code/fern-wifi-cracker) |
| `freeradius-wpe` | FreeRadius 無線 Pwn 版 | `apt install freeradius-wpe` | [home](https://www.freeradius.org/) |
| `hashcat` | 世上最快、最先進的密碼還原工具 | `apt install hashcat` | [home](https://hashcat.net/hashcat/) |
| `hostapd-wpe` | 協助 AP 偽冒攻擊的 hostapd 修改版 | `apt install hostapd-wpe` | [home](https://github.com/aircrack-ng/aircrack-ng/tree/master/patches/wpe) |
| `iw` | 設定 Linux 無線裝置的工具 | `apt install iw` | [home](https://wireless.wiki.kernel.org/en/users/documentation/iw) |
| `kismet` | 無線網路與裝置偵測器（中繼套件） | `apt install kismet` | [home](https://www.kismetwireless.net/) |
| `macchanger` | 操作網卡 MAC 位址的工具 | `apt install macchanger` | [home](https://github.com/alobbs/macchanger) |
| `mdk3` | IEEE 802.11 無線攻擊工具 | `apt install mdk3` | [home](https://github.com/aircrack-ng/mdk3) |
| `mdk4` | IEEE 802.11 無線攻擊工具 | `apt install mdk4` | [home](https://github.com/aircrack-ng/mdk4) |
| `pixiewps` | 離線 WPS 暴力破解工具 | `apt install pixiewps` | [home](https://github.com/wiire/pixiewps) |
| `reaver` | 針對 WPS PIN 的暴力破解攻擊工具 | `apt install reaver` | [home](https://github.com/t6x/reaver-wps-fork-t6x) |
| `wifi-honey` | Wi-Fi 蜜罐 | `apt install wifi-honey` | [home](https://www.digininja.org/projects/wifi_honey.php) |
| `wifite` | 以 aircrack-ng 自動化無線稽核的 Python 腳本 | `apt install wifite` | [home](https://github.com/kimocoder/wifite2) |

## 06c · 藍牙攻擊  (`kali-tools-bluetooth`, 10)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `blue-hydra` | 藍牙裝置探索服務 | `apt install blue-hydra` | [home](https://github.com/ZeroChaos-/blue_hydra) |
| `bluelog` | 藍牙掃描與紀錄器 | `apt install bluelog` | [home](http://www.digifail.com/software/bluelog.shtml) |
| `blueranger` | 定位藍牙裝置的簡易 Bash 腳本 | `apt install blueranger` | [home](http://www.hackfromacave.com/projects/blueranger.html) |
| `bluesnarfer` | Bluesnarfing 工具 | `apt install bluesnarfer` | [home](http://www.alighieri.org/) |
| `bluez` | 藍牙工具與守護程式 | `apt install bluez` | [home](http://www.bluez.org) |
| `btscanner` | 以 ncurses 為介面的藍牙裝置掃描器 | `apt install btscanner` | [home](https://salsa.debian.org/pkg-security-team/btscanner) |
| `crackle` | 破解與解密 BLE 加密 | `apt install crackle` | [home](https://github.com/mikeryan/crackle) |
| `redfang` | 定位不可被探索的藍牙裝置 | `apt install redfang` | `man redfang` |
| `spooftooph` | 自動偽冒或複製藍牙裝置 | `apt install spooftooph` | [home](http://www.hackfromacave.com/projects/spooftooph.html) |
| `ubertooth` | 2.4 GHz 藍牙實驗用無線開發平台 | `apt install ubertooth` | [home](http://ubertooth.sourceforge.net/) |

## 06d · RFID/NFC 工具  (`kali-tools-rfid`, 2)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `proxmark3` | Proxmark3 的韌體、燒錄器與用戶端 | `apt install proxmark3` | [home](https://github.com/RfidResearchGroup/proxmark3) |
| `rfdump` | 解碼 RFID 標籤資料的工具 | `apt install rfdump` | [home](http://www.rfdump.org/) |

## 06e · 軟體定義無線電  (`kali-tools-sdr`, 7)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `chirp` | 業餘無線電設定工具 | `apt install chirp` | [home](https://chirpmyradio.com/) |
| `hackrf` | 軟體定義無線電週邊（工具組） | `apt install hackrf` | [home](http://greatscottgadgets.com/hackrf/) |
| `inspectrum` | 視覺化擷取到的無線訊號工具 | `apt install inspectrum` | [home](https://github.com/miek/inspectrum) |
| `kalibrate-rtl` | 用 GSM 基地台計算本地振盪器頻率偏移 | `apt install kalibrate-rtl` | [home](https://github.com/steve-m/kalibrate-rtl) |
| `multimon-ng` | 數位無線電傳輸解碼器 | `apt install multimon-ng` | [home](https://github.com/EliasOenal/multimon-ng/) |
| `uhd-host` | Ettus Research 產品的通用硬體驅動（主機應用） | `apt install uhd-host` | [home](https://www.ettus.com/sdr-software/uhd-usrp-hardware-driver/) |
| `uhd-images` | 各種 UHD 映像檔 | `apt install uhd-images` | [home](https://www.ettus.com) |

## 07 · 逆向工程  (`kali-tools-reverse-engineering`, 12)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `apktool` | 反編譯 Android apk 檔的工具 | `apt install apktool` | [home](https://ibotpeaches.github.io/Apktool/) |
| `bytecode-viewer` | Java 8+ Jar 與 Android APK 逆向工程套件 | `apt install bytecode-viewer` | [home](https://github.com/Konloch/bytecode-viewer) |
| `clang` | 以 LLVM 為基礎的 C/C++/Objective-C 編譯器 | `apt install clang` | `man clang` |
| `dex2jar` | 處理 Android .dex 與 Java .class 檔的工具 | `apt install dex2jar` | [home](https://github.com/pxb1988/dex2jar/tree/2.x) |
| `jadx` | Dex 轉 Java 反編譯器 | `apt install jadx` | [home](https://github.com/skylot/jadx) |
| `javasnoop` | 在本機攔截 Java 應用程式 | `apt install javasnoop` | `man javasnoop` |
| `jd-gui` | 圖形化 Java .class 反編譯器 | `apt install jd-gui` | [home](http://jd.benow.ca/) |
| `metasploit-framework` | 漏洞開發與弱點研究框架 | `apt install metasploit-framework` | [home](https://www.metasploit.com/) |
| `radare2` | 免費進階的命令列十六進位編輯器 | `apt install radare2` | [home](https://www.radare.org) |
| `rizin` | 逆向工程框架與命令列工具組 | `apt install rizin` | [home](https://rizin.re/) |
| `rizin-cutter` | 以 rizin 為核心的逆向工程平台 | `apt install rizin-cutter` | [home](https://cutter.re) |
| `rz-ghidra` | rizin 的 ghidra 反編譯器與 sleigh 反組譯器 | `apt install rz-ghidra` | [home](https://github.com/rizinorg/rz-ghidra) |

## 08 · 漏洞利用  (`kali-tools-exploitation`, 8)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `armitage` | Metasploit 的圖形化攻擊管理介面 | `apt install armitage` | [home](https://github.com/r00t0v3rr1d3/armitage) |
| `beef-xss` | 瀏覽器漏洞利用框架（BeEF） | `apt install beef-xss` | [home](https://beefproject.com/) |
| `exploitdb` | 可搜尋的 Exploit-DB 封存 | `apt install exploitdb` | [home](https://www.exploit-db.com) |
| `metasploit-framework` | 漏洞開發與弱點研究框架 | `apt install metasploit-framework` | [home](https://www.metasploit.com/) |
| `msfpc` | MSFvenom Payload 產生器（MSFPC） | `apt install msfpc` | [home](https://github.com/g0tmi1k/msfpc) |
| `set` | 社交工程工具組（SET） | `apt install set` | [home](https://www.trustedsec.com/downloads/social-engineer-toolkit/) |
| `sqlmap` | 自動化 SQL 注入工具 | `apt install sqlmap` | [home](https://sqlmap.org/) |
| `termineter` | 智慧電表測試框架 | `apt install termineter` | [home](https://github.com/rsmusllp/termineter) |

## 09 · 嗅探與欺騙  (`kali-tools-sniffing-spoofing`, 25)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `above` | 尋找網路弱點的網路安全嗅探器 | `apt install above` | [home](https://github.com/caster0x00/Above) |
| `bettercap` | 完整、模組化、可攜、易擴充的 MITM 框架 | `apt install bettercap` | [home](https://www.bettercap.org) |
| `darkstat` | 網路流量分析器 | `apt install darkstat` | [home](https://unix4lyfe.org/darkstat/) |
| `dnschef` | 滲透測試用的 DNS 代理 | `apt install dnschef` | [home](https://github.com/iphelix/dnschef) |
| `driftnet` | 從網路流量擷取並顯示圖片 | `apt install driftnet` | [home](https://github.com/deiv/driftnet) |
| `dsniff` | 嗅探網路明文機密的各種工具 | `apt install dsniff` | [home](https://github.com/hackerschoice/dsniff) |
| `ettercap-graphical` | Ettercap 圖形介面版 | `apt install ettercap-graphical` | [home](https://ettercap.github.io/ettercap/) |
| `ettercap-text-only` | Ettercap 文字模式版 | `apt install ettercap-text-only` | [home](https://ettercap.github.io/ettercap/) |
| `ferret-sidejack` | 監看資料並擷取感興趣的內容 | `apt install ferret-sidejack` | [home](https://github.com/robertdavidgraham/ferret) |
| `fiked` | Cisco VPN 攻擊工具 | `apt install fiked` | [home](https://www.roe.ch/FakeIKEd) |
| `hamster-sidejack` | Sidejacking 工具 | `apt install hamster-sidejack` | [home](http://www.erratasec.com/research.html) |
| `hexinject` | 多功能封包注入與嗅探器 | `apt install hexinject` | [home](https://hexinject.sourceforge.net/) |
| `isr-evilgrade` | Evilgrade 框架 | `apt install isr-evilgrade` | [home](https://github.com/infobyte/evilgrade) |
| `macchanger` | 操作網卡 MAC 位址的工具 | `apt install macchanger` | [home](https://github.com/alobbs/macchanger) |
| `mitmproxy` | 支援 SSL 的中間人 HTTP 代理 | `apt install mitmproxy` | [home](https://mitmproxy.org) |
| `netsniff-ng` | Linux 網路封包嗅探工具組 | `apt install netsniff-ng` | [home](http://netsniff-ng.org/) |
| `rebind` | DNS rebinding 工具 | `apt install rebind` | `man rebind` |
| `responder` | LLMNR/NBT-NS/mDNS 投毒器 | `apt install responder` | [home](https://github.com/lgandx/Responder) |
| `sniffjoke` | 透明的 TCP 連線擾亂器 | `apt install sniffjoke` | [home](https://github.com/vecna/sniffjoke) |
| `sslsniff` | SSL/TLS 中間人攻擊工具 | `apt install sslsniff` | [home](https://github.com/moxie0/sslsniff) |
| `sslsplit` | 透明且可擴充的 SSL/TLS 攔截 | `apt install sslsplit` | [home](https://www.roe.ch/SSLsplit) |
| `tcpflow` | TCP 流量記錄器 | `apt install tcpflow` | [home](https://github.com/simsong/tcpflow) |
| `tcpreplay` | 以任意速度重播 tcpdump 檔的工具 | `apt install tcpreplay` | [home](http://tcpreplay.appneta.com/) |
| `wifi-honey` | Wi-Fi 蜜罐 | `apt install wifi-honey` | [home](https://www.digininja.org/projects/wifi_honey.php) |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` | [home](https://www.wireshark.org/) |

## 10 · 後滲透  (`kali-tools-post-exploitation`, 19)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `dbd` | 含加密的 Netcat 複製品 | `apt install dbd` | [home](https://github.com/gitdurandal/dbd) |
| `dns2tcp` | TCP-over-DNS 隧道伺服器與用戶端 | `apt install dns2tcp` | `man dns2tcp` |
| `exe2hexbat` | 將 EXE 轉成 bat | `apt install exe2hexbat` | [home](https://github.com/g0tmi1k/exe2hex/) |
| `iodine` | 透過 DNS 伺服器隧道傳輸 IPv4 資料 | `apt install iodine` | [home](https://code.kryo.se/iodine) |
| `laudanum` | 可注入的 web 檔案集 | `apt install laudanum` | [home](https://sourceforge.net/projects/laudanum/) |
| `mimikatz` | 利用 Windows 管理權限明文顯示密碼 | `apt install mimikatz` | [home](https://blog.gentilkiwi.com/mimikatz) |
| `miredo` | 透過 NAT 的 Teredo IPv6 隧道 | `apt install miredo` | [home](http://www.remlab.net/miredo/) |
| `nishang` | PowerShell 腳本與 payload 集 | `apt install nishang` | [home](https://github.com/samratashok/nishang) |
| `powersploit` | PowerShell 後滲透框架 | `apt install powersploit` | [home](https://github.com/PowerShellMafia/PowerSploit) |
| `proxychains4` | 透過 socks/http 代理轉送連線（proxychains-ng） | `apt install proxychains4` | [home](https://github.com/rofl0r/proxychains-ng) |
| `proxytunnel` | 協助 SSH 等協定穿過 HTTP(S) 代理 | `apt install proxytunnel` | [home](https://proxytunnel.sourceforge.io/) |
| `ptunnel` | 透過 ICMP 封包隧道傳輸 TCP 連線 | `apt install ptunnel` | [home](http://www.mit.edu/afs.new/sipb/user/golem/tmp/ptunnel-0.61.orig/web/) |
| `pwnat` | NAT 對 NAT 的用戶端-伺服器通訊 | `apt install pwnat` | [home](https://samy.pl/pwnat/) |
| `sbd` | Linux/Windows 的安全後門 | `apt install sbd` | [home](https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz) |
| `sslh` | 應用協定多工器 | `apt install sslh` | [home](http://www.rutschle.net/tech/sslh/README.html) |
| `stunnel4` | 網路守護程式的通用 SSL 隧道（相容套件） | `apt install stunnel4` | [home](https://www.stunnel.org/) |
| `udptunnel` | 透過 TCP 連線隧道傳輸 UDP 封包 | `apt install udptunnel` | [home](http://www1.cs.columbia.edu/~lennox/udptunnel/) |
| `webacoo` | Web 後門 cookie 腳本套件 | `apt install webacoo` | [home](https://github.com/anestisb/WeBaCoo) |
| `weevely` | 隱匿的微型 web shell | `apt install weevely` | [home](https://github.com/epinna/weevely3/) |

## 11 · 數位鑑識  (`kali-tools-forensics`, 94)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `7zip` | 高壓縮比的 7-Zip 壓縮工具 | `apt install 7zip` | [home](https://www.7-zip.org/) |
| `afflib-tools` | 進階鑑識格式函式庫（工具組） | `apt install afflib-tools` | [home](https://github.com/sshock/AFFLIBv3) |
| `apktool` | 反編譯 Android apk 檔的工具 | `apt install apktool` | [home](https://ibotpeaches.github.io/Apktool/) |
| `autopsy` | SleuthKit 的圖形化介面 | `apt install autopsy` | [home](https://www.sleuthkit.org/autopsy/) |
| `binwalk` | 分析二進位資料與可執行碼的工具函式庫 | `apt install binwalk` | [home](https://github.com/ReFirmLabs/binwalk) |
| `binwalk3` | 分析二進位資料與可執行碼的工具函式庫 | `apt install binwalk3` | [home](https://github.com/ReFirmLabs/binwalk) |
| `bulk-extractor` | 不解析檔案系統即擷取資訊的鑑識工具 | `apt install bulk-extractor` | [home](https://github.com/simsong/bulk_extractor) |
| `bytecode-viewer` | Java 8+ Jar 與 Android APK 逆向工程套件 | `apt install bytecode-viewer` | [home](https://github.com/Konloch/bytecode-viewer) |
| `cabextract` | 微軟 Cabinet 檔解壓工具 | `apt install cabextract` | `man cabextract` |
| `chkrootkit` | rootkit 偵測器 | `apt install chkrootkit` | [home](https://www.chkrootkit.org/) |
| `creddump7` | 從 Windows registry hive 擷取憑證與機密的 Python 工具 | `apt install creddump7` | [home](https://github.com/CiscoCXSecurity/creddump7) |
| `dc3dd` | 具鑑識功能的 GNU dd 修改版 | `apt install dc3dd` | [home](https://sourceforge.net/projects/dc3dd/) |
| `dcfldd` | 鑑識與安全用途的 dd 強化版 | `apt install dcfldd` | [home](https://github.com/resurrecting-open-source-projects/dcfldd) |
| `ddrescue` | 資料救援與保護工具 | `apt install ddrescue` | [home](http://www.garloff.de/kurt/linux/ddrescue/) |
| `dumpzilla` | Mozilla 瀏覽器鑑識工具 | `apt install dumpzilla` | [home](http://www.dumpzilla.org/) |
| `ewf-tools` | 讀寫 EWF 檔的工具集 | `apt install ewf-tools` | [home](https://github.com/libyal/libewf-legacy) |
| `exifprobe` | 讀取數位相片的中繼資料 | `apt install exifprobe` | [home](https://github.com/hfiguiere/exifprobe) |
| `exiv2` | EXIF/IPTC/XMP 中繼資料操作工具 | `apt install exiv2` | [home](https://www.exiv2.org/) |
| `ext3grep` | 協助還原 ext3 已刪除檔案的工具 | `apt install ext3grep` | `man ext3grep` |
| `ext4magic` | 從 ext3/ext4 分割區救回已刪除檔案 | `apt install ext4magic` | [home](http://ext4magic.sf.net/ext4magic_en.html) |
| `extundelete` | 從 ext3/ext4 分割區救回已刪除檔案的工具 | `apt install extundelete` | [home](http://extundelete.sourceforge.net/) |
| `fcrackzip` | zip 壓縮檔密碼破解器 | `apt install fcrackzip` | [home](http://oldhome.schmorp.de/marc/fcrackzip.html) |
| `foremost` | 救回遺失檔案的鑑識程式 | `apt install foremost` | [home](https://sourceforge.net/projects/foremost/) |
| `forensic-artifacts` | 鑑識痕跡知識庫（資料檔） | `apt install forensic-artifacts` | [home](https://github.com/ForensicArtifacts/artifacts) |
| `forensics-colorize` | 以彩色圖形顯示檔案差異 | `apt install forensics-colorize` | [home](https://github.com/jessek/colorize) |
| `galleta` | IE cookie 鑑識分析工具 | `apt install galleta` | [home](https://odessa.sourceforge.net/) |
| `gdb` | GNU 除錯器 | `apt install gdb` | [home](https://www.gnu.org/s/gdb/) |
| `gparted` | GNOME 磁碟分割編輯器 | `apt install gparted` | [home](https://gparted.org) |
| `grokevt` | 讀取 Windows 事件紀錄檔的腳本 | `apt install grokevt` | [home](http://projects.sentinelchicken.org/grokevt/) |
| `guymager` | 以 Qt 為基礎的鑑識映像工具 | `apt install guymager` | [home](https://guymager.sourceforge.net/) |
| `hashdeep` | 遞迴計算雜湊或分段雜湊 | `apt install hashdeep` | [home](https://md5deep.sourceforge.net) |
| `inetsim` | 模擬常見網際網路服務的軟體套件 | `apt install inetsim` | [home](https://www.inetsim.org/index.html) |
| `jadx` | Dex 轉 Java 反編譯器 | `apt install jadx` | [home](https://github.com/skylot/jadx) |
| `javasnoop` | 在本機攔截 Java 應用程式 | `apt install javasnoop` | `man javasnoop` |
| `libhivex-bin` | 讀寫 Windows Registry hive 的工具 | `apt install libhivex-bin` | [home](http://libguestfs.org/) |
| `libsmali-java` | Android dex 格式的組譯/反組譯器 | `apt install libsmali-java` | [home](https://github.com/JesusFreke/smali) |
| `lvm2` | Linux 邏輯磁區管理器 | `apt install lvm2` | [home](https://sourceware.org/lvm2/) |
| `lynis` | Unix 系統安全稽核工具 | `apt install lynis` | [home](https://cisofy.com/lynis/) |
| `mac-robber` | 收集已掛載檔案系統中檔案的資料 | `apt install mac-robber` | [home](https://www.sleuthkit.org/mac-robber) |
| `magicrescue` | 以 magic bytes 救回檔案 | `apt install magicrescue` | [home](https://github.com/jbj/magicrescue) |
| `mdbtools` | JET / MS Access 資料庫（MDB）工具 | `apt install mdbtools` | [home](https://github.com/mdbtools/mdbtools) |
| `memdump` | 將記憶體內容輸出到標準輸出的工具 | `apt install memdump` | [home](http://www.porcupine.org/forensics/tct.html) |
| `metacam` | 從數位相機檔擷取 EXIF 資訊 | `apt install metacam` | [home](http://www.cheeseplant.org/~daniel/pages/metacam.html) |
| `missidentify` | 尋找 win32 應用程式 | `apt install missidentify` | [home](https://missidentify.sf.net) |
| `myrescue` | 從受損磁碟救回資料 | `apt install myrescue` | [home](https://myrescue.sf.net) |
| `nasm` | 通用 x86 組譯器 | `apt install nasm` | [home](https://www.nasm.us/) |
| `nasty` | 協助還原 GPG 通關密語的工具 | `apt install nasty` | [home](https://github.com/folkertvanheusden/nasty) |
| `parted` | 磁碟分割操作工具 | `apt install parted` | [home](https://www.gnu.org/software/parted) |
| `pasco` | IE 快取鑑識分析工具 | `apt install pasco` | [home](https://sf.net/projects/odessa) |
| `pdf-parser` | 解析 PDF 檔以辨識基本元素 | `apt install pdf-parser` | [home](https://blog.didierstevens.com/programs/pdf-tools/) |
| `pdfid` | 掃描 PDF 檔中的特定關鍵字 | `apt install pdfid` | [home](https://blog.didierstevens.com/programs/pdf-tools/) |
| `plaso` | 超級時間軸工具（中繼套件） | `apt install plaso` | [home](https://github.com/log2timeline/plaso) |
| `polenum` | 擷取 Windows 系統的密碼政策 | `apt install polenum` | [home](https://github.com/Wh1t3Fox/polenum/) |
| `pst-utils` | 讀取 Outlook PST 檔的工具 | `apt install pst-utils` | [home](https://www.five-ten-sg.com/libpst/) |
| `python3-capstone` | 輕量多架構反組譯框架（Python 綁定） | `apt install python3-capstone` | [home](https://www.capstone-engine.org/) |
| `python3-dfdatetime` | Python 3 數位鑑識日期時間函式庫 | `apt install python3-dfdatetime` | [home](https://github.com/log2timeline/dfdatetime) |
| `python3-dfvfs` | 數位鑑識虛擬檔案系統 | `apt install python3-dfvfs` | [home](https://github.com/log2timeline/dfvfs) |
| `python3-dfwinreg` | Python 3 數位鑑識 Windows Registry 函式庫 | `apt install python3-dfwinreg` | [home](https://github.com/log2timeline/dfwinreg) |
| `python3-distorm3` | x86/AMD64 強力反組譯函式庫（Python3 綁定） | `apt install python3-distorm3` | [home](https://github.com/gdabah/distorm) |
| `radare2` | 免費進階的命令列十六進位編輯器 | `apt install radare2` | [home](https://www.radare.org) |
| `readpe` | 操作 Windows PE 檔的命令列工具 | `apt install readpe` | [home](https://github.com/mentebinaria/readpe/wiki) |
| `recoverdm` | 從壞軌磁碟救回檔案 | `apt install recoverdm` | [home](https://www.vanheusden.com/recoverdm) |
| `recoverjpeg` | 救回 JPEG 圖片與 MOV 影片 | `apt install recoverjpeg` | [home](https://www.rfc1149.net/devel/recoverjpeg) |
| `reglookup` | 分析 Windows NT registry 的工具 | `apt install reglookup` | [home](https://web.archive.org/web/20240804024044/http://projects.sentinelchicken.org/reglookup/) |
| `rephrase` | GnuPG 專用的通關密語還原工具 | `apt install rephrase` | [home](https://www.roguedaemon.net/rephrase/) |
| `rifiuti` | MS Windows 資源回收桶分析工具 | `apt install rifiuti` | [home](https://sf.net/projects/odessa) |
| `rifiuti2` | rifiuti 的替代品，分析 Windows 資源回收桶 | `apt install rifiuti2` | [home](https://abelcheung.github.io/rifiuti2) |
| `rizin-cutter` | 以 rizin 為核心的逆向工程平台 | `apt install rizin-cutter` | [home](https://cutter.re) |
| `rkhunter` | rootkit、後門、嗅探器與 exploit 掃描器 | `apt install rkhunter` | [home](https://rkhunter.sourceforge.net) |
| `rsakeyfind` | 在記憶體映像中定位 BER 編碼的 RSA 私鑰 | `apt install rsakeyfind` | [home](https://citp.princeton.edu/our-work/memory/code/) |
| `rz-ghidra` | rizin 的 ghidra 反編譯器與 sleigh 反組譯器 | `apt install rz-ghidra` | [home](https://github.com/rizinorg/rz-ghidra) |
| `safecopy` | 問題或受損媒體的資料救援工具 | `apt install safecopy` | [home](http://safecopy.sf.net) |
| `samdump2` | 傾印 Windows 2k/NT/XP 密碼雜湊 | `apt install samdump2` | [home](https://ophcrack.sourceforge.net/) |
| `scalpel` | 快速、與檔案系統無關的檔案救援 | `apt install scalpel` | [home](https://github.com/nolaforensix/scalpel-1.60) |
| `scrounge-ntfs` | NTFS 檔案系統資料救援程式 | `apt install scrounge-ntfs` | [home](http://thewalter.net/stef/software/scrounge/) |
| `sleuthkit` | 磁區與檔案系統鑑識分析工具 | `apt install sleuthkit` | [home](https://www.sleuthkit.org/sleuthkit) |
| `sqlitebrowser` | SQLite 資料庫的 GUI 編輯器 | `apt install sqlitebrowser` | [home](https://sqlitebrowser.org/) |
| `ssdeep` | 遞迴分段雜湊工具 | `apt install ssdeep` | [home](https://github.com/ssdeep-project/ssdeep) |
| `tcpdump` | 命令列網路流量分析器 | `apt install tcpdump` | [home](https://www.tcpdump.org/) |
| `tcpflow` | TCP 流量記錄器 | `apt install tcpflow` | [home](https://github.com/simsong/tcpflow) |
| `tcpick` | TCP 串流嗅探與連線追蹤器 | `apt install tcpick` | [home](http://tcpick.sourceforge.net) |
| `tcpreplay` | 以任意速度重播 tcpdump 檔的工具 | `apt install tcpreplay` | [home](http://tcpreplay.appneta.com/) |
| `truecrack` | TrueCrypt 磁區密碼暴力破解器 | `apt install truecrack` | [home](https://github.com/lvaccaro/truecrack) |
| `unar` | 多種格式的解壓縮工具 | `apt install unar` | [home](https://theunarchiver.com/command-line) |
| `undbx` | 從 .dbx 檔擷取與救回郵件訊息 | `apt install undbx` | [home](https://github.com/ZungBang/undbx) |
| `unhide` | 尋找隱藏程序與連接埠的鑑識工具 | `apt install unhide` | [home](https://www.unhide-forensics.info) |
| `unrar` | .rar 檔解壓工具（非自由版） | `apt install unrar` | [home](https://www.rarlab.com/) |
| `upx-ucl` | 高效的執行檔即時壓縮器 | `apt install upx-ucl` | [home](https://upx.github.io/) |
| `vinetto` | 檢視 Thumbs.db 檔的鑑識工具 | `apt install vinetto` | [home](https://github.com/AtesComp/Vinetto) |
| `wce` | Windows 憑證編輯器 | `apt install wce` | [home](http://www.ampliasecurity.com/research.html) |
| `winregfs` | Windows registry 的 FUSE 檔案系統 | `apt install winregfs` | [home](https://codeberg.org/jbruchon/winregfs) |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` | [home](https://www.wireshark.org/) |
| `xmount` | 磁碟映像格式間交叉掛載的工具 | `apt install xmount` | [home](https://www.sits.lu/xmount) |
| `yara` | 惡意程式研究者的模式比對瑞士刀 | `apt install yara` | [home](https://virustotal.github.io/yara/) |

## 12 · 報告工具  (`kali-tools-reporting`, 7)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `cutycapt` | 擷取 WebKit 網頁算繪結果的工具 | `apt install cutycapt` | [home](https://github.com/Crystalix007/CutyCapt) |
| `eyewitness` | 快速的 web 應用分流工具 | `apt install eyewitness` | [home](https://www.christophertruncer.com/eyewitness-triage-tool/) |
| `faraday` | 協作式滲透測試 IDE | `apt install faraday` | [home](https://faradaysec.com) |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` | [home](https://www.maltego.com) |
| `metagoofil` | 擷取公開文件中繼資料的工具 | `apt install metagoofil` | [home](https://github.com/opsdisk/metagoofil) |
| `pipal` | 對密碼傾印做統計分析 | `apt install pipal` | [home](https://www.digininja.org/projects/pipal.php) |
| `recordmydesktop` | 擷取 Linux 桌面工作階段的影音 | `apt install recordmydesktop` | [home](https://enselic.github.io/recordmydesktop/) |

## 13 · 社交工程  (`kali-tools-social-engineering`, 4)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `beef-xss` | 瀏覽器漏洞利用框架（BeEF） | `apt install beef-xss` | [home](https://beefproject.com/) |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` | [home](https://www.maltego.com) |
| `msfpc` | MSFvenom Payload 產生器（MSFPC） | `apt install msfpc` | [home](https://github.com/g0tmi1k/msfpc) |
| `set` | 社交工程工具組（SET） | `apt install set` | [home](https://www.trustedsec.com/downloads/social-engineer-toolkit/) |

## 14 · 辨識（分流／偵察輔助）  (`kali-tools-identify`, 15)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `amass` | 深入的 DNS 列舉與網路測繪 | `apt install amass` | [home](https://github.com/OWASP/Amass) |
| `assetfinder` | 找出與指定網域相關的網域與子網域 | `apt install assetfinder` | [home](https://github.com/tomnomnom/assetfinder) |
| `cisco-auditing-tool` | 掃描 Cisco 路由器弱點 | `apt install cisco-auditing-tool` | [home](http://www.scrypt.net/) |
| `defectdojo` | 安全協調與弱點管理平台 | `apt install defectdojo` | [home](https://github.com/DefectDojo/django-DefectDojo) |
| `exploitdb` | 可搜尋的 Exploit-DB 封存 | `apt install exploitdb` | [home](https://www.exploit-db.com) |
| `kali-autopilot` | Kali 自動攻擊腳本工具 | `apt install kali-autopilot` | [home](https://gitlab.com/kalilinux/packages/kali-autopilot) |
| `maltego` | 開源情報與鑑識應用程式 | `apt install maltego` | [home](https://www.maltego.com) |
| `maryam` | OWASP Maryam 模組化開源 OSINT 框架 | `apt install maryam` | [home](https://github.com/saeeddhqan/Maryam) |
| `nipper-ng` | 裝置安全設定審查工具 | `apt install nipper-ng` | `man nipper-ng` |
| `osrframework` | 開源研究框架（OSINT） | `apt install osrframework` | [home](https://pypi.org/project/osrframework/) |
| `spiderfoot` | OSINT 蒐集與偵察工具 | `apt install spiderfoot` | [home](https://www.spiderfoot.net) |
| `tiger` | Linux 安全稽核與入侵偵測工具 | `apt install tiger` | [home](http://savannah.nongnu.org/projects/tiger/) |
| `wapiti` | web 應用弱點掃描器 | `apt install wapiti` | [home](https://wapiti.sourceforge.net/) |
| `witnessme` | Web 清查工具 | `apt install witnessme` | [home](https://github.com/byt3bl33d3r/WitnessMe) |
| `zaproxy` | 尋找 web 應用弱點的測試工具 | `apt install zaproxy` | [home](https://github.com/zaproxy/zaproxy) |

## 15 · 模糊測試  (`kali-tools-fuzzing`, 4)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `afl++` | 以插樁驅動的二進位格式模糊測試器 | `apt install afl++` | [home](https://github.com/AFLplusplus/AFLplusplus) |
| `sfuzz` | 黑箱測試工具 | `apt install sfuzz` | [home](http://aconole.brad-x.com/programs/sfuzz.html) |
| `spike` | 網路協定模糊測試器 | `apt install spike` | [home](http://www.immunitysec.com/resources-freesoftware.shtml) |
| `wfuzz` | web 應用暴力列舉器 | `apt install wfuzz` | [home](http://www.edge-security.com/wfuzz.php) |

## 16 · VoIP 工具  (`kali-tools-voip`, 17)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `enumiax` | IAX 協定使用者名稱列舉器 | `apt install enumiax` | [home](https://enumiax.sourceforge.net/) |
| `iaxflood` | VoIP 洪泛工具 | `apt install iaxflood` | [home](http://www.hackingexposedvoip.com/sec_tools.html) |
| `inviteflood` | 透過 UDP/IP 洪泛 SIP/SDP INVITE 訊息 | `apt install inviteflood` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `libfindrtp` | 多個 VoIP 工具所需的函式庫 | `apt install libfindrtp` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` | [home](https://nmap.org/) |
| `ohrwurm` | RTP 模糊測試器 | `apt install ohrwurm` | [home](http://mazzoo.de/blog/2006/08/25#ohrwurm) |
| `protos-sip` | SIP 測試套件 | `apt install protos-sip` | [home](https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip) |
| `rtpbreak` | 偵測、重建並分析 RTP 工作階段 | `apt install rtpbreak` | [home](http://dallachiesa.com/code/rtpbreak/) |
| `rtpflood` | 洪泛任何 RTP 裝置的工具 | `apt install rtpflood` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `rtpinsertsound` | 將音訊插入指定串流 | `apt install rtpinsertsound` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `rtpmixsound` | 即時混入預錄音訊 | `apt install rtpmixsound` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `siparmyknife` | SIP 模糊測試工具 | `apt install siparmyknife` | [home](https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html) |
| `sipcrack` | SIP 登入傾印/破解器 | `apt install sipcrack` | [home](http://www.remote-exploit.org/codes_sipcrack.html) |
| `sipp` | SIP 協定流量產生器 | `apt install sipp` | [home](https://sipp.sourceforge.net/) |
| `sipvicious` | 稽核 SIP VoIP 系統的工具 | `apt install sipvicious` | [home](https://github.com/EnableSecurity/sipvicious) |
| `voiphopper` | 執行 VLAN hop 安全測試 | `apt install voiphopper` | [home](https://sourceforge.net/projects/voiphopper) |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` | [home](https://www.wireshark.org/) |

## 17 · 硬體攻擊  (`kali-tools-hardware`, 11)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `binwalk` | 分析二進位資料與可執行碼的工具函式庫 | `apt install binwalk` | [home](https://github.com/ReFirmLabs/binwalk) |
| `binwalk3` | 分析二進位資料與可執行碼的工具函式庫 | `apt install binwalk3` | [home](https://github.com/ReFirmLabs/binwalk) |
| `cutecom` | 圖形化序列埠終端機（類似 minicom） | `apt install cutecom` | [home](https://gitlab.com/cutecom/cutecom) |
| `flashrom` | 辨識、讀寫、清除與驗證 BIOS/ROM/flash 晶片 | `apt install flashrom` | [home](http://www.flashrom.org) |
| `minicom` | 選單式序列埠通訊程式 | `apt install minicom` | [home](https://salsa.debian.org/minicom-team/minicom) |
| `openocd` | 嵌入式目標的開源 JTAG/SWD 除錯方案 | `apt install openocd` | [home](http://openocd.sourceforge.net/) |
| `qemu-system-x86` | QEMU 全系統模擬（x86） | `apt install qemu-system-x86` | [home](http://www.qemu.org/) |
| `qemu-user` | QEMU 使用者模式模擬（靜態執行檔） | `apt install qemu-user` | [home](http://www.qemu.org/) |
| `radare2` | 免費進階的命令列十六進位編輯器 | `apt install radare2` | [home](https://www.radare.org) |
| `rizin-cutter` | 以 rizin 為核心的逆向工程平台 | `apt install rizin-cutter` | [home](https://cutter.re) |
| `rz-ghidra` | rizin 的 ghidra 反編譯器與 sleigh 反組譯器 | `apt install rz-ghidra` | [home](https://github.com/rizinorg/rz-ghidra) |

## 18 · 密碼學與隱寫術  (`kali-tools-crypto-stego`, 5)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `aesfix` | 修正 AES 金鑰排程位元錯誤的工具 | `apt install aesfix` | [home](https://citp.princeton.edu/our-work/memory/code/) |
| `ccrypt` | 安全加解密檔案與串流 | `apt install ccrypt` | [home](https://ccrypt.sourceforge.net/) |
| `steghide` | 隱寫術隱藏工具 | `apt install steghide` | [home](https://steghide.sourceforge.net/) |
| `stegosuite` | 將資訊藏入圖片的隱寫術工具 | `apt install stegosuite` | [home](https://codeberg.org/tob/stegosuite) |
| `stegsnow` | 以 ASCII 檔進行隱寫術 | `apt install stegsnow` | [home](https://www.darkside.com.au/snow) |

## 19 · GPU 工具  (`kali-tools-gpu`, 1)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `truecrack` | TrueCrypt 磁區密碼暴力破解器 | `apt install truecrack` | [home](https://github.com/lvaccaro/truecrack) |

## 20 · 資料救援  (`kali-tools-recover`, 8)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `ddrescue` | 資料救援與保護工具 | `apt install ddrescue` | [home](http://www.garloff.de/kurt/linux/ddrescue/) |
| `ext3grep` | 協助還原 ext3 已刪除檔案的工具 | `apt install ext3grep` | `man ext3grep` |
| `extundelete` | 從 ext3/ext4 分割區救回已刪除檔案的工具 | `apt install extundelete` | [home](http://extundelete.sourceforge.net/) |
| `myrescue` | 從受損磁碟救回資料 | `apt install myrescue` | [home](https://myrescue.sf.net) |
| `recoverdm` | 從壞軌磁碟救回檔案 | `apt install recoverdm` | [home](https://www.vanheusden.com/recoverdm) |
| `recoverjpeg` | 救回 JPEG 圖片與 MOV 影片 | `apt install recoverjpeg` | [home](https://www.rfc1149.net/devel/recoverjpeg) |
| `scrounge-ntfs` | NTFS 檔案系統資料救援程式 | `apt install scrounge-ntfs` | [home](http://thewalter.net/stef/software/scrounge/) |
| `undbx` | 從 .dbx 檔擷取與救回郵件訊息 | `apt install undbx` | [home](https://github.com/ZungBang/undbx) |

## 21 · 偵測  (`kali-tools-detect`, 2)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `grokevt` | 讀取 Windows 事件紀錄檔的腳本 | `apt install grokevt` | [home](http://projects.sentinelchicken.org/grokevt/) |
| `sentrypeer` | VoIP 的 SIP 點對點蜜罐 | `apt install sentrypeer` | [home](https://sentrypeer.org) |

## 22 · 防護／強化  (`kali-tools-protect`, 5)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `clamav` | Unix 防毒工具（命令列介面） | `apt install clamav` | [home](https://www.clamav.net/) |
| `cryptsetup` | 磁碟加密支援（啟動腳本） | `apt install cryptsetup` | [home](https://gitlab.com/cryptsetup/cryptsetup) |
| `cryptsetup-initramfs` | 磁碟加密支援（initramfs 整合） | `apt install cryptsetup-initramfs` | [home](https://gitlab.com/cryptsetup/cryptsetup) |
| `cryptsetup-nuke-password` | 在解鎖提示輸入特殊密碼即清除 LUKS 金鑰 | `apt install cryptsetup-nuke-password` | [home](https://salsa.debian.org/pkg-security-team/cryptsetup-nuke-password) |
| `fwbuilder` | 防火牆管理 GUI | `apt install fwbuilder` | [home](https://github.com/fwbuilder/fwbuilder/) |

## 23 · 事件回應  (`kali-tools-respond`, 6)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `ewf-tools` | 讀寫 EWF 檔的工具集 | `apt install ewf-tools` | [home](https://github.com/libyal/libewf-legacy) |
| `guymager` | 以 Qt 為基礎的鑑識映像工具 | `apt install guymager` | [home](https://guymager.sourceforge.net/) |
| `hashrat` | 支援多種雜湊與遞迴的雜湊工具 | `apt install hashrat` | [home](https://github.com/ColumPaget/Hashrat/) |
| `impacket-scripts` | 實用 impacket 腳本範例連結 | `apt install impacket-scripts` | `man impacket-scripts` |
| `kali-tools-forensics` | Kali 的鑑識工具選單 | `apt install kali-tools-forensics` | [home](https://www.kali.org) |
| `netsniff-ng` | Linux 網路封包嗅探工具組 | `apt install netsniff-ng` | [home](http://netsniff-ng.org/) |

## 24 · Windows 資源  (`kali-tools-windows-resources`, 13)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `dbd` | 含加密的 Netcat 複製品 | `apt install dbd` | [home](https://github.com/gitdurandal/dbd) |
| `dnschef` | 滲透測試用的 DNS 代理 | `apt install dnschef` | [home](https://github.com/iphelix/dnschef) |
| `heartleech` | 偵測 Heartbleed OpenSSL 漏洞的掃描器 | `apt install heartleech` | [home](https://github.com/robertdavidgraham/heartleech) |
| `hyperion` | 32 位元 PE 執行檔的執行期加密器 | `apt install hyperion` | [home](http://www.nullsecurity.net/tools/binary.html) |
| `mimikatz` | 利用 Windows 管理權限明文顯示密碼 | `apt install mimikatz` | [home](https://blog.gentilkiwi.com/mimikatz) |
| `ncat-w32` | 21 世紀的 Netcat | `apt install ncat-w32` | [home](https://nmap.org/ncat/) |
| `powercat` | 以 PowerShell 實作的 netcat 功能 | `apt install powercat` | [home](https://github.com/besimorhino/powercat) |
| `sbd` | Linux/Windows 的安全後門 | `apt install sbd` | [home](https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz) |
| `secure-socket-funneling-windows-binaries` | SSF（Windows 執行檔） | `apt install secure-socket-funneling-windows-binaries` | [home](https://github.com/securesocketfunneling/ssf) |
| `tftpd32` | 支援 IPv6 的開源 Windows TFTP 伺服器 | `apt install tftpd32` | [home](https://tftpd32.jounin.net/tftpd32.html) |
| `wce` | Windows 憑證編輯器 | `apt install wce` | [home](http://www.ampliasecurity.com/research.html) |
| `windows-binaries` | 各種滲透測試用 Windows 執行檔 | `apt install windows-binaries` | [home](https://www.kali.org) |
| `windows-privesc-check` | Windows 權限提升檢查工具 | `apt install windows-privesc-check` | [home](https://pentestmonkey.net/tools/windows-privesc-check) |

## T · 最常用 10 大工具  (`kali-tools-top10`, 9)

| 工具 | 說明 | 安裝 | 文件／步驟 |
|---|---|---|---|
| `aircrack-ng` | 無線 WEP/WPA 破解工具組 | `apt install aircrack-ng` | [home](https://www.aircrack-ng.org/) |
| `hydra` | 非常快速的網路登入破解器 | `apt install hydra` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `john` | 主動式密碼破解工具 | `apt install john` | [home](https://github.com/openwall/john) |
| `metasploit-framework` | 漏洞開發與弱點研究框架 | `apt install metasploit-framework` | [home](https://www.metasploit.com/) |
| `netexec` | 網路執行工具（NetExec） | `apt install netexec` | [home](https://github.com/Pennyw0rth/NetExec) |
| `nmap` | 網路測繪器（The Network Mapper） | `apt install nmap` | [home](https://nmap.org/) |
| `responder` | LLMNR/NBT-NS/mDNS 投毒器 | `apt install responder` | [home](https://github.com/lgandx/Responder) |
| `sqlmap` | 自動化 SQL 注入工具 | `apt install sqlmap` | [home](https://sqlmap.org/) |
| `wireshark` | 網路流量分析器（圖形介面） | `apt install wireshark` | [home](https://www.wireshark.org/) |

---

全部安裝：`lab/kali/scripts/install-tools.sh --all`（kali-linux-default），或依分類 `install-tools.sh cat:<slug>`。驅動任何工具：`tool.sh <名稱>`；串接常用流程：`toolkit.sh chain recon,web,vuln`。

