# Kali 工具逐步教學 —— 每個工具（繁體中文）

> English：[`tutorials.en.md`](tutorials.en.md) · 總表：[`catalogue.zh-TW.md`](catalogue.zh-TW.md)

每個工具都有 3 步：安裝 → 看說明 → 執行（對你**擁有**的目標，`<NODE_IP>`）。`Provides` 列出該套件實際提供的指令（由 apt-file 取得）。**標示 ✓ 的工具已在 VM 上安裝並執行，附上真實 `--help`。** 範圍見 `../../ROE.md`。


## 01 · 資訊蒐集／偵察  (`kali-tools-information-gathering`)

### `0trace`
- 可在既有 TCP 連線中執行的 traceroute 工具
- **提供指令:** `0trace.sh`, `sendprobe`, `usleep`
- **步驟:**
  1. 安裝：`sudo apt install -y 0trace`
  2. 看說明：`usleep -h`（或 `man usleep`）
  3. 執行：`usleep <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://lcamtuf.coredump.cx

### `arping`
- 送出 IP 與/或 ARP ping（到 MAC 位址）
- **提供指令:** `arping`
- **步驟:**
  1. 安裝：`sudo apt install -y arping`
  2. 看說明：`arping -h`（或 `man arping`）
  3. 執行：`arping <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://www.habets.pp.se/synscan/programs.php?prog=arping

### `braa`
- 大量 SNMP 掃描器
- **提供指令:** `braa`
- **步驟:**
  1. 安裝：`sudo apt install -y braa`
  2. 看說明：`braa -h`（或 `man braa`）
  3. 執行：`braa <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/mteg/braa

### `dmitry` ✓ verified on VM
- Deepmagic 資訊蒐集工具
- **提供指令:** `dmitry`
- **步驟:**
  1. 安裝：`sudo apt install -y dmitry`
  2. 看說明：`dmitry -h`（或 `man dmitry`）
  3. 執行：`dmitry <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  dmitry: invalid option -- '-'
  Deepmagic Information Gathering Tool
  "There be some deep magic going on"
  
  Usage: dmitry [-winsepfb] [-t 0-9] [-o %host.txt] host
    -o	 Save output to %host.txt or to file specified by -o file
  ```
- 文件｜Docs: https://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/

### `dnsenum` ✓ verified on VM
- 列舉網域 DNS 資訊的工具
- **提供指令:** `dnsenum`
- **步驟:**
  1. 安裝：`sudo apt install -y dnsenum`
  2. 看說明：`dnsenum -h`（或 `man dnsenum`）
  3. 執行：`dnsenum <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  dnsenum VERSION:1.3.1
  Usage: dnsenum [Options] <domain>
  [Options]:
  Note: If no -f tag supplied will default to /usr/share/dnsenum/dns.txt or
  the dns.txt file in the same directory as dnsenum
  GENERAL OPTIONS:
  ```
- 文件｜Docs: https://github.com/SparrowOchon/dnsenum2

### `dnsmap`
- DNS 網域名稱暴力破解工具
- **提供指令:** `dnsmap`, `dnsmap-bulk`
- **步驟:**
  1. 安裝：`sudo apt install -y dnsmap`
  2. 看說明：`dnsmap -h`（或 `man dnsmap`）
  3. 執行：`dnsmap <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/resurrecting-open-source-projects/dnsmap

### `dnsrecon` ✓ verified on VM
- 強大的 DNS 列舉腳本
- **提供指令:** `dnsrecon`
- **步驟:**
  1. 安裝：`sudo apt install -y dnsrecon`
  2. 看說明：`dnsrecon -h`（或 `man dnsrecon`）
  3. 執行：`dnsrecon <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  usage: dnsrecon [-h] [-d DOMAIN] [-iL INPUT_LIST] [-n NS_SERVER] [-r RANGE]
                  [-D DICTIONARY] [-f] [-a] [-s] [-b] [-y] [-k] [-w] [--shodan]
                  [--shodan-active] [--shodan-key SHODAN_KEY] [-z]
                  [--threads THREADS] [--lifetime LIFETIME]
                  [--loglevel {DEBUG,INFO,WARNING,ERROR,CRITICAL}] [--tcp]
                  [--db DB] [-x XML] [-c CSV] [-j JSON] [--iw]
  ```
- 文件｜Docs: https://github.com/darkoperator/dnsrecon

### `dnstracer`
- 追蹤 DNS 查詢到來源
- **提供指令:** `dnstracer`
- **步驟:**
  1. 安裝：`sudo apt install -y dnstracer`
  2. 看說明：`dnstracer -h`（或 `man dnstracer`）
  3. 執行：`dnstracer <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://www.mavetju.org/unix/dnstracer.php

### `dnswalk`
- 以 nameserver 查詢檢查 DNS 區域資訊
- **提供指令:** `dnswalk`
- **步驟:**
  1. 安裝：`sudo apt install -y dnswalk`
  2. 看說明：`dnswalk -h`（或 `man dnswalk`）
  3. 執行：`dnswalk <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/davebarr/dnswalk

### `enum4linux`
- 列舉 Windows 與 Samba 系統資訊
- **提供指令:** `enum4linux`
- **步驟:**
  1. 安裝：`sudo apt install -y enum4linux`
  2. 看說明：`enum4linux -h`（或 `man enum4linux`）
  3. 執行：`enum4linux <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://labs.portcullis.co.uk/tools/enum4linux/

### `fierce` ✓ verified on VM
- 網域 DNS 掃描器
- **提供指令:** `fierce`
- **步驟:**
  1. 安裝：`sudo apt install -y fierce`
  2. 看說明：`fierce -h`（或 `man fierce`）
  3. 執行：`fierce <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  usage: fierce [-h] [--domain DOMAIN] [--connect] [--wide]
                [--traverse TRAVERSE] [--search SEARCH [SEARCH ...]]
                [--range RANGE] [--delay DELAY]
                [--subdomains SUBDOMAINS [SUBDOMAINS ...] |
                --subdomain-file SUBDOMAIN_FILE]
                [--dns-servers DNS_SERVERS [DNS_SERVERS ...] |
  ```
- 文件｜Docs: https://github.com/mschwager/fierce

### `firewalk`
- 主動式偵察的網路安全工具
- **提供指令:** `firewalk`
- **步驟:**
  1. 安裝：`sudo apt install -y firewalk`
  2. 看說明：`firewalk -h`（或 `man firewalk`）
  3. 執行：`firewalk <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://packetfactory.openwall.net/projects/firewalk/

### `fping` ✓ verified on VM
- 對多台主機送出 ICMP ECHO_REQUEST
- **提供指令:** `fping`, `fping6`
- **步驟:**
  1. 安裝：`sudo apt install -y fping`
  2. 看說明：`fping -h`（或 `man fping`）
  3. 執行：`fping <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  Usage: fping [options] [targets...]
  
  Probing options:
     -4, --ipv4         only ping IPv4 addresses
     -6, --ipv6         only ping IPv6 addresses
     -b, --size=BYTES   amount of ping data to send, in bytes (default: 56)
  ```
- 文件｜Docs: https://www.fping.org/

### `fragrouter`
- IDS 規避工具組
- **提供指令:** `fragrouter`
- **步驟:**
  1. 安裝：`sudo apt install -y fragrouter`
  2. 看說明：`fragrouter -h`（或 `man fragrouter`）
  3. 執行：`fragrouter <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://www.anzen.com/research/nidsbench/fragrouter.html

### `ftester`
- 測試防火牆與 IDS 的工具
- **提供指令:** `freport`, `ftest`, `ftestd`
- **步驟:**
  1. 安裝：`sudo apt install -y ftester`
  2. 看說明：`ftest -h`（或 `man ftest`）
  3. 執行：`ftest <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://dev.inversepath.com/ftester/

### `hping3` ✓ verified on VM
- 主動式網路壓測工具
- **提供指令:** `hping3`
- **步驟:**
  1. 安裝：`sudo apt install -y hping3`
  2. 看說明：`hping3 -h`（或 `man hping3`）
  3. 執行：`hping3 <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  usage: hping3 host [options]
    -h  --help      show this help
    -v  --version   show version
    -c  --count     packet count
    -i  --interval  wait (uX for X microseconds, for example -i u1000)
        --fast      alias for -i u10000 (10 packets for second)
  ```
- 文件｜Docs: http://www.hping.org/

### `ike-scan`
- 探索與指紋辨識 IKE 主機（IPsec VPN 伺服器）
- **提供指令:** `ike-scan`, `psk-crack`
- **步驟:**
  1. 安裝：`sudo apt install -y ike-scan`
  2. 看說明：`ike-scan -h`（或 `man ike-scan`）
  3. 執行：`ike-scan <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/royhills/ike-scan

### `intrace`
- 搭載既有 TCP 連線的 traceroute 類工具
- **提供指令:** `intrace`
- **步驟:**
  1. 安裝：`sudo apt install -y intrace`
  2. 看說明：`intrace -h`（或 `man intrace`）
  3. 執行：`intrace <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/robertswiecki/intrace

### `iputils-arping`
- 對 ARP 位址送 ICMP echo 的工具
- **提供指令:** `arping`
- **步驟:**
  1. 安裝：`sudo apt install -y iputils-arping`
  2. 看說明：`arping -h`（或 `man arping`）
  3. 執行：`arping <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/iputils/iputils/

### `irpas`
- 網際路由協定攻擊套件
- **提供指令:** `ass`, `cdp`, `dfkaa`, `dhcpx`, `file2cable`, `hsrp`, `icmp_redirect`, `igrp`, `inetmask`, `irdp`, `irdpresponder`, `itrace`, `netenum`, `protos`, `tctrace`, `timestamp`
- **步驟:**
  1. 安裝：`sudo apt install -y irpas`
  2. 看說明：`ass -h`（或 `man ass`）
  3. 執行：`ass <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://web.archive.org/web/20200208113522fw_/http://phenoelit.org/fr/tools.html

### `lbd`
- 負載平衡器偵測器
- **提供指令:** `lbd`
- **步驟:**
  1. 安裝：`sudo apt install -y lbd`
  2. 看說明：`lbd -h`（或 `man lbd`）
  3. 執行：`lbd <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://ge.mine.nu/code/

### `legion`
- 半自動化網路滲透測試工具
- **提供指令:** `legion`
- **步驟:**
  1. 安裝：`sudo apt install -y legion`
  2. 看說明：`legion -h`（或 `man legion`）
  3. 執行：`legion <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/Hackman238/legion

### `maltego`
- 開源情報與鑑識應用程式
- **提供指令:** `maltego`
- **步驟:**
  1. 安裝：`sudo apt install -y maltego`
  2. 看說明：`maltego -h`（或 `man maltego`）
  3. 執行：`maltego <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://www.maltego.com

### `masscan` ✓ verified on VM
- TCP 連接埠掃描器
- **提供指令:** `masscan`
- **步驟:**
  1. 安裝：`sudo apt install -y masscan`
  2. 看說明：`masscan -h`（或 `man masscan`）
  3. 執行：`masscan <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  MASSCAN is a fast port scanner. The primary input parameters are the
  IP addresses/ranges you want to scan, and the port numbers. An example
  is the following, which scans the 10.x.x.x network for web servers:
   masscan 10.0.0.0/8 -p80
  The program auto-detects network interface/adapter settings. If this
  fails, you'll have to set these manually. The following is an
  ```
- 文件｜Docs: https://github.com/robertdavidgraham/masscan

### `metagoofil`
- 擷取公開文件中繼資料的工具
- **提供指令:** `metagoofil`
- **步驟:**
  1. 安裝：`sudo apt install -y metagoofil`
  2. 看說明：`metagoofil -h`（或 `man metagoofil`）
  3. 執行：`metagoofil <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/opsdisk/metagoofil

### `nbtscan` ✓ verified on VM
- 掃描網路尋找 NetBIOS 資訊
- **提供指令:** `nbtscan`
- **步驟:**
  1. 安裝：`sudo apt install -y nbtscan`
  2. 看說明：`nbtscan -h`（或 `man nbtscan`）
  3. 執行：`nbtscan <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  nbtscan: invalid option -- '-'
  
  NBTscan version 1.7.2.
  This is a free software and it comes with absolutely no warranty.
  You can use, distribute and modify it under terms of GNU GPL 2+.
  ```
- 文件｜Docs: https://github.com/resurrecting-open-source-projects/nbtscan

### `ncat`
- NMAP 版 netcat 重製
- **提供指令:** `ncat`
- **步驟:**
  1. 安裝：`sudo apt install -y ncat`
  2. 看說明：`ncat -h`（或 `man ncat`）
  3. 執行：`ncat <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://nmap.org/

### `netdiscover` ✓ verified on VM
- 以 ARP 請求做主動/被動網路位址掃描
- **提供指令:** `netdiscover`
- **步驟:**
  1. 安裝：`sudo apt install -y netdiscover`
  2. 看說明：`netdiscover -h`（或 `man netdiscover`）
  3. 執行：`netdiscover <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  netdiscover: invalid option -- '-'
  
  Netdiscover 0.21 [Active/passive ARP reconnaissance tool]
  Written by: Jaime Penalba <<email>>
  
  Usage: netdiscover [-i device] [-r range | -l file | -p] [-m file] [-F filter] [-s time] [-c count] [-n node] [-dfPLNS]
  ```
- 文件｜Docs: https://github.com/netdiscover-scanner/netdiscover

### `netmask`
- 協助計算網路遮罩
- **提供指令:** `netmask`
- **步驟:**
  1. 安裝：`sudo apt install -y netmask`
  2. 看說明：`netmask -h`（或 `man netmask`）
  3. 執行：`netmask <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/tlby/netmask

### `nmap` ✓ verified on VM
- 網路測繪器（The Network Mapper）
- **提供指令:** `nmap`, `nping`
- **步驟:**
  1. 安裝：`sudo apt install -y nmap`
  2. 看說明：`nmap -h`（或 `man nmap`）
  3. 執行：`nmap <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- 文件｜Docs: https://nmap.org/

### `onesixtyone` ✓ verified on VM
- 快速簡單的 SNMP 掃描器
- **提供指令:** `onesixtyone`
- **步驟:**
  1. 安裝：`sudo apt install -y onesixtyone`
  2. 看說明：`onesixtyone -h`（或 `man onesixtyone`）
  3. 執行：`onesixtyone <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  onesixtyone: invalid option -- '-'
  onesixtyone 0.3.3 [options] <host> <community>
    -c <communityfile> file with community names to try
    -i <inputfile>     file with target hosts
    -o <outputfile>    output log
    -p                 specify an alternate destination SNMP port
  ```
- 文件｜Docs: https://github.com/trailofbits/onesixtyone

### `p0f`
- 被動式 OS 指紋辨識工具
- **提供指令:** `p0f`
- **步驟:**
  1. 安裝：`sudo apt install -y p0f`
  2. 看說明：`p0f -h`（或 `man p0f`）
  3. 執行：`p0f <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://lcamtuf.coredump.cx/p0f3/

### `qsslcaudit`
- 測試 SSL/TLS 用戶端安全性
- **提供指令:** `qsslcaudit`
- **步驟:**
  1. 安裝：`sudo apt install -y qsslcaudit`
  2. 看說明：`qsslcaudit -h`（或 `man qsslcaudit`）
  3. 執行：`qsslcaudit <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/gremwell/qsslcaudit

### `recon-ng`
- 以 Python 撰寫的 web 偵察框架
- **提供指令:** `recon-cli`, `recon-ng`, `recon-web`
- **步驟:**
  1. 安裝：`sudo apt install -y recon-ng`
  2. 看說明：`recon-ng -h`（或 `man recon-ng`）
  3. 執行：`recon-ng <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/lanmaster53/recon-ng

### `smbmap` ✓ verified on VM
- 好用的 SMB 列舉工具
- **提供指令:** `smbmap`
- **步驟:**
  1. 安裝：`sudo apt install -y smbmap`
  2. 看說明：`smbmap -h`（或 `man smbmap`）
  3. 執行：`smbmap <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  usage: smbmap [-h] (-H HOST | --host-file FILE) [-u USERNAME] [-p PASSWORD |
                --prompt] [-k] [--no-pass] [--dc-ip IP or Host] [-s SHARE]
                [-d DOMAIN] [-P PORT] [-v] [--signing] [--admin] [--no-banner]
                [--no-color] [--no-update] [--timeout SCAN_TIMEOUT] [-x COMMAND]
                [--mode CMDMODE] [-L | -r [PATH]] [-g FILE | --csv FILE]
                [--dir-only] [--no-write-check] [-q] [--depth DEPTH]
  ```
- 文件｜Docs: https://github.com/ShawnDEvans/smbmap

### `smtp-user-enum` ✓ verified on VM
- SMTP 服務使用者名稱猜測工具
- **提供指令:** `smtp-user-enum`
- **步驟:**
  1. 安裝：`sudo apt install -y smtp-user-enum`
  2. 看說明：`smtp-user-enum -h`（或 `man smtp-user-enum`）
  3. 執行：`smtp-user-enum <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  /usr/bin/smtp-user-enum version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: smtp-user-enum [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- 文件｜Docs: http://pentestmonkey.net/tools/user-enumeration/smtp-user-enum

### `snmpcheck`
- SNMP 服務列舉工具
- **提供指令:** `snmp-check`
- **步驟:**
  1. 安裝：`sudo apt install -y snmpcheck`
  2. 看說明：`snmp-check -h`（或 `man snmp-check`）
  3. 執行：`snmp-check <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://www.nothink.org/codes/snmpcheck/index.php

### `ssldump`
- SSLv3/TLS 網路協定分析器
- **提供指令:** `ssldump`
- **步驟:**
  1. 安裝：`sudo apt install -y ssldump`
  2. 看說明：`ssldump -h`（或 `man ssldump`）
  3. 執行：`ssldump <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://github.com/adulau/ssldump

### `sslh`
- 應用協定多工器
- **提供指令:** `sslh`, `sslh-ev`, `sslh-select`
- **步驟:**
  1. 安裝：`sudo apt install -y sslh`
  2. 看說明：`sslh -h`（或 `man sslh`）
  3. 執行：`sslh <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://www.rutschle.net/tech/sslh/README.html

### `sslscan` ✓ verified on VM
- 測試 SSL/TLS 服務支援的加密套件
- **提供指令:** `sslscan`
- **步驟:**
  1. 安裝：`sudo apt install -y sslscan`
  2. 看說明：`sslscan -h`（或 `man sslscan`）
  3. 執行：`sslscan <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  [1;34m                   _
             ___ ___| |___  ___ __ _ _ __
            / __/ __| / __|/ __/ _` | '_ \
            \__ \__ \ \__ \ (_| (_| | | | |
            |___/___/_|___/\___\__,_|_| |_|
  ```
- 文件｜Docs: https://github.com/rbsec/sslscan

### `sslyze` ✓ verified on VM
- 快速且功能完整的 SSL 掃描器
- **提供指令:** `sslyze`
- **步驟:**
  1. 安裝：`sudo apt install -y sslyze`
  2. 看說明：`sslyze -h`（或 `man sslyze`）
  3. 執行：`sslyze <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  usage: sslyze [-h] [--update_trust_stores] [--cert CERTIFICATE_FILE]
                [--key KEY_FILE] [--keyform KEY_FORMAT] [--pass PASSPHRASE]
                [--json_out JSON_FILE] [--targets_in TARGET_FILE] [--quiet]
                [--slow_connection] [--https_tunnel PROXY_SETTINGS]
                [--starttls PROTOCOL] [--xmpp_to HOSTNAME]
                [--sni SERVER_NAME_INDICATION] [--reneg] [--compression]
  ```
- 文件｜Docs: https://github.com/nabla-c0d3/sslyze

### `swaks` ✓ verified on VM
- SMTP 命令列測試工具
- **提供指令:** `swaks`
- **步驟:**
  1. 安裝：`sudo apt install -y swaks`
  2. 看說明：`swaks -h`（或 `man swaks`）
  3. 執行：`swaks <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  SWAKS(1)                             SWAKS                             SWAKS(1)
  
  NAME
       Swaks - Swiss Army Knife SMTP, the all-purpose SMTP transaction tester
  
  DESCRIPTION
  ```
- 文件｜Docs: https://www.jetmore.org/john/code/swaks/

### `thc-ipv6`
- THC 的 IPv6 攻擊工具組
- **提供指令:** `atk6-address6`, `atk6-alive6`, `atk6-connect6`, `atk6-connsplit6`, `atk6-covert_send6`, `atk6-covert_send6d`, `atk6-denial6`, `atk6-detect-new-ip6`, `atk6-detect_sniffer6`, `atk6-dnsdict6`, `atk6-dnsrevenum6`, `atk6-dnssecwalk`, `atk6-dos-new-ip6`, `atk6-dump_dhcp6`, `atk6-dump_router6`, `atk6-exploit6`, `atk6-extract_hosts6`, `atk6-extract_networks6`, `atk6-fake_advertise6`, `atk6-fake_dhcps6`, `atk6-fake_dns6d`, `atk6-fake_dnsupdate6`, `atk6-fake_mipv6`, `atk6-fake_mld26`, `atk6-fake_mld6`, `atk6-fake_mldrouter6`, `atk6-fake_pim6`, `atk6-fake_router26`, `atk6-fake_router6`, `atk6-fake_solicitate6`, `atk6-firewall6`, `atk6-flood_advertise6`, `atk6-flood_dhcpc6`, `atk6-flood_mld26`, `atk6-flood_mld6`, `atk6-flood_mldrouter6`, `atk6-flood_redir6`, `atk6-flood_router26`, `atk6-flood_router6`, `atk6-flood_rs6`, `atk6-flood_solicitate6`, `atk6-flood_unreach6`, `atk6-four2six`, `atk6-fragmentation6`, `atk6-fragrouter6`, `atk6-fuzz_dhcpc6`, `atk6-fuzz_dhcps6`, `atk6-fuzz_ip6`, `atk6-implementation6`, `atk6-implementation6d`, `atk6-inject_alive6`, `atk6-inverse_lookup6`, `atk6-kill_router6`, `atk6-ndpexhaust26`, `atk6-ndpexhaust6`, `atk6-node_query6`, `atk6-parasite6`, `atk6-passive_discovery6`, `atk6-randicmp6`, `atk6-redir6`, `atk6-redirsniff6`, `atk6-rsmurf6`, `atk6-sendpees6`, `atk6-sendpeesmp6`, `atk6-smurf6`, `atk6-thcping6`, `atk6-thcsyn6`, `atk6-toobig6`, `atk6-toobigsniff6`, `atk6-trace6`
- **步驟:**
  1. 安裝：`sudo apt install -y thc-ipv6`
  2. 看說明：`atk6-alive6 -h`（或 `man atk6-alive6`）
  3. 執行：`atk6-alive6 <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://www.thc.org/thc-ipv6/

### `theharvester` ✓ verified on VM
- 從公開來源蒐集 email 與子網域的工具
- **提供指令:** `restfulHarvest`, `theharvester`, `theHarvester`
- **步驟:**
  1. 安裝：`sudo apt install -y theharvester`
  2. 看說明：`theharvester -h`（或 `man theharvester`）
  3. 執行：`theharvester <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  Read proxies.yaml from /etc/theHarvester/proxies.yaml
  *******************************************************************
  *  _   _                                            _             *
  * | |_| |__   ___    /\  /\__ _ _ ____   _____  ___| |_ ___ _ __  *
  * | __|  _ \ / _ \  / /_/ / _` | '__\ \ / / _ \/ __| __/ _ \ '__| *
  * | |_| | | |  __/ / __  / (_| | |   \ V /  __/\__ \ ||  __/ |    *
  ```
- 文件｜Docs: https://github.com/laramies/theHarvester

### `tlssled`
- 評估目標 SSL/TLS（HTTPS）伺服器安全性
- **提供指令:** `tlssled`
- **步驟:**
  1. 安裝：`sudo apt install -y tlssled`
  2. 看說明：`tlssled -h`（或 `man tlssled`）
  3. 執行：`tlssled <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://www.taddong.com/en/lab.html

### `twofi`
- Twitter 關鍵字字典
- **提供指令:** `twofi`
- **步驟:**
  1. 安裝：`sudo apt install -y twofi`
  2. 看說明：`twofi -h`（或 `man twofi`）
  3. 執行：`twofi <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://www.digininja.org/projects/twofi.php

### `unicornscan`
- 使用者態分散式 TCP/IP 堆疊
- **提供指令:** `fantaip`, `unibrow`, `unicfgtst`, `unicornscan`, `us`
- **步驟:**
  1. 安裝：`sudo apt install -y unicornscan`
  2. 看說明：`unicornscan -h`（或 `man unicornscan`）
  3. 執行：`unicornscan <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: http://www.unicornscan.org/

### `urlcrazy`
- 網域誤植產生器
- **提供指令:** `urlcrazy`
- **步驟:**
  1. 安裝：`sudo apt install -y urlcrazy`
  2. 看說明：`urlcrazy -h`（或 `man urlcrazy`）
  3. 執行：`urlcrazy <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://www.morningstarsecurity.com/research/urlcrazy

### `wafw00f` ✓ verified on VM
- 辨識並指紋辨識 Web 應用防火牆
- **提供指令:** `wafw00f`
- **步驟:**
  1. 安裝：`sudo apt install -y wafw00f`
  2. 看說明：`wafw00f -h`（或 `man wafw00f`）
  3. 執行：`wafw00f <NODE_IP>` — 對你擁有的節點執行偵察
- **實際 --help（已在 VM 驗證）:**
  ```
  Usage: wafw00f url1 [url2 [url3 ... ]]
  example: wafw00f http://www.victim.org/
  
  Options:
    -h, --help            show this help message and exit
    -v, --verbose         Enable verbosity, multiple -v options increase
  ```
- 文件｜Docs: https://github.com/EnableSecurity/wafw00f

### `zenmap`
- Nmap 的圖形前端
- **提供指令:** `zenmap`
- **步驟:**
  1. 安裝：`sudo apt install -y zenmap`
  2. 看說明：`zenmap -h`（或 `man zenmap`）
  3. 執行：`zenmap <NODE_IP>` — 對你擁有的節點執行偵察
- 文件｜Docs: https://nmap.org/


## 02 · 弱點分析  (`kali-tools-vulnerability`)

### `afl++`
- 以插樁驅動的二進位格式模糊測試器
- **提供指令:** `afl-addseeds`, `afl-analyze`, `afl-c++`, `afl-cc`, `afl-clang`, `afl-clang++`, `afl-clang-fast`, `afl-clang-fast++`, `afl-clang-lto`, `afl-clang-lto++`, `afl-cmin`, `afl-cmin.awk`, `afl-cmin.bash`, `afl-cmin.py`, `afl-fuzz`, `afl-g++`, `afl-gcc`, `afl-gcc-fast`, `afl-g++-fast`, `afl-gotcpu`, `afl-health`, `afl-ld-lto`, `afl-lto`, `afl-lto++`, `afl-network-client`, `afl-network-server`, `afl-persistent-config`, `afl-plot`, `afl-showmap`, `afl-system-config`, `afl-tmin`, `afl-whatsup`
- **步驟:**
  1. 安裝：`sudo apt install -y afl++`
  2. 看說明：`afl-cc -h`（或 `man afl-cc`）
  3. 執行：`afl-cc http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://github.com/AFLplusplus/AFLplusplus

### `bed`
- 網路協定模糊測試器
- **提供指令:** `bed`
- **步驟:**
  1. 安裝：`sudo apt install -y bed`
  2. 看說明：`bed -h`（或 `man bed`）
  3. 執行：`bed http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.snake-basket.de

### `cisco-auditing-tool`
- 掃描 Cisco 路由器弱點
- **提供指令:** `CAT`
- **步驟:**
  1. 安裝：`sudo apt install -y cisco-auditing-tool`
  2. 看說明：`CAT -h`（或 `man CAT`）
  3. 執行：`CAT http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.scrypt.net/

### `cisco-global-exploiter`
- 簡易快速的 Cisco 漏洞利用工具
- **提供指令:** `cge.pl`
- **步驟:**
  1. 安裝：`sudo apt install -y cisco-global-exploiter`
  2. 看說明：`cge.pl -h`（或 `man cge.pl`）
  3. 執行：`cge.pl http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.blackangels.it

### `cisco-ocs`
- 大量 Cisco 掃描器
- **提供指令:** `cisco-ocs`
- **步驟:**
  1. 安裝：`sudo apt install -y cisco-ocs`
  2. 看說明：`cisco-ocs -h`（或 `man cisco-ocs`）
  3. 執行：`cisco-ocs http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://hacklab.altervista.org/

### `cisco-torch`
- Cisco 裝置掃描器
- **提供指令:** `cisco-torch`
- **步驟:**
  1. 安裝：`sudo apt install -y cisco-torch`
  2. 看說明：`cisco-torch -h`（或 `man cisco-torch`）
  3. 執行：`cisco-torch http://<NODE_IP>:30080` — 掃描你擁有的服務

### `dhcpig`
- 使用 scapy 的 DHCP 耗盡攻擊腳本
- **提供指令:** `dhcpig`
- **步驟:**
  1. 安裝：`sudo apt install -y dhcpig`
  2. 看說明：`dhcpig -h`（或 `man dhcpig`）
  3. 執行：`dhcpig http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://github.com/kamorin/DHCPig

### `enumiax`
- IAX 協定使用者名稱列舉器
- **提供指令:** `enumiax`
- **步驟:**
  1. 安裝：`sudo apt install -y enumiax`
  2. 看說明：`enumiax -h`（或 `man enumiax`）
  3. 執行：`enumiax http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://enumiax.sourceforge.net/

### `gvm`
- 遠端網路安全稽核器（中繼套件與腳本）
- **提供指令:** `gvm-check-setup`, `gvm-setup`, `gvm-start`, `gvm-stop`
- **步驟:**
  1. 安裝：`sudo apt install -y gvm`
  2. 看說明：`gvm-stop -h`（或 `man gvm-stop`）
  3. 執行：`gvm-stop http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://www.greenbone.net/

### `iaxflood`
- VoIP 洪泛工具
- **提供指令:** `iaxflood`
- **步驟:**
  1. 安裝：`sudo apt install -y iaxflood`
  2. 看說明：`iaxflood -h`（或 `man iaxflood`）
  3. 執行：`iaxflood http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.hackingexposedvoip.com/sec_tools.html

### `inviteflood`
- 透過 UDP/IP 洪泛 SIP/SDP INVITE 訊息
- **提供指令:** `inviteflood`
- **步驟:**
  1. 安裝：`sudo apt install -y inviteflood`
  2. 看說明：`inviteflood -h`（或 `man inviteflood`）
  3. 執行：`inviteflood http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `legion`
- 半自動化網路滲透測試工具
- **提供指令:** `legion`
- **步驟:**
  1. 安裝：`sudo apt install -y legion`
  2. 看說明：`legion -h`（或 `man legion`）
  3. 執行：`legion http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://github.com/Hackman238/legion

### `lynis`
- Unix 系統安全稽核工具
- **提供指令:** `lynis`
- **步驟:**
  1. 安裝：`sudo apt install -y lynis`
  2. 看說明：`lynis -h`（或 `man lynis`）
  3. 執行：`lynis http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://cisofy.com/lynis/

### `nikto` ✓ verified on VM
- web 伺服器安全掃描器
- **提供指令:** `nikto`, `replay`
- **步驟:**
  1. 安裝：`sudo apt install -y nikto`
  2. 看說明：`nikto -h`（或 `man nikto`）
  3. 執行：`nikto http://<NODE_IP>:30080` — 掃描你擁有的服務
- **實際 --help（已在 VM 驗證）:**
  ```
  Unknown option: help
  
     Options:
         -Add-header         Add HTTP headers (can be used multiple times, one per header pair)
         -ask+               Whether to ask about submitting updates
                                 yes   Ask about each (default)
  ```
- 文件｜Docs: https://github.com/sullo/nikto

### `nmap` ✓ verified on VM
- 網路測繪器（The Network Mapper）
- **提供指令:** `nmap`, `nping`
- **步驟:**
  1. 安裝：`sudo apt install -y nmap`
  2. 看說明：`nmap -h`（或 `man nmap`）
  3. 執行：`nmap http://<NODE_IP>:30080` — 掃描你擁有的服務
- **實際 --help（已在 VM 驗證）:**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- 文件｜Docs: https://nmap.org/

### `ohrwurm`
- RTP 模糊測試器
- **提供指令:** `ohrwurm`
- **步驟:**
  1. 安裝：`sudo apt install -y ohrwurm`
  2. 看說明：`ohrwurm -h`（或 `man ohrwurm`）
  3. 執行：`ohrwurm http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://mazzoo.de/blog/2006/08/25#ohrwurm

### `peass`
- 權限提升腳本套件（PEASS）
- **提供指令:** `linpeas`, `peass`, `winpeas`
- **步驟:**
  1. 安裝：`sudo apt install -y peass`
  2. 看說明：`peass -h`（或 `man peass`）
  3. 執行：`peass http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://github.com/carlospolop/PEASS-ng

### `protos-sip`
- SIP 測試套件
- **提供指令:** `protos-sip`
- **步驟:**
  1. 安裝：`sudo apt install -y protos-sip`
  2. 看說明：`protos-sip -h`（或 `man protos-sip`）
  3. 執行：`protos-sip http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip

### `rtpbreak`
- 偵測、重建並分析 RTP 工作階段
- **提供指令:** `rtpbreak`
- **步驟:**
  1. 安裝：`sudo apt install -y rtpbreak`
  2. 看說明：`rtpbreak -h`（或 `man rtpbreak`）
  3. 執行：`rtpbreak http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://dallachiesa.com/code/rtpbreak/

### `rtpflood`
- 洪泛任何 RTP 裝置的工具
- **提供指令:** `rtpflood`
- **步驟:**
  1. 安裝：`sudo apt install -y rtpflood`
  2. 看說明：`rtpflood -h`（或 `man rtpflood`）
  3. 執行：`rtpflood http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpinsertsound`
- 將音訊插入指定串流
- **提供指令:** `rtpinsertsound`
- **步驟:**
  1. 安裝：`sudo apt install -y rtpinsertsound`
  2. 看說明：`rtpinsertsound -h`（或 `man rtpinsertsound`）
  3. 執行：`rtpinsertsound http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpmixsound`
- 即時混入預錄音訊
- **提供指令:** `rtpmixsound`
- **步驟:**
  1. 安裝：`sudo apt install -y rtpmixsound`
  2. 看說明：`rtpmixsound -h`（或 `man rtpmixsound`）
  3. 執行：`rtpmixsound http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `sfuzz`
- 黑箱測試工具
- **提供指令:** `sfo`, `sfuzz`
- **步驟:**
  1. 安裝：`sudo apt install -y sfuzz`
  2. 看說明：`sfuzz -h`（或 `man sfuzz`）
  3. 執行：`sfuzz http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://aconole.brad-x.com/programs/sfuzz.html

### `siege`
- HTTP 回歸測試與壓力測試工具
- **提供指令:** `bombardment`, `siege`, `siege2csv`, `siege.config`
- **步驟:**
  1. 安裝：`sudo apt install -y siege`
  2. 看說明：`siege -h`（或 `man siege`）
  3. 執行：`siege http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://www.joedog.org/JoeDog/Siege

### `siparmyknife`
- SIP 模糊測試工具
- **提供指令:** `siparmyknife`
- **步驟:**
  1. 安裝：`sudo apt install -y siparmyknife`
  2. 看說明：`siparmyknife -h`（或 `man siparmyknife`）
  3. 執行：`siparmyknife http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html

### `sipp`
- SIP 協定流量產生器
- **提供指令:** `sipp`
- **步驟:**
  1. 安裝：`sudo apt install -y sipp`
  2. 看說明：`sipp -h`（或 `man sipp`）
  3. 執行：`sipp http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://sipp.sourceforge.net/

### `sipsak`
- SIP 瑞士刀
- **提供指令:** `sipsak`
- **步驟:**
  1. 安裝：`sudo apt install -y sipsak`
  2. 看說明：`sipsak -h`（或 `man sipsak`）
  3. 執行：`sipsak http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://github.com/nils-ohlmeier/sipsak

### `sipvicious`
- 稽核 SIP VoIP 系統的工具
- **提供指令:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **步驟:**
  1. 安裝：`sudo apt install -y sipvicious`
  2. 看說明：`svmap -h`（或 `man svmap`）
  3. 執行：`svmap http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://github.com/EnableSecurity/sipvicious

### `slowhttptest`
- 應用層 DoS 攻擊模擬工具
- **提供指令:** `slowhttptest`
- **步驟:**
  1. 安裝：`sudo apt install -y slowhttptest`
  2. 看說明：`slowhttptest -h`（或 `man slowhttptest`）
  3. 執行：`slowhttptest http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://github.com/shekyan/slowhttptest

### `spike`
- 網路協定模糊測試器
- **提供指令:** `citrix`, `closed_source_web_server_fuzz`, `dceoversmb`, `dltest`, `do_post`, `generic_chunked`, `generic_listen_tcp`, `generic_send_tcp`, `generic_send_udp`, `generic_web_server_fuzz`, `generic_web_server_fuzz2`, `gopherd`, `halflife`, `line_send_tcp`, `msrpcfuzz`, `msrpcfuzz_udp`, `ntlm2`, `ntlm_brute`, `pmspike`, `post_fuzz`, `post_spike`, `quake`, `quakeserver`, `sendmsrpc`, `ss_spike`, `statd_spike`, `sunrpcfuzz`, `webfuzz`, `x11_spike`
- **步驟:**
  1. 安裝：`sudo apt install -y spike`
  2. 看說明：`ntlm2 -h`（或 `man ntlm2`）
  3. 執行：`ntlm2 http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.immunitysec.com/resources-freesoftware.shtml

### `t50`
- 多協定封包注入工具
- **提供指令:** `t50`
- **步驟:**
  1. 安裝：`sudo apt install -y t50`
  2. 看說明：`t50 -h`（或 `man t50`）
  3. 執行：`t50 http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://gitlab.com/fredericopissarra/t50

### `thc-ssl-dos`
- SSL 握手壓測工具
- **提供指令:** `thc-ssl-dos`
- **步驟:**
  1. 安裝：`sudo apt install -y thc-ssl-dos`
  2. 看說明：`thc-ssl-dos -h`（或 `man thc-ssl-dos`）
  3. 執行：`thc-ssl-dos http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: http://www.thc.org/thc-ssl-dos/

### `unix-privesc-check`
- 檢查簡易權限提升向量的腳本
- **提供指令:** `unix-privesc-check`
- **步驟:**
  1. 安裝：`sudo apt install -y unix-privesc-check`
  2. 看說明：`unix-privesc-check -h`（或 `man unix-privesc-check`）
  3. 執行：`unix-privesc-check http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://pentestmonkey.net/tools/audit/unix-privesc-check

### `voiphopper`
- 執行 VLAN hop 安全測試
- **提供指令:** `voiphopper`
- **步驟:**
  1. 安裝：`sudo apt install -y voiphopper`
  2. 看說明：`voiphopper -h`（或 `man voiphopper`）
  3. 執行：`voiphopper http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://sourceforge.net/projects/voiphopper

### `yersinia`
- 網路弱點檢查軟體
- **提供指令:** `yersinia`
- **步驟:**
  1. 安裝：`sudo apt install -y yersinia`
  2. 看說明：`yersinia -h`（或 `man yersinia`）
  3. 執行：`yersinia http://<NODE_IP>:30080` — 掃描你擁有的服務
- 文件｜Docs: https://github.com/tomac/yersinia


## 03 · Web 應用程式分析  (`kali-tools-web`)

### `apache-users`
- 列舉啟用 Apache UserDir 模組系統上的使用者名稱
- **提供指令:** `apache-users`
- **步驟:**
  1. 安裝：`sudo apt install -y apache-users`
  2. 看說明：`apache-users -h`（或 `man apache-users`）
  3. 執行：`apache-users http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://labs.portcullis.co.uk/downloads/

### `apache2`
- Apache HTTP 伺服器
- **提供指令:** `a2disconf`, `a2dismod`, `a2dissite`, `a2enconf`, `a2enmod`, `a2ensite`, `a2query`, `apache2ctl`, `apachectl`
- **步驟:**
  1. 安裝：`sudo apt install -y apache2`
  2. 看說明：`a2enmod -h`（或 `man a2enmod`）
  3. 執行：`a2enmod http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://httpd.apache.org/

### `beef-xss`
- 瀏覽器漏洞利用框架（BeEF）
- **提供指令:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **步驟:**
  1. 安裝：`sudo apt install -y beef-xss`
  2. 看說明：`beef-xss -h`（或 `man beef-xss`）
  3. 執行：`beef-xss http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://beefproject.com/

### `cadaver`
- 命令列 WebDAV 用戶端
- **提供指令:** `cadaver`
- **步驟:**
  1. 安裝：`sudo apt install -y cadaver`
  2. 看說明：`cadaver -h`（或 `man cadaver`）
  3. 執行：`cadaver http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/notroj/cadaver

### `commix` ✓ verified on VM
- 自動化一站式 OS 命令注入與利用工具
- **提供指令:** `commix`
- **步驟:**
  1. 安裝：`sudo apt install -y commix`
  2. 看說明：`commix -h`（或 `man commix`）
  3. 執行：`commix http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  Usage: commix [option(s)]
  
  Options:
    -h, --help            Show help and exit.
  
    [1m[4mGeneral[0m:
  ```
- 文件｜Docs: https://commixproject.com

### `cutycapt`
- 擷取 WebKit 網頁算繪結果的工具
- **提供指令:** `cutycapt`
- **步驟:**
  1. 安裝：`sudo apt install -y cutycapt`
  2. 看說明：`cutycapt -h`（或 `man cutycapt`）
  3. 執行：`cutycapt http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/Crystalix007/CutyCapt

### `davtest`
- WebDAV 伺服器測試工具
- **提供指令:** `davtest`
- **步驟:**
  1. 安裝：`sudo apt install -y davtest`
  2. 看說明：`davtest -h`（或 `man davtest`）
  3. 執行：`davtest http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/cldrn/davtest

### `default-mysql-server`
- MySQL 資料庫伺服器（中繼套件）
- **步驟:**
  1. 安裝：`sudo apt install -y default-mysql-server`
  2. 看說明：`default-mysql-server -h`（或 `man default-mysql-server`）
  3. 執行：`default-mysql-server http://<NODE_IP>:30080` — 對你擁有的 web 服務執行

### `dirb` ✓ verified on VM
- URL 暴力列舉工具
- **提供指令:** `dirb`, `dirb-gendict`, `html2dic`
- **步驟:**
  1. 安裝：`sudo apt install -y dirb`
  2. 看說明：`dirb -h`（或 `man dirb`）
  3. 執行：`dirb http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  
  -----------------
  DIRB v2.22    
  By The Dark Raver
  -----------------
  ```
- 文件｜Docs: https://dirb.sourceforge.net/

### `dirbuster`
- Web 伺服器目錄暴力列舉器
- **提供指令:** `dirbuster`
- **步驟:**
  1. 安裝：`sudo apt install -y dirbuster`
  2. 看說明：`dirbuster -h`（或 `man dirbuster`）
  3. 執行：`dirbuster http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project

### `dotdotpwn`
- 目錄遍歷模糊測試器
- **提供指令:** `dotdotpwn`
- **步驟:**
  1. 安裝：`sudo apt install -y dotdotpwn`
  2. 看說明：`dotdotpwn -h`（或 `man dotdotpwn`）
  3. 執行：`dotdotpwn http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://dotdotpwn.blogspot.ca

### `eyewitness`
- 快速的 web 應用分流工具
- **提供指令:** `eyewitness`, `geckodriver`
- **步驟:**
  1. 安裝：`sudo apt install -y eyewitness`
  2. 看說明：`eyewitness -h`（或 `man eyewitness`）
  3. 執行：`eyewitness http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.christophertruncer.com/eyewitness-triage-tool/

### `ferret-sidejack`
- 監看資料並擷取感興趣的內容
- **提供指令:** `ferret-sidejack`
- **步驟:**
  1. 安裝：`sudo apt install -y ferret-sidejack`
  2. 看說明：`ferret-sidejack -h`（或 `man ferret-sidejack`）
  3. 執行：`ferret-sidejack http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/robertdavidgraham/ferret

### `ftester`
- 測試防火牆與 IDS 的工具
- **提供指令:** `freport`, `ftest`, `ftestd`
- **步驟:**
  1. 安裝：`sudo apt install -y ftester`
  2. 看說明：`ftest -h`（或 `man ftest`）
  3. 執行：`ftest http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://dev.inversepath.com/ftester/

### `hakrawler`
- 快速探索端點與資產的 web 爬蟲
- **提供指令:** `hakrawler`
- **步驟:**
  1. 安裝：`sudo apt install -y hakrawler`
  2. 看說明：`hakrawler -h`（或 `man hakrawler`）
  3. 執行：`hakrawler http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/hakluke/hakrawler

### `hamster-sidejack`
- Sidejacking 工具
- **提供指令:** `hamster-sidejack`
- **步驟:**
  1. 安裝：`sudo apt install -y hamster-sidejack`
  2. 看說明：`hamster-sidejack -h`（或 `man hamster-sidejack`）
  3. 執行：`hamster-sidejack http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://www.erratasec.com/research.html

### `heartleech`
- 偵測 Heartbleed OpenSSL 漏洞的掃描器
- **提供指令:** `heartleech`
- **步驟:**
  1. 安裝：`sudo apt install -y heartleech`
  2. 看說明：`heartleech -h`（或 `man heartleech`）
  3. 執行：`heartleech http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/robertdavidgraham/heartleech

### `httrack`
- 將網站複製到本機（離線瀏覽器）
- **提供指令:** `httrack`
- **步驟:**
  1. 安裝：`sudo apt install -y httrack`
  2. 看說明：`httrack -h`（或 `man httrack`）
  3. 執行：`httrack http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.httrack.com

### `hydra` ✓ verified on VM
- 非常快速的網路登入破解器
- **提供指令:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **步驟:**
  1. 安裝：`sudo apt install -y hydra`
  2. 看說明：`hydra -h`（或 `man hydra`）
  3. 執行：`hydra http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  Hydra v9.7 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).
  
  hydra: invalid option -- '-'
  ```
- 文件｜Docs: https://github.com/vanhauser-thc/thc-hydra

### `hydra-gtk`
- 非常快速的網路登入破解器（GTK+ GUI）
- **提供指令:** `xhydra`
- **步驟:**
  1. 安裝：`sudo apt install -y hydra-gtk`
  2. 看說明：`xhydra -h`（或 `man xhydra`）
  3. 執行：`xhydra http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/vanhauser-thc/thc-hydra

### `jboss-autopwn`
- 取得 JBoss 遠端 shell 的腳本
- **提供指令:** `jboss-linux`, `jboss-win`
- **步驟:**
  1. 安裝：`sudo apt install -y jboss-autopwn`
  2. 看說明：`jboss-win -h`（或 `man jboss-win`）
  3. 執行：`jboss-win http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/SpiderLabs/jboss-autopwn

### `joomscan`
- OWASP Joomla 弱點掃描器
- **提供指令:** `joomscan`
- **步驟:**
  1. 安裝：`sudo apt install -y joomscan`
  2. 看說明：`joomscan -h`（或 `man joomscan`）
  3. 執行：`joomscan http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.owasp.org/index.php/Category:OWASP_Joomla_Vulnerability_Scanner_Project

### `jsql-injection`
- 自動資料庫注入的 Java 工具
- **提供指令:** `jsql`, `jsql-injection`
- **步驟:**
  1. 安裝：`sudo apt install -y jsql-injection`
  2. 看說明：`jsql-injection -h`（或 `man jsql-injection`）
  3. 執行：`jsql-injection http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/ron190/jsql-injection

### `laudanum`
- 可注入的 web 檔案集
- **提供指令:** `laudanum`
- **步驟:**
  1. 安裝：`sudo apt install -y laudanum`
  2. 看說明：`laudanum -h`（或 `man laudanum`）
  3. 執行：`laudanum http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://sourceforge.net/projects/laudanum/

### `lbd`
- 負載平衡器偵測器
- **提供指令:** `lbd`
- **步驟:**
  1. 安裝：`sudo apt install -y lbd`
  2. 看說明：`lbd -h`（或 `man lbd`）
  3. 執行：`lbd http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://ge.mine.nu/code/

### `maltego`
- 開源情報與鑑識應用程式
- **提供指令:** `maltego`
- **步驟:**
  1. 安裝：`sudo apt install -y maltego`
  2. 看說明：`maltego -h`（或 `man maltego`）
  3. 執行：`maltego http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.maltego.com

### `medusa` ✓ verified on VM
- 快速、平行、模組化的網路服務登入暴力破解器
- **提供指令:** `medusa`
- **步驟:**
  1. 安裝：`sudo apt install -y medusa`
  2. 看說明：`medusa -h`（或 `man medusa`）
  3. 執行：`medusa http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  medusa: invalid option -- '-'
  CRITICAL: Unknown error processing command-line options.
  ALERT: User logon information must be supplied.
  Medusa v2.3 [http://www.foofus.net] (C) JoMo-Kun / Foofus Networks <<email>>
  ```
- 文件｜Docs: http://foofus.net/?page_id=51

### `mitmproxy`
- 支援 SSL 的中間人 HTTP 代理
- **提供指令:** `mitmdump`, `mitmproxy`, `mitmweb`
- **步驟:**
  1. 安裝：`sudo apt install -y mitmproxy`
  2. 看說明：`mitmproxy -h`（或 `man mitmproxy`）
  3. 執行：`mitmproxy http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://mitmproxy.org

### `ncrack` ✓ verified on VM
- 高速網路驗證破解工具
- **提供指令:** `ncrack`
- **步驟:**
  1. 安裝：`sudo apt install -y ncrack`
  2. 看說明：`ncrack -h`（或 `man ncrack`）
  3. 執行：`ncrack http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  Ncrack 0.7 ( http://ncrack.org )
  Usage: ncrack [Options] {target and service specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iX <inputfilename>: Input from Nmap's -oX XML output format
  ```
- 文件｜Docs: https://nmap.org/ncrack/

### `nikto` ✓ verified on VM
- web 伺服器安全掃描器
- **提供指令:** `nikto`, `replay`
- **步驟:**
  1. 安裝：`sudo apt install -y nikto`
  2. 看說明：`nikto -h`（或 `man nikto`）
  3. 執行：`nikto http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  Unknown option: help
  
     Options:
         -Add-header         Add HTTP headers (can be used multiple times, one per header pair)
         -ask+               Whether to ask about submitting updates
                                 yes   Ask about each (default)
  ```
- 文件｜Docs: https://github.com/sullo/nikto

### `nishang`
- PowerShell 腳本與 payload 集
- **提供指令:** `nishang`
- **步驟:**
  1. 安裝：`sudo apt install -y nishang`
  2. 看說明：`nishang -h`（或 `man nishang`）
  3. 執行：`nishang http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/samratashok/nishang

### `nmap` ✓ verified on VM
- 網路測繪器（The Network Mapper）
- **提供指令:** `nmap`, `nping`
- **步驟:**
  1. 安裝：`sudo apt install -y nmap`
  2. 看說明：`nmap -h`（或 `man nmap`）
  3. 執行：`nmap http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- 文件｜Docs: https://nmap.org/

### `oscanner`
- Oracle 評估框架
- **提供指令:** `oscanner`
- **步驟:**
  1. 安裝：`sudo apt install -y oscanner`
  2. 看說明：`oscanner -h`（或 `man oscanner`）
  3. 執行：`oscanner http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://www.cqure.net/wp/tools/database/oscanner/

### `padbuster`
- 執行 Padding Oracle 攻擊的腳本
- **提供指令:** `padbuster`
- **步驟:**
  1. 安裝：`sudo apt install -y padbuster`
  2. 看說明：`padbuster -h`（或 `man padbuster`）
  3. 執行：`padbuster http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/GDSSecurity/PadBuster

### `paros`
- web 應用程式代理
- **提供指令:** `paros`
- **步驟:**
  1. 安裝：`sudo apt install -y paros`
  2. 看說明：`paros -h`（或 `man paros`）
  3. 執行：`paros http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://www.parosproxy.org/index.shtml

### `patator` ✓ verified on VM
- 多用途暴力破解器
- **提供指令:** `patator`
- **步驟:**
  1. 安裝：`sudo apt install -y patator`
  2. 看說明：`patator -h`（或 `man patator`）
  3. 執行：`patator http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  Patator 1.1.0 (https://github.com/lanjelot/patator) with Python-3.14.8
  Usage: patator module --help
  
  Available modules:
    + ftp_login     : Brute-force FTP
    + ssh_login     : Brute-force SSH
  ```
- 文件｜Docs: https://github.com/lanjelot/patator

### `php`
- 伺服器端 HTML 內嵌腳本語言（預設）
- **步驟:**
  1. 安裝：`sudo apt install -y php`
  2. 看說明：`php -h`（或 `man php`）
  3. 執行：`php http://<NODE_IP>:30080` — 對你擁有的 web 服務執行

### `php-mysql`
- PHP 的 MySQL 模組（預設）
- **步驟:**
  1. 安裝：`sudo apt install -y php-mysql`
  2. 看說明：`php-mysql -h`（或 `man php-mysql`）
  3. 執行：`php-mysql http://<NODE_IP>:30080` — 對你擁有的 web 服務執行

### `proxychains4`
- 透過 socks/http 代理轉送連線（proxychains-ng）
- **提供指令:** `proxychains4`, `proxychains4-daemon`
- **步驟:**
  1. 安裝：`sudo apt install -y proxychains4`
  2. 看說明：`proxychains4 -h`（或 `man proxychains4`）
  3. 執行：`proxychains4 http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/rofl0r/proxychains-ng

### `proxytunnel`
- 協助 SSH 等協定穿過 HTTP(S) 代理
- **提供指令:** `proxytunnel`
- **步驟:**
  1. 安裝：`sudo apt install -y proxytunnel`
  2. 看說明：`proxytunnel -h`（或 `man proxytunnel`）
  3. 執行：`proxytunnel http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://proxytunnel.sourceforge.io/

### `qsslcaudit`
- 測試 SSL/TLS 用戶端安全性
- **提供指令:** `qsslcaudit`
- **步驟:**
  1. 安裝：`sudo apt install -y qsslcaudit`
  2. 看說明：`qsslcaudit -h`（或 `man qsslcaudit`）
  3. 執行：`qsslcaudit http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/gremwell/qsslcaudit

### `redsocks`
- 將任意 TCP 連線重導到 SOCKS/HTTPS 代理
- **提供指令:** `redsocks`
- **步驟:**
  1. 安裝：`sudo apt install -y redsocks`
  2. 看說明：`redsocks -h`（或 `man redsocks`）
  3. 執行：`redsocks http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://darkk.net.ru/redsocks/

### `sidguesser`
- 對 Oracle 資料庫猜測 SID
- **提供指令:** `sidguess`
- **步驟:**
  1. 安裝：`sudo apt install -y sidguesser`
  2. 看說明：`sidguess -h`（或 `man sidguess`）
  3. 執行：`sidguess http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://www.cqure.net/wp/tools/database/sidguesser/

### `siege`
- HTTP 回歸測試與壓力測試工具
- **提供指令:** `bombardment`, `siege`, `siege2csv`, `siege.config`
- **步驟:**
  1. 安裝：`sudo apt install -y siege`
  2. 看說明：`siege -h`（或 `man siege`）
  3. 執行：`siege http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.joedog.org/JoeDog/Siege

### `skipfish` ✓ verified on VM
- 全自動主動式 web 應用安全偵察工具
- **提供指令:** `skipfish`
- **步驟:**
  1. 安裝：`sudo apt install -y skipfish`
  2. 看說明：`skipfish -h`（或 `man skipfish`）
  3. 執行：`skipfish http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  skipfish web application scanner - version 2.10b
  Usage: skipfish [ options ... ] -W wordlist -o output_dir start_url [ start_url2 ... ]
  
  Authentication and access options:
  
    -A user:pass      - use specified HTTP authentication credentials
  ```

### `slowhttptest`
- 應用層 DoS 攻擊模擬工具
- **提供指令:** `slowhttptest`
- **步驟:**
  1. 安裝：`sudo apt install -y slowhttptest`
  2. 看說明：`slowhttptest -h`（或 `man slowhttptest`）
  3. 執行：`slowhttptest http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/shekyan/slowhttptest

### `sqlitebrowser`
- SQLite 資料庫的 GUI 編輯器
- **提供指令:** `sqlitebrowser`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlitebrowser`
  2. 看說明：`sqlitebrowser -h`（或 `man sqlitebrowser`）
  3. 執行：`sqlitebrowser http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://sqlitebrowser.org/

### `sqlmap` ✓ verified on VM
- 自動化 SQL 注入工具
- **提供指令:** `sqlmap`, `sqlmapapi`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlmap`
  2. 看說明：`sqlmap -h`（或 `man sqlmap`）
  3. 執行：`sqlmap http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
          ___
         __H__
   ___ ___[)]_____ ___ ___  {1.10.9#stable}
  |_ -| . [(]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- 文件｜Docs: https://sqlmap.org/

### `sqlninja`
- SQL Server 注入與接管工具
- **提供指令:** `sqlninja`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlninja`
  2. 看說明：`sqlninja -h`（或 `man sqlninja`）
  3. 執行：`sqlninja http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://sqlninja.sourceforge.net/

### `sqlsus`
- MySQL 注入工具
- **提供指令:** `sqlsus`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlsus`
  2. 看說明：`sqlsus -h`（或 `man sqlsus`）
  3. 執行：`sqlsus http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://sqlsus.sourceforge.net/

### `ssldump`
- SSLv3/TLS 網路協定分析器
- **提供指令:** `ssldump`
- **步驟:**
  1. 安裝：`sudo apt install -y ssldump`
  2. 看說明：`ssldump -h`（或 `man ssldump`）
  3. 執行：`ssldump http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/adulau/ssldump

### `sslh`
- 應用協定多工器
- **提供指令:** `sslh`, `sslh-ev`, `sslh-select`
- **步驟:**
  1. 安裝：`sudo apt install -y sslh`
  2. 看說明：`sslh -h`（或 `man sslh`）
  3. 執行：`sslh http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://www.rutschle.net/tech/sslh/README.html

### `sslscan` ✓ verified on VM
- 測試 SSL/TLS 服務支援的加密套件
- **提供指令:** `sslscan`
- **步驟:**
  1. 安裝：`sudo apt install -y sslscan`
  2. 看說明：`sslscan -h`（或 `man sslscan`）
  3. 執行：`sslscan http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  [1;34m                   _
             ___ ___| |___  ___ __ _ _ __
            / __/ __| / __|/ __/ _` | '_ \
            \__ \__ \ \__ \ (_| (_| | | | |
            |___/___/_|___/\___\__,_|_| |_|
  ```
- 文件｜Docs: https://github.com/rbsec/sslscan

### `sslsniff`
- SSL/TLS 中間人攻擊工具
- **提供指令:** `sslsniff`
- **步驟:**
  1. 安裝：`sudo apt install -y sslsniff`
  2. 看說明：`sslsniff -h`（或 `man sslsniff`）
  3. 執行：`sslsniff http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/moxie0/sslsniff

### `sslsplit`
- 透明且可擴充的 SSL/TLS 攔截
- **提供指令:** `sslsplit`
- **步驟:**
  1. 安裝：`sudo apt install -y sslsplit`
  2. 看說明：`sslsplit -h`（或 `man sslsplit`）
  3. 執行：`sslsplit http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.roe.ch/SSLsplit

### `sslyze` ✓ verified on VM
- 快速且功能完整的 SSL 掃描器
- **提供指令:** `sslyze`
- **步驟:**
  1. 安裝：`sudo apt install -y sslyze`
  2. 看說明：`sslyze -h`（或 `man sslyze`）
  3. 執行：`sslyze http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  usage: sslyze [-h] [--update_trust_stores] [--cert CERTIFICATE_FILE]
                [--key KEY_FILE] [--keyform KEY_FORMAT] [--pass PASSPHRASE]
                [--json_out JSON_FILE] [--targets_in TARGET_FILE] [--quiet]
                [--slow_connection] [--https_tunnel PROXY_SETTINGS]
                [--starttls PROTOCOL] [--xmpp_to HOSTNAME]
                [--sni SERVER_NAME_INDICATION] [--reneg] [--compression]
  ```
- 文件｜Docs: https://github.com/nabla-c0d3/sslyze

### `stunnel4`
- 網路守護程式的通用 SSL 隧道（相容套件）
- **提供指令:** `stunnel4`
- **步驟:**
  1. 安裝：`sudo apt install -y stunnel4`
  2. 看說明：`stunnel4 -h`（或 `man stunnel4`）
  3. 執行：`stunnel4 http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.stunnel.org/

### `thc-ssl-dos`
- SSL 握手壓測工具
- **提供指令:** `thc-ssl-dos`
- **步驟:**
  1. 安裝：`sudo apt install -y thc-ssl-dos`
  2. 看說明：`thc-ssl-dos -h`（或 `man thc-ssl-dos`）
  3. 執行：`thc-ssl-dos http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://www.thc.org/thc-ssl-dos/

### `tlssled`
- 評估目標 SSL/TLS（HTTPS）伺服器安全性
- **提供指令:** `tlssled`
- **步驟:**
  1. 安裝：`sudo apt install -y tlssled`
  2. 看說明：`tlssled -h`（或 `man tlssled`）
  3. 執行：`tlssled http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://www.taddong.com/en/lab.html

### `tnscmd10g`
- 探測 Oracle tnslsnr 程序的工具
- **提供指令:** `tnscmd10g`
- **步驟:**
  1. 安裝：`sudo apt install -y tnscmd10g`
  2. 看說明：`tnscmd10g -h`（或 `man tnscmd10g`）
  3. 執行：`tnscmd10g http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: http://www.red-database-security.com/

### `uniscan` ✓ verified on VM
- LFI、RFI、RCE 弱點掃描器
- **提供指令:** `uniscan`, `uniscan-gui`
- **步驟:**
  1. 安裝：`sudo apt install -y uniscan`
  2. 看說明：`uniscan -h`（或 `man uniscan`）
  3. 執行：`uniscan http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  ./uniscan.pl version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: uniscan.pl [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- 文件｜Docs: https://sourceforge.net/projects/uniscan/

### `wafw00f` ✓ verified on VM
- 辨識並指紋辨識 Web 應用防火牆
- **提供指令:** `wafw00f`
- **步驟:**
  1. 安裝：`sudo apt install -y wafw00f`
  2. 看說明：`wafw00f -h`（或 `man wafw00f`）
  3. 執行：`wafw00f http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  Usage: wafw00f url1 [url2 [url3 ... ]]
  example: wafw00f http://www.victim.org/
  
  Options:
    -h, --help            show this help message and exit
    -v, --verbose         Enable verbosity, multiple -v options increase
  ```
- 文件｜Docs: https://github.com/EnableSecurity/wafw00f

### `wapiti` ✓ verified on VM
- web 應用弱點掃描器
- **提供指令:** `wapiti`, `wapiti-getcookie`
- **步驟:**
  1. 安裝：`sudo apt install -y wapiti`
  2. 看說明：`wapiti -h`（或 `man wapiti`）
  3. 執行：`wapiti http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  
       __    __            _ _   _ _____
      / / /\ \ \__ _ _ __ (_) |_(_)___ /
      \ \/  \/ / _` | '_ \| | __| | |_ \
       \  /\  / (_| | |_) | | |_| |___) |
        \/  \/ \__,_| .__/|_|\__|_|____/
  ```
- 文件｜Docs: https://wapiti.sourceforge.net/

### `webacoo`
- Web 後門 cookie 腳本套件
- **提供指令:** `webacoo`
- **步驟:**
  1. 安裝：`sudo apt install -y webacoo`
  2. 看說明：`webacoo -h`（或 `man webacoo`）
  3. 執行：`webacoo http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/anestisb/WeBaCoo

### `webscarab`
- web 應用審查工具
- **提供指令:** `webscarab`
- **步驟:**
  1. 安裝：`sudo apt install -y webscarab`
  2. 看說明：`webscarab -h`（或 `man webscarab`）
  3. 執行：`webscarab http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/OWASP/OWASP-WebScarab

### `webshells`
- web shell 集合
- **提供指令:** `webshells`
- **步驟:**
  1. 安裝：`sudo apt install -y webshells`
  2. 看說明：`webshells -h`（或 `man webshells`）
  3. 執行：`webshells http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.kali.org

### `weevely`
- 隱匿的微型 web shell
- **提供指令:** `weevely`
- **步驟:**
  1. 安裝：`sudo apt install -y weevely`
  2. 看說明：`weevely -h`（或 `man weevely`）
  3. 執行：`weevely http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/epinna/weevely3/

### `wfuzz` ✓ verified on VM
- web 應用暴力列舉器
- **提供指令:** `wfuzz`
- **步驟:**
  1. 安裝：`sudo apt install -y wfuzz`
  2. 看說明：`wfuzz -h`（或 `man wfuzz`）
  3. 執行：`wfuzz http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  default
  default
  ********************************************************
  * Wfuzz 3.1.0 - The Web Fuzzer                         *
  *                                                      *
  * Version up to 1.4c coded by:                         *
  ```
- 文件｜Docs: http://www.edge-security.com/wfuzz.php

### `whatweb` ✓ verified on VM
- 下一代 web 掃描器
- **提供指令:** `whatweb`
- **步驟:**
  1. 安裝：`sudo apt install -y whatweb`
  2. 看說明：`whatweb -h`（或 `man whatweb`）
  3. 執行：`whatweb http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- **實際 --help（已在 VM 驗證）:**
  ```
  [1m[34m
  .$$$     $.                                   .$$$     $.
  $$$$     $$. .$$$  $$$ .$$$$$$.  .$$$$$$$$$$. $$$$     $$. .$$$$$$$. .$$$$$$.
  $ $$     $$$ $ $$  $$$ $ $$$$$$. $$$$$ $$$$$$ $ $$     $$$ $ $$   $$ $ $$$$$$.
  $ `$     $$$ $ `$  $$$ $ `$  $$$ $$' $ `$ `$$ $ `$     $$$ $ `$      $ `$  $$$'
  $. $     $$$ $. $$$$$$ $. $$$$$$ `$  $. $  :' $. $     $$$ $. $$$$   $. $$$$$.
  ```
- 文件｜Docs: https://github.com/urbanadventurer/WhatWeb

### `wireshark`
- 網路流量分析器（圖形介面）
- **提供指令:** `wireshark`
- **步驟:**
  1. 安裝：`sudo apt install -y wireshark`
  2. 看說明：`wireshark -h`（或 `man wireshark`）
  3. 執行：`wireshark http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://www.wireshark.org/

### `wpscan`
- 黑箱 WordPress 弱點掃描器
- **提供指令:** `wpscan`
- **步驟:**
  1. 安裝：`sudo apt install -y wpscan`
  2. 看說明：`wpscan -h`（或 `man wpscan`）
  3. 執行：`wpscan http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://wpscan.com/wordpress-security-scanner

### `xsser`
- XSS 測試框架
- **提供指令:** `xsser`
- **步驟:**
  1. 安裝：`sudo apt install -y xsser`
  2. 看說明：`xsser -h`（或 `man xsser`）
  3. 執行：`xsser http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://xsser.03c8.net/

### `zaproxy`
- 尋找 web 應用弱點的測試工具
- **提供指令:** `owasp-zap`, `zaproxy`
- **步驟:**
  1. 安裝：`sudo apt install -y zaproxy`
  2. 看說明：`zaproxy -h`（或 `man zaproxy`）
  3. 執行：`zaproxy http://<NODE_IP>:30080` — 對你擁有的 web 服務執行
- 文件｜Docs: https://github.com/zaproxy/zaproxy


## 04 · 資料庫評估  (`kali-tools-database`)

### `jsql-injection`
- 自動資料庫注入的 Java 工具
- **提供指令:** `jsql`, `jsql-injection`
- **步驟:**
  1. 安裝：`sudo apt install -y jsql-injection`
  2. 看說明：`jsql-injection -h`（或 `man jsql-injection`）
  3. 執行：`jsql-injection <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- 文件｜Docs: https://github.com/ron190/jsql-injection

### `mdbtools`
- JET / MS Access 資料庫（MDB）工具
- **提供指令:** `mdb-array`, `mdb-count`, `mdb-export`, `mdb-header`, `mdb-hexdump`, `mdb-import`, `mdb-json`, `mdb-parsecsv`, `mdb-prop`, `mdb-queries`, `mdb-schema`, `mdb-sql`, `mdb-tables`, `mdb-ver`
- **步驟:**
  1. 安裝：`sudo apt install -y mdbtools`
  2. 看說明：`mdb-sql -h`（或 `man mdb-sql`）
  3. 執行：`mdb-sql <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- 文件｜Docs: https://github.com/mdbtools/mdbtools

### `oscanner`
- Oracle 評估框架
- **提供指令:** `oscanner`
- **步驟:**
  1. 安裝：`sudo apt install -y oscanner`
  2. 看說明：`oscanner -h`（或 `man oscanner`）
  3. 執行：`oscanner <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- 文件｜Docs: http://www.cqure.net/wp/tools/database/oscanner/

### `sidguesser`
- 對 Oracle 資料庫猜測 SID
- **提供指令:** `sidguess`
- **步驟:**
  1. 安裝：`sudo apt install -y sidguesser`
  2. 看說明：`sidguess -h`（或 `man sidguess`）
  3. 執行：`sidguess <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- 文件｜Docs: http://www.cqure.net/wp/tools/database/sidguesser/

### `sqlitebrowser`
- SQLite 資料庫的 GUI 編輯器
- **提供指令:** `sqlitebrowser`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlitebrowser`
  2. 看說明：`sqlitebrowser -h`（或 `man sqlitebrowser`）
  3. 執行：`sqlitebrowser <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- 文件｜Docs: https://sqlitebrowser.org/

### `sqlmap` ✓ verified on VM
- 自動化 SQL 注入工具
- **提供指令:** `sqlmap`, `sqlmapapi`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlmap`
  2. 看說明：`sqlmap -h`（或 `man sqlmap`）
  3. 執行：`sqlmap <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- **實際 --help（已在 VM 驗證）:**
  ```
          ___
         __H__
   ___ ___[)]_____ ___ ___  {1.10.9#stable}
  |_ -| . [(]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- 文件｜Docs: https://sqlmap.org/

### `sqlninja`
- SQL Server 注入與接管工具
- **提供指令:** `sqlninja`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlninja`
  2. 看說明：`sqlninja -h`（或 `man sqlninja`）
  3. 執行：`sqlninja <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- 文件｜Docs: https://sqlninja.sourceforge.net/

### `sqlsus`
- MySQL 注入工具
- **提供指令:** `sqlsus`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlsus`
  2. 看說明：`sqlsus -h`（或 `man sqlsus`）
  3. 執行：`sqlsus <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- 文件｜Docs: https://sqlsus.sourceforge.net/

### `tnscmd10g`
- 探測 Oracle tnslsnr 程序的工具
- **提供指令:** `tnscmd10g`
- **步驟:**
  1. 安裝：`sudo apt install -y tnscmd10g`
  2. 看說明：`tnscmd10g -h`（或 `man tnscmd10g`）
  3. 執行：`tnscmd10g <NODE_IP>` — 評估你擁有的資料庫（5432 應被擋）
- 文件｜Docs: http://www.red-database-security.com/


## 05 · 密碼攻擊  (`kali-tools-passwords`)

### `cewl` ✓ verified on VM
- 自訂字典產生器
- **提供指令:** `cewl`, `fab-cewl`
- **步驟:**
  1. 安裝：`sudo apt install -y cewl`
  2. 看說明：`cewl -h`（或 `man cewl`）
  3. 執行：`cewl <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  CeWL 6.2.1 (More Fixes) Robin Wood (<email>) (https://digi.ninja/)
  Usage: cewl [OPTIONS] ... <url>
  
      OPTIONS:
  	-h, --help: Show help.
  	-k, --keep: Keep the downloaded file.
  ```
- 文件｜Docs: https://github.com/digininja/CeWL

### `chntpw`
- NT SAM 密碼救援工具
- **提供指令:** `chntpw`, `reged`, `sampasswd`, `samunlock`, `samusrgrp`
- **步驟:**
  1. 安裝：`sudo apt install -y chntpw`
  2. 看說明：`chntpw -h`（或 `man chntpw`）
  3. 執行：`chntpw <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://pogostick.net/~pnh/ntpasswd/

### `cisco-auditing-tool`
- 掃描 Cisco 路由器弱點
- **提供指令:** `CAT`
- **步驟:**
  1. 安裝：`sudo apt install -y cisco-auditing-tool`
  2. 看說明：`CAT -h`（或 `man CAT`）
  3. 執行：`CAT <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://www.scrypt.net/

### `crackle`
- 破解與解密 BLE 加密
- **提供指令:** `crackle`
- **步驟:**
  1. 安裝：`sudo apt install -y crackle`
  2. 看說明：`crackle -h`（或 `man crackle`）
  3. 執行：`crackle <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/mikeryan/crackle

### `creddump7`
- 從 Windows registry hive 擷取憑證與機密的 Python 工具
- **提供指令:** `creddump7`
- **步驟:**
  1. 安裝：`sudo apt install -y creddump7`
  2. 看說明：`creddump7 -h`（或 `man creddump7`）
  3. 執行：`creddump7 <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/CiscoCXSecurity/creddump7

### `crunch` ✓ verified on VM
- 字典產生工具
- **提供指令:** `crunch`
- **步驟:**
  1. 安裝：`sudo apt install -y crunch`
  2. 看說明：`crunch -h`（或 `man crunch`）
  3. 執行：`crunch <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  crunch version 3.6
  
  Crunch can create a wordlist based on criteria you specify.  The output from crunch can be sent to the screen, file, or to another program.
  
  Usage: crunch <min> <max> [options]
  where min and max are numbers
  ```
- 文件｜Docs: http://sourceforge.net/projects/crunch-wordlist/

### `fcrackzip`
- zip 壓縮檔密碼破解器
- **提供指令:** `fcrackzip`, `fcrackzipinfo`
- **步驟:**
  1. 安裝：`sudo apt install -y fcrackzip`
  2. 看說明：`fcrackzip -h`（或 `man fcrackzip`）
  3. 執行：`fcrackzip <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://oldhome.schmorp.de/marc/fcrackzip.html

### `freerdp3-x11`
- Windows 終端服務的 RDP 用戶端（X11 轉接套件）
- **提供指令:** `xfreerdp3`
- **步驟:**
  1. 安裝：`sudo apt install -y freerdp3-x11`
  2. 看說明：`xfreerdp3 -h`（或 `man xfreerdp3`）
  3. 執行：`xfreerdp3 <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://www.freerdp.com/

### `gpp-decrypt`
- 群組原則偏好設定解密器
- **提供指令:** `gpp-decrypt`
- **步驟:**
  1. 安裝：`sudo apt install -y gpp-decrypt`
  2. 看說明：`gpp-decrypt -h`（或 `man gpp-decrypt`）
  3. 執行：`gpp-decrypt <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://carnal0wnage.attackresearch.com/2012/10/group-policy-preferences-and-getting.html

### `hash-identifier` ✓ verified on VM
- 辨識雜湊類型的工具
- **提供指令:** `hash-identifier`
- **步驟:**
  1. 安裝：`sudo apt install -y hash-identifier`
  2. 看說明：`hash-identifier -h`（或 `man hash-identifier`）
  3. 執行：`hash-identifier <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
     #########################################################################
     #     __  __                     __           ______    _____           #
     #    /\ \/\ \                   /\ \         /\__  _\  /\  _ `\         #
     #    \ \ \_\ \     __      ____ \ \ \___     \/_/\ \/  \ \ \/\ \        #
     #     \ \  _  \  /'__`\   / ,__\ \ \  _ `\      \ \ \   \ \ \ \ \       #
     #      \ \ \ \ \/\ \_\ \_/\__, `\ \ \ \ \ \      \_\ \__ \ \ \_\ \      #
  ```
- 文件｜Docs: https://github.com/blackploit/hash-identifier

### `hashcat` ✓ verified on VM
- 世上最快、最先進的密碼還原工具
- **提供指令:** `hashcat`
- **步驟:**
  1. 安裝：`sudo apt install -y hashcat`
  2. 看說明：`hashcat -h`（或 `man hashcat`）
  3. 執行：`hashcat <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  hashcat (v7.1.2) starting in help mode
  
  Usage: hashcat [options]... hash|hashfile|hccapxfile [dictionary|mask|directory]...
  
  - [ Options ] -
  ```
- 文件｜Docs: https://hashcat.net/hashcat/

### `hashcat-utils`
- 進階密碼破解的小工具集
- **步驟:**
  1. 安裝：`sudo apt install -y hashcat-utils`
  2. 看說明：`hashcat-utils -h`（或 `man hashcat-utils`）
  3. 執行：`hashcat-utils <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/hashcat/hashcat-utils/

### `hashid` ✓ verified on VM
- 辨識用於加密資料的各種雜湊類型
- **提供指令:** `hashid`
- **步驟:**
  1. 安裝：`sudo apt install -y hashid`
  2. 看說明：`hashid -h`（或 `man hashid`）
  3. 執行：`hashid <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  usage: hashid.py [-h] [-e] [-m] [-j] [-o FILE] [--version] INPUT
  
  Identify the different types of hashes used to encrypt data
  
  positional arguments:
    INPUT               input to analyze (default: STDIN)
  ```
- 文件｜Docs: https://psypanda.github.io/hashID/

### `hydra` ✓ verified on VM
- 非常快速的網路登入破解器
- **提供指令:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **步驟:**
  1. 安裝：`sudo apt install -y hydra`
  2. 看說明：`hydra -h`（或 `man hydra`）
  3. 執行：`hydra <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  Hydra v9.7 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).
  
  hydra: invalid option -- '-'
  ```
- 文件｜Docs: https://github.com/vanhauser-thc/thc-hydra

### `hydra-gtk`
- 非常快速的網路登入破解器（GTK+ GUI）
- **提供指令:** `xhydra`
- **步驟:**
  1. 安裝：`sudo apt install -y hydra-gtk`
  2. 看說明：`xhydra -h`（或 `man xhydra`）
  3. 執行：`xhydra <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/vanhauser-thc/thc-hydra

### `john` ✓ verified on VM
- 主動式密碼破解工具
- **提供指令:** `base64conv`, `bitlocker2john`, `calc_stat`, `cprepair`, `dmg2john`, `eapmd5tojohn`, `genmkvpwd`, `gpg2john`, `hccap2john`, `john`, `keepass2john`, `mailer`, `mkvcalcproba`, `putty2john`, `racf2john`, `rar2john`, `raw2dyna`, `SIPdump`, `tgtsnarf`, `uaf2john`, `unafs`, `undrop`, `unique`, `unshadow`, `vncpcap2john`, `wpapcap2john`, `zip2john`
- **步驟:**
  1. 安裝：`sudo apt install -y john`
  2. 看說明：`john -h`（或 `man john`）
  3. 執行：`john <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  Created directory: /home/kali/.john
  John the Ripper 1.9.0-jumbo-1+bleeding-aec1328d6c 2021-11-02 10:45:52 +0100 OMP [linux-gnu 64-bit aarch64 ASIMD AC]
  Copyright (c) 1996-2021 by Solar Designer and others
  Homepage: https://www.openwall.com/john/
  
  Usage: john [OPTIONS] [PASSWORD-FILES]
  ```
- 文件｜Docs: https://github.com/openwall/john

### `johnny`
- John the Ripper 的 GUI
- **提供指令:** `johnny`
- **步驟:**
  1. 安裝：`sudo apt install -y johnny`
  2. 看說明：`johnny -h`（或 `man johnny`）
  3. 執行：`johnny <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://openwall.info/wiki/john/johnny

### `kali-tools-gpu`
- Kali 的 GPU 工具
- **步驟:**
  1. 安裝：`sudo apt install -y kali-tools-gpu`
  2. 看說明：`kali-tools-gpu -h`（或 `man kali-tools-gpu`）
  3. 執行：`kali-tools-gpu <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://www.kali.org

### `maskprocessor`
- 可依位置設定字元集的高效字詞產生器
- **提供指令:** `mp32`, `mp64`
- **步驟:**
  1. 安裝：`sudo apt install -y maskprocessor`
  2. 看說明：`mp32 -h`（或 `man mp32`）
  3. 執行：`mp32 <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/hashcat/maskprocessor

### `medusa` ✓ verified on VM
- 快速、平行、模組化的網路服務登入暴力破解器
- **提供指令:** `medusa`
- **步驟:**
  1. 安裝：`sudo apt install -y medusa`
  2. 看說明：`medusa -h`（或 `man medusa`）
  3. 執行：`medusa <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  medusa: invalid option -- '-'
  CRITICAL: Unknown error processing command-line options.
  ALERT: User logon information must be supplied.
  Medusa v2.3 [http://www.foofus.net] (C) JoMo-Kun / Foofus Networks <<email>>
  ```
- 文件｜Docs: http://foofus.net/?page_id=51

### `mimikatz`
- 利用 Windows 管理權限明文顯示密碼
- **提供指令:** `mimikatz`
- **步驟:**
  1. 安裝：`sudo apt install -y mimikatz`
  2. 看說明：`mimikatz -h`（或 `man mimikatz`）
  3. 執行：`mimikatz <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://blog.gentilkiwi.com/mimikatz

### `ncrack` ✓ verified on VM
- 高速網路驗證破解工具
- **提供指令:** `ncrack`
- **步驟:**
  1. 安裝：`sudo apt install -y ncrack`
  2. 看說明：`ncrack -h`（或 `man ncrack`）
  3. 執行：`ncrack <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  Ncrack 0.7 ( http://ncrack.org )
  Usage: ncrack [Options] {target and service specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iX <inputfilename>: Input from Nmap's -oX XML output format
  ```
- 文件｜Docs: https://nmap.org/ncrack/

### `onesixtyone` ✓ verified on VM
- 快速簡單的 SNMP 掃描器
- **提供指令:** `onesixtyone`
- **步驟:**
  1. 安裝：`sudo apt install -y onesixtyone`
  2. 看說明：`onesixtyone -h`（或 `man onesixtyone`）
  3. 執行：`onesixtyone <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  onesixtyone: invalid option -- '-'
  onesixtyone 0.3.3 [options] <host> <community>
    -c <communityfile> file with community names to try
    -i <inputfile>     file with target hosts
    -o <outputfile>    output log
    -p                 specify an alternate destination SNMP port
  ```
- 文件｜Docs: https://github.com/trailofbits/onesixtyone

### `ophcrack`
- 用彩虹表破解 Windows 密碼（GUI）
- **提供指令:** `ophcrack`
- **步驟:**
  1. 安裝：`sudo apt install -y ophcrack`
  2. 看說明：`ophcrack -h`（或 `man ophcrack`）
  3. 執行：`ophcrack <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://ophcrack.sourceforge.net/

### `ophcrack-cli`
- 用彩虹表破解 Windows 密碼（命令列）
- **提供指令:** `ophcrack-cli`
- **步驟:**
  1. 安裝：`sudo apt install -y ophcrack-cli`
  2. 看說明：`ophcrack-cli -h`（或 `man ophcrack-cli`）
  3. 執行：`ophcrack-cli <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://ophcrack.sourceforge.net/

### `pack`
- 密碼分析與破解工具組
- **提供指令:** `dictstat`, `maskgen`, `policygen`, `rulegen`, `statsgen`
- **步驟:**
  1. 安裝：`sudo apt install -y pack`
  2. 看說明：`maskgen -h`（或 `man maskgen`）
  3. 執行：`maskgen <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/Hydraze/pack

### `pack2`
- 密碼分析與破解工具組 2
- **提供指令:** `pack2`
- **步驟:**
  1. 安裝：`sudo apt install -y pack2`
  2. 看說明：`pack2 -h`（或 `man pack2`）
  3. 執行：`pack2 <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/hops/pack2

### `passing-the-hash`
- 以密碼雜湊作為驗證輸入的修補工具
- **提供指令:** `pth-curl`, `pth-net`, `pth-rpcclient`, `pth-smbclient`, `pth-smbget`, `pth-sqsh`, `pth-winexe`, `pth-wmic`, `pth-wmis`
- **步驟:**
  1. 安裝：`sudo apt install -y passing-the-hash`
  2. 看說明：`pth-net -h`（或 `man pth-net`）
  3. 執行：`pth-net <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://passing-the-hash.blogspot.fr

### `patator` ✓ verified on VM
- 多用途暴力破解器
- **提供指令:** `patator`
- **步驟:**
  1. 安裝：`sudo apt install -y patator`
  2. 看說明：`patator -h`（或 `man patator`）
  3. 執行：`patator <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  Patator 1.1.0 (https://github.com/lanjelot/patator) with Python-3.14.8
  Usage: patator module --help
  
  Available modules:
    + ftp_login     : Brute-force FTP
    + ssh_login     : Brute-force SSH
  ```
- 文件｜Docs: https://github.com/lanjelot/patator

### `pdfcrack`
- PDF 檔密碼破解器
- **提供指令:** `pdfcrack`
- **步驟:**
  1. 安裝：`sudo apt install -y pdfcrack`
  2. 看說明：`pdfcrack -h`（或 `man pdfcrack`）
  3. 執行：`pdfcrack <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://pdfcrack.sf.net

### `pipal`
- 對密碼傾印做統計分析
- **提供指令:** `pipal`
- **步驟:**
  1. 安裝：`sudo apt install -y pipal`
  2. 看說明：`pipal -h`（或 `man pipal`）
  3. 執行：`pipal <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://www.digininja.org/projects/pipal.php

### `polenum`
- 擷取 Windows 系統的密碼政策
- **提供指令:** `polenum`
- **步驟:**
  1. 安裝：`sudo apt install -y polenum`
  2. 看說明：`polenum -h`（或 `man polenum`）
  3. 執行：`polenum <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/Wh1t3Fox/polenum/

### `rarcrack`
- rar 壓縮檔密碼破解器
- **提供指令:** `rarcrack`
- **步驟:**
  1. 安裝：`sudo apt install -y rarcrack`
  2. 看說明：`rarcrack -h`（或 `man rarcrack`）
  3. 執行：`rarcrack <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://rarcrack.sourceforge.net/

### `rcracki-mt`
- 支援混合與索引表的 rcrack 版本
- **提供指令:** `rcracki_mt`
- **步驟:**
  1. 安裝：`sudo apt install -y rcracki-mt`
  2. 看說明：`rcracki_mt -h`（或 `man rcracki_mt`）
  3. 執行：`rcracki_mt <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://freerainbowtables.com/

### `rsmangler`
- 字典變形工具
- **提供指令:** `rsmangler`
- **步驟:**
  1. 安裝：`sudo apt install -y rsmangler`
  2. 看說明：`rsmangler -h`（或 `man rsmangler`）
  3. 執行：`rsmangler <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://digi.ninja/projects/rsmangler.php

### `samdump2`
- 傾印 Windows 2k/NT/XP 密碼雜湊
- **提供指令:** `samdump2`
- **步驟:**
  1. 安裝：`sudo apt install -y samdump2`
  2. 看說明：`samdump2 -h`（或 `man samdump2`）
  3. 執行：`samdump2 <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://ophcrack.sourceforge.net/

### `seclists`
- 多種類型安全清單的集合
- **提供指令:** `seclists`
- **步驟:**
  1. 安裝：`sudo apt install -y seclists`
  2. 看說明：`seclists -h`（或 `man seclists`）
  3. 執行：`seclists <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/danielmiessler/SecLists

### `sipcrack`
- SIP 登入傾印/破解器
- **提供指令:** `sipcrack`, `sipdump`
- **步驟:**
  1. 安裝：`sudo apt install -y sipcrack`
  2. 看說明：`sipcrack -h`（或 `man sipcrack`）
  3. 執行：`sipcrack <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://www.remote-exploit.org/codes_sipcrack.html

### `sipvicious`
- 稽核 SIP VoIP 系統的工具
- **提供指令:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **步驟:**
  1. 安裝：`sudo apt install -y sipvicious`
  2. 看說明：`svmap -h`（或 `man svmap`）
  3. 執行：`svmap <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/EnableSecurity/sipvicious

### `smbmap` ✓ verified on VM
- 好用的 SMB 列舉工具
- **提供指令:** `smbmap`
- **步驟:**
  1. 安裝：`sudo apt install -y smbmap`
  2. 看說明：`smbmap -h`（或 `man smbmap`）
  3. 執行：`smbmap <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- **實際 --help（已在 VM 驗證）:**
  ```
  usage: smbmap [-h] (-H HOST | --host-file FILE) [-u USERNAME] [-p PASSWORD |
                --prompt] [-k] [--no-pass] [--dc-ip IP or Host] [-s SHARE]
                [-d DOMAIN] [-P PORT] [-v] [--signing] [--admin] [--no-banner]
                [--no-color] [--no-update] [--timeout SCAN_TIMEOUT] [-x COMMAND]
                [--mode CMDMODE] [-L | -r [PATH]] [-g FILE | --csv FILE]
                [--dir-only] [--no-write-check] [-q] [--depth DEPTH]
  ```
- 文件｜Docs: https://github.com/ShawnDEvans/smbmap

### `statsprocessor`
- 以每位置 Markov 鏈為基礎的字詞產生器
- **提供指令:** `sp32`, `sp64`
- **步驟:**
  1. 安裝：`sudo apt install -y statsprocessor`
  2. 看說明：`sp32 -h`（或 `man sp32`）
  3. 執行：`sp32 <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/hashcat/statsprocessor

### `sucrack`
- 多執行緒 su 暴力破解器
- **提供指令:** `sucrack`
- **步驟:**
  1. 安裝：`sudo apt install -y sucrack`
  2. 看說明：`sucrack -h`（或 `man sucrack`）
  3. 執行：`sucrack <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://labs.portcullis.co.uk/tools/sucrack/

### `thc-pptp-bruter`
- THC PPTP 暴力破解
- **提供指令:** `thc-pptp-bruter`
- **步驟:**
  1. 安裝：`sudo apt install -y thc-pptp-bruter`
  2. 看說明：`thc-pptp-bruter -h`（或 `man thc-pptp-bruter`）
  3. 執行：`thc-pptp-bruter <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: http://www.thc.org/releases.php

### `truecrack`
- TrueCrypt 磁區密碼暴力破解器
- **提供指令:** `truecrack`
- **步驟:**
  1. 安裝：`sudo apt install -y truecrack`
  2. 看說明：`truecrack -h`（或 `man truecrack`）
  3. 執行：`truecrack <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://github.com/lvaccaro/truecrack

### `twofi`
- Twitter 關鍵字字典
- **提供指令:** `twofi`
- **步驟:**
  1. 安裝：`sudo apt install -y twofi`
  2. 看說明：`twofi -h`（或 `man twofi`）
  3. 執行：`twofi <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://www.digininja.org/projects/twofi.php

### `wordlists`
- 內含 rockyou 字典
- **提供指令:** `wordlists`
- **步驟:**
  1. 安裝：`sudo apt install -y wordlists`
  2. 看說明：`wordlists -h`（或 `man wordlists`）
  3. 執行：`wordlists <hash-or-wordlist>` — 破解你合法持有的雜湊/用自有字典
- 文件｜Docs: https://www.kali.org


## 06 · 無線攻擊  (`kali-tools-wireless`)

### `kali-tools-802-11`
- Kali 的 802.11 攻擊工具
- **步驟:**
  1. 安裝：`sudo apt install -y kali-tools-802-11`
  2. 看說明：`kali-tools-802-11 -h`（或 `man kali-tools-802-11`）
  3. 執行：`sudo kali-tools-802-11 wlan0` — 需要無線網卡（VM 預設沒有）
- 文件｜Docs: https://www.kali.org

### `kali-tools-bluetooth`
- Kali 的藍牙攻擊工具
- **步驟:**
  1. 安裝：`sudo apt install -y kali-tools-bluetooth`
  2. 看說明：`kali-tools-bluetooth -h`（或 `man kali-tools-bluetooth`）
  3. 執行：`sudo kali-tools-bluetooth wlan0` — 需要無線網卡（VM 預設沒有）
- 文件｜Docs: https://www.kali.org

### `kali-tools-rfid`
- Kali 的 RFID 工具
- **步驟:**
  1. 安裝：`sudo apt install -y kali-tools-rfid`
  2. 看說明：`kali-tools-rfid -h`（或 `man kali-tools-rfid`）
  3. 執行：`sudo kali-tools-rfid wlan0` — 需要無線網卡（VM 預設沒有）
- 文件｜Docs: https://www.kali.org

### `kali-tools-sdr`
- Kali 的 SDR 工具
- **步驟:**
  1. 安裝：`sudo apt install -y kali-tools-sdr`
  2. 看說明：`kali-tools-sdr -h`（或 `man kali-tools-sdr`）
  3. 執行：`sudo kali-tools-sdr wlan0` — 需要無線網卡（VM 預設沒有）
- 文件｜Docs: https://www.kali.org

### `rfcat`
- sub-GHz 無線電瑞士刀
- **提供指令:** `rfcat`, `rfcat_bootloader`, `rfcat_msfrelay`, `rfcat_server`
- **步驟:**
  1. 安裝：`sudo apt install -y rfcat`
  2. 看說明：`rfcat -h`（或 `man rfcat`）
  3. 執行：`sudo rfcat wlan0` — 需要無線網卡（VM 預設沒有）
- 文件｜Docs: https://github.com/atlas0fd00m/rfcat

### `rfkill`
- 啟用/停用無線裝置的工具
- **提供指令:** `rfkill`
- **步驟:**
  1. 安裝：`sudo apt install -y rfkill`
  2. 看說明：`rfkill -h`（或 `man rfkill`）
  3. 執行：`sudo rfkill wlan0` — 需要無線網卡（VM 預設沒有）
- 文件｜Docs: https://github.com/util-linux/util-linux

### `sakis3g`
- 建立 3G 連線的工具
- **提供指令:** `sakis3g`
- **步驟:**
  1. 安裝：`sudo apt install -y sakis3g`
  2. 看說明：`sakis3g -h`（或 `man sakis3g`）
  3. 執行：`sudo sakis3g wlan0` — 需要無線網卡（VM 預設沒有）
- 文件｜Docs: http://www.sakis3g.org

### `wireshark`
- 網路流量分析器（圖形介面）
- **提供指令:** `wireshark`
- **步驟:**
  1. 安裝：`sudo apt install -y wireshark`
  2. 看說明：`wireshark -h`（或 `man wireshark`）
  3. 執行：`sudo wireshark wlan0` — 需要無線網卡（VM 預設沒有）
- 文件｜Docs: https://www.wireshark.org/


## 06b · 802.11 Wi-Fi 攻擊  (`kali-tools-802-11`)

### `aircrack-ng`
- 無線 WEP/WPA 破解工具組
- **提供指令:** `airbase-ng`, `aircrack-ng`, `airdecap-ng`, `airdecloak-ng`, `aireplay-ng`, `airmon-ng`, `airodump-ng`, `airodump-ng-oui-update`, `airolib-ng`, `airserv-ng`, `airtun-ng`, `airventriloquist-ng`, `besside-ng`, `besside-ng-crawler`, `buddy-ng`, `dcrack`, `easside-ng`, `ivstools`, `kstats`, `makeivs-ng`, `packetforge-ng`, `tkiptun-ng`, `wesside-ng`, `wpaclean`
- **步驟:**
  1. 安裝：`sudo apt install -y aircrack-ng`
  2. 看說明：`aircrack-ng -h`（或 `man aircrack-ng`）
  3. 執行：`sudo aircrack-ng wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://www.aircrack-ng.org/

### `airgeddon`
- 稽核無線網路的多功能 bash 腳本
- **提供指令:** `airgeddon`
- **步驟:**
  1. 安裝：`sudo apt install -y airgeddon`
  2. 看說明：`airgeddon -h`（或 `man airgeddon`）
  3. 執行：`sudo airgeddon wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/v1s1t0r1sh3r3/airgeddon

### `asleap`
- 利用 Cisco LEAP 網路的工具
- **提供指令:** `asleap`, `genkeys`
- **步驟:**
  1. 安裝：`sudo apt install -y asleap`
  2. 看說明：`asleap -h`（或 `man asleap`）
  3. 執行：`sudo asleap wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://www.willhackforsushi.com/

### `bully`
- 以 C 撰寫的 WPS 暴力破解實作
- **提供指令:** `bully`
- **步驟:**
  1. 安裝：`sudo apt install -y bully`
  2. 看說明：`bully -h`（或 `man bully`）
  3. 執行：`sudo bully wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/kimocoder/bully

### `cowpatty`
- WPA 字典暴力破解
- **提供指令:** `cowpatty`, `genpmk`
- **步驟:**
  1. 安裝：`sudo apt install -y cowpatty`
  2. 看說明：`cowpatty -h`（或 `man cowpatty`）
  3. 執行：`sudo cowpatty wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://www.willhackforsushi.com/?page_id=50

### `eapmd5pass`
- 擷取並破解 EAP-MD5 的工具
- **提供指令:** `eapmd5pass`
- **步驟:**
  1. 安裝：`sudo apt install -y eapmd5pass`
  2. 看說明：`eapmd5pass -h`（或 `man eapmd5pass`）
  3. 執行：`sudo eapmd5pass wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://www.willhackforsushi.com/?page_id=67

### `fern-wifi-cracker`
- 自動化 Wi-Fi 破解器
- **提供指令:** `fern-wifi-cracker`
- **步驟:**
  1. 安裝：`sudo apt install -y fern-wifi-cracker`
  2. 看說明：`fern-wifi-cracker -h`（或 `man fern-wifi-cracker`）
  3. 執行：`sudo fern-wifi-cracker wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/savio-code/fern-wifi-cracker

### `freeradius-wpe`
- FreeRadius 無線 Pwn 版
- **提供指令:** `freeradius-wpe`
- **步驟:**
  1. 安裝：`sudo apt install -y freeradius-wpe`
  2. 看說明：`freeradius-wpe -h`（或 `man freeradius-wpe`）
  3. 執行：`sudo freeradius-wpe wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://www.freeradius.org/

### `hashcat` ✓ verified on VM
- 世上最快、最先進的密碼還原工具
- **提供指令:** `hashcat`
- **步驟:**
  1. 安裝：`sudo apt install -y hashcat`
  2. 看說明：`hashcat -h`（或 `man hashcat`）
  3. 執行：`sudo hashcat wlan0` — 需要 monitor 模式網卡
- **實際 --help（已在 VM 驗證）:**
  ```
  hashcat (v7.1.2) starting in help mode
  
  Usage: hashcat [options]... hash|hashfile|hccapxfile [dictionary|mask|directory]...
  
  - [ Options ] -
  ```
- 文件｜Docs: https://hashcat.net/hashcat/

### `hostapd-wpe`
- 協助 AP 偽冒攻擊的 hostapd 修改版
- **提供指令:** `hostapd-wpe`, `hostapd-wpe_cli`
- **步驟:**
  1. 安裝：`sudo apt install -y hostapd-wpe`
  2. 看說明：`hostapd-wpe -h`（或 `man hostapd-wpe`）
  3. 執行：`sudo hostapd-wpe wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/aircrack-ng/aircrack-ng/tree/master/patches/wpe

### `iw`
- 設定 Linux 無線裝置的工具
- **提供指令:** `iw`
- **步驟:**
  1. 安裝：`sudo apt install -y iw`
  2. 看說明：`iw -h`（或 `man iw`）
  3. 執行：`sudo iw wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://wireless.wiki.kernel.org/en/users/documentation/iw

### `kismet`
- 無線網路與裝置偵測器（中繼套件）
- **步驟:**
  1. 安裝：`sudo apt install -y kismet`
  2. 看說明：`kismet -h`（或 `man kismet`）
  3. 執行：`sudo kismet wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://www.kismetwireless.net/

### `macchanger`
- 操作網卡 MAC 位址的工具
- **提供指令:** `macchanger`
- **步驟:**
  1. 安裝：`sudo apt install -y macchanger`
  2. 看說明：`macchanger -h`（或 `man macchanger`）
  3. 執行：`sudo macchanger wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/alobbs/macchanger

### `mdk3`
- IEEE 802.11 無線攻擊工具
- **提供指令:** `mdk3`
- **步驟:**
  1. 安裝：`sudo apt install -y mdk3`
  2. 看說明：`mdk3 -h`（或 `man mdk3`）
  3. 執行：`sudo mdk3 wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/aircrack-ng/mdk3

### `mdk4`
- IEEE 802.11 無線攻擊工具
- **提供指令:** `mdk4`
- **步驟:**
  1. 安裝：`sudo apt install -y mdk4`
  2. 看說明：`mdk4 -h`（或 `man mdk4`）
  3. 執行：`sudo mdk4 wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/aircrack-ng/mdk4

### `pixiewps`
- 離線 WPS 暴力破解工具
- **提供指令:** `pixiewps`
- **步驟:**
  1. 安裝：`sudo apt install -y pixiewps`
  2. 看說明：`pixiewps -h`（或 `man pixiewps`）
  3. 執行：`sudo pixiewps wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/wiire/pixiewps

### `reaver`
- 針對 WPS PIN 的暴力破解攻擊工具
- **提供指令:** `reaver`, `wash`
- **步驟:**
  1. 安裝：`sudo apt install -y reaver`
  2. 看說明：`reaver -h`（或 `man reaver`）
  3. 執行：`sudo reaver wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/t6x/reaver-wps-fork-t6x

### `wifi-honey`
- Wi-Fi 蜜罐
- **提供指令:** `wifi-honey`
- **步驟:**
  1. 安裝：`sudo apt install -y wifi-honey`
  2. 看說明：`wifi-honey -h`（或 `man wifi-honey`）
  3. 執行：`sudo wifi-honey wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://www.digininja.org/projects/wifi_honey.php

### `wifite`
- 以 aircrack-ng 自動化無線稽核的 Python 腳本
- **提供指令:** `wifite`
- **步驟:**
  1. 安裝：`sudo apt install -y wifite`
  2. 看說明：`wifite -h`（或 `man wifite`）
  3. 執行：`sudo wifite wlan0` — 需要 monitor 模式網卡
- 文件｜Docs: https://github.com/kimocoder/wifite2


## 06c · 藍牙攻擊  (`kali-tools-bluetooth`)

### `blue-hydra`
- 藍牙裝置探索服務
- **提供指令:** `blue_hydra`, `rfkill-reset`, `test-discovery`
- **步驟:**
  1. 安裝：`sudo apt install -y blue-hydra`
  2. 看說明：`blue_hydra -h`（或 `man blue_hydra`）
  3. 執行：`sudo blue_hydra hci0` — 需要藍牙介面
- 文件｜Docs: https://github.com/ZeroChaos-/blue_hydra

### `bluelog`
- 藍牙掃描與紀錄器
- **提供指令:** `bluelog`
- **步驟:**
  1. 安裝：`sudo apt install -y bluelog`
  2. 看說明：`bluelog -h`（或 `man bluelog`）
  3. 執行：`sudo bluelog hci0` — 需要藍牙介面
- 文件｜Docs: http://www.digifail.com/software/bluelog.shtml

### `blueranger`
- 定位藍牙裝置的簡易 Bash 腳本
- **提供指令:** `blueranger`
- **步驟:**
  1. 安裝：`sudo apt install -y blueranger`
  2. 看說明：`blueranger -h`（或 `man blueranger`）
  3. 執行：`sudo blueranger hci0` — 需要藍牙介面
- 文件｜Docs: http://www.hackfromacave.com/projects/blueranger.html

### `bluesnarfer`
- Bluesnarfing 工具
- **提供指令:** `bluesnarfer`
- **步驟:**
  1. 安裝：`sudo apt install -y bluesnarfer`
  2. 看說明：`bluesnarfer -h`（或 `man bluesnarfer`）
  3. 執行：`sudo bluesnarfer hci0` — 需要藍牙介面
- 文件｜Docs: http://www.alighieri.org/

### `bluez`
- 藍牙工具與守護程式
- **提供指令:** `bluemoon`, `bluetoothctl`, `bluetoothd`, `btattach`, `btmgmt`, `btmon`, `ciptool`, `gatttool`, `hciattach`, `hciconfig`, `hcitool`, `hex2hcd`, `l2ping`, `l2test`, `mpris-proxy`, `obexctl`, `rctest`, `rfcomm`, `sdptool`
- **步驟:**
  1. 安裝：`sudo apt install -y bluez`
  2. 看說明：`btmon -h`（或 `man btmon`）
  3. 執行：`sudo btmon hci0` — 需要藍牙介面
- 文件｜Docs: http://www.bluez.org

### `btscanner`
- 以 ncurses 為介面的藍牙裝置掃描器
- **提供指令:** `btscanner`
- **步驟:**
  1. 安裝：`sudo apt install -y btscanner`
  2. 看說明：`btscanner -h`（或 `man btscanner`）
  3. 執行：`sudo btscanner hci0` — 需要藍牙介面
- 文件｜Docs: https://salsa.debian.org/pkg-security-team/btscanner

### `crackle`
- 破解與解密 BLE 加密
- **提供指令:** `crackle`
- **步驟:**
  1. 安裝：`sudo apt install -y crackle`
  2. 看說明：`crackle -h`（或 `man crackle`）
  3. 執行：`sudo crackle hci0` — 需要藍牙介面
- 文件｜Docs: https://github.com/mikeryan/crackle

### `redfang`
- 定位不可被探索的藍牙裝置
- **提供指令:** `fang`
- **步驟:**
  1. 安裝：`sudo apt install -y redfang`
  2. 看說明：`fang -h`（或 `man fang`）
  3. 執行：`sudo fang hci0` — 需要藍牙介面

### `spooftooph`
- 自動偽冒或複製藍牙裝置
- **提供指令:** `spooftooph`
- **步驟:**
  1. 安裝：`sudo apt install -y spooftooph`
  2. 看說明：`spooftooph -h`（或 `man spooftooph`）
  3. 執行：`sudo spooftooph hci0` — 需要藍牙介面
- 文件｜Docs: http://www.hackfromacave.com/projects/spooftooph.html

### `ubertooth`
- 2.4 GHz 藍牙實驗用無線開發平台
- **提供指令:** `ubertooth-afh`, `ubertooth-btbr`, `ubertooth-btle`, `ubertooth-debug`, `ubertooth-dfu`, `ubertooth-ducky`, `ubertooth-dump`, `ubertooth-ego`, `ubertooth-follow`, `ubertooth-rx`, `ubertooth-scan`, `ubertooth-specan`, `ubertooth-specan-ui`, `ubertooth-util`
- **步驟:**
  1. 安裝：`sudo apt install -y ubertooth`
  2. 看說明：`ubertooth-rx -h`（或 `man ubertooth-rx`）
  3. 執行：`sudo ubertooth-rx hci0` — 需要藍牙介面
- 文件｜Docs: http://ubertooth.sourceforge.net/


## 06d · RFID/NFC 工具  (`kali-tools-rfid`)

### `proxmark3`
- Proxmark3 的韌體、燒錄器與用戶端
- **提供指令:** `proxmark3`
- **步驟:**
  1. 安裝：`sudo apt install -y proxmark3`
  2. 看說明：`proxmark3 -h`（或 `man proxmark3`）
  3. 執行：`proxmark3 -h` — 需要 RFID 讀取器硬體
- 文件｜Docs: https://github.com/RfidResearchGroup/proxmark3

### `rfdump`
- 解碼 RFID 標籤資料的工具
- **提供指令:** `rfdump`
- **步驟:**
  1. 安裝：`sudo apt install -y rfdump`
  2. 看說明：`rfdump -h`（或 `man rfdump`）
  3. 執行：`rfdump -h` — 需要 RFID 讀取器硬體
- 文件｜Docs: http://www.rfdump.org/


## 06e · 軟體定義無線電  (`kali-tools-sdr`)

### `chirp`
- 業餘無線電設定工具
- **提供指令:** `chirpc`, `chirpw`, `experttune`
- **步驟:**
  1. 安裝：`sudo apt install -y chirp`
  2. 看說明：`chirpc -h`（或 `man chirpc`）
  3. 執行：`chirpc -h` — 需要 SDR 硬體（HackRF/RTL-SDR）
- 文件｜Docs: https://chirpmyradio.com/

### `hackrf`
- 軟體定義無線電週邊（工具組）
- **提供指令:** `hackrf_biast`, `hackrf_clock`, `hackrf_cpldjtag`, `hackrf_debug`, `hackrf_info`, `hackrf_operacake`, `hackrf_spiflash`, `hackrf_sweep`, `hackrf_transfer`
- **步驟:**
  1. 安裝：`sudo apt install -y hackrf`
  2. 看說明：`hackrf_info -h`（或 `man hackrf_info`）
  3. 執行：`hackrf_info -h` — 需要 SDR 硬體（HackRF/RTL-SDR）
- 文件｜Docs: http://greatscottgadgets.com/hackrf/

### `inspectrum`
- 視覺化擷取到的無線訊號工具
- **提供指令:** `inspectrum`
- **步驟:**
  1. 安裝：`sudo apt install -y inspectrum`
  2. 看說明：`inspectrum -h`（或 `man inspectrum`）
  3. 執行：`inspectrum -h` — 需要 SDR 硬體（HackRF/RTL-SDR）
- 文件｜Docs: https://github.com/miek/inspectrum

### `kalibrate-rtl`
- 用 GSM 基地台計算本地振盪器頻率偏移
- **提供指令:** `kal`
- **步驟:**
  1. 安裝：`sudo apt install -y kalibrate-rtl`
  2. 看說明：`kal -h`（或 `man kal`）
  3. 執行：`kal -h` — 需要 SDR 硬體（HackRF/RTL-SDR）
- 文件｜Docs: https://github.com/steve-m/kalibrate-rtl

### `multimon-ng`
- 數位無線電傳輸解碼器
- **提供指令:** `multimon-ng`
- **步驟:**
  1. 安裝：`sudo apt install -y multimon-ng`
  2. 看說明：`multimon-ng -h`（或 `man multimon-ng`）
  3. 執行：`multimon-ng -h` — 需要 SDR 硬體（HackRF/RTL-SDR）
- 文件｜Docs: https://github.com/EliasOenal/multimon-ng/

### `uhd-host`
- Ettus Research 產品的通用硬體驅動（主機應用）
- **提供指令:** `rfnoc_image_builder`, `rfnoc_modtool`, `uhd_adc_self_cal`, `uhd_cal_rx_iq_balance`, `uhd_cal_tx_dc_offset`, `uhd_cal_tx_iq_balance`, `uhd_config_info`, `uhd_find_devices`, `uhd_image_loader`, `uhd_images_downloader`, `uhd_usrp_probe`, `usrp2_card_burner`, `usrpctl`
- **步驟:**
  1. 安裝：`sudo apt install -y uhd-host`
  2. 看說明：`usrpctl -h`（或 `man usrpctl`）
  3. 執行：`usrpctl -h` — 需要 SDR 硬體（HackRF/RTL-SDR）
- 文件｜Docs: https://www.ettus.com/sdr-software/uhd-usrp-hardware-driver/

### `uhd-images`
- 各種 UHD 映像檔
- **步驟:**
  1. 安裝：`sudo apt install -y uhd-images`
  2. 看說明：`uhd-images -h`（或 `man uhd-images`）
  3. 執行：`uhd-images -h` — 需要 SDR 硬體（HackRF/RTL-SDR）
- 文件｜Docs: https://www.ettus.com


## 07 · 逆向工程  (`kali-tools-reverse-engineering`)

### `apktool`
- 反編譯 Android apk 檔的工具
- **提供指令:** `apktool`
- **步驟:**
  1. 安裝：`sudo apt install -y apktool`
  2. 看說明：`apktool -h`（或 `man apktool`）
  3. 執行：`apktool ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://ibotpeaches.github.io/Apktool/

### `bytecode-viewer`
- Java 8+ Jar 與 Android APK 逆向工程套件
- **提供指令:** `bytecode-viewer`
- **步驟:**
  1. 安裝：`sudo apt install -y bytecode-viewer`
  2. 看說明：`bytecode-viewer -h`（或 `man bytecode-viewer`）
  3. 執行：`bytecode-viewer ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://github.com/Konloch/bytecode-viewer

### `clang`
- 以 LLVM 為基礎的 C/C++/Objective-C 編譯器
- **提供指令:** `clang`, `clang++`, `clang-cl`, `clang-cpp`, `clang-scan-deps`
- **步驟:**
  1. 安裝：`sudo apt install -y clang`
  2. 看說明：`clang -h`（或 `man clang`）
  3. 執行：`clang ./a-binary-you-own` — 分析你擁有的二進位

### `dex2jar`
- 處理 Android .dex 與 Java .class 檔的工具
- **提供指令:** `d2j-apk-sign`, `d2j-asm-verify`, `d2j-baksmali`, `d2j-class-version-switch`, `d2j-decrypt-string`, `d2j-dex2jar`, `d2j-dex2smali`, `d2j-dex-recompute-checksum`, `d2j-dex-weaver`, `d2j_invoke`, `d2j-jar2dex`, `d2j-jar2jasmin`, `d2j-jar-access`, `d2j-jar-weaver`, `d2j-jasmin2jar`, `d2j-smali`, `d2j-std-apk`, `dex-tools`
- **步驟:**
  1. 安裝：`sudo apt install -y dex2jar`
  2. 看說明：`d2j-smali -h`（或 `man d2j-smali`）
  3. 執行：`d2j-smali ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://github.com/pxb1988/dex2jar/tree/2.x

### `jadx`
- Dex 轉 Java 反編譯器
- **提供指令:** `jadx`, `jadx-gui`
- **步驟:**
  1. 安裝：`sudo apt install -y jadx`
  2. 看說明：`jadx -h`（或 `man jadx`）
  3. 執行：`jadx ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://github.com/skylot/jadx

### `javasnoop`
- 在本機攔截 Java 應用程式
- **提供指令:** `javasnoop`
- **步驟:**
  1. 安裝：`sudo apt install -y javasnoop`
  2. 看說明：`javasnoop -h`（或 `man javasnoop`）
  3. 執行：`javasnoop ./a-binary-you-own` — 分析你擁有的二進位

### `jd-gui`
- 圖形化 Java .class 反編譯器
- **提供指令:** `jd-gui`
- **步驟:**
  1. 安裝：`sudo apt install -y jd-gui`
  2. 看說明：`jd-gui -h`（或 `man jd-gui`）
  3. 執行：`jd-gui ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: http://jd.benow.ca/

### `metasploit-framework`
- 漏洞開發與弱點研究框架
- **提供指令:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **步驟:**
  1. 安裝：`sudo apt install -y metasploit-framework`
  2. 看說明：`msf-jsobfu -h`（或 `man msf-jsobfu`）
  3. 執行：`msf-jsobfu ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://www.metasploit.com/

### `radare2`
- 免費進階的命令列十六進位編輯器
- **提供指令:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **步驟:**
  1. 安裝：`sudo apt install -y radare2`
  2. 看說明：`radare2 -h`（或 `man radare2`）
  3. 執行：`radare2 ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://www.radare.org

### `rizin`
- 逆向工程框架與命令列工具組
- **提供指令:** `rizin`, `rz-ar`, `rz-asm`, `rz-ax`, `rz-bin`, `rz-diff`, `rz-find`, `rz-gg`, `rz-hash`, `rz-run`, `rz-sign`, `rz-test`
- **步驟:**
  1. 安裝：`sudo apt install -y rizin`
  2. 看說明：`rizin -h`（或 `man rizin`）
  3. 執行：`rizin ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://rizin.re/

### `rizin-cutter`
- 以 rizin 為核心的逆向工程平台
- **提供指令:** `cutter`
- **步驟:**
  1. 安裝：`sudo apt install -y rizin-cutter`
  2. 看說明：`cutter -h`（或 `man cutter`）
  3. 執行：`cutter ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://cutter.re

### `rz-ghidra`
- rizin 的 ghidra 反編譯器與 sleigh 反組譯器
- **步驟:**
  1. 安裝：`sudo apt install -y rz-ghidra`
  2. 看說明：`rz-ghidra -h`（或 `man rz-ghidra`）
  3. 執行：`rz-ghidra ./a-binary-you-own` — 分析你擁有的二進位
- 文件｜Docs: https://github.com/rizinorg/rz-ghidra


## 08 · 漏洞利用  (`kali-tools-exploitation`)

### `armitage`
- Metasploit 的圖形化攻擊管理介面
- **提供指令:** `armitage`, `teamserver`
- **步驟:**
  1. 安裝：`sudo apt install -y armitage`
  2. 看說明：`armitage -h`（或 `man armitage`）
  3. 執行：`armitage` — 互動式；僅對自有目標驗證
- 文件｜Docs: https://github.com/r00t0v3rr1d3/armitage

### `beef-xss`
- 瀏覽器漏洞利用框架（BeEF）
- **提供指令:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **步驟:**
  1. 安裝：`sudo apt install -y beef-xss`
  2. 看說明：`beef-xss -h`（或 `man beef-xss`）
  3. 執行：`beef-xss` — 互動式；僅對自有目標驗證
- 文件｜Docs: https://beefproject.com/

### `exploitdb`
- 可搜尋的 Exploit-DB 封存
- **提供指令:** `exploitdb`, `searchsploit`
- **步驟:**
  1. 安裝：`sudo apt install -y exploitdb`
  2. 看說明：`exploitdb -h`（或 `man exploitdb`）
  3. 執行：`exploitdb` — 互動式；僅對自有目標驗證
- 文件｜Docs: https://www.exploit-db.com

### `metasploit-framework`
- 漏洞開發與弱點研究框架
- **提供指令:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **步驟:**
  1. 安裝：`sudo apt install -y metasploit-framework`
  2. 看說明：`msf-jsobfu -h`（或 `man msf-jsobfu`）
  3. 執行：`msf-jsobfu` — 互動式；僅對自有目標驗證
- 文件｜Docs: https://www.metasploit.com/

### `msfpc`
- MSFvenom Payload 產生器（MSFPC）
- **提供指令:** `msfpc`
- **步驟:**
  1. 安裝：`sudo apt install -y msfpc`
  2. 看說明：`msfpc -h`（或 `man msfpc`）
  3. 執行：`msfpc` — 互動式；僅對自有目標驗證
- 文件｜Docs: https://github.com/g0tmi1k/msfpc

### `set`
- 社交工程工具組（SET）
- **提供指令:** `se-toolkit`, `setoolkit`
- **步驟:**
  1. 安裝：`sudo apt install -y set`
  2. 看說明：`setoolkit -h`（或 `man setoolkit`）
  3. 執行：`setoolkit` — 互動式；僅對自有目標驗證
- 文件｜Docs: https://www.trustedsec.com/downloads/social-engineer-toolkit/

### `sqlmap` ✓ verified on VM
- 自動化 SQL 注入工具
- **提供指令:** `sqlmap`, `sqlmapapi`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlmap`
  2. 看說明：`sqlmap -h`（或 `man sqlmap`）
  3. 執行：`sqlmap` — 互動式；僅對自有目標驗證
- **實際 --help（已在 VM 驗證）:**
  ```
          ___
         __H__
   ___ ___[)]_____ ___ ___  {1.10.9#stable}
  |_ -| . [(]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- 文件｜Docs: https://sqlmap.org/

### `termineter`
- 智慧電表測試框架
- **提供指令:** `termineter`
- **步驟:**
  1. 安裝：`sudo apt install -y termineter`
  2. 看說明：`termineter -h`（或 `man termineter`）
  3. 執行：`termineter` — 互動式；僅對自有目標驗證
- 文件｜Docs: https://github.com/rsmusllp/termineter


## 09 · 嗅探與欺騙  (`kali-tools-sniffing-spoofing`)

### `above`
- 尋找網路弱點的網路安全嗅探器
- **提供指令:** `above`
- **步驟:**
  1. 安裝：`sudo apt install -y above`
  2. 看說明：`above -h`（或 `man above`）
  3. 執行：`sudo above -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/caster0x00/Above

### `bettercap`
- 完整、模組化、可攜、易擴充的 MITM 框架
- **提供指令:** `bettercap`
- **步驟:**
  1. 安裝：`sudo apt install -y bettercap`
  2. 看說明：`bettercap -h`（或 `man bettercap`）
  3. 執行：`sudo bettercap -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://www.bettercap.org

### `darkstat`
- 網路流量分析器
- **提供指令:** `darkstat`
- **步驟:**
  1. 安裝：`sudo apt install -y darkstat`
  2. 看說明：`darkstat -h`（或 `man darkstat`）
  3. 執行：`sudo darkstat -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://unix4lyfe.org/darkstat/

### `dnschef`
- 滲透測試用的 DNS 代理
- **提供指令:** `dnschef`
- **步驟:**
  1. 安裝：`sudo apt install -y dnschef`
  2. 看說明：`dnschef -h`（或 `man dnschef`）
  3. 執行：`sudo dnschef -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/iphelix/dnschef

### `driftnet`
- 從網路流量擷取並顯示圖片
- **提供指令:** `driftnet`
- **步驟:**
  1. 安裝：`sudo apt install -y driftnet`
  2. 看說明：`driftnet -h`（或 `man driftnet`）
  3. 執行：`sudo driftnet -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/deiv/driftnet

### `dsniff`
- 嗅探網路明文機密的各種工具
- **提供指令:** `arpspoof`, `dnsspoof`, `dsniff`, `filesnarf`, `macof`, `mailsnarf`, `msgsnarf`, `sshmitm`, `sshow`, `tcpkill`, `tcpnice`, `urlsnarf`, `webmitm`, `webspy`
- **步驟:**
  1. 安裝：`sudo apt install -y dsniff`
  2. 看說明：`dsniff -h`（或 `man dsniff`）
  3. 執行：`sudo dsniff -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/hackerschoice/dsniff

### `ettercap-graphical`
- Ettercap 圖形介面版
- **提供指令:** `ettercap`, `ettercap-pkexec`, `etterfilter`, `etterlog`
- **步驟:**
  1. 安裝：`sudo apt install -y ettercap-graphical`
  2. 看說明：`ettercap -h`（或 `man ettercap`）
  3. 執行：`sudo ettercap -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://ettercap.github.io/ettercap/

### `ettercap-text-only`
- Ettercap 文字模式版
- **提供指令:** `ettercap`, `etterfilter`, `etterlog`
- **步驟:**
  1. 安裝：`sudo apt install -y ettercap-text-only`
  2. 看說明：`ettercap -h`（或 `man ettercap`）
  3. 執行：`sudo ettercap -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://ettercap.github.io/ettercap/

### `ferret-sidejack`
- 監看資料並擷取感興趣的內容
- **提供指令:** `ferret-sidejack`
- **步驟:**
  1. 安裝：`sudo apt install -y ferret-sidejack`
  2. 看說明：`ferret-sidejack -h`（或 `man ferret-sidejack`）
  3. 執行：`sudo ferret-sidejack -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/robertdavidgraham/ferret

### `fiked`
- Cisco VPN 攻擊工具
- **提供指令:** `fiked`
- **步驟:**
  1. 安裝：`sudo apt install -y fiked`
  2. 看說明：`fiked -h`（或 `man fiked`）
  3. 執行：`sudo fiked -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://www.roe.ch/FakeIKEd

### `hamster-sidejack`
- Sidejacking 工具
- **提供指令:** `hamster-sidejack`
- **步驟:**
  1. 安裝：`sudo apt install -y hamster-sidejack`
  2. 看說明：`hamster-sidejack -h`（或 `man hamster-sidejack`）
  3. 執行：`sudo hamster-sidejack -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: http://www.erratasec.com/research.html

### `hexinject`
- 多功能封包注入與嗅探器
- **提供指令:** `hex2raw`, `hexinject`, `packets.tcl`, `prettypacket`
- **步驟:**
  1. 安裝：`sudo apt install -y hexinject`
  2. 看說明：`hexinject -h`（或 `man hexinject`）
  3. 執行：`sudo hexinject -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://hexinject.sourceforge.net/

### `isr-evilgrade`
- Evilgrade 框架
- **提供指令:** `evilgrade`
- **步驟:**
  1. 安裝：`sudo apt install -y isr-evilgrade`
  2. 看說明：`evilgrade -h`（或 `man evilgrade`）
  3. 執行：`sudo evilgrade -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/infobyte/evilgrade

### `macchanger`
- 操作網卡 MAC 位址的工具
- **提供指令:** `macchanger`
- **步驟:**
  1. 安裝：`sudo apt install -y macchanger`
  2. 看說明：`macchanger -h`（或 `man macchanger`）
  3. 執行：`sudo macchanger -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/alobbs/macchanger

### `mitmproxy`
- 支援 SSL 的中間人 HTTP 代理
- **提供指令:** `mitmdump`, `mitmproxy`, `mitmweb`
- **步驟:**
  1. 安裝：`sudo apt install -y mitmproxy`
  2. 看說明：`mitmproxy -h`（或 `man mitmproxy`）
  3. 執行：`sudo mitmproxy -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://mitmproxy.org

### `netsniff-ng`
- Linux 網路封包嗅探工具組
- **提供指令:** `astraceroute`, `bpfc`, `curvetun`, `flowtop`, `ifpps`, `mausezahn`, `netsniff-ng`, `trafgen`
- **步驟:**
  1. 安裝：`sudo apt install -y netsniff-ng`
  2. 看說明：`netsniff-ng -h`（或 `man netsniff-ng`）
  3. 執行：`sudo netsniff-ng -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: http://netsniff-ng.org/

### `rebind`
- DNS rebinding 工具
- **提供指令:** `dns-rebind`
- **步驟:**
  1. 安裝：`sudo apt install -y rebind`
  2. 看說明：`dns-rebind -h`（或 `man dns-rebind`）
  3. 執行：`sudo dns-rebind -i eth0` — 在自有網段擷取/測試

### `responder`
- LLMNR/NBT-NS/mDNS 投毒器
- **提供指令:** `responder`, `responder-BrowserListener`, `responder-DHCP_Auto`, `responder-FindSQLSrv`, `responder-Icmp-Redirect`, `responder-MultiRelay`, `responder-RunFinger`
- **步驟:**
  1. 安裝：`sudo apt install -y responder`
  2. 看說明：`responder -h`（或 `man responder`）
  3. 執行：`sudo responder -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/lgandx/Responder

### `sniffjoke`
- 透明的 TCP 連線擾亂器
- **提供指令:** `sj-commit-results`, `sj-iptcpopt-probe`, `sniffjoke`, `sniffjoke-autotest`, `sniffjokectl`
- **步驟:**
  1. 安裝：`sudo apt install -y sniffjoke`
  2. 看說明：`sniffjoke -h`（或 `man sniffjoke`）
  3. 執行：`sudo sniffjoke -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/vecna/sniffjoke

### `sslsniff`
- SSL/TLS 中間人攻擊工具
- **提供指令:** `sslsniff`
- **步驟:**
  1. 安裝：`sudo apt install -y sslsniff`
  2. 看說明：`sslsniff -h`（或 `man sslsniff`）
  3. 執行：`sudo sslsniff -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/moxie0/sslsniff

### `sslsplit`
- 透明且可擴充的 SSL/TLS 攔截
- **提供指令:** `sslsplit`
- **步驟:**
  1. 安裝：`sudo apt install -y sslsplit`
  2. 看說明：`sslsplit -h`（或 `man sslsplit`）
  3. 執行：`sudo sslsplit -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://www.roe.ch/SSLsplit

### `tcpflow`
- TCP 流量記錄器
- **提供指令:** `tcpflow`
- **步驟:**
  1. 安裝：`sudo apt install -y tcpflow`
  2. 看說明：`tcpflow -h`（或 `man tcpflow`）
  3. 執行：`sudo tcpflow -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://github.com/simsong/tcpflow

### `tcpreplay`
- 以任意速度重播 tcpdump 檔的工具
- **提供指令:** `tcpbridge`, `tcpcapinfo`, `tcpliveplay`, `tcpprep`, `tcpreplay`, `tcpreplay-edit`, `tcprewrite`
- **步驟:**
  1. 安裝：`sudo apt install -y tcpreplay`
  2. 看說明：`tcpreplay -h`（或 `man tcpreplay`）
  3. 執行：`sudo tcpreplay -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: http://tcpreplay.appneta.com/

### `wifi-honey`
- Wi-Fi 蜜罐
- **提供指令:** `wifi-honey`
- **步驟:**
  1. 安裝：`sudo apt install -y wifi-honey`
  2. 看說明：`wifi-honey -h`（或 `man wifi-honey`）
  3. 執行：`sudo wifi-honey -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://www.digininja.org/projects/wifi_honey.php

### `wireshark`
- 網路流量分析器（圖形介面）
- **提供指令:** `wireshark`
- **步驟:**
  1. 安裝：`sudo apt install -y wireshark`
  2. 看說明：`wireshark -h`（或 `man wireshark`）
  3. 執行：`sudo wireshark -i eth0` — 在自有網段擷取/測試
- 文件｜Docs: https://www.wireshark.org/


## 10 · 後滲透  (`kali-tools-post-exploitation`)

### `dbd`
- 含加密的 Netcat 複製品
- **提供指令:** `dbd`
- **步驟:**
  1. 安裝：`sudo apt install -y dbd`
  2. 看說明：`dbd -h`（或 `man dbd`）
  3. 執行：`dbd -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://github.com/gitdurandal/dbd

### `dns2tcp`
- TCP-over-DNS 隧道伺服器與用戶端
- **提供指令:** `dns2tcpc`, `dns2tcpd`
- **步驟:**
  1. 安裝：`sudo apt install -y dns2tcp`
  2. 看說明：`dns2tcpc -h`（或 `man dns2tcpc`）
  3. 執行：`dns2tcpc -h` — 取得立足點後於自有主機使用

### `exe2hexbat`
- 將 EXE 轉成 bat
- **提供指令:** `exe2hex`
- **步驟:**
  1. 安裝：`sudo apt install -y exe2hexbat`
  2. 看說明：`exe2hex -h`（或 `man exe2hex`）
  3. 執行：`exe2hex -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://github.com/g0tmi1k/exe2hex/

### `iodine`
- 透過 DNS 伺服器隧道傳輸 IPv4 資料
- **提供指令:** `iodine`, `iodine-client-start`, `iodined`
- **步驟:**
  1. 安裝：`sudo apt install -y iodine`
  2. 看說明：`iodine -h`（或 `man iodine`）
  3. 執行：`iodine -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://code.kryo.se/iodine

### `laudanum`
- 可注入的 web 檔案集
- **提供指令:** `laudanum`
- **步驟:**
  1. 安裝：`sudo apt install -y laudanum`
  2. 看說明：`laudanum -h`（或 `man laudanum`）
  3. 執行：`laudanum -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://sourceforge.net/projects/laudanum/

### `mimikatz`
- 利用 Windows 管理權限明文顯示密碼
- **提供指令:** `mimikatz`
- **步驟:**
  1. 安裝：`sudo apt install -y mimikatz`
  2. 看說明：`mimikatz -h`（或 `man mimikatz`）
  3. 執行：`mimikatz -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://blog.gentilkiwi.com/mimikatz

### `miredo`
- 透過 NAT 的 Teredo IPv6 隧道
- **提供指令:** `miredo`, `miredo-checkconf`, `teredo-mire`
- **步驟:**
  1. 安裝：`sudo apt install -y miredo`
  2. 看說明：`miredo -h`（或 `man miredo`）
  3. 執行：`miredo -h` — 取得立足點後於自有主機使用
- 文件｜Docs: http://www.remlab.net/miredo/

### `nishang`
- PowerShell 腳本與 payload 集
- **提供指令:** `nishang`
- **步驟:**
  1. 安裝：`sudo apt install -y nishang`
  2. 看說明：`nishang -h`（或 `man nishang`）
  3. 執行：`nishang -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://github.com/samratashok/nishang

### `powersploit`
- PowerShell 後滲透框架
- **提供指令:** `powersploit`
- **步驟:**
  1. 安裝：`sudo apt install -y powersploit`
  2. 看說明：`powersploit -h`（或 `man powersploit`）
  3. 執行：`powersploit -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://github.com/PowerShellMafia/PowerSploit

### `proxychains4`
- 透過 socks/http 代理轉送連線（proxychains-ng）
- **提供指令:** `proxychains4`, `proxychains4-daemon`
- **步驟:**
  1. 安裝：`sudo apt install -y proxychains4`
  2. 看說明：`proxychains4 -h`（或 `man proxychains4`）
  3. 執行：`proxychains4 -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://github.com/rofl0r/proxychains-ng

### `proxytunnel`
- 協助 SSH 等協定穿過 HTTP(S) 代理
- **提供指令:** `proxytunnel`
- **步驟:**
  1. 安裝：`sudo apt install -y proxytunnel`
  2. 看說明：`proxytunnel -h`（或 `man proxytunnel`）
  3. 執行：`proxytunnel -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://proxytunnel.sourceforge.io/

### `ptunnel`
- 透過 ICMP 封包隧道傳輸 TCP 連線
- **提供指令:** `ptunnel`
- **步驟:**
  1. 安裝：`sudo apt install -y ptunnel`
  2. 看說明：`ptunnel -h`（或 `man ptunnel`）
  3. 執行：`ptunnel -h` — 取得立足點後於自有主機使用
- 文件｜Docs: http://www.mit.edu/afs.new/sipb/user/golem/tmp/ptunnel-0.61.orig/web/

### `pwnat`
- NAT 對 NAT 的用戶端-伺服器通訊
- **提供指令:** `pwnat`
- **步驟:**
  1. 安裝：`sudo apt install -y pwnat`
  2. 看說明：`pwnat -h`（或 `man pwnat`）
  3. 執行：`pwnat -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://samy.pl/pwnat/

### `sbd`
- Linux/Windows 的安全後門
- **提供指令:** `sbd`
- **步驟:**
  1. 安裝：`sudo apt install -y sbd`
  2. 看說明：`sbd -h`（或 `man sbd`）
  3. 執行：`sbd -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz

### `sslh`
- 應用協定多工器
- **提供指令:** `sslh`, `sslh-ev`, `sslh-select`
- **步驟:**
  1. 安裝：`sudo apt install -y sslh`
  2. 看說明：`sslh -h`（或 `man sslh`）
  3. 執行：`sslh -h` — 取得立足點後於自有主機使用
- 文件｜Docs: http://www.rutschle.net/tech/sslh/README.html

### `stunnel4`
- 網路守護程式的通用 SSL 隧道（相容套件）
- **提供指令:** `stunnel4`
- **步驟:**
  1. 安裝：`sudo apt install -y stunnel4`
  2. 看說明：`stunnel4 -h`（或 `man stunnel4`）
  3. 執行：`stunnel4 -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://www.stunnel.org/

### `udptunnel`
- 透過 TCP 連線隧道傳輸 UDP 封包
- **提供指令:** `udptunnel`
- **步驟:**
  1. 安裝：`sudo apt install -y udptunnel`
  2. 看說明：`udptunnel -h`（或 `man udptunnel`）
  3. 執行：`udptunnel -h` — 取得立足點後於自有主機使用
- 文件｜Docs: http://www1.cs.columbia.edu/~lennox/udptunnel/

### `webacoo`
- Web 後門 cookie 腳本套件
- **提供指令:** `webacoo`
- **步驟:**
  1. 安裝：`sudo apt install -y webacoo`
  2. 看說明：`webacoo -h`（或 `man webacoo`）
  3. 執行：`webacoo -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://github.com/anestisb/WeBaCoo

### `weevely`
- 隱匿的微型 web shell
- **提供指令:** `weevely`
- **步驟:**
  1. 安裝：`sudo apt install -y weevely`
  2. 看說明：`weevely -h`（或 `man weevely`）
  3. 執行：`weevely -h` — 取得立足點後於自有主機使用
- 文件｜Docs: https://github.com/epinna/weevely3/


## 11 · 數位鑑識  (`kali-tools-forensics`)

### `7zip`
- 高壓縮比的 7-Zip 壓縮工具
- **提供指令:** `7z`, `7za`, `7zr`, `p7zip`
- **步驟:**
  1. 安裝：`sudo apt install -y 7zip`
  2. 看說明：`7z -h`（或 `man 7z`）
  3. 執行：`7z <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.7-zip.org/

### `afflib-tools`
- 進階鑑識格式函式庫（工具組）
- **提供指令:** `affcat`, `affcompare`, `affconvert`, `affcopy`, `affcrypto`, `affdiskprint`, `affinfo`, `affix`, `affrecover`, `affsegment`, `affsign`, `affstats`, `affuse`, `affverify`, `affxml`
- **步驟:**
  1. 安裝：`sudo apt install -y afflib-tools`
  2. 看說明：`affix -h`（或 `man affix`）
  3. 執行：`affix <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/sshock/AFFLIBv3

### `apktool`
- 反編譯 Android apk 檔的工具
- **提供指令:** `apktool`
- **步驟:**
  1. 安裝：`sudo apt install -y apktool`
  2. 看說明：`apktool -h`（或 `man apktool`）
  3. 執行：`apktool <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://ibotpeaches.github.io/Apktool/

### `autopsy`
- SleuthKit 的圖形化介面
- **提供指令:** `autopsy`
- **步驟:**
  1. 安裝：`sudo apt install -y autopsy`
  2. 看說明：`autopsy -h`（或 `man autopsy`）
  3. 執行：`autopsy <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.sleuthkit.org/autopsy/

### `binwalk`
- 分析二進位資料與可執行碼的工具函式庫
- **提供指令:** `binwalk`
- **步驟:**
  1. 安裝：`sudo apt install -y binwalk`
  2. 看說明：`binwalk -h`（或 `man binwalk`）
  3. 執行：`binwalk <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/ReFirmLabs/binwalk

### `binwalk3`
- 分析二進位資料與可執行碼的工具函式庫
- **提供指令:** `binwalk3`
- **步驟:**
  1. 安裝：`sudo apt install -y binwalk3`
  2. 看說明：`binwalk3 -h`（或 `man binwalk3`）
  3. 執行：`binwalk3 <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/ReFirmLabs/binwalk

### `bulk-extractor`
- 不解析檔案系統即擷取資訊的鑑識工具
- **提供指令:** `bulk_extractor`
- **步驟:**
  1. 安裝：`sudo apt install -y bulk-extractor`
  2. 看說明：`bulk_extractor -h`（或 `man bulk_extractor`）
  3. 執行：`bulk_extractor <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/simsong/bulk_extractor

### `bytecode-viewer`
- Java 8+ Jar 與 Android APK 逆向工程套件
- **提供指令:** `bytecode-viewer`
- **步驟:**
  1. 安裝：`sudo apt install -y bytecode-viewer`
  2. 看說明：`bytecode-viewer -h`（或 `man bytecode-viewer`）
  3. 執行：`bytecode-viewer <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/Konloch/bytecode-viewer

### `cabextract`
- 微軟 Cabinet 檔解壓工具
- **提供指令:** `cabextract`
- **步驟:**
  1. 安裝：`sudo apt install -y cabextract`
  2. 看說明：`cabextract -h`（或 `man cabextract`）
  3. 執行：`cabextract <image-or-file-you-own>` — 分析你擁有的映像/檔案

### `chkrootkit`
- rootkit 偵測器
- **提供指令:** `chklastlog`, `chkrootkit`, `chkrootkit-daily`, `chkwtmp`
- **步驟:**
  1. 安裝：`sudo apt install -y chkrootkit`
  2. 看說明：`chkrootkit -h`（或 `man chkrootkit`）
  3. 執行：`chkrootkit <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.chkrootkit.org/

### `creddump7`
- 從 Windows registry hive 擷取憑證與機密的 Python 工具
- **提供指令:** `creddump7`
- **步驟:**
  1. 安裝：`sudo apt install -y creddump7`
  2. 看說明：`creddump7 -h`（或 `man creddump7`）
  3. 執行：`creddump7 <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/CiscoCXSecurity/creddump7

### `dc3dd`
- 具鑑識功能的 GNU dd 修改版
- **提供指令:** `dc3dd`
- **步驟:**
  1. 安裝：`sudo apt install -y dc3dd`
  2. 看說明：`dc3dd -h`（或 `man dc3dd`）
  3. 執行：`dc3dd <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://sourceforge.net/projects/dc3dd/

### `dcfldd`
- 鑑識與安全用途的 dd 強化版
- **提供指令:** `dcfldd`
- **步驟:**
  1. 安裝：`sudo apt install -y dcfldd`
  2. 看說明：`dcfldd -h`（或 `man dcfldd`）
  3. 執行：`dcfldd <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/resurrecting-open-source-projects/dcfldd

### `ddrescue`
- 資料救援與保護工具
- **提供指令:** `dd_rescue`
- **步驟:**
  1. 安裝：`sudo apt install -y ddrescue`
  2. 看說明：`dd_rescue -h`（或 `man dd_rescue`）
  3. 執行：`dd_rescue <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://www.garloff.de/kurt/linux/ddrescue/

### `dumpzilla`
- Mozilla 瀏覽器鑑識工具
- **提供指令:** `dumpzilla`
- **步驟:**
  1. 安裝：`sudo apt install -y dumpzilla`
  2. 看說明：`dumpzilla -h`（或 `man dumpzilla`）
  3. 執行：`dumpzilla <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://www.dumpzilla.org/

### `ewf-tools`
- 讀寫 EWF 檔的工具集
- **提供指令:** `ewfacquire`, `ewfacquirestream`, `ewfdebug`, `ewfexport`, `ewfinfo`, `ewfmount`, `ewfrecover`, `ewfverify`
- **步驟:**
  1. 安裝：`sudo apt install -y ewf-tools`
  2. 看說明：`ewfinfo -h`（或 `man ewfinfo`）
  3. 執行：`ewfinfo <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/libyal/libewf-legacy

### `exifprobe`
- 讀取數位相片的中繼資料
- **提供指令:** `exifgrep`, `exifprobe`
- **步驟:**
  1. 安裝：`sudo apt install -y exifprobe`
  2. 看說明：`exifprobe -h`（或 `man exifprobe`）
  3. 執行：`exifprobe <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/hfiguiere/exifprobe

### `exiv2`
- EXIF/IPTC/XMP 中繼資料操作工具
- **提供指令:** `exiv2`
- **步驟:**
  1. 安裝：`sudo apt install -y exiv2`
  2. 看說明：`exiv2 -h`（或 `man exiv2`）
  3. 執行：`exiv2 <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.exiv2.org/

### `ext3grep`
- 協助還原 ext3 已刪除檔案的工具
- **提供指令:** `ext3grep`
- **步驟:**
  1. 安裝：`sudo apt install -y ext3grep`
  2. 看說明：`ext3grep -h`（或 `man ext3grep`）
  3. 執行：`ext3grep <image-or-file-you-own>` — 分析你擁有的映像/檔案

### `ext4magic`
- 從 ext3/ext4 分割區救回已刪除檔案
- **提供指令:** `ext4magic`
- **步驟:**
  1. 安裝：`sudo apt install -y ext4magic`
  2. 看說明：`ext4magic -h`（或 `man ext4magic`）
  3. 執行：`ext4magic <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://ext4magic.sf.net/ext4magic_en.html

### `extundelete`
- 從 ext3/ext4 分割區救回已刪除檔案的工具
- **提供指令:** `extundelete`
- **步驟:**
  1. 安裝：`sudo apt install -y extundelete`
  2. 看說明：`extundelete -h`（或 `man extundelete`）
  3. 執行：`extundelete <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://extundelete.sourceforge.net/

### `fcrackzip`
- zip 壓縮檔密碼破解器
- **提供指令:** `fcrackzip`, `fcrackzipinfo`
- **步驟:**
  1. 安裝：`sudo apt install -y fcrackzip`
  2. 看說明：`fcrackzip -h`（或 `man fcrackzip`）
  3. 執行：`fcrackzip <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://oldhome.schmorp.de/marc/fcrackzip.html

### `foremost`
- 救回遺失檔案的鑑識程式
- **提供指令:** `foremost`
- **步驟:**
  1. 安裝：`sudo apt install -y foremost`
  2. 看說明：`foremost -h`（或 `man foremost`）
  3. 執行：`foremost <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://sourceforge.net/projects/foremost/

### `forensic-artifacts`
- 鑑識痕跡知識庫（資料檔）
- **步驟:**
  1. 安裝：`sudo apt install -y forensic-artifacts`
  2. 看說明：`forensic-artifacts -h`（或 `man forensic-artifacts`）
  3. 執行：`forensic-artifacts <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/ForensicArtifacts/artifacts

### `forensics-colorize`
- 以彩色圖形顯示檔案差異
- **提供指令:** `colorize`, `filecompare`
- **步驟:**
  1. 安裝：`sudo apt install -y forensics-colorize`
  2. 看說明：`colorize -h`（或 `man colorize`）
  3. 執行：`colorize <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/jessek/colorize

### `galleta`
- IE cookie 鑑識分析工具
- **提供指令:** `galleta`
- **步驟:**
  1. 安裝：`sudo apt install -y galleta`
  2. 看說明：`galleta -h`（或 `man galleta`）
  3. 執行：`galleta <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://odessa.sourceforge.net/

### `gdb`
- GNU 除錯器
- **提供指令:** `aarch64-linux-gnu-run`, `gcore`, `gdb`, `gdb-add-index`, `gdbtui`, `gstack`
- **步驟:**
  1. 安裝：`sudo apt install -y gdb`
  2. 看說明：`gdb -h`（或 `man gdb`）
  3. 執行：`gdb <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.gnu.org/s/gdb/

### `gparted`
- GNOME 磁碟分割編輯器
- **提供指令:** `gparted`
- **步驟:**
  1. 安裝：`sudo apt install -y gparted`
  2. 看說明：`gparted -h`（或 `man gparted`）
  3. 執行：`gparted <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://gparted.org

### `grokevt`
- 讀取 Windows 事件紀錄檔的腳本
- **提供指令:** `grokevt-addlog`, `grokevt-builddb`, `grokevt-dumpmsgs`, `grokevt-findlogs`, `grokevt-parselog`, `grokevt-ripdll`
- **步驟:**
  1. 安裝：`sudo apt install -y grokevt`
  2. 看說明：`grokevt-addlog -h`（或 `man grokevt-addlog`）
  3. 執行：`grokevt-addlog <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://projects.sentinelchicken.org/grokevt/

### `guymager`
- 以 Qt 為基礎的鑑識映像工具
- **提供指令:** `guymager`
- **步驟:**
  1. 安裝：`sudo apt install -y guymager`
  2. 看說明：`guymager -h`（或 `man guymager`）
  3. 執行：`guymager <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://guymager.sourceforge.net/

### `hashdeep`
- 遞迴計算雜湊或分段雜湊
- **提供指令:** `hashdeep`, `md5deep`, `sha1deep`, `sha256deep`, `tigerdeep`, `whirlpooldeep`
- **步驟:**
  1. 安裝：`sudo apt install -y hashdeep`
  2. 看說明：`hashdeep -h`（或 `man hashdeep`）
  3. 執行：`hashdeep <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://md5deep.sourceforge.net

### `inetsim`
- 模擬常見網際網路服務的軟體套件
- **提供指令:** `inetsim`
- **步驟:**
  1. 安裝：`sudo apt install -y inetsim`
  2. 看說明：`inetsim -h`（或 `man inetsim`）
  3. 執行：`inetsim <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.inetsim.org/index.html

### `jadx`
- Dex 轉 Java 反編譯器
- **提供指令:** `jadx`, `jadx-gui`
- **步驟:**
  1. 安裝：`sudo apt install -y jadx`
  2. 看說明：`jadx -h`（或 `man jadx`）
  3. 執行：`jadx <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/skylot/jadx

### `javasnoop`
- 在本機攔截 Java 應用程式
- **提供指令:** `javasnoop`
- **步驟:**
  1. 安裝：`sudo apt install -y javasnoop`
  2. 看說明：`javasnoop -h`（或 `man javasnoop`）
  3. 執行：`javasnoop <image-or-file-you-own>` — 分析你擁有的映像/檔案

### `libhivex-bin`
- 讀寫 Windows Registry hive 的工具
- **提供指令:** `hivexget`, `hivexml`, `hivexsh`
- **步驟:**
  1. 安裝：`sudo apt install -y libhivex-bin`
  2. 看說明：`hivexml -h`（或 `man hivexml`）
  3. 執行：`hivexml <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://libguestfs.org/

### `libsmali-java`
- Android dex 格式的組譯/反組譯器
- **提供指令:** `baksmali`, `smali`
- **步驟:**
  1. 安裝：`sudo apt install -y libsmali-java`
  2. 看說明：`smali -h`（或 `man smali`）
  3. 執行：`smali <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/JesusFreke/smali

### `lvm2`
- Linux 邏輯磁區管理器
- **提供指令:** `fsadm`, `lvchange`, `lvconvert`, `lvcreate`, `lvdisplay`, `lvextend`, `lvm`, `lvmconfig`, `lvmdiskscan`, `lvmdump`, `lvmpolld`, `lvmsadc`, `lvmsar`, `lvreduce`, `lvremove`, `lvrename`, `lvresize`, `lvs`, `lvscan`, `pvchange`, `pvck`, `pvcreate`, `pvdisplay`, `pvmove`, `pvremove`, `pvresize`, `pvs`, `pvscan`, `vgcfgbackup`, `vgcfgrestore`, `vgchange`, `vgck`, `vgconvert`, `vgcreate`, `vgdisplay`, `vgexport`, `vgextend`, `vgimport`, `vgimportclone`, `vgmerge`, `vgmknodes`, `vgreduce`, `vgremove`, `vgrename`, `vgs`, `vgscan`, `vgsplit`
- **步驟:**
  1. 安裝：`sudo apt install -y lvm2`
  2. 看說明：`lvm -h`（或 `man lvm`）
  3. 執行：`lvm <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://sourceware.org/lvm2/

### `lynis`
- Unix 系統安全稽核工具
- **提供指令:** `lynis`
- **步驟:**
  1. 安裝：`sudo apt install -y lynis`
  2. 看說明：`lynis -h`（或 `man lynis`）
  3. 執行：`lynis <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://cisofy.com/lynis/

### `mac-robber`
- 收集已掛載檔案系統中檔案的資料
- **提供指令:** `mac-robber`
- **步驟:**
  1. 安裝：`sudo apt install -y mac-robber`
  2. 看說明：`mac-robber -h`（或 `man mac-robber`）
  3. 執行：`mac-robber <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.sleuthkit.org/mac-robber

### `magicrescue`
- 以 magic bytes 救回檔案
- **提供指令:** `dupemap`, `magicrescue`, `magicsort`
- **步驟:**
  1. 安裝：`sudo apt install -y magicrescue`
  2. 看說明：`magicrescue -h`（或 `man magicrescue`）
  3. 執行：`magicrescue <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/jbj/magicrescue

### `mdbtools`
- JET / MS Access 資料庫（MDB）工具
- **提供指令:** `mdb-array`, `mdb-count`, `mdb-export`, `mdb-header`, `mdb-hexdump`, `mdb-import`, `mdb-json`, `mdb-parsecsv`, `mdb-prop`, `mdb-queries`, `mdb-schema`, `mdb-sql`, `mdb-tables`, `mdb-ver`
- **步驟:**
  1. 安裝：`sudo apt install -y mdbtools`
  2. 看說明：`mdb-sql -h`（或 `man mdb-sql`）
  3. 執行：`mdb-sql <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/mdbtools/mdbtools

### `memdump`
- 將記憶體內容輸出到標準輸出的工具
- **提供指令:** `memdump`
- **步驟:**
  1. 安裝：`sudo apt install -y memdump`
  2. 看說明：`memdump -h`（或 `man memdump`）
  3. 執行：`memdump <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://www.porcupine.org/forensics/tct.html

### `metacam`
- 從數位相機檔擷取 EXIF 資訊
- **提供指令:** `metacam`
- **步驟:**
  1. 安裝：`sudo apt install -y metacam`
  2. 看說明：`metacam -h`（或 `man metacam`）
  3. 執行：`metacam <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://www.cheeseplant.org/~daniel/pages/metacam.html

### `missidentify`
- 尋找 win32 應用程式
- **提供指令:** `missidentify`
- **步驟:**
  1. 安裝：`sudo apt install -y missidentify`
  2. 看說明：`missidentify -h`（或 `man missidentify`）
  3. 執行：`missidentify <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://missidentify.sf.net

### `myrescue`
- 從受損磁碟救回資料
- **提供指令:** `myrescue`, `myrescue-bitmap2ppm`, `myrescue-stat`
- **步驟:**
  1. 安裝：`sudo apt install -y myrescue`
  2. 看說明：`myrescue -h`（或 `man myrescue`）
  3. 執行：`myrescue <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://myrescue.sf.net

### `nasm`
- 通用 x86 組譯器
- **提供指令:** `nasm`, `ndisasm`
- **步驟:**
  1. 安裝：`sudo apt install -y nasm`
  2. 看說明：`nasm -h`（或 `man nasm`）
  3. 執行：`nasm <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.nasm.us/

### `nasty`
- 協助還原 GPG 通關密語的工具
- **提供指令:** `nasty`
- **步驟:**
  1. 安裝：`sudo apt install -y nasty`
  2. 看說明：`nasty -h`（或 `man nasty`）
  3. 執行：`nasty <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/folkertvanheusden/nasty

### `parted`
- 磁碟分割操作工具
- **提供指令:** `parted`, `partprobe`
- **步驟:**
  1. 安裝：`sudo apt install -y parted`
  2. 看說明：`parted -h`（或 `man parted`）
  3. 執行：`parted <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.gnu.org/software/parted

### `pasco`
- IE 快取鑑識分析工具
- **提供指令:** `pasco`
- **步驟:**
  1. 安裝：`sudo apt install -y pasco`
  2. 看說明：`pasco -h`（或 `man pasco`）
  3. 執行：`pasco <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://sf.net/projects/odessa

### `pdf-parser`
- 解析 PDF 檔以辨識基本元素
- **提供指令:** `pdf-parser`
- **步驟:**
  1. 安裝：`sudo apt install -y pdf-parser`
  2. 看說明：`pdf-parser -h`（或 `man pdf-parser`）
  3. 執行：`pdf-parser <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://blog.didierstevens.com/programs/pdf-tools/

### `pdfid`
- 掃描 PDF 檔中的特定關鍵字
- **提供指令:** `pdfid`
- **步驟:**
  1. 安裝：`sudo apt install -y pdfid`
  2. 看說明：`pdfid -h`（或 `man pdfid`）
  3. 執行：`pdfid <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://blog.didierstevens.com/programs/pdf-tools/

### `plaso`
- 超級時間軸工具（中繼套件）
- **步驟:**
  1. 安裝：`sudo apt install -y plaso`
  2. 看說明：`plaso -h`（或 `man plaso`）
  3. 執行：`plaso <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/log2timeline/plaso

### `polenum`
- 擷取 Windows 系統的密碼政策
- **提供指令:** `polenum`
- **步驟:**
  1. 安裝：`sudo apt install -y polenum`
  2. 看說明：`polenum -h`（或 `man polenum`）
  3. 執行：`polenum <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/Wh1t3Fox/polenum/

### `pst-utils`
- 讀取 Outlook PST 檔的工具
- **提供指令:** `lspst`, `nick2ldif`, `pst2dii`, `pst2ldif`, `readpst`
- **步驟:**
  1. 安裝：`sudo apt install -y pst-utils`
  2. 看說明：`lspst -h`（或 `man lspst`）
  3. 執行：`lspst <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.five-ten-sg.com/libpst/

### `python3-capstone`
- 輕量多架構反組譯框架（Python 綁定）
- **步驟:**
  1. 安裝：`sudo apt install -y python3-capstone`
  2. 看說明：`python3-capstone -h`（或 `man python3-capstone`）
  3. 執行：`python3-capstone <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.capstone-engine.org/

### `python3-dfdatetime`
- Python 3 數位鑑識日期時間函式庫
- **步驟:**
  1. 安裝：`sudo apt install -y python3-dfdatetime`
  2. 看說明：`python3-dfdatetime -h`（或 `man python3-dfdatetime`）
  3. 執行：`python3-dfdatetime <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/log2timeline/dfdatetime

### `python3-dfvfs`
- 數位鑑識虛擬檔案系統
- **步驟:**
  1. 安裝：`sudo apt install -y python3-dfvfs`
  2. 看說明：`python3-dfvfs -h`（或 `man python3-dfvfs`）
  3. 執行：`python3-dfvfs <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/log2timeline/dfvfs

### `python3-dfwinreg`
- Python 3 數位鑑識 Windows Registry 函式庫
- **步驟:**
  1. 安裝：`sudo apt install -y python3-dfwinreg`
  2. 看說明：`python3-dfwinreg -h`（或 `man python3-dfwinreg`）
  3. 執行：`python3-dfwinreg <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/log2timeline/dfwinreg

### `python3-distorm3`
- x86/AMD64 強力反組譯函式庫（Python3 綁定）
- **步驟:**
  1. 安裝：`sudo apt install -y python3-distorm3`
  2. 看說明：`python3-distorm3 -h`（或 `man python3-distorm3`）
  3. 執行：`python3-distorm3 <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/gdabah/distorm

### `radare2`
- 免費進階的命令列十六進位編輯器
- **提供指令:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **步驟:**
  1. 安裝：`sudo apt install -y radare2`
  2. 看說明：`radare2 -h`（或 `man radare2`）
  3. 執行：`radare2 <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.radare.org

### `readpe`
- 操作 Windows PE 檔的命令列工具
- **提供指令:** `ofs2rva`, `pedis`, `pehash`, `peldd`, `pepack`, `peres`, `pescan`, `pesec`, `pestr`, `readpe`, `rva2ofs`
- **步驟:**
  1. 安裝：`sudo apt install -y readpe`
  2. 看說明：`readpe -h`（或 `man readpe`）
  3. 執行：`readpe <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/mentebinaria/readpe/wiki

### `recoverdm`
- 從壞軌磁碟救回檔案
- **提供指令:** `mergebad`, `recoverdm`
- **步驟:**
  1. 安裝：`sudo apt install -y recoverdm`
  2. 看說明：`recoverdm -h`（或 `man recoverdm`）
  3. 執行：`recoverdm <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.vanheusden.com/recoverdm

### `recoverjpeg`
- 救回 JPEG 圖片與 MOV 影片
- **提供指令:** `recoverjpeg`, `recovermov`, `remove-duplicates`, `sort-pictures`
- **步驟:**
  1. 安裝：`sudo apt install -y recoverjpeg`
  2. 看說明：`recoverjpeg -h`（或 `man recoverjpeg`）
  3. 執行：`recoverjpeg <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.rfc1149.net/devel/recoverjpeg

### `reglookup`
- 分析 Windows NT registry 的工具
- **提供指令:** `reglookup`, `reglookup-recover`, `reglookup-timeline`
- **步驟:**
  1. 安裝：`sudo apt install -y reglookup`
  2. 看說明：`reglookup -h`（或 `man reglookup`）
  3. 執行：`reglookup <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://web.archive.org/web/20240804024044/http://projects.sentinelchicken.org/reglookup/

### `rephrase`
- GnuPG 專用的通關密語還原工具
- **提供指令:** `rephrase`
- **步驟:**
  1. 安裝：`sudo apt install -y rephrase`
  2. 看說明：`rephrase -h`（或 `man rephrase`）
  3. 執行：`rephrase <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.roguedaemon.net/rephrase/

### `rifiuti`
- MS Windows 資源回收桶分析工具
- **提供指令:** `rifiuti`
- **步驟:**
  1. 安裝：`sudo apt install -y rifiuti`
  2. 看說明：`rifiuti -h`（或 `man rifiuti`）
  3. 執行：`rifiuti <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://sf.net/projects/odessa

### `rifiuti2`
- rifiuti 的替代品，分析 Windows 資源回收桶
- **提供指令:** `rifiuti2`, `rifiuti-vista`
- **步驟:**
  1. 安裝：`sudo apt install -y rifiuti2`
  2. 看說明：`rifiuti2 -h`（或 `man rifiuti2`）
  3. 執行：`rifiuti2 <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://abelcheung.github.io/rifiuti2

### `rizin-cutter`
- 以 rizin 為核心的逆向工程平台
- **提供指令:** `cutter`
- **步驟:**
  1. 安裝：`sudo apt install -y rizin-cutter`
  2. 看說明：`cutter -h`（或 `man cutter`）
  3. 執行：`cutter <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://cutter.re

### `rkhunter`
- rootkit、後門、嗅探器與 exploit 掃描器
- **提供指令:** `rkhunter`
- **步驟:**
  1. 安裝：`sudo apt install -y rkhunter`
  2. 看說明：`rkhunter -h`（或 `man rkhunter`）
  3. 執行：`rkhunter <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://rkhunter.sourceforge.net

### `rsakeyfind`
- 在記憶體映像中定位 BER 編碼的 RSA 私鑰
- **提供指令:** `rsakeyfind`
- **步驟:**
  1. 安裝：`sudo apt install -y rsakeyfind`
  2. 看說明：`rsakeyfind -h`（或 `man rsakeyfind`）
  3. 執行：`rsakeyfind <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://citp.princeton.edu/our-work/memory/code/

### `rz-ghidra`
- rizin 的 ghidra 反編譯器與 sleigh 反組譯器
- **步驟:**
  1. 安裝：`sudo apt install -y rz-ghidra`
  2. 看說明：`rz-ghidra -h`（或 `man rz-ghidra`）
  3. 執行：`rz-ghidra <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/rizinorg/rz-ghidra

### `safecopy`
- 問題或受損媒體的資料救援工具
- **提供指令:** `safecopy`
- **步驟:**
  1. 安裝：`sudo apt install -y safecopy`
  2. 看說明：`safecopy -h`（或 `man safecopy`）
  3. 執行：`safecopy <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://safecopy.sf.net

### `samdump2`
- 傾印 Windows 2k/NT/XP 密碼雜湊
- **提供指令:** `samdump2`
- **步驟:**
  1. 安裝：`sudo apt install -y samdump2`
  2. 看說明：`samdump2 -h`（或 `man samdump2`）
  3. 執行：`samdump2 <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://ophcrack.sourceforge.net/

### `scalpel`
- 快速、與檔案系統無關的檔案救援
- **提供指令:** `scalpel`
- **步驟:**
  1. 安裝：`sudo apt install -y scalpel`
  2. 看說明：`scalpel -h`（或 `man scalpel`）
  3. 執行：`scalpel <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/nolaforensix/scalpel-1.60

### `scrounge-ntfs`
- NTFS 檔案系統資料救援程式
- **提供指令:** `scrounge-ntfs`
- **步驟:**
  1. 安裝：`sudo apt install -y scrounge-ntfs`
  2. 看說明：`scrounge-ntfs -h`（或 `man scrounge-ntfs`）
  3. 執行：`scrounge-ntfs <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://thewalter.net/stef/software/scrounge/

### `sleuthkit`
- 磁區與檔案系統鑑識分析工具
- **提供指令:** `blkcalc`, `blkcat`, `blkls`, `blkstat`, `fcat`, `ffind`, `fiwalk`, `fls`, `fsstat`, `hfind`, `icat`, `ifind`, `ils`, `img_cat`, `img_stat`, `istat`, `jcat`, `jls`, `jpeg_extract`, `mactime`, `mmcat`, `mmls`, `mmstat`, `pstat`, `sigfind`, `sorter`, `srch_strings`, `tsk_comparedir`, `tsk_gettimes`, `tsk_imageinfo`, `tsk_loaddb`, `tsk_recover`, `usnjls`
- **步驟:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`fls -h`（或 `man fls`）
  3. 執行：`fls <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.sleuthkit.org/sleuthkit

### `sqlitebrowser`
- SQLite 資料庫的 GUI 編輯器
- **提供指令:** `sqlitebrowser`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlitebrowser`
  2. 看說明：`sqlitebrowser -h`（或 `man sqlitebrowser`）
  3. 執行：`sqlitebrowser <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://sqlitebrowser.org/

### `ssdeep`
- 遞迴分段雜湊工具
- **提供指令:** `ssdeep`
- **步驟:**
  1. 安裝：`sudo apt install -y ssdeep`
  2. 看說明：`ssdeep -h`（或 `man ssdeep`）
  3. 執行：`ssdeep <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/ssdeep-project/ssdeep

### `tcpdump` ✓ verified on VM
- 命令列網路流量分析器
- **提供指令:** `tcpdump`
- **步驟:**
  1. 安裝：`sudo apt install -y tcpdump`
  2. 看說明：`tcpdump -h`（或 `man tcpdump`）
  3. 執行：`tcpdump <image-or-file-you-own>` — 分析你擁有的映像/檔案
- **實際 --help（已在 VM 驗證）:**
  ```
  tcpdump version 4.99.6
  libpcap version 1.10.6 (64-bit time_t, with TPACKET_V3)
  OpenSSL 3.6.3 9 Jun 2026
  64-bit build, 64-bit time_t
  Usage: tcpdump [-AbdDefghHIJKlLnNOpqStuUvxX#] [ -B size ] [ -c count ] [--count]
  		[ -C file_size ] [ -E algo:secret ] [ -F file ] [ -G seconds ]
  ```
- 文件｜Docs: https://www.tcpdump.org/

### `tcpflow`
- TCP 流量記錄器
- **提供指令:** `tcpflow`
- **步驟:**
  1. 安裝：`sudo apt install -y tcpflow`
  2. 看說明：`tcpflow -h`（或 `man tcpflow`）
  3. 執行：`tcpflow <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/simsong/tcpflow

### `tcpick`
- TCP 串流嗅探與連線追蹤器
- **提供指令:** `tcpick`
- **步驟:**
  1. 安裝：`sudo apt install -y tcpick`
  2. 看說明：`tcpick -h`（或 `man tcpick`）
  3. 執行：`tcpick <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://tcpick.sourceforge.net

### `tcpreplay`
- 以任意速度重播 tcpdump 檔的工具
- **提供指令:** `tcpbridge`, `tcpcapinfo`, `tcpliveplay`, `tcpprep`, `tcpreplay`, `tcpreplay-edit`, `tcprewrite`
- **步驟:**
  1. 安裝：`sudo apt install -y tcpreplay`
  2. 看說明：`tcpreplay -h`（或 `man tcpreplay`）
  3. 執行：`tcpreplay <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://tcpreplay.appneta.com/

### `truecrack`
- TrueCrypt 磁區密碼暴力破解器
- **提供指令:** `truecrack`
- **步驟:**
  1. 安裝：`sudo apt install -y truecrack`
  2. 看說明：`truecrack -h`（或 `man truecrack`）
  3. 執行：`truecrack <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/lvaccaro/truecrack

### `unar`
- 多種格式的解壓縮工具
- **提供指令:** `lsar`, `unar`
- **步驟:**
  1. 安裝：`sudo apt install -y unar`
  2. 看說明：`unar -h`（或 `man unar`）
  3. 執行：`unar <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://theunarchiver.com/command-line

### `undbx`
- 從 .dbx 檔擷取與救回郵件訊息
- **提供指令:** `undbx`
- **步驟:**
  1. 安裝：`sudo apt install -y undbx`
  2. 看說明：`undbx -h`（或 `man undbx`）
  3. 執行：`undbx <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/ZungBang/undbx

### `unhide`
- 尋找隱藏程序與連接埠的鑑識工具
- **提供指令:** `unhide`, `unhide-linux`, `unhide-posix`, `unhide_rb`, `unhide-tcp`
- **步驟:**
  1. 安裝：`sudo apt install -y unhide`
  2. 看說明：`unhide -h`（或 `man unhide`）
  3. 執行：`unhide <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.unhide-forensics.info

### `unrar`
- .rar 檔解壓工具（非自由版）
- **提供指令:** `unrar-nonfree`
- **步驟:**
  1. 安裝：`sudo apt install -y unrar`
  2. 看說明：`unrar-nonfree -h`（或 `man unrar-nonfree`）
  3. 執行：`unrar-nonfree <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.rarlab.com/

### `upx-ucl`
- 高效的執行檔即時壓縮器
- **提供指令:** `upx-ucl`
- **步驟:**
  1. 安裝：`sudo apt install -y upx-ucl`
  2. 看說明：`upx-ucl -h`（或 `man upx-ucl`）
  3. 執行：`upx-ucl <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://upx.github.io/

### `vinetto`
- 檢視 Thumbs.db 檔的鑑識工具
- **提供指令:** `vinetto`
- **步驟:**
  1. 安裝：`sudo apt install -y vinetto`
  2. 看說明：`vinetto -h`（或 `man vinetto`）
  3. 執行：`vinetto <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://github.com/AtesComp/Vinetto

### `wce`
- Windows 憑證編輯器
- **提供指令:** `wce`
- **步驟:**
  1. 安裝：`sudo apt install -y wce`
  2. 看說明：`wce -h`（或 `man wce`）
  3. 執行：`wce <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: http://www.ampliasecurity.com/research.html

### `winregfs`
- Windows registry 的 FUSE 檔案系統
- **提供指令:** `fsck.winregfs`, `mount.winregfs`
- **步驟:**
  1. 安裝：`sudo apt install -y winregfs`
  2. 看說明：`fsck.winregfs -h`（或 `man fsck.winregfs`）
  3. 執行：`fsck.winregfs <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://codeberg.org/jbruchon/winregfs

### `wireshark`
- 網路流量分析器（圖形介面）
- **提供指令:** `wireshark`
- **步驟:**
  1. 安裝：`sudo apt install -y wireshark`
  2. 看說明：`wireshark -h`（或 `man wireshark`）
  3. 執行：`wireshark <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.wireshark.org/

### `xmount`
- 磁碟映像格式間交叉掛載的工具
- **提供指令:** `xmount`
- **步驟:**
  1. 安裝：`sudo apt install -y xmount`
  2. 看說明：`xmount -h`（或 `man xmount`）
  3. 執行：`xmount <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://www.sits.lu/xmount

### `yara`
- 惡意程式研究者的模式比對瑞士刀
- **提供指令:** `yara`, `yarac`
- **步驟:**
  1. 安裝：`sudo apt install -y yara`
  2. 看說明：`yara -h`（或 `man yara`）
  3. 執行：`yara <image-or-file-you-own>` — 分析你擁有的映像/檔案
- 文件｜Docs: https://virustotal.github.io/yara/


## 12 · 報告工具  (`kali-tools-reporting`)

### `cutycapt`
- 擷取 WebKit 網頁算繪結果的工具
- **提供指令:** `cutycapt`
- **步驟:**
  1. 安裝：`sudo apt install -y cutycapt`
  2. 看說明：`cutycapt -h`（或 `man cutycapt`）
  3. 執行：`cutycapt` — 整理發現並產出報告
- 文件｜Docs: https://github.com/Crystalix007/CutyCapt

### `eyewitness`
- 快速的 web 應用分流工具
- **提供指令:** `eyewitness`, `geckodriver`
- **步驟:**
  1. 安裝：`sudo apt install -y eyewitness`
  2. 看說明：`eyewitness -h`（或 `man eyewitness`）
  3. 執行：`eyewitness` — 整理發現並產出報告
- 文件｜Docs: https://www.christophertruncer.com/eyewitness-triage-tool/

### `faraday`
- 協作式滲透測試 IDE
- **提供指令:** `faraday`, `faraday-beat`, `faraday-manage`, `faraday-server`, `faraday-start`, `faraday-stop`, `faraday-worker`, `faraday-worker-gevent`, `python-faraday`
- **步驟:**
  1. 安裝：`sudo apt install -y faraday`
  2. 看說明：`faraday -h`（或 `man faraday`）
  3. 執行：`faraday` — 整理發現並產出報告
- 文件｜Docs: https://faradaysec.com

### `maltego`
- 開源情報與鑑識應用程式
- **提供指令:** `maltego`
- **步驟:**
  1. 安裝：`sudo apt install -y maltego`
  2. 看說明：`maltego -h`（或 `man maltego`）
  3. 執行：`maltego` — 整理發現並產出報告
- 文件｜Docs: https://www.maltego.com

### `metagoofil`
- 擷取公開文件中繼資料的工具
- **提供指令:** `metagoofil`
- **步驟:**
  1. 安裝：`sudo apt install -y metagoofil`
  2. 看說明：`metagoofil -h`（或 `man metagoofil`）
  3. 執行：`metagoofil` — 整理發現並產出報告
- 文件｜Docs: https://github.com/opsdisk/metagoofil

### `pipal`
- 對密碼傾印做統計分析
- **提供指令:** `pipal`
- **步驟:**
  1. 安裝：`sudo apt install -y pipal`
  2. 看說明：`pipal -h`（或 `man pipal`）
  3. 執行：`pipal` — 整理發現並產出報告
- 文件｜Docs: https://www.digininja.org/projects/pipal.php

### `recordmydesktop`
- 擷取 Linux 桌面工作階段的影音
- **提供指令:** `recordmydesktop`
- **步驟:**
  1. 安裝：`sudo apt install -y recordmydesktop`
  2. 看說明：`recordmydesktop -h`（或 `man recordmydesktop`）
  3. 執行：`recordmydesktop` — 整理發現並產出報告
- 文件｜Docs: https://enselic.github.io/recordmydesktop/


## 13 · 社交工程  (`kali-tools-social-engineering`)

### `beef-xss`
- 瀏覽器漏洞利用框架（BeEF）
- **提供指令:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **步驟:**
  1. 安裝：`sudo apt install -y beef-xss`
  2. 看說明：`beef-xss -h`（或 `man beef-xss`）
  3. 執行：`beef-xss` — 僅限 lab 內、需同意
- 文件｜Docs: https://beefproject.com/

### `maltego`
- 開源情報與鑑識應用程式
- **提供指令:** `maltego`
- **步驟:**
  1. 安裝：`sudo apt install -y maltego`
  2. 看說明：`maltego -h`（或 `man maltego`）
  3. 執行：`maltego` — 僅限 lab 內、需同意
- 文件｜Docs: https://www.maltego.com

### `msfpc`
- MSFvenom Payload 產生器（MSFPC）
- **提供指令:** `msfpc`
- **步驟:**
  1. 安裝：`sudo apt install -y msfpc`
  2. 看說明：`msfpc -h`（或 `man msfpc`）
  3. 執行：`msfpc` — 僅限 lab 內、需同意
- 文件｜Docs: https://github.com/g0tmi1k/msfpc

### `set`
- 社交工程工具組（SET）
- **提供指令:** `se-toolkit`, `setoolkit`
- **步驟:**
  1. 安裝：`sudo apt install -y set`
  2. 看說明：`setoolkit -h`（或 `man setoolkit`）
  3. 執行：`setoolkit` — 僅限 lab 內、需同意
- 文件｜Docs: https://www.trustedsec.com/downloads/social-engineer-toolkit/


## 14 · 辨識（分流／偵察輔助）  (`kali-tools-identify`)

### `amass`
- 深入的 DNS 列舉與網路測繪
- **提供指令:** `amass`
- **步驟:**
  1. 安裝：`sudo apt install -y amass`
  2. 看說明：`amass -h`（或 `man amass`）
  3. 執行：`amass <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://github.com/OWASP/Amass

### `assetfinder`
- 找出與指定網域相關的網域與子網域
- **提供指令:** `assetfinder`
- **步驟:**
  1. 安裝：`sudo apt install -y assetfinder`
  2. 看說明：`assetfinder -h`（或 `man assetfinder`）
  3. 執行：`assetfinder <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://github.com/tomnomnom/assetfinder

### `cisco-auditing-tool`
- 掃描 Cisco 路由器弱點
- **提供指令:** `CAT`
- **步驟:**
  1. 安裝：`sudo apt install -y cisco-auditing-tool`
  2. 看說明：`CAT -h`（或 `man CAT`）
  3. 執行：`CAT <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: http://www.scrypt.net/

### `defectdojo`
- 安全協調與弱點管理平台
- **提供指令:** `defectdojo`, `defectdojo-start`, `defectdojo-stop`
- **步驟:**
  1. 安裝：`sudo apt install -y defectdojo`
  2. 看說明：`defectdojo -h`（或 `man defectdojo`）
  3. 執行：`defectdojo <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://github.com/DefectDojo/django-DefectDojo

### `exploitdb`
- 可搜尋的 Exploit-DB 封存
- **提供指令:** `exploitdb`, `searchsploit`
- **步驟:**
  1. 安裝：`sudo apt install -y exploitdb`
  2. 看說明：`exploitdb -h`（或 `man exploitdb`）
  3. 執行：`exploitdb <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://www.exploit-db.com

### `kali-autopilot`
- Kali 自動攻擊腳本工具
- **提供指令:** `kali-autopilot`
- **步驟:**
  1. 安裝：`sudo apt install -y kali-autopilot`
  2. 看說明：`kali-autopilot -h`（或 `man kali-autopilot`）
  3. 執行：`kali-autopilot <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://gitlab.com/kalilinux/packages/kali-autopilot

### `maltego`
- 開源情報與鑑識應用程式
- **提供指令:** `maltego`
- **步驟:**
  1. 安裝：`sudo apt install -y maltego`
  2. 看說明：`maltego -h`（或 `man maltego`）
  3. 執行：`maltego <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://www.maltego.com

### `maryam`
- OWASP Maryam 模組化開源 OSINT 框架
- **提供指令:** `maryam`
- **步驟:**
  1. 安裝：`sudo apt install -y maryam`
  2. 看說明：`maryam -h`（或 `man maryam`）
  3. 執行：`maryam <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://github.com/saeeddhqan/Maryam

### `nipper-ng`
- 裝置安全設定審查工具
- **提供指令:** `nipper`
- **步驟:**
  1. 安裝：`sudo apt install -y nipper-ng`
  2. 看說明：`nipper -h`（或 `man nipper`）
  3. 執行：`nipper <NODE_IP>` — 分流/辨識你擁有的目標

### `osrframework`
- 開源研究框架（OSINT）
- **提供指令:** `alias_generator`, `alias_generator.py`, `checkfy`, `checkfy.py`, `domainfy`, `domainfy.py`, `mailfy`, `mailfy.py`, `osrf`, `osrframework-cli`, `phonefy`, `phonefy.py`, `searchfy`, `searchfy.py`, `usufy`, `usufy.py`
- **步驟:**
  1. 安裝：`sudo apt install -y osrframework`
  2. 看說明：`osrf -h`（或 `man osrf`）
  3. 執行：`osrf <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://pypi.org/project/osrframework/

### `spiderfoot`
- OSINT 蒐集與偵察工具
- **提供指令:** `spiderfoot`, `spiderfoot-cli`
- **步驟:**
  1. 安裝：`sudo apt install -y spiderfoot`
  2. 看說明：`spiderfoot -h`（或 `man spiderfoot`）
  3. 執行：`spiderfoot <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://www.spiderfoot.net

### `tiger`
- Linux 安全稽核與入侵偵測工具
- **提供指令:** `tiger`, `tigercron`, `tigexp`
- **步驟:**
  1. 安裝：`sudo apt install -y tiger`
  2. 看說明：`tiger -h`（或 `man tiger`）
  3. 執行：`tiger <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: http://savannah.nongnu.org/projects/tiger/

### `wapiti` ✓ verified on VM
- web 應用弱點掃描器
- **提供指令:** `wapiti`, `wapiti-getcookie`
- **步驟:**
  1. 安裝：`sudo apt install -y wapiti`
  2. 看說明：`wapiti -h`（或 `man wapiti`）
  3. 執行：`wapiti <NODE_IP>` — 分流/辨識你擁有的目標
- **實際 --help（已在 VM 驗證）:**
  ```
  
       __    __            _ _   _ _____
      / / /\ \ \__ _ _ __ (_) |_(_)___ /
      \ \/  \/ / _` | '_ \| | __| | |_ \
       \  /\  / (_| | |_) | | |_| |___) |
        \/  \/ \__,_| .__/|_|\__|_|____/
  ```
- 文件｜Docs: https://wapiti.sourceforge.net/

### `witnessme`
- Web 清查工具
- **提供指令:** `witnessme`, `wmapi`, `wmdb`
- **步驟:**
  1. 安裝：`sudo apt install -y witnessme`
  2. 看說明：`witnessme -h`（或 `man witnessme`）
  3. 執行：`witnessme <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://github.com/byt3bl33d3r/WitnessMe

### `zaproxy`
- 尋找 web 應用弱點的測試工具
- **提供指令:** `owasp-zap`, `zaproxy`
- **步驟:**
  1. 安裝：`sudo apt install -y zaproxy`
  2. 看說明：`zaproxy -h`（或 `man zaproxy`）
  3. 執行：`zaproxy <NODE_IP>` — 分流/辨識你擁有的目標
- 文件｜Docs: https://github.com/zaproxy/zaproxy


## 15 · 模糊測試  (`kali-tools-fuzzing`)

### `afl++`
- 以插樁驅動的二進位格式模糊測試器
- **提供指令:** `afl-addseeds`, `afl-analyze`, `afl-c++`, `afl-cc`, `afl-clang`, `afl-clang++`, `afl-clang-fast`, `afl-clang-fast++`, `afl-clang-lto`, `afl-clang-lto++`, `afl-cmin`, `afl-cmin.awk`, `afl-cmin.bash`, `afl-cmin.py`, `afl-fuzz`, `afl-g++`, `afl-gcc`, `afl-gcc-fast`, `afl-g++-fast`, `afl-gotcpu`, `afl-health`, `afl-ld-lto`, `afl-lto`, `afl-lto++`, `afl-network-client`, `afl-network-server`, `afl-persistent-config`, `afl-plot`, `afl-showmap`, `afl-system-config`, `afl-tmin`, `afl-whatsup`
- **步驟:**
  1. 安裝：`sudo apt install -y afl++`
  2. 看說明：`afl-cc -h`（或 `man afl-cc`）
  3. 執行：`afl-cc <target-you-own>` — 對自有目標做模糊測試
- 文件｜Docs: https://github.com/AFLplusplus/AFLplusplus

### `sfuzz`
- 黑箱測試工具
- **提供指令:** `sfo`, `sfuzz`
- **步驟:**
  1. 安裝：`sudo apt install -y sfuzz`
  2. 看說明：`sfuzz -h`（或 `man sfuzz`）
  3. 執行：`sfuzz <target-you-own>` — 對自有目標做模糊測試
- 文件｜Docs: http://aconole.brad-x.com/programs/sfuzz.html

### `spike`
- 網路協定模糊測試器
- **提供指令:** `citrix`, `closed_source_web_server_fuzz`, `dceoversmb`, `dltest`, `do_post`, `generic_chunked`, `generic_listen_tcp`, `generic_send_tcp`, `generic_send_udp`, `generic_web_server_fuzz`, `generic_web_server_fuzz2`, `gopherd`, `halflife`, `line_send_tcp`, `msrpcfuzz`, `msrpcfuzz_udp`, `ntlm2`, `ntlm_brute`, `pmspike`, `post_fuzz`, `post_spike`, `quake`, `quakeserver`, `sendmsrpc`, `ss_spike`, `statd_spike`, `sunrpcfuzz`, `webfuzz`, `x11_spike`
- **步驟:**
  1. 安裝：`sudo apt install -y spike`
  2. 看說明：`ntlm2 -h`（或 `man ntlm2`）
  3. 執行：`ntlm2 <target-you-own>` — 對自有目標做模糊測試
- 文件｜Docs: http://www.immunitysec.com/resources-freesoftware.shtml

### `wfuzz` ✓ verified on VM
- web 應用暴力列舉器
- **提供指令:** `wfuzz`
- **步驟:**
  1. 安裝：`sudo apt install -y wfuzz`
  2. 看說明：`wfuzz -h`（或 `man wfuzz`）
  3. 執行：`wfuzz <target-you-own>` — 對自有目標做模糊測試
- **實際 --help（已在 VM 驗證）:**
  ```
  default
  default
  ********************************************************
  * Wfuzz 3.1.0 - The Web Fuzzer                         *
  *                                                      *
  * Version up to 1.4c coded by:                         *
  ```
- 文件｜Docs: http://www.edge-security.com/wfuzz.php


## 16 · VoIP 工具  (`kali-tools-voip`)

### `enumiax`
- IAX 協定使用者名稱列舉器
- **提供指令:** `enumiax`
- **步驟:**
  1. 安裝：`sudo apt install -y enumiax`
  2. 看說明：`enumiax -h`（或 `man enumiax`）
  3. 執行：`enumiax <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: https://enumiax.sourceforge.net/

### `iaxflood`
- VoIP 洪泛工具
- **提供指令:** `iaxflood`
- **步驟:**
  1. 安裝：`sudo apt install -y iaxflood`
  2. 看說明：`iaxflood -h`（或 `man iaxflood`）
  3. 執行：`iaxflood <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://www.hackingexposedvoip.com/sec_tools.html

### `inviteflood`
- 透過 UDP/IP 洪泛 SIP/SDP INVITE 訊息
- **提供指令:** `inviteflood`
- **步驟:**
  1. 安裝：`sudo apt install -y inviteflood`
  2. 看說明：`inviteflood -h`（或 `man inviteflood`）
  3. 執行：`inviteflood <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `libfindrtp`
- 多個 VoIP 工具所需的函式庫
- **步驟:**
  1. 安裝：`sudo apt install -y libfindrtp`
  2. 看說明：`libfindrtp -h`（或 `man libfindrtp`）
  3. 執行：`libfindrtp <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `nmap` ✓ verified on VM
- 網路測繪器（The Network Mapper）
- **提供指令:** `nmap`, `nping`
- **步驟:**
  1. 安裝：`sudo apt install -y nmap`
  2. 看說明：`nmap -h`（或 `man nmap`）
  3. 執行：`nmap <NODE_IP>` — 需要自有 SIP/VoIP 目標
- **實際 --help（已在 VM 驗證）:**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- 文件｜Docs: https://nmap.org/

### `ohrwurm`
- RTP 模糊測試器
- **提供指令:** `ohrwurm`
- **步驟:**
  1. 安裝：`sudo apt install -y ohrwurm`
  2. 看說明：`ohrwurm -h`（或 `man ohrwurm`）
  3. 執行：`ohrwurm <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://mazzoo.de/blog/2006/08/25#ohrwurm

### `protos-sip`
- SIP 測試套件
- **提供指令:** `protos-sip`
- **步驟:**
  1. 安裝：`sudo apt install -y protos-sip`
  2. 看說明：`protos-sip -h`（或 `man protos-sip`）
  3. 執行：`protos-sip <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip

### `rtpbreak`
- 偵測、重建並分析 RTP 工作階段
- **提供指令:** `rtpbreak`
- **步驟:**
  1. 安裝：`sudo apt install -y rtpbreak`
  2. 看說明：`rtpbreak -h`（或 `man rtpbreak`）
  3. 執行：`rtpbreak <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://dallachiesa.com/code/rtpbreak/

### `rtpflood`
- 洪泛任何 RTP 裝置的工具
- **提供指令:** `rtpflood`
- **步驟:**
  1. 安裝：`sudo apt install -y rtpflood`
  2. 看說明：`rtpflood -h`（或 `man rtpflood`）
  3. 執行：`rtpflood <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpinsertsound`
- 將音訊插入指定串流
- **提供指令:** `rtpinsertsound`
- **步驟:**
  1. 安裝：`sudo apt install -y rtpinsertsound`
  2. 看說明：`rtpinsertsound -h`（或 `man rtpinsertsound`）
  3. 執行：`rtpinsertsound <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpmixsound`
- 即時混入預錄音訊
- **提供指令:** `rtpmixsound`
- **步驟:**
  1. 安裝：`sudo apt install -y rtpmixsound`
  2. 看說明：`rtpmixsound -h`（或 `man rtpmixsound`）
  3. 執行：`rtpmixsound <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://www.hackingvoip.com/sec_tools.html

### `siparmyknife`
- SIP 模糊測試工具
- **提供指令:** `siparmyknife`
- **步驟:**
  1. 安裝：`sudo apt install -y siparmyknife`
  2. 看說明：`siparmyknife -h`（或 `man siparmyknife`）
  3. 執行：`siparmyknife <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html

### `sipcrack`
- SIP 登入傾印/破解器
- **提供指令:** `sipcrack`, `sipdump`
- **步驟:**
  1. 安裝：`sudo apt install -y sipcrack`
  2. 看說明：`sipcrack -h`（或 `man sipcrack`）
  3. 執行：`sipcrack <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: http://www.remote-exploit.org/codes_sipcrack.html

### `sipp`
- SIP 協定流量產生器
- **提供指令:** `sipp`
- **步驟:**
  1. 安裝：`sudo apt install -y sipp`
  2. 看說明：`sipp -h`（或 `man sipp`）
  3. 執行：`sipp <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: https://sipp.sourceforge.net/

### `sipvicious`
- 稽核 SIP VoIP 系統的工具
- **提供指令:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **步驟:**
  1. 安裝：`sudo apt install -y sipvicious`
  2. 看說明：`svmap -h`（或 `man svmap`）
  3. 執行：`svmap <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: https://github.com/EnableSecurity/sipvicious

### `voiphopper`
- 執行 VLAN hop 安全測試
- **提供指令:** `voiphopper`
- **步驟:**
  1. 安裝：`sudo apt install -y voiphopper`
  2. 看說明：`voiphopper -h`（或 `man voiphopper`）
  3. 執行：`voiphopper <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: https://sourceforge.net/projects/voiphopper

### `wireshark`
- 網路流量分析器（圖形介面）
- **提供指令:** `wireshark`
- **步驟:**
  1. 安裝：`sudo apt install -y wireshark`
  2. 看說明：`wireshark -h`（或 `man wireshark`）
  3. 執行：`wireshark <NODE_IP>` — 需要自有 SIP/VoIP 目標
- 文件｜Docs: https://www.wireshark.org/


## 17 · 硬體攻擊  (`kali-tools-hardware`)

### `binwalk`
- 分析二進位資料與可執行碼的工具函式庫
- **提供指令:** `binwalk`
- **步驟:**
  1. 安裝：`sudo apt install -y binwalk`
  2. 看說明：`binwalk -h`（或 `man binwalk`）
  3. 執行：`binwalk -h` — 需要對應硬體
- 文件｜Docs: https://github.com/ReFirmLabs/binwalk

### `binwalk3`
- 分析二進位資料與可執行碼的工具函式庫
- **提供指令:** `binwalk3`
- **步驟:**
  1. 安裝：`sudo apt install -y binwalk3`
  2. 看說明：`binwalk3 -h`（或 `man binwalk3`）
  3. 執行：`binwalk3 -h` — 需要對應硬體
- 文件｜Docs: https://github.com/ReFirmLabs/binwalk

### `cutecom`
- 圖形化序列埠終端機（類似 minicom）
- **提供指令:** `cutecom`
- **步驟:**
  1. 安裝：`sudo apt install -y cutecom`
  2. 看說明：`cutecom -h`（或 `man cutecom`）
  3. 執行：`cutecom -h` — 需要對應硬體
- 文件｜Docs: https://gitlab.com/cutecom/cutecom

### `flashrom`
- 辨識、讀寫、清除與驗證 BIOS/ROM/flash 晶片
- **提供指令:** `flashrom`
- **步驟:**
  1. 安裝：`sudo apt install -y flashrom`
  2. 看說明：`flashrom -h`（或 `man flashrom`）
  3. 執行：`flashrom -h` — 需要對應硬體
- 文件｜Docs: http://www.flashrom.org

### `minicom`
- 選單式序列埠通訊程式
- **提供指令:** `ascii-xfr`, `minicom`, `runscript`, `xminicom`
- **步驟:**
  1. 安裝：`sudo apt install -y minicom`
  2. 看說明：`minicom -h`（或 `man minicom`）
  3. 執行：`minicom -h` — 需要對應硬體
- 文件｜Docs: https://salsa.debian.org/minicom-team/minicom

### `openocd`
- 嵌入式目標的開源 JTAG/SWD 除錯方案
- **提供指令:** `openocd`
- **步驟:**
  1. 安裝：`sudo apt install -y openocd`
  2. 看說明：`openocd -h`（或 `man openocd`）
  3. 執行：`openocd -h` — 需要對應硬體
- 文件｜Docs: http://openocd.sourceforge.net/

### `qemu-system-x86`
- QEMU 全系統模擬（x86）
- **提供指令:** `qemu-system-amd64`, `qemu-system-i386`, `qemu-system-x86_64`
- **步驟:**
  1. 安裝：`sudo apt install -y qemu-system-x86`
  2. 看說明：`qemu-system-i386 -h`（或 `man qemu-system-i386`）
  3. 執行：`qemu-system-i386 -h` — 需要對應硬體
- 文件｜Docs: http://www.qemu.org/

### `qemu-user`
- QEMU 使用者模式模擬（靜態執行檔）
- **提供指令:** `qemu-aarch64`, `qemu-aarch64_be`, `qemu-alpha`, `qemu-amd64`, `qemu-arm`, `qemu-arm64`, `qemu-armeb`, `qemu-armel`, `qemu-armhf`, `qemu-hexagon`, `qemu-hppa`, `qemu-i386`, `qemu-loong64`, `qemu-loongarch64`, `qemu-m68k`, `qemu-microblaze`, `qemu-microblazeel`, `qemu-mips`, `qemu-mips64`, `qemu-mips64el`, `qemu-mipsel`, `qemu-mipsn32`, `qemu-mipsn32el`, `qemu-or1k`, `qemu-powerpc`, `qemu-ppc`, `qemu-ppc64`, `qemu-ppc64el`, `qemu-ppc64le`, `qemu-riscv32`, `qemu-riscv64`, `qemu-s390x`, `qemu-sh4`, `qemu-sh4eb`, `qemu-sparc`, `qemu-sparc32plus`, `qemu-sparc64`, `qemu-x86_64`, `qemu-xtensa`, `qemu-xtensaeb`
- **步驟:**
  1. 安裝：`sudo apt install -y qemu-user`
  2. 看說明：`qemu-arm -h`（或 `man qemu-arm`）
  3. 執行：`qemu-arm -h` — 需要對應硬體
- 文件｜Docs: http://www.qemu.org/

### `radare2`
- 免費進階的命令列十六進位編輯器
- **提供指令:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **步驟:**
  1. 安裝：`sudo apt install -y radare2`
  2. 看說明：`radare2 -h`（或 `man radare2`）
  3. 執行：`radare2 -h` — 需要對應硬體
- 文件｜Docs: https://www.radare.org

### `rizin-cutter`
- 以 rizin 為核心的逆向工程平台
- **提供指令:** `cutter`
- **步驟:**
  1. 安裝：`sudo apt install -y rizin-cutter`
  2. 看說明：`cutter -h`（或 `man cutter`）
  3. 執行：`cutter -h` — 需要對應硬體
- 文件｜Docs: https://cutter.re

### `rz-ghidra`
- rizin 的 ghidra 反編譯器與 sleigh 反組譯器
- **步驟:**
  1. 安裝：`sudo apt install -y rz-ghidra`
  2. 看說明：`rz-ghidra -h`（或 `man rz-ghidra`）
  3. 執行：`rz-ghidra -h` — 需要對應硬體
- 文件｜Docs: https://github.com/rizinorg/rz-ghidra


## 18 · 密碼學與隱寫術  (`kali-tools-crypto-stego`)

### `aesfix`
- 修正 AES 金鑰排程位元錯誤的工具
- **提供指令:** `aesfix`
- **步驟:**
  1. 安裝：`sudo apt install -y aesfix`
  2. 看說明：`aesfix -h`（或 `man aesfix`）
  3. 執行：`aesfix <file-you-own>` — 對自有檔案做加密/隱寫
- 文件｜Docs: https://citp.princeton.edu/our-work/memory/code/

### `ccrypt`
- 安全加解密檔案與串流
- **提供指令:** `ccat`, `ccdecrypt`, `ccencrypt`, `ccguess`, `ccrypt`
- **步驟:**
  1. 安裝：`sudo apt install -y ccrypt`
  2. 看說明：`ccrypt -h`（或 `man ccrypt`）
  3. 執行：`ccrypt <file-you-own>` — 對自有檔案做加密/隱寫
- 文件｜Docs: https://ccrypt.sourceforge.net/

### `steghide`
- 隱寫術隱藏工具
- **提供指令:** `steghide`
- **步驟:**
  1. 安裝：`sudo apt install -y steghide`
  2. 看說明：`steghide -h`（或 `man steghide`）
  3. 執行：`steghide <file-you-own>` — 對自有檔案做加密/隱寫
- 文件｜Docs: https://steghide.sourceforge.net/

### `stegosuite`
- 將資訊藏入圖片的隱寫術工具
- **提供指令:** `stegosuite`
- **步驟:**
  1. 安裝：`sudo apt install -y stegosuite`
  2. 看說明：`stegosuite -h`（或 `man stegosuite`）
  3. 執行：`stegosuite <file-you-own>` — 對自有檔案做加密/隱寫
- 文件｜Docs: https://codeberg.org/tob/stegosuite

### `stegsnow`
- 以 ASCII 檔進行隱寫術
- **提供指令:** `stegsnow`
- **步驟:**
  1. 安裝：`sudo apt install -y stegsnow`
  2. 看說明：`stegsnow -h`（或 `man stegsnow`）
  3. 執行：`stegsnow <file-you-own>` — 對自有檔案做加密/隱寫
- 文件｜Docs: https://www.darkside.com.au/snow


## 19 · GPU 工具  (`kali-tools-gpu`)

### `truecrack`
- TrueCrypt 磁區密碼暴力破解器
- **提供指令:** `truecrack`
- **步驟:**
  1. 安裝：`sudo apt install -y truecrack`
  2. 看說明：`truecrack -h`（或 `man truecrack`）
  3. 執行：`truecrack -h` — GPU 加速工具
- 文件｜Docs: https://github.com/lvaccaro/truecrack


## 20 · 資料救援  (`kali-tools-recover`)

### `ddrescue`
- 資料救援與保護工具
- **提供指令:** `dd_rescue`
- **步驟:**
  1. 安裝：`sudo apt install -y ddrescue`
  2. 看說明：`dd_rescue -h`（或 `man dd_rescue`）
  3. 執行：`dd_rescue <device-or-image>` — 從自有媒體救援資料
- 文件｜Docs: http://www.garloff.de/kurt/linux/ddrescue/

### `ext3grep`
- 協助還原 ext3 已刪除檔案的工具
- **提供指令:** `ext3grep`
- **步驟:**
  1. 安裝：`sudo apt install -y ext3grep`
  2. 看說明：`ext3grep -h`（或 `man ext3grep`）
  3. 執行：`ext3grep <device-or-image>` — 從自有媒體救援資料

### `extundelete`
- 從 ext3/ext4 分割區救回已刪除檔案的工具
- **提供指令:** `extundelete`
- **步驟:**
  1. 安裝：`sudo apt install -y extundelete`
  2. 看說明：`extundelete -h`（或 `man extundelete`）
  3. 執行：`extundelete <device-or-image>` — 從自有媒體救援資料
- 文件｜Docs: http://extundelete.sourceforge.net/

### `myrescue`
- 從受損磁碟救回資料
- **提供指令:** `myrescue`, `myrescue-bitmap2ppm`, `myrescue-stat`
- **步驟:**
  1. 安裝：`sudo apt install -y myrescue`
  2. 看說明：`myrescue -h`（或 `man myrescue`）
  3. 執行：`myrescue <device-or-image>` — 從自有媒體救援資料
- 文件｜Docs: https://myrescue.sf.net

### `recoverdm`
- 從壞軌磁碟救回檔案
- **提供指令:** `mergebad`, `recoverdm`
- **步驟:**
  1. 安裝：`sudo apt install -y recoverdm`
  2. 看說明：`recoverdm -h`（或 `man recoverdm`）
  3. 執行：`recoverdm <device-or-image>` — 從自有媒體救援資料
- 文件｜Docs: https://www.vanheusden.com/recoverdm

### `recoverjpeg`
- 救回 JPEG 圖片與 MOV 影片
- **提供指令:** `recoverjpeg`, `recovermov`, `remove-duplicates`, `sort-pictures`
- **步驟:**
  1. 安裝：`sudo apt install -y recoverjpeg`
  2. 看說明：`recoverjpeg -h`（或 `man recoverjpeg`）
  3. 執行：`recoverjpeg <device-or-image>` — 從自有媒體救援資料
- 文件｜Docs: https://www.rfc1149.net/devel/recoverjpeg

### `scrounge-ntfs`
- NTFS 檔案系統資料救援程式
- **提供指令:** `scrounge-ntfs`
- **步驟:**
  1. 安裝：`sudo apt install -y scrounge-ntfs`
  2. 看說明：`scrounge-ntfs -h`（或 `man scrounge-ntfs`）
  3. 執行：`scrounge-ntfs <device-or-image>` — 從自有媒體救援資料
- 文件｜Docs: http://thewalter.net/stef/software/scrounge/

### `undbx`
- 從 .dbx 檔擷取與救回郵件訊息
- **提供指令:** `undbx`
- **步驟:**
  1. 安裝：`sudo apt install -y undbx`
  2. 看說明：`undbx -h`（或 `man undbx`）
  3. 執行：`undbx <device-or-image>` — 從自有媒體救援資料
- 文件｜Docs: https://github.com/ZungBang/undbx


## 21 · 偵測  (`kali-tools-detect`)

### `grokevt`
- 讀取 Windows 事件紀錄檔的腳本
- **提供指令:** `grokevt-addlog`, `grokevt-builddb`, `grokevt-dumpmsgs`, `grokevt-findlogs`, `grokevt-parselog`, `grokevt-ripdll`
- **步驟:**
  1. 安裝：`sudo apt install -y grokevt`
  2. 看說明：`grokevt-addlog -h`（或 `man grokevt-addlog`）
  3. 執行：`sudo grokevt-addlog` — 在自有主機上偵測
- 文件｜Docs: http://projects.sentinelchicken.org/grokevt/

### `sentrypeer`
- VoIP 的 SIP 點對點蜜罐
- **提供指令:** `sentrypeer`
- **步驟:**
  1. 安裝：`sudo apt install -y sentrypeer`
  2. 看說明：`sentrypeer -h`（或 `man sentrypeer`）
  3. 執行：`sudo sentrypeer` — 在自有主機上偵測
- 文件｜Docs: https://sentrypeer.org


## 22 · 防護／強化  (`kali-tools-protect`)

### `clamav`
- Unix 防毒工具（命令列介面）
- **提供指令:** `clambc`, `clamscan`, `clamsubmit`, `sigtool`
- **步驟:**
  1. 安裝：`sudo apt install -y clamav`
  2. 看說明：`clambc -h`（或 `man clambc`）
  3. 執行：`sudo clambc` — 強化自有主機
- 文件｜Docs: https://www.clamav.net/

### `cryptsetup`
- 磁碟加密支援（啟動腳本）
- **提供指令:** `cryptdisks_start`, `cryptdisks_stop`, `luksformat`
- **步驟:**
  1. 安裝：`sudo apt install -y cryptsetup`
  2. 看說明：`luksformat -h`（或 `man luksformat`）
  3. 執行：`sudo luksformat` — 強化自有主機
- 文件｜Docs: https://gitlab.com/cryptsetup/cryptsetup

### `cryptsetup-initramfs`
- 磁碟加密支援（initramfs 整合）
- **步驟:**
  1. 安裝：`sudo apt install -y cryptsetup-initramfs`
  2. 看說明：`cryptsetup-initramfs -h`（或 `man cryptsetup-initramfs`）
  3. 執行：`sudo cryptsetup-initramfs` — 強化自有主機
- 文件｜Docs: https://gitlab.com/cryptsetup/cryptsetup

### `cryptsetup-nuke-password`
- 在解鎖提示輸入特殊密碼即清除 LUKS 金鑰
- **步驟:**
  1. 安裝：`sudo apt install -y cryptsetup-nuke-password`
  2. 看說明：`cryptsetup-nuke-password -h`（或 `man cryptsetup-nuke-password`）
  3. 執行：`sudo cryptsetup-nuke-password` — 強化自有主機
- 文件｜Docs: https://salsa.debian.org/pkg-security-team/cryptsetup-nuke-password

### `fwbuilder`
- 防火牆管理 GUI
- **提供指令:** `fwb_compile_all`, `fwbedit`, `fwb_iosacl`, `fwb_ipf`, `fwb_ipfw`, `fwb_ipt`, `fwb_pf`, `fwb_pix`, `fwb_procurve_acl`, `fwbuilder`
- **步驟:**
  1. 安裝：`sudo apt install -y fwbuilder`
  2. 看說明：`fwbuilder -h`（或 `man fwbuilder`）
  3. 執行：`sudo fwbuilder` — 強化自有主機
- 文件｜Docs: https://github.com/fwbuilder/fwbuilder/


## 23 · 事件回應  (`kali-tools-respond`)

### `ewf-tools`
- 讀寫 EWF 檔的工具集
- **提供指令:** `ewfacquire`, `ewfacquirestream`, `ewfdebug`, `ewfexport`, `ewfinfo`, `ewfmount`, `ewfrecover`, `ewfverify`
- **步驟:**
  1. 安裝：`sudo apt install -y ewf-tools`
  2. 看說明：`ewfinfo -h`（或 `man ewfinfo`）
  3. 執行：`ewfinfo -h` — 事件回應，於自有系統
- 文件｜Docs: https://github.com/libyal/libewf-legacy

### `guymager`
- 以 Qt 為基礎的鑑識映像工具
- **提供指令:** `guymager`
- **步驟:**
  1. 安裝：`sudo apt install -y guymager`
  2. 看說明：`guymager -h`（或 `man guymager`）
  3. 執行：`guymager -h` — 事件回應，於自有系統
- 文件｜Docs: https://guymager.sourceforge.net/

### `hashrat`
- 支援多種雜湊與遞迴的雜湊工具
- **提供指令:** `hashrat`
- **步驟:**
  1. 安裝：`sudo apt install -y hashrat`
  2. 看說明：`hashrat -h`（或 `man hashrat`）
  3. 執行：`hashrat -h` — 事件回應，於自有系統
- 文件｜Docs: https://github.com/ColumPaget/Hashrat/

### `impacket-scripts`
- 實用 impacket 腳本範例連結
- **提供指令:** `impacket-addcomputer`, `impacket-atexec`, `impacket-changepasswd`, `impacket-dacledit`, `impacket-dcomexec`, `impacket-describeTicket`, `impacket-dpapi`, `impacket-DumpNTLMInfo`, `impacket-esentutl`, `impacket-exchanger`, `impacket-findDelegation`, `impacket-GetADComputers`, `impacket-GetADUsers`, `impacket-getArch`, `impacket-Get-GPPPassword`, `impacket-GetLAPSPassword`, `impacket-GetNPUsers`, `impacket-getPac`, `impacket-getST`, `impacket-getTGT`, `impacket-GetUserSPNs`, `impacket-goldenPac`, `impacket-karmaSMB`, `impacket-keylistattack`, `impacket-lookupsid`, `impacket-machine_role`, `impacket-mimikatz`, `impacket-mqtt_check`, `impacket-mssqlclient`, `impacket-mssqlinstance`, `impacket-net`, `impacket-ntfs-read`, `impacket-ntlmrelayx`, `impacket-owneredit`, `impacket-ping`, `impacket-ping6`, `impacket-psexec`, `impacket-raiseChild`, `impacket-rbcd`, `impacket-rdp_check`, `impacket-reg`, `impacket-registry-read`, `impacket-rpcmap`, `impacket-sambaPipe`, `impacket-services`, `impacket-smbclient`, `impacket-smbexec`, `impacket-smbserver`, `impacket-sniff`, `impacket-sniffer`, `impacket-split`, `impacket-ticketConverter`, `impacket-ticketer`, `impacket-tstool`, `impacket-wmipersist`, `impacket-wmiquery`
- **步驟:**
  1. 安裝：`sudo apt install -y impacket-scripts`
  2. 看說明：`impacket-net -h`（或 `man impacket-net`）
  3. 執行：`impacket-net -h` — 事件回應，於自有系統

### `kali-tools-forensics`
- Kali 的鑑識工具選單
- **步驟:**
  1. 安裝：`sudo apt install -y kali-tools-forensics`
  2. 看說明：`kali-tools-forensics -h`（或 `man kali-tools-forensics`）
  3. 執行：`kali-tools-forensics -h` — 事件回應，於自有系統
- 文件｜Docs: https://www.kali.org

### `netsniff-ng`
- Linux 網路封包嗅探工具組
- **提供指令:** `astraceroute`, `bpfc`, `curvetun`, `flowtop`, `ifpps`, `mausezahn`, `netsniff-ng`, `trafgen`
- **步驟:**
  1. 安裝：`sudo apt install -y netsniff-ng`
  2. 看說明：`netsniff-ng -h`（或 `man netsniff-ng`）
  3. 執行：`netsniff-ng -h` — 事件回應，於自有系統
- 文件｜Docs: http://netsniff-ng.org/


## 24 · Windows 資源  (`kali-tools-windows-resources`)

### `dbd`
- 含加密的 Netcat 複製品
- **提供指令:** `dbd`
- **步驟:**
  1. 安裝：`sudo apt install -y dbd`
  2. 看說明：`dbd -h`（或 `man dbd`）
  3. 執行：`dbd -h` — Windows 目標資源（自有）
- 文件｜Docs: https://github.com/gitdurandal/dbd

### `dnschef`
- 滲透測試用的 DNS 代理
- **提供指令:** `dnschef`
- **步驟:**
  1. 安裝：`sudo apt install -y dnschef`
  2. 看說明：`dnschef -h`（或 `man dnschef`）
  3. 執行：`dnschef -h` — Windows 目標資源（自有）
- 文件｜Docs: https://github.com/iphelix/dnschef

### `heartleech`
- 偵測 Heartbleed OpenSSL 漏洞的掃描器
- **提供指令:** `heartleech`
- **步驟:**
  1. 安裝：`sudo apt install -y heartleech`
  2. 看說明：`heartleech -h`（或 `man heartleech`）
  3. 執行：`heartleech -h` — Windows 目標資源（自有）
- 文件｜Docs: https://github.com/robertdavidgraham/heartleech

### `hyperion`
- 32 位元 PE 執行檔的執行期加密器
- **步驟:**
  1. 安裝：`sudo apt install -y hyperion`
  2. 看說明：`hyperion -h`（或 `man hyperion`）
  3. 執行：`hyperion -h` — Windows 目標資源（自有）
- 文件｜Docs: http://www.nullsecurity.net/tools/binary.html

### `mimikatz`
- 利用 Windows 管理權限明文顯示密碼
- **提供指令:** `mimikatz`
- **步驟:**
  1. 安裝：`sudo apt install -y mimikatz`
  2. 看說明：`mimikatz -h`（或 `man mimikatz`）
  3. 執行：`mimikatz -h` — Windows 目標資源（自有）
- 文件｜Docs: https://blog.gentilkiwi.com/mimikatz

### `ncat-w32`
- 21 世紀的 Netcat
- **提供指令:** `ncat-w32`
- **步驟:**
  1. 安裝：`sudo apt install -y ncat-w32`
  2. 看說明：`ncat-w32 -h`（或 `man ncat-w32`）
  3. 執行：`ncat-w32 -h` — Windows 目標資源（自有）
- 文件｜Docs: https://nmap.org/ncat/

### `powercat`
- 以 PowerShell 實作的 netcat 功能
- **提供指令:** `powercat`
- **步驟:**
  1. 安裝：`sudo apt install -y powercat`
  2. 看說明：`powercat -h`（或 `man powercat`）
  3. 執行：`powercat -h` — Windows 目標資源（自有）
- 文件｜Docs: https://github.com/besimorhino/powercat

### `sbd`
- Linux/Windows 的安全後門
- **提供指令:** `sbd`
- **步驟:**
  1. 安裝：`sudo apt install -y sbd`
  2. 看說明：`sbd -h`（或 `man sbd`）
  3. 執行：`sbd -h` — Windows 目標資源（自有）
- 文件｜Docs: https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz

### `secure-socket-funneling-windows-binaries`
- SSF（Windows 執行檔）
- **步驟:**
  1. 安裝：`sudo apt install -y secure-socket-funneling-windows-binaries`
  2. 看說明：`secure-socket-funneling-windows-binaries -h`（或 `man secure-socket-funneling-windows-binaries`）
  3. 執行：`secure-socket-funneling-windows-binaries -h` — Windows 目標資源（自有）
- 文件｜Docs: https://github.com/securesocketfunneling/ssf

### `tftpd32`
- 支援 IPv6 的開源 Windows TFTP 伺服器
- **提供指令:** `tftpd32`
- **步驟:**
  1. 安裝：`sudo apt install -y tftpd32`
  2. 看說明：`tftpd32 -h`（或 `man tftpd32`）
  3. 執行：`tftpd32 -h` — Windows 目標資源（自有）
- 文件｜Docs: https://tftpd32.jounin.net/tftpd32.html

### `wce`
- Windows 憑證編輯器
- **提供指令:** `wce`
- **步驟:**
  1. 安裝：`sudo apt install -y wce`
  2. 看說明：`wce -h`（或 `man wce`）
  3. 執行：`wce -h` — Windows 目標資源（自有）
- 文件｜Docs: http://www.ampliasecurity.com/research.html

### `windows-binaries`
- 各種滲透測試用 Windows 執行檔
- **提供指令:** `windows-binaries`, `windows-resources`
- **步驟:**
  1. 安裝：`sudo apt install -y windows-binaries`
  2. 看說明：`windows-binaries -h`（或 `man windows-binaries`）
  3. 執行：`windows-binaries -h` — Windows 目標資源（自有）
- 文件｜Docs: https://www.kali.org

### `windows-privesc-check`
- Windows 權限提升檢查工具
- **提供指令:** `windows-privesc-check`
- **步驟:**
  1. 安裝：`sudo apt install -y windows-privesc-check`
  2. 看說明：`windows-privesc-check -h`（或 `man windows-privesc-check`）
  3. 執行：`windows-privesc-check -h` — Windows 目標資源（自有）
- 文件｜Docs: https://pentestmonkey.net/tools/windows-privesc-check


## T · 最常用 10 大工具  (`kali-tools-top10`)

### `aircrack-ng`
- 無線 WEP/WPA 破解工具組
- **提供指令:** `airbase-ng`, `aircrack-ng`, `airdecap-ng`, `airdecloak-ng`, `aireplay-ng`, `airmon-ng`, `airodump-ng`, `airodump-ng-oui-update`, `airolib-ng`, `airserv-ng`, `airtun-ng`, `airventriloquist-ng`, `besside-ng`, `besside-ng-crawler`, `buddy-ng`, `dcrack`, `easside-ng`, `ivstools`, `kstats`, `makeivs-ng`, `packetforge-ng`, `tkiptun-ng`, `wesside-ng`, `wpaclean`
- **步驟:**
  1. 安裝：`sudo apt install -y aircrack-ng`
  2. 看說明：`aircrack-ng -h`（或 `man aircrack-ng`）
  3. 執行：`aircrack-ng -h` — 最常用工具
- 文件｜Docs: https://www.aircrack-ng.org/

### `hydra` ✓ verified on VM
- 非常快速的網路登入破解器
- **提供指令:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **步驟:**
  1. 安裝：`sudo apt install -y hydra`
  2. 看說明：`hydra -h`（或 `man hydra`）
  3. 執行：`hydra -h` — 最常用工具
- **實際 --help（已在 VM 驗證）:**
  ```
  Hydra v9.7 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).
  
  hydra: invalid option -- '-'
  ```
- 文件｜Docs: https://github.com/vanhauser-thc/thc-hydra

### `john` ✓ verified on VM
- 主動式密碼破解工具
- **提供指令:** `base64conv`, `bitlocker2john`, `calc_stat`, `cprepair`, `dmg2john`, `eapmd5tojohn`, `genmkvpwd`, `gpg2john`, `hccap2john`, `john`, `keepass2john`, `mailer`, `mkvcalcproba`, `putty2john`, `racf2john`, `rar2john`, `raw2dyna`, `SIPdump`, `tgtsnarf`, `uaf2john`, `unafs`, `undrop`, `unique`, `unshadow`, `vncpcap2john`, `wpapcap2john`, `zip2john`
- **步驟:**
  1. 安裝：`sudo apt install -y john`
  2. 看說明：`john -h`（或 `man john`）
  3. 執行：`john -h` — 最常用工具
- **實際 --help（已在 VM 驗證）:**
  ```
  Created directory: /home/kali/.john
  John the Ripper 1.9.0-jumbo-1+bleeding-aec1328d6c 2021-11-02 10:45:52 +0100 OMP [linux-gnu 64-bit aarch64 ASIMD AC]
  Copyright (c) 1996-2021 by Solar Designer and others
  Homepage: https://www.openwall.com/john/
  
  Usage: john [OPTIONS] [PASSWORD-FILES]
  ```
- 文件｜Docs: https://github.com/openwall/john

### `metasploit-framework`
- 漏洞開發與弱點研究框架
- **提供指令:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **步驟:**
  1. 安裝：`sudo apt install -y metasploit-framework`
  2. 看說明：`msf-jsobfu -h`（或 `man msf-jsobfu`）
  3. 執行：`msf-jsobfu -h` — 最常用工具
- 文件｜Docs: https://www.metasploit.com/

### `netexec` ✓ verified on VM
- 網路執行工具（NetExec）
- **提供指令:** `netexec`, `nxc`, `nxcdb`
- **步驟:**
  1. 安裝：`sudo apt install -y netexec`
  2. 看說明：`netexec -h`（或 `man netexec`）
  3. 執行：`netexec -h` — 最常用工具
- **實際 --help（已在 VM 驗證）:**
  ```
  [*] First time use detected
  [*] Creating home directory structure
  [*] Creating missing folder logs
  [*] Creating missing folder modules
  [*] Creating missing folder workspaces
  [*] Creating missing folder obfuscated_scripts
  ```
- 文件｜Docs: https://github.com/Pennyw0rth/NetExec

### `nmap` ✓ verified on VM
- 網路測繪器（The Network Mapper）
- **提供指令:** `nmap`, `nping`
- **步驟:**
  1. 安裝：`sudo apt install -y nmap`
  2. 看說明：`nmap -h`（或 `man nmap`）
  3. 執行：`nmap -h` — 最常用工具
- **實際 --help（已在 VM 驗證）:**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- 文件｜Docs: https://nmap.org/

### `responder`
- LLMNR/NBT-NS/mDNS 投毒器
- **提供指令:** `responder`, `responder-BrowserListener`, `responder-DHCP_Auto`, `responder-FindSQLSrv`, `responder-Icmp-Redirect`, `responder-MultiRelay`, `responder-RunFinger`
- **步驟:**
  1. 安裝：`sudo apt install -y responder`
  2. 看說明：`responder -h`（或 `man responder`）
  3. 執行：`responder -h` — 最常用工具
- 文件｜Docs: https://github.com/lgandx/Responder

### `sqlmap` ✓ verified on VM
- 自動化 SQL 注入工具
- **提供指令:** `sqlmap`, `sqlmapapi`
- **步驟:**
  1. 安裝：`sudo apt install -y sqlmap`
  2. 看說明：`sqlmap -h`（或 `man sqlmap`）
  3. 執行：`sqlmap -h` — 最常用工具
- **實際 --help（已在 VM 驗證）:**
  ```
          ___
         __H__
   ___ ___[)]_____ ___ ___  {1.10.9#stable}
  |_ -| . [(]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- 文件｜Docs: https://sqlmap.org/

### `wireshark`
- 網路流量分析器（圖形介面）
- **提供指令:** `wireshark`
- **步驟:**
  1. 安裝：`sudo apt install -y wireshark`
  2. 看說明：`wireshark -h`（或 `man wireshark`）
  3. 執行：`wireshark -h` — 最常用工具
- 文件｜Docs: https://www.wireshark.org/

