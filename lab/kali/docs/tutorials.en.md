# Kali tool tutorials — step-by-step for every tool (English)

> 繁體中文：[`tutorials.zh-TW.md`](tutorials.zh-TW.md) · catalogue: [`catalogue.en.md`](catalogue.en.md)

Every tool has 3 steps: install → read its help → run it (against an asset you **own**, `<NODE_IP>`). `Provides` lists the commands the package actually ships (via apt-file). Scope: `../../ROE.md`.


## 01 · Information Gathering / Reconnaissance  (`kali-tools-information-gathering`)

### `0trace`
- traceroute tool that can run within an existing TCP connection
- **Provides:** `0trace.sh`, `sendprobe`, `usleep`
- **Steps:**
  1. Install: `sudo apt install -y 0trace`
  2. Help: `usleep -h`  (or `man usleep`)
  3. Run: `usleep <NODE_IP>` — run recon against a node you own
- Docs: https://lcamtuf.coredump.cx

### `arping`
- sends IP and/or ARP pings (to the MAC address)
- **Provides:** `arping`
- **Steps:**
  1. Install: `sudo apt install -y arping`
  2. Help: `arping -h`  (or `man arping`)
  3. Run: `arping <NODE_IP>` — run recon against a node you own
- Docs: https://www.habets.pp.se/synscan/programs.php?prog=arping

### `braa`
- Mass SNMP scanner
- **Provides:** `braa`
- **Steps:**
  1. Install: `sudo apt install -y braa`
  2. Help: `braa -h`  (or `man braa`)
  3. Run: `braa <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/mteg/braa

### `dmitry`
- Deepmagic Information Gathering Tool
- **Provides:** `dmitry`
- **Steps:**
  1. Install: `sudo apt install -y dmitry`
  2. Help: `dmitry -h`  (or `man dmitry`)
  3. Run: `dmitry <NODE_IP>` — run recon against a node you own
- Docs: https://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/

### `dnsenum`
- tool to enumerate domain DNS information
- **Provides:** `dnsenum`
- **Steps:**
  1. Install: `sudo apt install -y dnsenum`
  2. Help: `dnsenum -h`  (or `man dnsenum`)
  3. Run: `dnsenum <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/SparrowOchon/dnsenum2

### `dnsmap`
- DNS domain name brute forcing tool
- **Provides:** `dnsmap`, `dnsmap-bulk`
- **Steps:**
  1. Install: `sudo apt install -y dnsmap`
  2. Help: `dnsmap -h`  (or `man dnsmap`)
  3. Run: `dnsmap <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/resurrecting-open-source-projects/dnsmap

### `dnsrecon`
- Powerful DNS enumeration script
- **Provides:** `dnsrecon`
- **Steps:**
  1. Install: `sudo apt install -y dnsrecon`
  2. Help: `dnsrecon -h`  (or `man dnsrecon`)
  3. Run: `dnsrecon <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/darkoperator/dnsrecon

### `dnstracer`
- trace DNS queries to the source
- **Provides:** `dnstracer`
- **Steps:**
  1. Install: `sudo apt install -y dnstracer`
  2. Help: `dnstracer -h`  (or `man dnstracer`)
  3. Run: `dnstracer <NODE_IP>` — run recon against a node you own
- Docs: http://www.mavetju.org/unix/dnstracer.php

### `dnswalk`
- Checks dns zone information using nameserver lookups
- **Provides:** `dnswalk`
- **Steps:**
  1. Install: `sudo apt install -y dnswalk`
  2. Help: `dnswalk -h`  (or `man dnswalk`)
  3. Run: `dnswalk <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/davebarr/dnswalk

### `enum4linux`
- Enumerates info from Windows and Samba systems
- **Provides:** `enum4linux`
- **Steps:**
  1. Install: `sudo apt install -y enum4linux`
  2. Help: `enum4linux -h`  (or `man enum4linux`)
  3. Run: `enum4linux <NODE_IP>` — run recon against a node you own
- Docs: https://labs.portcullis.co.uk/tools/enum4linux/

### `fierce`
- Domain DNS scanner
- **Provides:** `fierce`
- **Steps:**
  1. Install: `sudo apt install -y fierce`
  2. Help: `fierce -h`  (or `man fierce`)
  3. Run: `fierce <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/mschwager/fierce

### `firewalk`
- active reconnaissance network security tool
- **Provides:** `firewalk`
- **Steps:**
  1. Install: `sudo apt install -y firewalk`
  2. Help: `firewalk -h`  (or `man firewalk`)
  3. Run: `firewalk <NODE_IP>` — run recon against a node you own
- Docs: http://packetfactory.openwall.net/projects/firewalk/

### `fping`
- sends ICMP ECHO_REQUEST packets to network hosts
- **Provides:** `fping`, `fping6`
- **Steps:**
  1. Install: `sudo apt install -y fping`
  2. Help: `fping -h`  (or `man fping`)
  3. Run: `fping <NODE_IP>` — run recon against a node you own
- Docs: https://www.fping.org/

### `fragrouter`
- IDS evasion toolkit
- **Provides:** `fragrouter`
- **Steps:**
  1. Install: `sudo apt install -y fragrouter`
  2. Help: `fragrouter -h`  (or `man fragrouter`)
  3. Run: `fragrouter <NODE_IP>` — run recon against a node you own
- Docs: http://www.anzen.com/research/nidsbench/fragrouter.html

### `ftester`
- Tool for testing firewalls and Intrusion Detection System (IDS)
- **Provides:** `freport`, `ftest`, `ftestd`
- **Steps:**
  1. Install: `sudo apt install -y ftester`
  2. Help: `ftest -h`  (or `man ftest`)
  3. Run: `ftest <NODE_IP>` — run recon against a node you own
- Docs: https://dev.inversepath.com/ftester/

### `hping3`
- Active Network Smashing Tool
- **Provides:** `hping3`
- **Steps:**
  1. Install: `sudo apt install -y hping3`
  2. Help: `hping3 -h`  (or `man hping3`)
  3. Run: `hping3 <NODE_IP>` — run recon against a node you own
- Docs: http://www.hping.org/

### `ike-scan`
- discover and fingerprint IKE hosts (IPsec VPN Servers)
- **Provides:** `ike-scan`, `psk-crack`
- **Steps:**
  1. Install: `sudo apt install -y ike-scan`
  2. Help: `ike-scan -h`  (or `man ike-scan`)
  3. Run: `ike-scan <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/royhills/ike-scan

### `intrace`
- Traceroute-like application piggybacking on existing TCP connections
- **Provides:** `intrace`
- **Steps:**
  1. Install: `sudo apt install -y intrace`
  2. Help: `intrace -h`  (or `man intrace`)
  3. Run: `intrace <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/robertswiecki/intrace

### `iputils-arping`
- Tool to send ICMP echo requests to an ARP address
- **Provides:** `arping`
- **Steps:**
  1. Install: `sudo apt install -y iputils-arping`
  2. Help: `arping -h`  (or `man arping`)
  3. Run: `arping <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/iputils/iputils/

### `irpas`
- Internetwork Routing Protocol Attack Suite
- **Provides:** `ass`, `cdp`, `dfkaa`, `dhcpx`, `file2cable`, `hsrp`, `icmp_redirect`, `igrp`, `inetmask`, `irdp`, `irdpresponder`, `itrace`, `netenum`, `protos`, `tctrace`, `timestamp`
- **Steps:**
  1. Install: `sudo apt install -y irpas`
  2. Help: `ass -h`  (or `man ass`)
  3. Run: `ass <NODE_IP>` — run recon against a node you own
- Docs: https://web.archive.org/web/20200208113522fw_/http://phenoelit.org/fr/tools.html

### `lbd`
- Load balancer detector
- **Provides:** `lbd`
- **Steps:**
  1. Install: `sudo apt install -y lbd`
  2. Help: `lbd -h`  (or `man lbd`)
  3. Run: `lbd <NODE_IP>` — run recon against a node you own
- Docs: http://ge.mine.nu/code/

### `legion`
- semi-automated network penetration testing tool
- **Provides:** `legion`
- **Steps:**
  1. Install: `sudo apt install -y legion`
  2. Help: `legion -h`  (or `man legion`)
  3. Run: `legion <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/Hackman238/legion

### `maltego`
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego <NODE_IP>` — run recon against a node you own
- Docs: https://www.maltego.com

### `masscan`
- TCP port scanner
- **Provides:** `masscan`
- **Steps:**
  1. Install: `sudo apt install -y masscan`
  2. Help: `masscan -h`  (or `man masscan`)
  3. Run: `masscan <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/robertdavidgraham/masscan

### `metagoofil`
- Tool designed for extracting metadata of public documents
- **Provides:** `metagoofil`
- **Steps:**
  1. Install: `sudo apt install -y metagoofil`
  2. Help: `metagoofil -h`  (or `man metagoofil`)
  3. Run: `metagoofil <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/opsdisk/metagoofil

### `nbtscan`
- scan networks searching for NetBIOS information
- **Provides:** `nbtscan`
- **Steps:**
  1. Install: `sudo apt install -y nbtscan`
  2. Help: `nbtscan -h`  (or `man nbtscan`)
  3. Run: `nbtscan <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/resurrecting-open-source-projects/nbtscan

### `ncat`
- NMAP netcat reimplementation
- **Provides:** `ncat`
- **Steps:**
  1. Install: `sudo apt install -y ncat`
  2. Help: `ncat -h`  (or `man ncat`)
  3. Run: `ncat <NODE_IP>` — run recon against a node you own
- Docs: https://nmap.org/

### `netdiscover`
- active/passive network address scanner using ARP requests
- **Provides:** `netdiscover`
- **Steps:**
  1. Install: `sudo apt install -y netdiscover`
  2. Help: `netdiscover -h`  (or `man netdiscover`)
  3. Run: `netdiscover <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/netdiscover-scanner/netdiscover

### `netmask`
- helps determine network masks
- **Provides:** `netmask`
- **Steps:**
  1. Install: `sudo apt install -y netmask`
  2. Help: `netmask -h`  (or `man netmask`)
  3. Run: `netmask <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/tlby/netmask

### `nmap`
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap <NODE_IP>` — run recon against a node you own
- Docs: https://nmap.org/

### `onesixtyone`
- fast and simple SNMP scanner
- **Provides:** `onesixtyone`
- **Steps:**
  1. Install: `sudo apt install -y onesixtyone`
  2. Help: `onesixtyone -h`  (or `man onesixtyone`)
  3. Run: `onesixtyone <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/trailofbits/onesixtyone

### `p0f`
- Passive OS fingerprinting tool
- **Provides:** `p0f`
- **Steps:**
  1. Install: `sudo apt install -y p0f`
  2. Help: `p0f -h`  (or `man p0f`)
  3. Run: `p0f <NODE_IP>` — run recon against a node you own
- Docs: https://lcamtuf.coredump.cx/p0f3/

### `qsslcaudit`
- test SSL/TLS clients how secure they are
- **Provides:** `qsslcaudit`
- **Steps:**
  1. Install: `sudo apt install -y qsslcaudit`
  2. Help: `qsslcaudit -h`  (or `man qsslcaudit`)
  3. Run: `qsslcaudit <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/gremwell/qsslcaudit

### `recon-ng`
- Web Reconnaissance framework written in Python
- **Provides:** `recon-cli`, `recon-ng`, `recon-web`
- **Steps:**
  1. Install: `sudo apt install -y recon-ng`
  2. Help: `recon-ng -h`  (or `man recon-ng`)
  3. Run: `recon-ng <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/lanmaster53/recon-ng

### `smbmap`
- handy SMB enumeration tool
- **Provides:** `smbmap`
- **Steps:**
  1. Install: `sudo apt install -y smbmap`
  2. Help: `smbmap -h`  (or `man smbmap`)
  3. Run: `smbmap <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/ShawnDEvans/smbmap

### `smtp-user-enum`
- Username guessing tool for the SMTP service
- **Provides:** `smtp-user-enum`
- **Steps:**
  1. Install: `sudo apt install -y smtp-user-enum`
  2. Help: `smtp-user-enum -h`  (or `man smtp-user-enum`)
  3. Run: `smtp-user-enum <NODE_IP>` — run recon against a node you own
- Docs: http://pentestmonkey.net/tools/user-enumeration/smtp-user-enum

### `snmpcheck`
- SNMP service enumeration tool
- **Provides:** `snmp-check`
- **Steps:**
  1. Install: `sudo apt install -y snmpcheck`
  2. Help: `snmp-check -h`  (or `man snmp-check`)
  3. Run: `snmp-check <NODE_IP>` — run recon against a node you own
- Docs: http://www.nothink.org/codes/snmpcheck/index.php

### `ssldump`
- SSLv3/TLS network protocol analyzer
- **Provides:** `ssldump`
- **Steps:**
  1. Install: `sudo apt install -y ssldump`
  2. Help: `ssldump -h`  (or `man ssldump`)
  3. Run: `ssldump <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/adulau/ssldump

### `sslh`
- Applicative protocol multiplexer
- **Provides:** `sslh`, `sslh-ev`, `sslh-select`
- **Steps:**
  1. Install: `sudo apt install -y sslh`
  2. Help: `sslh -h`  (or `man sslh`)
  3. Run: `sslh <NODE_IP>` — run recon against a node you own
- Docs: http://www.rutschle.net/tech/sslh/README.html

### `sslscan`
- Tests SSL/TLS enabled services to discover supported cipher suites
- **Provides:** `sslscan`
- **Steps:**
  1. Install: `sudo apt install -y sslscan`
  2. Help: `sslscan -h`  (or `man sslscan`)
  3. Run: `sslscan <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/rbsec/sslscan

### `sslyze`
- Fast and full-featured SSL scanner
- **Provides:** `sslyze`
- **Steps:**
  1. Install: `sudo apt install -y sslyze`
  2. Help: `sslyze -h`  (or `man sslyze`)
  3. Run: `sslyze <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/nabla-c0d3/sslyze

### `swaks`
- SMTP command-line test tool
- **Provides:** `swaks`
- **Steps:**
  1. Install: `sudo apt install -y swaks`
  2. Help: `swaks -h`  (or `man swaks`)
  3. Run: `swaks <NODE_IP>` — run recon against a node you own
- Docs: https://www.jetmore.org/john/code/swaks/

### `thc-ipv6`
- The Hacker Choice's IPv6 Attack Toolkit
- **Provides:** `atk6-address6`, `atk6-alive6`, `atk6-connect6`, `atk6-connsplit6`, `atk6-covert_send6`, `atk6-covert_send6d`, `atk6-denial6`, `atk6-detect-new-ip6`, `atk6-detect_sniffer6`, `atk6-dnsdict6`, `atk6-dnsrevenum6`, `atk6-dnssecwalk`, `atk6-dos-new-ip6`, `atk6-dump_dhcp6`, `atk6-dump_router6`, `atk6-exploit6`, `atk6-extract_hosts6`, `atk6-extract_networks6`, `atk6-fake_advertise6`, `atk6-fake_dhcps6`, `atk6-fake_dns6d`, `atk6-fake_dnsupdate6`, `atk6-fake_mipv6`, `atk6-fake_mld26`, `atk6-fake_mld6`, `atk6-fake_mldrouter6`, `atk6-fake_pim6`, `atk6-fake_router26`, `atk6-fake_router6`, `atk6-fake_solicitate6`, `atk6-firewall6`, `atk6-flood_advertise6`, `atk6-flood_dhcpc6`, `atk6-flood_mld26`, `atk6-flood_mld6`, `atk6-flood_mldrouter6`, `atk6-flood_redir6`, `atk6-flood_router26`, `atk6-flood_router6`, `atk6-flood_rs6`, `atk6-flood_solicitate6`, `atk6-flood_unreach6`, `atk6-four2six`, `atk6-fragmentation6`, `atk6-fragrouter6`, `atk6-fuzz_dhcpc6`, `atk6-fuzz_dhcps6`, `atk6-fuzz_ip6`, `atk6-implementation6`, `atk6-implementation6d`, `atk6-inject_alive6`, `atk6-inverse_lookup6`, `atk6-kill_router6`, `atk6-ndpexhaust26`, `atk6-ndpexhaust6`, `atk6-node_query6`, `atk6-parasite6`, `atk6-passive_discovery6`, `atk6-randicmp6`, `atk6-redir6`, `atk6-redirsniff6`, `atk6-rsmurf6`, `atk6-sendpees6`, `atk6-sendpeesmp6`, `atk6-smurf6`, `atk6-thcping6`, `atk6-thcsyn6`, `atk6-toobig6`, `atk6-toobigsniff6`, `atk6-trace6`
- **Steps:**
  1. Install: `sudo apt install -y thc-ipv6`
  2. Help: `atk6-alive6 -h`  (or `man atk6-alive6`)
  3. Run: `atk6-alive6 <NODE_IP>` — run recon against a node you own
- Docs: http://www.thc.org/thc-ipv6/

### `theharvester`
- tool for gathering e-mail accounts and subdomain names from public sources
- **Provides:** `restfulHarvest`, `theharvester`, `theHarvester`
- **Steps:**
  1. Install: `sudo apt install -y theharvester`
  2. Help: `theharvester -h`  (or `man theharvester`)
  3. Run: `theharvester <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/laramies/theHarvester

### `tlssled`
- Evaluates the security of a target SSL/TLS (HTTPS) server
- **Provides:** `tlssled`
- **Steps:**
  1. Install: `sudo apt install -y tlssled`
  2. Help: `tlssled -h`  (or `man tlssled`)
  3. Run: `tlssled <NODE_IP>` — run recon against a node you own
- Docs: http://www.taddong.com/en/lab.html

### `twofi`
- Twitter words of interest
- **Provides:** `twofi`
- **Steps:**
  1. Install: `sudo apt install -y twofi`
  2. Help: `twofi -h`  (or `man twofi`)
  3. Run: `twofi <NODE_IP>` — run recon against a node you own
- Docs: https://www.digininja.org/projects/twofi.php

### `unicornscan`
- Userland distributed TCP/IP stack
- **Provides:** `fantaip`, `unibrow`, `unicfgtst`, `unicornscan`, `us`
- **Steps:**
  1. Install: `sudo apt install -y unicornscan`
  2. Help: `unicornscan -h`  (or `man unicornscan`)
  3. Run: `unicornscan <NODE_IP>` — run recon against a node you own
- Docs: http://www.unicornscan.org/

### `urlcrazy`
- Domain typo generator
- **Provides:** `urlcrazy`
- **Steps:**
  1. Install: `sudo apt install -y urlcrazy`
  2. Help: `urlcrazy -h`  (or `man urlcrazy`)
  3. Run: `urlcrazy <NODE_IP>` — run recon against a node you own
- Docs: https://www.morningstarsecurity.com/research/urlcrazy

### `wafw00f`
- identify and fingerprint Web Application Firewall products
- **Provides:** `wafw00f`
- **Steps:**
  1. Install: `sudo apt install -y wafw00f`
  2. Help: `wafw00f -h`  (or `man wafw00f`)
  3. Run: `wafw00f <NODE_IP>` — run recon against a node you own
- Docs: https://github.com/EnableSecurity/wafw00f

### `zenmap`
- The Network Mapper Front End
- **Provides:** `zenmap`
- **Steps:**
  1. Install: `sudo apt install -y zenmap`
  2. Help: `zenmap -h`  (or `man zenmap`)
  3. Run: `zenmap <NODE_IP>` — run recon against a node you own
- Docs: https://nmap.org/


## 02 · Vulnerability Analysis  (`kali-tools-vulnerability`)

### `afl++`
- instrumentation-driven fuzzer for binary formats
- **Provides:** `afl-addseeds`, `afl-analyze`, `afl-c++`, `afl-cc`, `afl-clang`, `afl-clang++`, `afl-clang-fast`, `afl-clang-fast++`, `afl-clang-lto`, `afl-clang-lto++`, `afl-cmin`, `afl-cmin.awk`, `afl-cmin.bash`, `afl-cmin.py`, `afl-fuzz`, `afl-g++`, `afl-gcc`, `afl-gcc-fast`, `afl-g++-fast`, `afl-gotcpu`, `afl-health`, `afl-ld-lto`, `afl-lto`, `afl-lto++`, `afl-network-client`, `afl-network-server`, `afl-persistent-config`, `afl-plot`, `afl-showmap`, `afl-system-config`, `afl-tmin`, `afl-whatsup`
- **Steps:**
  1. Install: `sudo apt install -y afl++`
  2. Help: `afl-cc -h`  (or `man afl-cc`)
  3. Run: `afl-cc http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/AFLplusplus/AFLplusplus

### `bed`
- A network protocol fuzzer
- **Provides:** `bed`
- **Steps:**
  1. Install: `sudo apt install -y bed`
  2. Help: `bed -h`  (or `man bed`)
  3. Run: `bed http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.snake-basket.de

### `cisco-auditing-tool`
- Scans Cisco routers for vulnerabilities
- **Provides:** `CAT`
- **Steps:**
  1. Install: `sudo apt install -y cisco-auditing-tool`
  2. Help: `CAT -h`  (or `man CAT`)
  3. Run: `CAT http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.scrypt.net/

### `cisco-global-exploiter`
- Simple and fast Cisco exploitation tool
- **Provides:** `cge.pl`
- **Steps:**
  1. Install: `sudo apt install -y cisco-global-exploiter`
  2. Help: `cge.pl -h`  (or `man cge.pl`)
  3. Run: `cge.pl http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.blackangels.it

### `cisco-ocs`
- Mass Cisco scanner
- **Provides:** `cisco-ocs`
- **Steps:**
  1. Install: `sudo apt install -y cisco-ocs`
  2. Help: `cisco-ocs -h`  (or `man cisco-ocs`)
  3. Run: `cisco-ocs http://<NODE_IP>:30080` — scan a service you own
- Docs: http://hacklab.altervista.org/

### `cisco-torch`
- Cisco device scanner
- **Provides:** `cisco-torch`
- **Steps:**
  1. Install: `sudo apt install -y cisco-torch`
  2. Help: `cisco-torch -h`  (or `man cisco-torch`)
  3. Run: `cisco-torch http://<NODE_IP>:30080` — scan a service you own

### `dhcpig`
- DHCP exhaustion script using scapy network library
- **Provides:** `dhcpig`
- **Steps:**
  1. Install: `sudo apt install -y dhcpig`
  2. Help: `dhcpig -h`  (or `man dhcpig`)
  3. Run: `dhcpig http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/kamorin/DHCPig

### `enumiax`
- IAX protocol username enumerator
- **Provides:** `enumiax`
- **Steps:**
  1. Install: `sudo apt install -y enumiax`
  2. Help: `enumiax -h`  (or `man enumiax`)
  3. Run: `enumiax http://<NODE_IP>:30080` — scan a service you own
- Docs: https://enumiax.sourceforge.net/

### `gvm`
- remote network security auditor - metapackage and useful scripts
- **Provides:** `gvm-check-setup`, `gvm-setup`, `gvm-start`, `gvm-stop`
- **Steps:**
  1. Install: `sudo apt install -y gvm`
  2. Help: `gvm-stop -h`  (or `man gvm-stop`)
  3. Run: `gvm-stop http://<NODE_IP>:30080` — scan a service you own
- Docs: https://www.greenbone.net/

### `iaxflood`
- VoIP flooder tool
- **Provides:** `iaxflood`
- **Steps:**
  1. Install: `sudo apt install -y iaxflood`
  2. Help: `iaxflood -h`  (or `man iaxflood`)
  3. Run: `iaxflood http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.hackingexposedvoip.com/sec_tools.html

### `inviteflood`
- SIP/SDP INVITE message flooding over UDP/IP
- **Provides:** `inviteflood`
- **Steps:**
  1. Install: `sudo apt install -y inviteflood`
  2. Help: `inviteflood -h`  (or `man inviteflood`)
  3. Run: `inviteflood http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.hackingvoip.com/sec_tools.html

### `legion`
- semi-automated network penetration testing tool
- **Provides:** `legion`
- **Steps:**
  1. Install: `sudo apt install -y legion`
  2. Help: `legion -h`  (or `man legion`)
  3. Run: `legion http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/Hackman238/legion

### `lynis`
- security auditing tool for Unix based systems
- **Provides:** `lynis`
- **Steps:**
  1. Install: `sudo apt install -y lynis`
  2. Help: `lynis -h`  (or `man lynis`)
  3. Run: `lynis http://<NODE_IP>:30080` — scan a service you own
- Docs: https://cisofy.com/lynis/

### `nikto`
- web server security scanner
- **Provides:** `nikto`, `replay`
- **Steps:**
  1. Install: `sudo apt install -y nikto`
  2. Help: `nikto -h`  (or `man nikto`)
  3. Run: `nikto http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/sullo/nikto

### `nmap`
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap http://<NODE_IP>:30080` — scan a service you own
- Docs: https://nmap.org/

### `ohrwurm`
- RTP fuzzer
- **Provides:** `ohrwurm`
- **Steps:**
  1. Install: `sudo apt install -y ohrwurm`
  2. Help: `ohrwurm -h`  (or `man ohrwurm`)
  3. Run: `ohrwurm http://<NODE_IP>:30080` — scan a service you own
- Docs: http://mazzoo.de/blog/2006/08/25#ohrwurm

### `peass`
- Privilege Escalation Awesome Scripts SUITE
- **Provides:** `linpeas`, `peass`, `winpeas`
- **Steps:**
  1. Install: `sudo apt install -y peass`
  2. Help: `peass -h`  (or `man peass`)
  3. Run: `peass http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/carlospolop/PEASS-ng

### `protos-sip`
- SIP test suite
- **Provides:** `protos-sip`
- **Steps:**
  1. Install: `sudo apt install -y protos-sip`
  2. Help: `protos-sip -h`  (or `man protos-sip`)
  3. Run: `protos-sip http://<NODE_IP>:30080` — scan a service you own
- Docs: https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip

### `rtpbreak`
- Detects, reconstructs, and analyzes RTP sessions
- **Provides:** `rtpbreak`
- **Steps:**
  1. Install: `sudo apt install -y rtpbreak`
  2. Help: `rtpbreak -h`  (or `man rtpbreak`)
  3. Run: `rtpbreak http://<NODE_IP>:30080` — scan a service you own
- Docs: http://dallachiesa.com/code/rtpbreak/

### `rtpflood`
- Tool to flood any RTP device
- **Provides:** `rtpflood`
- **Steps:**
  1. Install: `sudo apt install -y rtpflood`
  2. Help: `rtpflood -h`  (or `man rtpflood`)
  3. Run: `rtpflood http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpinsertsound`
- Inserts audio into a specified stream
- **Provides:** `rtpinsertsound`
- **Steps:**
  1. Install: `sudo apt install -y rtpinsertsound`
  2. Help: `rtpinsertsound -h`  (or `man rtpinsertsound`)
  3. Run: `rtpinsertsound http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpmixsound`
- Mixes pre-recorded audio in real-time
- **Provides:** `rtpmixsound`
- **Steps:**
  1. Install: `sudo apt install -y rtpmixsound`
  2. Help: `rtpmixsound -h`  (or `man rtpmixsound`)
  3. Run: `rtpmixsound http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.hackingvoip.com/sec_tools.html

### `sfuzz`
- Black Box testing utilities
- **Provides:** `sfo`, `sfuzz`
- **Steps:**
  1. Install: `sudo apt install -y sfuzz`
  2. Help: `sfuzz -h`  (or `man sfuzz`)
  3. Run: `sfuzz http://<NODE_IP>:30080` — scan a service you own
- Docs: http://aconole.brad-x.com/programs/sfuzz.html

### `siege`
- HTTP regression testing and benchmarking utility
- **Provides:** `bombardment`, `siege`, `siege2csv`, `siege.config`
- **Steps:**
  1. Install: `sudo apt install -y siege`
  2. Help: `siege -h`  (or `man siege`)
  3. Run: `siege http://<NODE_IP>:30080` — scan a service you own
- Docs: https://www.joedog.org/JoeDog/Siege

### `siparmyknife`
- SIP fuzzing tool
- **Provides:** `siparmyknife`
- **Steps:**
  1. Install: `sudo apt install -y siparmyknife`
  2. Help: `siparmyknife -h`  (or `man siparmyknife`)
  3. Run: `siparmyknife http://<NODE_IP>:30080` — scan a service you own
- Docs: https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html

### `sipp`
- Traffic generator for the SIP protocol
- **Provides:** `sipp`
- **Steps:**
  1. Install: `sudo apt install -y sipp`
  2. Help: `sipp -h`  (or `man sipp`)
  3. Run: `sipp http://<NODE_IP>:30080` — scan a service you own
- Docs: https://sipp.sourceforge.net/

### `sipsak`
- SIP Swiss army knife
- **Provides:** `sipsak`
- **Steps:**
  1. Install: `sudo apt install -y sipsak`
  2. Help: `sipsak -h`  (or `man sipsak`)
  3. Run: `sipsak http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/nils-ohlmeier/sipsak

### `sipvicious`
- tools to audit SIP based VoIP systems
- **Provides:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **Steps:**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svmap -h`  (or `man svmap`)
  3. Run: `svmap http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/EnableSecurity/sipvicious

### `slowhttptest`
- application layer Denial of Service attacks simulation tool
- **Provides:** `slowhttptest`
- **Steps:**
  1. Install: `sudo apt install -y slowhttptest`
  2. Help: `slowhttptest -h`  (or `man slowhttptest`)
  3. Run: `slowhttptest http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/shekyan/slowhttptest

### `spike`
- Network protocol fuzzer
- **Provides:** `citrix`, `closed_source_web_server_fuzz`, `dceoversmb`, `dltest`, `do_post`, `generic_chunked`, `generic_listen_tcp`, `generic_send_tcp`, `generic_send_udp`, `generic_web_server_fuzz`, `generic_web_server_fuzz2`, `gopherd`, `halflife`, `line_send_tcp`, `msrpcfuzz`, `msrpcfuzz_udp`, `ntlm2`, `ntlm_brute`, `pmspike`, `post_fuzz`, `post_spike`, `quake`, `quakeserver`, `sendmsrpc`, `ss_spike`, `statd_spike`, `sunrpcfuzz`, `webfuzz`, `x11_spike`
- **Steps:**
  1. Install: `sudo apt install -y spike`
  2. Help: `ntlm2 -h`  (or `man ntlm2`)
  3. Run: `ntlm2 http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.immunitysec.com/resources-freesoftware.shtml

### `t50`
- Multi-protocol packet injector tool
- **Provides:** `t50`
- **Steps:**
  1. Install: `sudo apt install -y t50`
  2. Help: `t50 -h`  (or `man t50`)
  3. Run: `t50 http://<NODE_IP>:30080` — scan a service you own
- Docs: https://gitlab.com/fredericopissarra/t50

### `thc-ssl-dos`
- Stress tester for the SSL handshake
- **Provides:** `thc-ssl-dos`
- **Steps:**
  1. Install: `sudo apt install -y thc-ssl-dos`
  2. Help: `thc-ssl-dos -h`  (or `man thc-ssl-dos`)
  3. Run: `thc-ssl-dos http://<NODE_IP>:30080` — scan a service you own
- Docs: http://www.thc.org/thc-ssl-dos/

### `unix-privesc-check`
- Script to check for simple privilege escalation vectors
- **Provides:** `unix-privesc-check`
- **Steps:**
  1. Install: `sudo apt install -y unix-privesc-check`
  2. Help: `unix-privesc-check -h`  (or `man unix-privesc-check`)
  3. Run: `unix-privesc-check http://<NODE_IP>:30080` — scan a service you own
- Docs: https://pentestmonkey.net/tools/audit/unix-privesc-check

### `voiphopper`
- Runs a VLAN hop security test
- **Provides:** `voiphopper`
- **Steps:**
  1. Install: `sudo apt install -y voiphopper`
  2. Help: `voiphopper -h`  (or `man voiphopper`)
  3. Run: `voiphopper http://<NODE_IP>:30080` — scan a service you own
- Docs: https://sourceforge.net/projects/voiphopper

### `yersinia`
- Network vulnerabilities check software
- **Provides:** `yersinia`
- **Steps:**
  1. Install: `sudo apt install -y yersinia`
  2. Help: `yersinia -h`  (or `man yersinia`)
  3. Run: `yersinia http://<NODE_IP>:30080` — scan a service you own
- Docs: https://github.com/tomac/yersinia


## 03 · Web Application Analysis  (`kali-tools-web`)

### `apache-users`
- Enumerate usernames on systems with Apache UserDir module
- **Provides:** `apache-users`
- **Steps:**
  1. Install: `sudo apt install -y apache-users`
  2. Help: `apache-users -h`  (or `man apache-users`)
  3. Run: `apache-users http://<NODE_IP>:30080` — run against your own web service
- Docs: https://labs.portcullis.co.uk/downloads/

### `apache2`
- Apache HTTP Server
- **Provides:** `a2disconf`, `a2dismod`, `a2dissite`, `a2enconf`, `a2enmod`, `a2ensite`, `a2query`, `apache2ctl`, `apachectl`
- **Steps:**
  1. Install: `sudo apt install -y apache2`
  2. Help: `a2enmod -h`  (or `man a2enmod`)
  3. Run: `a2enmod http://<NODE_IP>:30080` — run against your own web service
- Docs: https://httpd.apache.org/

### `beef-xss`
- Browser Exploitation Framework (BeEF)
- **Provides:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **Steps:**
  1. Install: `sudo apt install -y beef-xss`
  2. Help: `beef-xss -h`  (or `man beef-xss`)
  3. Run: `beef-xss http://<NODE_IP>:30080` — run against your own web service
- Docs: https://beefproject.com/

### `cadaver`
- command-line WebDAV client
- **Provides:** `cadaver`
- **Steps:**
  1. Install: `sudo apt install -y cadaver`
  2. Help: `cadaver -h`  (or `man cadaver`)
  3. Run: `cadaver http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/notroj/cadaver

### `commix`
- Automated All-in-One OS Command Injection and Exploitation Tool
- **Provides:** `commix`
- **Steps:**
  1. Install: `sudo apt install -y commix`
  2. Help: `commix -h`  (or `man commix`)
  3. Run: `commix http://<NODE_IP>:30080` — run against your own web service
- Docs: https://commixproject.com

### `cutycapt`
- utility to capture WebKit's rendering of a web page
- **Provides:** `cutycapt`
- **Steps:**
  1. Install: `sudo apt install -y cutycapt`
  2. Help: `cutycapt -h`  (or `man cutycapt`)
  3. Run: `cutycapt http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/Crystalix007/CutyCapt

### `davtest`
- Testing tool for WebDAV servers
- **Provides:** `davtest`
- **Steps:**
  1. Install: `sudo apt install -y davtest`
  2. Help: `davtest -h`  (or `man davtest`)
  3. Run: `davtest http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/cldrn/davtest

### `default-mysql-server`
- MySQL database server binaries and system database setup (metapackage)
- **Steps:**
  1. Install: `sudo apt install -y default-mysql-server`
  2. Help: `default-mysql-server -h`  (or `man default-mysql-server`)
  3. Run: `default-mysql-server http://<NODE_IP>:30080` — run against your own web service

### `dirb`
- URL bruteforcing tool
- **Provides:** `dirb`, `dirb-gendict`, `html2dic`
- **Steps:**
  1. Install: `sudo apt install -y dirb`
  2. Help: `dirb -h`  (or `man dirb`)
  3. Run: `dirb http://<NODE_IP>:30080` — run against your own web service
- Docs: https://dirb.sourceforge.net/

### `dirbuster`
- Web server directory brute-forcer
- **Provides:** `dirbuster`
- **Steps:**
  1. Install: `sudo apt install -y dirbuster`
  2. Help: `dirbuster -h`  (or `man dirbuster`)
  3. Run: `dirbuster http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project

### `dotdotpwn`
- Directory Traversal Fuzzer.
- **Provides:** `dotdotpwn`
- **Steps:**
  1. Install: `sudo apt install -y dotdotpwn`
  2. Help: `dotdotpwn -h`  (or `man dotdotpwn`)
  3. Run: `dotdotpwn http://<NODE_IP>:30080` — run against your own web service
- Docs: https://dotdotpwn.blogspot.ca

### `eyewitness`
- Rapid web application triage tool
- **Provides:** `eyewitness`, `geckodriver`
- **Steps:**
  1. Install: `sudo apt install -y eyewitness`
  2. Help: `eyewitness -h`  (or `man eyewitness`)
  3. Run: `eyewitness http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.christophertruncer.com/eyewitness-triage-tool/

### `ferret-sidejack`
- Monitors data and extracts interesting data
- **Provides:** `ferret-sidejack`
- **Steps:**
  1. Install: `sudo apt install -y ferret-sidejack`
  2. Help: `ferret-sidejack -h`  (or `man ferret-sidejack`)
  3. Run: `ferret-sidejack http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/robertdavidgraham/ferret

### `ftester`
- Tool for testing firewalls and Intrusion Detection System (IDS)
- **Provides:** `freport`, `ftest`, `ftestd`
- **Steps:**
  1. Install: `sudo apt install -y ftester`
  2. Help: `ftest -h`  (or `man ftest`)
  3. Run: `ftest http://<NODE_IP>:30080` — run against your own web service
- Docs: https://dev.inversepath.com/ftester/

### `hakrawler`
- Web crawler designed for easy, quick discovery of endpoints and assets
- **Provides:** `hakrawler`
- **Steps:**
  1. Install: `sudo apt install -y hakrawler`
  2. Help: `hakrawler -h`  (or `man hakrawler`)
  3. Run: `hakrawler http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/hakluke/hakrawler

### `hamster-sidejack`
- Sidejacking tool
- **Provides:** `hamster-sidejack`
- **Steps:**
  1. Install: `sudo apt install -y hamster-sidejack`
  2. Help: `hamster-sidejack -h`  (or `man hamster-sidejack`)
  3. Run: `hamster-sidejack http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.erratasec.com/research.html

### `heartleech`
- Scanner detecting systems vulnerable to the heartbleed OpenSSL bug
- **Provides:** `heartleech`
- **Steps:**
  1. Install: `sudo apt install -y heartleech`
  2. Help: `heartleech -h`  (or `man heartleech`)
  3. Run: `heartleech http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/robertdavidgraham/heartleech

### `httrack`
- Copy websites to your computer (Offline browser)
- **Provides:** `httrack`
- **Steps:**
  1. Install: `sudo apt install -y httrack`
  2. Help: `httrack -h`  (or `man httrack`)
  3. Run: `httrack http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.httrack.com

### `hydra`
- very fast network logon cracker
- **Provides:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **Steps:**
  1. Install: `sudo apt install -y hydra`
  2. Help: `hydra -h`  (or `man hydra`)
  3. Run: `hydra http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `hydra-gtk`
- very fast network logon cracker - GTK+ based GUI
- **Provides:** `xhydra`
- **Steps:**
  1. Install: `sudo apt install -y hydra-gtk`
  2. Help: `xhydra -h`  (or `man xhydra`)
  3. Run: `xhydra http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `jboss-autopwn`
- JBoss script for obtaining remote shell access
- **Provides:** `jboss-linux`, `jboss-win`
- **Steps:**
  1. Install: `sudo apt install -y jboss-autopwn`
  2. Help: `jboss-win -h`  (or `man jboss-win`)
  3. Run: `jboss-win http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/SpiderLabs/jboss-autopwn

### `joomscan`
- OWASP Joomla Vulnerability Scanner Project
- **Provides:** `joomscan`
- **Steps:**
  1. Install: `sudo apt install -y joomscan`
  2. Help: `joomscan -h`  (or `man joomscan`)
  3. Run: `joomscan http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.owasp.org/index.php/Category:OWASP_Joomla_Vulnerability_Scanner_Project

### `jsql-injection`
- Java tool for automatic database injection
- **Provides:** `jsql`, `jsql-injection`
- **Steps:**
  1. Install: `sudo apt install -y jsql-injection`
  2. Help: `jsql-injection -h`  (or `man jsql-injection`)
  3. Run: `jsql-injection http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/ron190/jsql-injection

### `laudanum`
- Collection of injectable web files
- **Provides:** `laudanum`
- **Steps:**
  1. Install: `sudo apt install -y laudanum`
  2. Help: `laudanum -h`  (or `man laudanum`)
  3. Run: `laudanum http://<NODE_IP>:30080` — run against your own web service
- Docs: https://sourceforge.net/projects/laudanum/

### `lbd`
- Load balancer detector
- **Provides:** `lbd`
- **Steps:**
  1. Install: `sudo apt install -y lbd`
  2. Help: `lbd -h`  (or `man lbd`)
  3. Run: `lbd http://<NODE_IP>:30080` — run against your own web service
- Docs: http://ge.mine.nu/code/

### `maltego`
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.maltego.com

### `medusa`
- fast, parallel, modular, login brute-forcer for network services
- **Provides:** `medusa`
- **Steps:**
  1. Install: `sudo apt install -y medusa`
  2. Help: `medusa -h`  (or `man medusa`)
  3. Run: `medusa http://<NODE_IP>:30080` — run against your own web service
- Docs: http://foofus.net/?page_id=51

### `mitmproxy`
- SSL-capable man-in-the-middle HTTP proxy
- **Provides:** `mitmdump`, `mitmproxy`, `mitmweb`
- **Steps:**
  1. Install: `sudo apt install -y mitmproxy`
  2. Help: `mitmproxy -h`  (or `man mitmproxy`)
  3. Run: `mitmproxy http://<NODE_IP>:30080` — run against your own web service
- Docs: https://mitmproxy.org

### `ncrack`
- High-speed network authentication cracking tool
- **Provides:** `ncrack`
- **Steps:**
  1. Install: `sudo apt install -y ncrack`
  2. Help: `ncrack -h`  (or `man ncrack`)
  3. Run: `ncrack http://<NODE_IP>:30080` — run against your own web service
- Docs: https://nmap.org/ncrack/

### `nikto`
- web server security scanner
- **Provides:** `nikto`, `replay`
- **Steps:**
  1. Install: `sudo apt install -y nikto`
  2. Help: `nikto -h`  (or `man nikto`)
  3. Run: `nikto http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/sullo/nikto

### `nishang`
- Collection of PowerShell scripts and payloads
- **Provides:** `nishang`
- **Steps:**
  1. Install: `sudo apt install -y nishang`
  2. Help: `nishang -h`  (or `man nishang`)
  3. Run: `nishang http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/samratashok/nishang

### `nmap`
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap http://<NODE_IP>:30080` — run against your own web service
- Docs: https://nmap.org/

### `oscanner`
- Oracle assessment framework
- **Provides:** `oscanner`
- **Steps:**
  1. Install: `sudo apt install -y oscanner`
  2. Help: `oscanner -h`  (or `man oscanner`)
  3. Run: `oscanner http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.cqure.net/wp/tools/database/oscanner/

### `padbuster`
- Script for performing Padding Oracle attacks
- **Provides:** `padbuster`
- **Steps:**
  1. Install: `sudo apt install -y padbuster`
  2. Help: `padbuster -h`  (or `man padbuster`)
  3. Run: `padbuster http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/GDSSecurity/PadBuster

### `paros`
- Web application proxy
- **Provides:** `paros`
- **Steps:**
  1. Install: `sudo apt install -y paros`
  2. Help: `paros -h`  (or `man paros`)
  3. Run: `paros http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.parosproxy.org/index.shtml

### `patator`
- Multi-purpose brute-forcer
- **Provides:** `patator`
- **Steps:**
  1. Install: `sudo apt install -y patator`
  2. Help: `patator -h`  (or `man patator`)
  3. Run: `patator http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/lanjelot/patator

### `php`
- server-side, HTML-embedded scripting language (default)
- **Steps:**
  1. Install: `sudo apt install -y php`
  2. Help: `php -h`  (or `man php`)
  3. Run: `php http://<NODE_IP>:30080` — run against your own web service

### `php-mysql`
- MySQL module for PHP [default]
- **Steps:**
  1. Install: `sudo apt install -y php-mysql`
  2. Help: `php-mysql -h`  (or `man php-mysql`)
  3. Run: `php-mysql http://<NODE_IP>:30080` — run against your own web service

### `proxychains4`
- redirect connections through socks/http proxies (proxychains-ng)
- **Provides:** `proxychains4`, `proxychains4-daemon`
- **Steps:**
  1. Install: `sudo apt install -y proxychains4`
  2. Help: `proxychains4 -h`  (or `man proxychains4`)
  3. Run: `proxychains4 http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/rofl0r/proxychains-ng

### `proxytunnel`
- Help SSH and other protocols through HTTP(S) proxies
- **Provides:** `proxytunnel`
- **Steps:**
  1. Install: `sudo apt install -y proxytunnel`
  2. Help: `proxytunnel -h`  (or `man proxytunnel`)
  3. Run: `proxytunnel http://<NODE_IP>:30080` — run against your own web service
- Docs: https://proxytunnel.sourceforge.io/

### `qsslcaudit`
- test SSL/TLS clients how secure they are
- **Provides:** `qsslcaudit`
- **Steps:**
  1. Install: `sudo apt install -y qsslcaudit`
  2. Help: `qsslcaudit -h`  (or `man qsslcaudit`)
  3. Run: `qsslcaudit http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/gremwell/qsslcaudit

### `redsocks`
- arbitrary TCP connection redirector to a SOCKS or HTTPS proxy server
- **Provides:** `redsocks`
- **Steps:**
  1. Install: `sudo apt install -y redsocks`
  2. Help: `redsocks -h`  (or `man redsocks`)
  3. Run: `redsocks http://<NODE_IP>:30080` — run against your own web service
- Docs: http://darkk.net.ru/redsocks/

### `sidguesser`
- Guesses sids against an Oracle database
- **Provides:** `sidguess`
- **Steps:**
  1. Install: `sudo apt install -y sidguesser`
  2. Help: `sidguess -h`  (or `man sidguess`)
  3. Run: `sidguess http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.cqure.net/wp/tools/database/sidguesser/

### `siege`
- HTTP regression testing and benchmarking utility
- **Provides:** `bombardment`, `siege`, `siege2csv`, `siege.config`
- **Steps:**
  1. Install: `sudo apt install -y siege`
  2. Help: `siege -h`  (or `man siege`)
  3. Run: `siege http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.joedog.org/JoeDog/Siege

### `skipfish`
- fully automated, active web application security reconnaissance tool
- **Provides:** `skipfish`
- **Steps:**
  1. Install: `sudo apt install -y skipfish`
  2. Help: `skipfish -h`  (or `man skipfish`)
  3. Run: `skipfish http://<NODE_IP>:30080` — run against your own web service

### `slowhttptest`
- application layer Denial of Service attacks simulation tool
- **Provides:** `slowhttptest`
- **Steps:**
  1. Install: `sudo apt install -y slowhttptest`
  2. Help: `slowhttptest -h`  (or `man slowhttptest`)
  3. Run: `slowhttptest http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/shekyan/slowhttptest

### `sqlitebrowser`
- GUI editor for SQLite databases
- **Provides:** `sqlitebrowser`
- **Steps:**
  1. Install: `sudo apt install -y sqlitebrowser`
  2. Help: `sqlitebrowser -h`  (or `man sqlitebrowser`)
  3. Run: `sqlitebrowser http://<NODE_IP>:30080` — run against your own web service
- Docs: https://sqlitebrowser.org/

### `sqlmap`
- automatic SQL injection tool
- **Provides:** `sqlmap`, `sqlmapapi`
- **Steps:**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap http://<NODE_IP>:30080` — run against your own web service
- Docs: https://sqlmap.org/

### `sqlninja`
- SQL server injection and takeover tool
- **Provides:** `sqlninja`
- **Steps:**
  1. Install: `sudo apt install -y sqlninja`
  2. Help: `sqlninja -h`  (or `man sqlninja`)
  3. Run: `sqlninja http://<NODE_IP>:30080` — run against your own web service
- Docs: https://sqlninja.sourceforge.net/

### `sqlsus`
- MySQL injection tool
- **Provides:** `sqlsus`
- **Steps:**
  1. Install: `sudo apt install -y sqlsus`
  2. Help: `sqlsus -h`  (or `man sqlsus`)
  3. Run: `sqlsus http://<NODE_IP>:30080` — run against your own web service
- Docs: https://sqlsus.sourceforge.net/

### `ssldump`
- SSLv3/TLS network protocol analyzer
- **Provides:** `ssldump`
- **Steps:**
  1. Install: `sudo apt install -y ssldump`
  2. Help: `ssldump -h`  (or `man ssldump`)
  3. Run: `ssldump http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/adulau/ssldump

### `sslh`
- Applicative protocol multiplexer
- **Provides:** `sslh`, `sslh-ev`, `sslh-select`
- **Steps:**
  1. Install: `sudo apt install -y sslh`
  2. Help: `sslh -h`  (or `man sslh`)
  3. Run: `sslh http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.rutschle.net/tech/sslh/README.html

### `sslscan`
- Tests SSL/TLS enabled services to discover supported cipher suites
- **Provides:** `sslscan`
- **Steps:**
  1. Install: `sudo apt install -y sslscan`
  2. Help: `sslscan -h`  (or `man sslscan`)
  3. Run: `sslscan http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/rbsec/sslscan

### `sslsniff`
- SSL/TLS man-in-the-middle attack tool
- **Provides:** `sslsniff`
- **Steps:**
  1. Install: `sudo apt install -y sslsniff`
  2. Help: `sslsniff -h`  (or `man sslsniff`)
  3. Run: `sslsniff http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/moxie0/sslsniff

### `sslsplit`
- transparent and scalable SSL/TLS interception
- **Provides:** `sslsplit`
- **Steps:**
  1. Install: `sudo apt install -y sslsplit`
  2. Help: `sslsplit -h`  (or `man sslsplit`)
  3. Run: `sslsplit http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.roe.ch/SSLsplit

### `sslyze`
- Fast and full-featured SSL scanner
- **Provides:** `sslyze`
- **Steps:**
  1. Install: `sudo apt install -y sslyze`
  2. Help: `sslyze -h`  (or `man sslyze`)
  3. Run: `sslyze http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/nabla-c0d3/sslyze

### `stunnel4`
- Universal SSL tunnnel for network daemons - compatibility package
- **Provides:** `stunnel4`
- **Steps:**
  1. Install: `sudo apt install -y stunnel4`
  2. Help: `stunnel4 -h`  (or `man stunnel4`)
  3. Run: `stunnel4 http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.stunnel.org/

### `thc-ssl-dos`
- Stress tester for the SSL handshake
- **Provides:** `thc-ssl-dos`
- **Steps:**
  1. Install: `sudo apt install -y thc-ssl-dos`
  2. Help: `thc-ssl-dos -h`  (or `man thc-ssl-dos`)
  3. Run: `thc-ssl-dos http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.thc.org/thc-ssl-dos/

### `tlssled`
- Evaluates the security of a target SSL/TLS (HTTPS) server
- **Provides:** `tlssled`
- **Steps:**
  1. Install: `sudo apt install -y tlssled`
  2. Help: `tlssled -h`  (or `man tlssled`)
  3. Run: `tlssled http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.taddong.com/en/lab.html

### `tnscmd10g`
- Tool to prod the oracle tnslsnr process
- **Provides:** `tnscmd10g`
- **Steps:**
  1. Install: `sudo apt install -y tnscmd10g`
  2. Help: `tnscmd10g -h`  (or `man tnscmd10g`)
  3. Run: `tnscmd10g http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.red-database-security.com/

### `uniscan`
- LFI, RFI, and RCE vulnerability scanner
- **Provides:** `uniscan`, `uniscan-gui`
- **Steps:**
  1. Install: `sudo apt install -y uniscan`
  2. Help: `uniscan -h`  (or `man uniscan`)
  3. Run: `uniscan http://<NODE_IP>:30080` — run against your own web service
- Docs: https://sourceforge.net/projects/uniscan/

### `wafw00f`
- identify and fingerprint Web Application Firewall products
- **Provides:** `wafw00f`
- **Steps:**
  1. Install: `sudo apt install -y wafw00f`
  2. Help: `wafw00f -h`  (or `man wafw00f`)
  3. Run: `wafw00f http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/EnableSecurity/wafw00f

### `wapiti`
- web application vulnerability scanner
- **Provides:** `wapiti`, `wapiti-getcookie`
- **Steps:**
  1. Install: `sudo apt install -y wapiti`
  2. Help: `wapiti -h`  (or `man wapiti`)
  3. Run: `wapiti http://<NODE_IP>:30080` — run against your own web service
- Docs: https://wapiti.sourceforge.net/

### `webacoo`
- Web backdoor cookie script kit
- **Provides:** `webacoo`
- **Steps:**
  1. Install: `sudo apt install -y webacoo`
  2. Help: `webacoo -h`  (or `man webacoo`)
  3. Run: `webacoo http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/anestisb/WeBaCoo

### `webscarab`
- Web application review tool
- **Provides:** `webscarab`
- **Steps:**
  1. Install: `sudo apt install -y webscarab`
  2. Help: `webscarab -h`  (or `man webscarab`)
  3. Run: `webscarab http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/OWASP/OWASP-WebScarab

### `webshells`
- Collection of webshells
- **Provides:** `webshells`
- **Steps:**
  1. Install: `sudo apt install -y webshells`
  2. Help: `webshells -h`  (or `man webshells`)
  3. Run: `webshells http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.kali.org

### `weevely`
- Stealth tiny web shell
- **Provides:** `weevely`
- **Steps:**
  1. Install: `sudo apt install -y weevely`
  2. Help: `weevely -h`  (or `man weevely`)
  3. Run: `weevely http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/epinna/weevely3/

### `wfuzz`
- Web application bruteforcer
- **Provides:** `wfuzz`
- **Steps:**
  1. Install: `sudo apt install -y wfuzz`
  2. Help: `wfuzz -h`  (or `man wfuzz`)
  3. Run: `wfuzz http://<NODE_IP>:30080` — run against your own web service
- Docs: http://www.edge-security.com/wfuzz.php

### `whatweb`
- Next generation web scanner
- **Provides:** `whatweb`
- **Steps:**
  1. Install: `sudo apt install -y whatweb`
  2. Help: `whatweb -h`  (or `man whatweb`)
  3. Run: `whatweb http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/urbanadventurer/WhatWeb

### `wireshark`
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark http://<NODE_IP>:30080` — run against your own web service
- Docs: https://www.wireshark.org/

### `wpscan`
- Black box WordPress vulnerability scanner
- **Provides:** `wpscan`
- **Steps:**
  1. Install: `sudo apt install -y wpscan`
  2. Help: `wpscan -h`  (or `man wpscan`)
  3. Run: `wpscan http://<NODE_IP>:30080` — run against your own web service
- Docs: https://wpscan.com/wordpress-security-scanner

### `xsser`
- XSS testing framework
- **Provides:** `xsser`
- **Steps:**
  1. Install: `sudo apt install -y xsser`
  2. Help: `xsser -h`  (or `man xsser`)
  3. Run: `xsser http://<NODE_IP>:30080` — run against your own web service
- Docs: https://xsser.03c8.net/

### `zaproxy`
- Testing tool for finding vulnerabilities in web applications
- **Provides:** `owasp-zap`, `zaproxy`
- **Steps:**
  1. Install: `sudo apt install -y zaproxy`
  2. Help: `zaproxy -h`  (or `man zaproxy`)
  3. Run: `zaproxy http://<NODE_IP>:30080` — run against your own web service
- Docs: https://github.com/zaproxy/zaproxy


## 04 · Database Assessment  (`kali-tools-database`)

### `jsql-injection`
- Java tool for automatic database injection
- **Provides:** `jsql`, `jsql-injection`
- **Steps:**
  1. Install: `sudo apt install -y jsql-injection`
  2. Help: `jsql-injection -h`  (or `man jsql-injection`)
  3. Run: `jsql-injection <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: https://github.com/ron190/jsql-injection

### `mdbtools`
- JET / MS Access database (MDB) tools
- **Provides:** `mdb-array`, `mdb-count`, `mdb-export`, `mdb-header`, `mdb-hexdump`, `mdb-import`, `mdb-json`, `mdb-parsecsv`, `mdb-prop`, `mdb-queries`, `mdb-schema`, `mdb-sql`, `mdb-tables`, `mdb-ver`
- **Steps:**
  1. Install: `sudo apt install -y mdbtools`
  2. Help: `mdb-sql -h`  (or `man mdb-sql`)
  3. Run: `mdb-sql <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: https://github.com/mdbtools/mdbtools

### `oscanner`
- Oracle assessment framework
- **Provides:** `oscanner`
- **Steps:**
  1. Install: `sudo apt install -y oscanner`
  2. Help: `oscanner -h`  (or `man oscanner`)
  3. Run: `oscanner <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: http://www.cqure.net/wp/tools/database/oscanner/

### `sidguesser`
- Guesses sids against an Oracle database
- **Provides:** `sidguess`
- **Steps:**
  1. Install: `sudo apt install -y sidguesser`
  2. Help: `sidguess -h`  (or `man sidguess`)
  3. Run: `sidguess <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: http://www.cqure.net/wp/tools/database/sidguesser/

### `sqlitebrowser`
- GUI editor for SQLite databases
- **Provides:** `sqlitebrowser`
- **Steps:**
  1. Install: `sudo apt install -y sqlitebrowser`
  2. Help: `sqlitebrowser -h`  (or `man sqlitebrowser`)
  3. Run: `sqlitebrowser <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: https://sqlitebrowser.org/

### `sqlmap`
- automatic SQL injection tool
- **Provides:** `sqlmap`, `sqlmapapi`
- **Steps:**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: https://sqlmap.org/

### `sqlninja`
- SQL server injection and takeover tool
- **Provides:** `sqlninja`
- **Steps:**
  1. Install: `sudo apt install -y sqlninja`
  2. Help: `sqlninja -h`  (or `man sqlninja`)
  3. Run: `sqlninja <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: https://sqlninja.sourceforge.net/

### `sqlsus`
- MySQL injection tool
- **Provides:** `sqlsus`
- **Steps:**
  1. Install: `sudo apt install -y sqlsus`
  2. Help: `sqlsus -h`  (or `man sqlsus`)
  3. Run: `sqlsus <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: https://sqlsus.sourceforge.net/

### `tnscmd10g`
- Tool to prod the oracle tnslsnr process
- **Provides:** `tnscmd10g`
- **Steps:**
  1. Install: `sudo apt install -y tnscmd10g`
  2. Help: `tnscmd10g -h`  (or `man tnscmd10g`)
  3. Run: `tnscmd10g <NODE_IP>` — assess your own DB (5432 should be blocked)
- Docs: http://www.red-database-security.com/


## 05 · Password Attacks  (`kali-tools-passwords`)

### `cewl`
- custom word list generator
- **Provides:** `cewl`, `fab-cewl`
- **Steps:**
  1. Install: `sudo apt install -y cewl`
  2. Help: `cewl -h`  (or `man cewl`)
  3. Run: `cewl <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/digininja/CeWL

### `chntpw`
- NT SAM password recovery utility
- **Provides:** `chntpw`, `reged`, `sampasswd`, `samunlock`, `samusrgrp`
- **Steps:**
  1. Install: `sudo apt install -y chntpw`
  2. Help: `chntpw -h`  (or `man chntpw`)
  3. Run: `chntpw <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://pogostick.net/~pnh/ntpasswd/

### `cisco-auditing-tool`
- Scans Cisco routers for vulnerabilities
- **Provides:** `CAT`
- **Steps:**
  1. Install: `sudo apt install -y cisco-auditing-tool`
  2. Help: `CAT -h`  (or `man CAT`)
  3. Run: `CAT <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://www.scrypt.net/

### `crackle`
- Crack and decrypt BLE encryption
- **Provides:** `crackle`
- **Steps:**
  1. Install: `sudo apt install -y crackle`
  2. Help: `crackle -h`  (or `man crackle`)
  3. Run: `crackle <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/mikeryan/crackle

### `creddump7`
- Python tool to extract credentials and secrets from Windows registry hives
- **Provides:** `creddump7`
- **Steps:**
  1. Install: `sudo apt install -y creddump7`
  2. Help: `creddump7 -h`  (or `man creddump7`)
  3. Run: `creddump7 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/CiscoCXSecurity/creddump7

### `crunch`
- tool for creating wordlist
- **Provides:** `crunch`
- **Steps:**
  1. Install: `sudo apt install -y crunch`
  2. Help: `crunch -h`  (or `man crunch`)
  3. Run: `crunch <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://sourceforge.net/projects/crunch-wordlist/

### `fcrackzip`
- password cracker for zip archives
- **Provides:** `fcrackzip`, `fcrackzipinfo`
- **Steps:**
  1. Install: `sudo apt install -y fcrackzip`
  2. Help: `fcrackzip -h`  (or `man fcrackzip`)
  3. Run: `fcrackzip <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://oldhome.schmorp.de/marc/fcrackzip.html

### `freerdp3-x11`
- RDP client for Windows Terminal Services (X11 client tramsitional package)
- **Provides:** `xfreerdp3`
- **Steps:**
  1. Install: `sudo apt install -y freerdp3-x11`
  2. Help: `xfreerdp3 -h`  (or `man xfreerdp3`)
  3. Run: `xfreerdp3 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://www.freerdp.com/

### `gpp-decrypt`
- Group Policy Preferences decrypter
- **Provides:** `gpp-decrypt`
- **Steps:**
  1. Install: `sudo apt install -y gpp-decrypt`
  2. Help: `gpp-decrypt -h`  (or `man gpp-decrypt`)
  3. Run: `gpp-decrypt <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://carnal0wnage.attackresearch.com/2012/10/group-policy-preferences-and-getting.html

### `hash-identifier`
- Tool to identify hash types
- **Provides:** `hash-identifier`
- **Steps:**
  1. Install: `sudo apt install -y hash-identifier`
  2. Help: `hash-identifier -h`  (or `man hash-identifier`)
  3. Run: `hash-identifier <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/blackploit/hash-identifier

### `hashcat`
- World's fastest and most advanced password recovery utility
- **Provides:** `hashcat`
- **Steps:**
  1. Install: `sudo apt install -y hashcat`
  2. Help: `hashcat -h`  (or `man hashcat`)
  3. Run: `hashcat <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://hashcat.net/hashcat/

### `hashcat-utils`
- Set of small utilities for advanced password cracking
- **Steps:**
  1. Install: `sudo apt install -y hashcat-utils`
  2. Help: `hashcat-utils -h`  (or `man hashcat-utils`)
  3. Run: `hashcat-utils <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/hashcat/hashcat-utils/

### `hashid`
- Identify the different types of hashes used to encrypt data
- **Provides:** `hashid`
- **Steps:**
  1. Install: `sudo apt install -y hashid`
  2. Help: `hashid -h`  (or `man hashid`)
  3. Run: `hashid <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://psypanda.github.io/hashID/

### `hydra`
- very fast network logon cracker
- **Provides:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **Steps:**
  1. Install: `sudo apt install -y hydra`
  2. Help: `hydra -h`  (or `man hydra`)
  3. Run: `hydra <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `hydra-gtk`
- very fast network logon cracker - GTK+ based GUI
- **Provides:** `xhydra`
- **Steps:**
  1. Install: `sudo apt install -y hydra-gtk`
  2. Help: `xhydra -h`  (or `man xhydra`)
  3. Run: `xhydra <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `john`
- active password cracking tool
- **Provides:** `base64conv`, `bitlocker2john`, `calc_stat`, `cprepair`, `dmg2john`, `eapmd5tojohn`, `genmkvpwd`, `gpg2john`, `hccap2john`, `john`, `keepass2john`, `mailer`, `mkvcalcproba`, `putty2john`, `racf2john`, `rar2john`, `raw2dyna`, `SIPdump`, `tgtsnarf`, `uaf2john`, `unafs`, `undrop`, `unique`, `unshadow`, `vncpcap2john`, `wpapcap2john`, `zip2john`
- **Steps:**
  1. Install: `sudo apt install -y john`
  2. Help: `john -h`  (or `man john`)
  3. Run: `john <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/openwall/john

### `johnny`
- GUI for John the Ripper
- **Provides:** `johnny`
- **Steps:**
  1. Install: `sudo apt install -y johnny`
  2. Help: `johnny -h`  (or `man johnny`)
  3. Run: `johnny <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://openwall.info/wiki/john/johnny

### `kali-tools-gpu`
- Kali's GPU tools
- **Steps:**
  1. Install: `sudo apt install -y kali-tools-gpu`
  2. Help: `kali-tools-gpu -h`  (or `man kali-tools-gpu`)
  3. Run: `kali-tools-gpu <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://www.kali.org

### `maskprocessor`
- high-performance word generator with a per-position configurable charset
- **Provides:** `mp32`, `mp64`
- **Steps:**
  1. Install: `sudo apt install -y maskprocessor`
  2. Help: `mp32 -h`  (or `man mp32`)
  3. Run: `mp32 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/hashcat/maskprocessor

### `medusa`
- fast, parallel, modular, login brute-forcer for network services
- **Provides:** `medusa`
- **Steps:**
  1. Install: `sudo apt install -y medusa`
  2. Help: `medusa -h`  (or `man medusa`)
  3. Run: `medusa <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://foofus.net/?page_id=51

### `mimikatz`
- Uses admin rights on Windows to display passwords in plaintext
- **Provides:** `mimikatz`
- **Steps:**
  1. Install: `sudo apt install -y mimikatz`
  2. Help: `mimikatz -h`  (or `man mimikatz`)
  3. Run: `mimikatz <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://blog.gentilkiwi.com/mimikatz

### `ncrack`
- High-speed network authentication cracking tool
- **Provides:** `ncrack`
- **Steps:**
  1. Install: `sudo apt install -y ncrack`
  2. Help: `ncrack -h`  (or `man ncrack`)
  3. Run: `ncrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://nmap.org/ncrack/

### `onesixtyone`
- fast and simple SNMP scanner
- **Provides:** `onesixtyone`
- **Steps:**
  1. Install: `sudo apt install -y onesixtyone`
  2. Help: `onesixtyone -h`  (or `man onesixtyone`)
  3. Run: `onesixtyone <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/trailofbits/onesixtyone

### `ophcrack`
- Microsoft Windows password cracker using rainbow tables (gui)
- **Provides:** `ophcrack`
- **Steps:**
  1. Install: `sudo apt install -y ophcrack`
  2. Help: `ophcrack -h`  (or `man ophcrack`)
  3. Run: `ophcrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://ophcrack.sourceforge.net/

### `ophcrack-cli`
- Microsoft Windows password cracker using rainbow tables (cmdline)
- **Provides:** `ophcrack-cli`
- **Steps:**
  1. Install: `sudo apt install -y ophcrack-cli`
  2. Help: `ophcrack-cli -h`  (or `man ophcrack-cli`)
  3. Run: `ophcrack-cli <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://ophcrack.sourceforge.net/

### `pack`
- Password analysis and cracking kit
- **Provides:** `dictstat`, `maskgen`, `policygen`, `rulegen`, `statsgen`
- **Steps:**
  1. Install: `sudo apt install -y pack`
  2. Help: `maskgen -h`  (or `man maskgen`)
  3. Run: `maskgen <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/Hydraze/pack

### `pack2`
- Password analysis and cracking kit 2
- **Provides:** `pack2`
- **Steps:**
  1. Install: `sudo apt install -y pack2`
  2. Help: `pack2 -h`  (or `man pack2`)
  3. Run: `pack2 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/hops/pack2

### `passing-the-hash`
- Patched tools to use password hashes as authentication input
- **Provides:** `pth-curl`, `pth-net`, `pth-rpcclient`, `pth-smbclient`, `pth-smbget`, `pth-sqsh`, `pth-winexe`, `pth-wmic`, `pth-wmis`
- **Steps:**
  1. Install: `sudo apt install -y passing-the-hash`
  2. Help: `pth-net -h`  (or `man pth-net`)
  3. Run: `pth-net <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://passing-the-hash.blogspot.fr

### `patator`
- Multi-purpose brute-forcer
- **Provides:** `patator`
- **Steps:**
  1. Install: `sudo apt install -y patator`
  2. Help: `patator -h`  (or `man patator`)
  3. Run: `patator <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/lanjelot/patator

### `pdfcrack`
- PDF files password cracker
- **Provides:** `pdfcrack`
- **Steps:**
  1. Install: `sudo apt install -y pdfcrack`
  2. Help: `pdfcrack -h`  (or `man pdfcrack`)
  3. Run: `pdfcrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://pdfcrack.sf.net

### `pipal`
- Statistical analysis on password dumps
- **Provides:** `pipal`
- **Steps:**
  1. Install: `sudo apt install -y pipal`
  2. Help: `pipal -h`  (or `man pipal`)
  3. Run: `pipal <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://www.digininja.org/projects/pipal.php

### `polenum`
- Extracts the password policy from a Windows system
- **Provides:** `polenum`
- **Steps:**
  1. Install: `sudo apt install -y polenum`
  2. Help: `polenum -h`  (or `man polenum`)
  3. Run: `polenum <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/Wh1t3Fox/polenum/

### `rarcrack`
- Password cracker for rar archives
- **Provides:** `rarcrack`
- **Steps:**
  1. Install: `sudo apt install -y rarcrack`
  2. Help: `rarcrack -h`  (or `man rarcrack`)
  3. Run: `rarcrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://rarcrack.sourceforge.net/

### `rcracki-mt`
- Version of rcrack that supports hybrid and indexed tables
- **Provides:** `rcracki_mt`
- **Steps:**
  1. Install: `sudo apt install -y rcracki-mt`
  2. Help: `rcracki_mt -h`  (or `man rcracki_mt`)
  3. Run: `rcracki_mt <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://freerainbowtables.com/

### `rsmangler`
- Wordlist mangling tool
- **Provides:** `rsmangler`
- **Steps:**
  1. Install: `sudo apt install -y rsmangler`
  2. Help: `rsmangler -h`  (or `man rsmangler`)
  3. Run: `rsmangler <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://digi.ninja/projects/rsmangler.php

### `samdump2`
- Dump Windows 2k/NT/XP password hashes
- **Provides:** `samdump2`
- **Steps:**
  1. Install: `sudo apt install -y samdump2`
  2. Help: `samdump2 -h`  (or `man samdump2`)
  3. Run: `samdump2 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://ophcrack.sourceforge.net/

### `seclists`
- Collection of multiple types of security lists
- **Provides:** `seclists`
- **Steps:**
  1. Install: `sudo apt install -y seclists`
  2. Help: `seclists -h`  (or `man seclists`)
  3. Run: `seclists <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/danielmiessler/SecLists

### `sipcrack`
- SIP login dumper/cracker
- **Provides:** `sipcrack`, `sipdump`
- **Steps:**
  1. Install: `sudo apt install -y sipcrack`
  2. Help: `sipcrack -h`  (or `man sipcrack`)
  3. Run: `sipcrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://www.remote-exploit.org/codes_sipcrack.html

### `sipvicious`
- tools to audit SIP based VoIP systems
- **Provides:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **Steps:**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svmap -h`  (or `man svmap`)
  3. Run: `svmap <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/EnableSecurity/sipvicious

### `smbmap`
- handy SMB enumeration tool
- **Provides:** `smbmap`
- **Steps:**
  1. Install: `sudo apt install -y smbmap`
  2. Help: `smbmap -h`  (or `man smbmap`)
  3. Run: `smbmap <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/ShawnDEvans/smbmap

### `statsprocessor`
- word generator based on per-position Markov chains
- **Provides:** `sp32`, `sp64`
- **Steps:**
  1. Install: `sudo apt install -y statsprocessor`
  2. Help: `sp32 -h`  (or `man sp32`)
  3. Run: `sp32 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/hashcat/statsprocessor

### `sucrack`
- multithreaded su bruteforcer
- **Provides:** `sucrack`
- **Steps:**
  1. Install: `sudo apt install -y sucrack`
  2. Help: `sucrack -h`  (or `man sucrack`)
  3. Run: `sucrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://labs.portcullis.co.uk/tools/sucrack/

### `thc-pptp-bruter`
- THC PPTP Brute Force
- **Provides:** `thc-pptp-bruter`
- **Steps:**
  1. Install: `sudo apt install -y thc-pptp-bruter`
  2. Help: `thc-pptp-bruter -h`  (or `man thc-pptp-bruter`)
  3. Run: `thc-pptp-bruter <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: http://www.thc.org/releases.php

### `truecrack`
- Bruteforce password cracker for TrueCrypt volumes
- **Provides:** `truecrack`
- **Steps:**
  1. Install: `sudo apt install -y truecrack`
  2. Help: `truecrack -h`  (or `man truecrack`)
  3. Run: `truecrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://github.com/lvaccaro/truecrack

### `twofi`
- Twitter words of interest
- **Provides:** `twofi`
- **Steps:**
  1. Install: `sudo apt install -y twofi`
  2. Help: `twofi -h`  (or `man twofi`)
  3. Run: `twofi <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://www.digininja.org/projects/twofi.php

### `wordlists`
- Contains the rockyou wordlist
- **Provides:** `wordlists`
- **Steps:**
  1. Install: `sudo apt install -y wordlists`
  2. Help: `wordlists -h`  (or `man wordlists`)
  3. Run: `wordlists <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- Docs: https://www.kali.org


## 06 · Wireless Attacks  (`kali-tools-wireless`)

### `kali-tools-802-11`
- Kali's 802.11 attacks tools
- **Steps:**
  1. Install: `sudo apt install -y kali-tools-802-11`
  2. Help: `kali-tools-802-11 -h`  (or `man kali-tools-802-11`)
  3. Run: `sudo kali-tools-802-11 wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- Docs: https://www.kali.org

### `kali-tools-bluetooth`
- Kali's bluetooth attacks tools
- **Steps:**
  1. Install: `sudo apt install -y kali-tools-bluetooth`
  2. Help: `kali-tools-bluetooth -h`  (or `man kali-tools-bluetooth`)
  3. Run: `sudo kali-tools-bluetooth wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- Docs: https://www.kali.org

### `kali-tools-rfid`
- Kali's RFID tools
- **Steps:**
  1. Install: `sudo apt install -y kali-tools-rfid`
  2. Help: `kali-tools-rfid -h`  (or `man kali-tools-rfid`)
  3. Run: `sudo kali-tools-rfid wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- Docs: https://www.kali.org

### `kali-tools-sdr`
- Kali's SDR tools
- **Steps:**
  1. Install: `sudo apt install -y kali-tools-sdr`
  2. Help: `kali-tools-sdr -h`  (or `man kali-tools-sdr`)
  3. Run: `sudo kali-tools-sdr wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- Docs: https://www.kali.org

### `rfcat`
- Swiss army knife of sub-GHz radio
- **Provides:** `rfcat`, `rfcat_bootloader`, `rfcat_msfrelay`, `rfcat_server`
- **Steps:**
  1. Install: `sudo apt install -y rfcat`
  2. Help: `rfcat -h`  (or `man rfcat`)
  3. Run: `sudo rfcat wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- Docs: https://github.com/atlas0fd00m/rfcat

### `rfkill`
- tool for enabling and disabling wireless devices
- **Provides:** `rfkill`
- **Steps:**
  1. Install: `sudo apt install -y rfkill`
  2. Help: `rfkill -h`  (or `man rfkill`)
  3. Run: `sudo rfkill wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- Docs: https://github.com/util-linux/util-linux

### `sakis3g`
- Tool for establishing 3G connections
- **Provides:** `sakis3g`
- **Steps:**
  1. Install: `sudo apt install -y sakis3g`
  2. Help: `sakis3g -h`  (or `man sakis3g`)
  3. Run: `sudo sakis3g wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- Docs: http://www.sakis3g.org

### `wireshark`
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `sudo wireshark wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- Docs: https://www.wireshark.org/


## 06b · 802.11 Wi-Fi Attacks  (`kali-tools-802-11`)

### `aircrack-ng`
- wireless WEP/WPA cracking utilities
- **Provides:** `airbase-ng`, `aircrack-ng`, `airdecap-ng`, `airdecloak-ng`, `aireplay-ng`, `airmon-ng`, `airodump-ng`, `airodump-ng-oui-update`, `airolib-ng`, `airserv-ng`, `airtun-ng`, `airventriloquist-ng`, `besside-ng`, `besside-ng-crawler`, `buddy-ng`, `dcrack`, `easside-ng`, `ivstools`, `kstats`, `makeivs-ng`, `packetforge-ng`, `tkiptun-ng`, `wesside-ng`, `wpaclean`
- **Steps:**
  1. Install: `sudo apt install -y aircrack-ng`
  2. Help: `aircrack-ng -h`  (or `man aircrack-ng`)
  3. Run: `sudo aircrack-ng wlan0` — needs a monitor-mode adapter
- Docs: https://www.aircrack-ng.org/

### `airgeddon`
- multi-use bash script for Linux systems to audit wireless networks
- **Provides:** `airgeddon`
- **Steps:**
  1. Install: `sudo apt install -y airgeddon`
  2. Help: `airgeddon -h`  (or `man airgeddon`)
  3. Run: `sudo airgeddon wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/v1s1t0r1sh3r3/airgeddon

### `asleap`
- A tool for exploiting Cisco LEAP networks
- **Provides:** `asleap`, `genkeys`
- **Steps:**
  1. Install: `sudo apt install -y asleap`
  2. Help: `asleap -h`  (or `man asleap`)
  3. Run: `sudo asleap wlan0` — needs a monitor-mode adapter
- Docs: https://www.willhackforsushi.com/

### `bully`
- Implementation of the WPS brute force attack, written in C
- **Provides:** `bully`
- **Steps:**
  1. Install: `sudo apt install -y bully`
  2. Help: `bully -h`  (or `man bully`)
  3. Run: `sudo bully wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/kimocoder/bully

### `cowpatty`
- Brute-force WPA dictionary attack
- **Provides:** `cowpatty`, `genpmk`
- **Steps:**
  1. Install: `sudo apt install -y cowpatty`
  2. Help: `cowpatty -h`  (or `man cowpatty`)
  3. Run: `sudo cowpatty wlan0` — needs a monitor-mode adapter
- Docs: https://www.willhackforsushi.com/?page_id=50

### `eapmd5pass`
- Tool for extracting and cracking EAP-MD5
- **Provides:** `eapmd5pass`
- **Steps:**
  1. Install: `sudo apt install -y eapmd5pass`
  2. Help: `eapmd5pass -h`  (or `man eapmd5pass`)
  3. Run: `sudo eapmd5pass wlan0` — needs a monitor-mode adapter
- Docs: https://www.willhackforsushi.com/?page_id=67

### `fern-wifi-cracker`
- Automated Wi-Fi cracker
- **Provides:** `fern-wifi-cracker`
- **Steps:**
  1. Install: `sudo apt install -y fern-wifi-cracker`
  2. Help: `fern-wifi-cracker -h`  (or `man fern-wifi-cracker`)
  3. Run: `sudo fern-wifi-cracker wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/savio-code/fern-wifi-cracker

### `freeradius-wpe`
- FreeRadius Wireless Pawn Edition
- **Provides:** `freeradius-wpe`
- **Steps:**
  1. Install: `sudo apt install -y freeradius-wpe`
  2. Help: `freeradius-wpe -h`  (or `man freeradius-wpe`)
  3. Run: `sudo freeradius-wpe wlan0` — needs a monitor-mode adapter
- Docs: https://www.freeradius.org/

### `hashcat`
- World's fastest and most advanced password recovery utility
- **Provides:** `hashcat`
- **Steps:**
  1. Install: `sudo apt install -y hashcat`
  2. Help: `hashcat -h`  (or `man hashcat`)
  3. Run: `sudo hashcat wlan0` — needs a monitor-mode adapter
- Docs: https://hashcat.net/hashcat/

### `hostapd-wpe`
- Modified hostapd to facilitate AP impersonation attacks
- **Provides:** `hostapd-wpe`, `hostapd-wpe_cli`
- **Steps:**
  1. Install: `sudo apt install -y hostapd-wpe`
  2. Help: `hostapd-wpe -h`  (or `man hostapd-wpe`)
  3. Run: `sudo hostapd-wpe wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/aircrack-ng/aircrack-ng/tree/master/patches/wpe

### `iw`
- tool for configuring Linux wireless devices
- **Provides:** `iw`
- **Steps:**
  1. Install: `sudo apt install -y iw`
  2. Help: `iw -h`  (or `man iw`)
  3. Run: `sudo iw wlan0` — needs a monitor-mode adapter
- Docs: https://wireless.wiki.kernel.org/en/users/documentation/iw

### `kismet`
- wireless network and device detector (metapackage)
- **Steps:**
  1. Install: `sudo apt install -y kismet`
  2. Help: `kismet -h`  (or `man kismet`)
  3. Run: `sudo kismet wlan0` — needs a monitor-mode adapter
- Docs: https://www.kismetwireless.net/

### `macchanger`
- utility for manipulating the MAC address of network interfaces
- **Provides:** `macchanger`
- **Steps:**
  1. Install: `sudo apt install -y macchanger`
  2. Help: `macchanger -h`  (or `man macchanger`)
  3. Run: `sudo macchanger wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/alobbs/macchanger

### `mdk3`
- Wireless attack tool for IEEE 802.11 networks
- **Provides:** `mdk3`
- **Steps:**
  1. Install: `sudo apt install -y mdk3`
  2. Help: `mdk3 -h`  (or `man mdk3`)
  3. Run: `sudo mdk3 wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/aircrack-ng/mdk3

### `mdk4`
- Wireless attack tool for IEEE 802.11 networks
- **Provides:** `mdk4`
- **Steps:**
  1. Install: `sudo apt install -y mdk4`
  2. Help: `mdk4 -h`  (or `man mdk4`)
  3. Run: `sudo mdk4 wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/aircrack-ng/mdk4

### `pixiewps`
- Offline WPS bruteforce tool
- **Provides:** `pixiewps`
- **Steps:**
  1. Install: `sudo apt install -y pixiewps`
  2. Help: `pixiewps -h`  (or `man pixiewps`)
  3. Run: `sudo pixiewps wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/wiire/pixiewps

### `reaver`
- brute force attack tool against Wi-Fi Protected Setup PIN number
- **Provides:** `reaver`, `wash`
- **Steps:**
  1. Install: `sudo apt install -y reaver`
  2. Help: `reaver -h`  (or `man reaver`)
  3. Run: `sudo reaver wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/t6x/reaver-wps-fork-t6x

### `wifi-honey`
- Wi-Fi honeypot
- **Provides:** `wifi-honey`
- **Steps:**
  1. Install: `sudo apt install -y wifi-honey`
  2. Help: `wifi-honey -h`  (or `man wifi-honey`)
  3. Run: `sudo wifi-honey wlan0` — needs a monitor-mode adapter
- Docs: https://www.digininja.org/projects/wifi_honey.php

### `wifite`
- Python script to automate wireless auditing using aircrack-ng tools
- **Provides:** `wifite`
- **Steps:**
  1. Install: `sudo apt install -y wifite`
  2. Help: `wifite -h`  (or `man wifite`)
  3. Run: `sudo wifite wlan0` — needs a monitor-mode adapter
- Docs: https://github.com/kimocoder/wifite2


## 06c · Bluetooth Attacks  (`kali-tools-bluetooth`)

### `blue-hydra`
- Bluetooth device discovery service
- **Provides:** `blue_hydra`, `rfkill-reset`, `test-discovery`
- **Steps:**
  1. Install: `sudo apt install -y blue-hydra`
  2. Help: `blue_hydra -h`  (or `man blue_hydra`)
  3. Run: `sudo blue_hydra hci0` — needs a Bluetooth interface
- Docs: https://github.com/ZeroChaos-/blue_hydra

### `bluelog`
- Bluetooth scanner and logger
- **Provides:** `bluelog`
- **Steps:**
  1. Install: `sudo apt install -y bluelog`
  2. Help: `bluelog -h`  (or `man bluelog`)
  3. Run: `sudo bluelog hci0` — needs a Bluetooth interface
- Docs: http://www.digifail.com/software/bluelog.shtml

### `blueranger`
- Simple Bash script to locate Bluetooth devices
- **Provides:** `blueranger`
- **Steps:**
  1. Install: `sudo apt install -y blueranger`
  2. Help: `blueranger -h`  (or `man blueranger`)
  3. Run: `sudo blueranger hci0` — needs a Bluetooth interface
- Docs: http://www.hackfromacave.com/projects/blueranger.html

### `bluesnarfer`
- Bluesnarfing utility
- **Provides:** `bluesnarfer`
- **Steps:**
  1. Install: `sudo apt install -y bluesnarfer`
  2. Help: `bluesnarfer -h`  (or `man bluesnarfer`)
  3. Run: `sudo bluesnarfer hci0` — needs a Bluetooth interface
- Docs: http://www.alighieri.org/

### `bluez`
- Bluetooth tools and daemons
- **Provides:** `bluemoon`, `bluetoothctl`, `bluetoothd`, `btattach`, `btmgmt`, `btmon`, `ciptool`, `gatttool`, `hciattach`, `hciconfig`, `hcitool`, `hex2hcd`, `l2ping`, `l2test`, `mpris-proxy`, `obexctl`, `rctest`, `rfcomm`, `sdptool`
- **Steps:**
  1. Install: `sudo apt install -y bluez`
  2. Help: `btmon -h`  (or `man btmon`)
  3. Run: `sudo btmon hci0` — needs a Bluetooth interface
- Docs: http://www.bluez.org

### `btscanner`
- ncurses-based scanner for Bluetooth devices
- **Provides:** `btscanner`
- **Steps:**
  1. Install: `sudo apt install -y btscanner`
  2. Help: `btscanner -h`  (or `man btscanner`)
  3. Run: `sudo btscanner hci0` — needs a Bluetooth interface
- Docs: https://salsa.debian.org/pkg-security-team/btscanner

### `crackle`
- Crack and decrypt BLE encryption
- **Provides:** `crackle`
- **Steps:**
  1. Install: `sudo apt install -y crackle`
  2. Help: `crackle -h`  (or `man crackle`)
  3. Run: `sudo crackle hci0` — needs a Bluetooth interface
- Docs: https://github.com/mikeryan/crackle

### `redfang`
- Locates non-discoverable bluetooth devices
- **Provides:** `fang`
- **Steps:**
  1. Install: `sudo apt install -y redfang`
  2. Help: `fang -h`  (or `man fang`)
  3. Run: `sudo fang hci0` — needs a Bluetooth interface

### `spooftooph`
- Automates spoofing or cloning Bluetooth devices
- **Provides:** `spooftooph`
- **Steps:**
  1. Install: `sudo apt install -y spooftooph`
  2. Help: `spooftooph -h`  (or `man spooftooph`)
  3. Run: `sudo spooftooph hci0` — needs a Bluetooth interface
- Docs: http://www.hackfromacave.com/projects/spooftooph.html

### `ubertooth`
- 2.4 GHz wireless development platform for Bluetooth experimentation
- **Provides:** `ubertooth-afh`, `ubertooth-btbr`, `ubertooth-btle`, `ubertooth-debug`, `ubertooth-dfu`, `ubertooth-ducky`, `ubertooth-dump`, `ubertooth-ego`, `ubertooth-follow`, `ubertooth-rx`, `ubertooth-scan`, `ubertooth-specan`, `ubertooth-specan-ui`, `ubertooth-util`
- **Steps:**
  1. Install: `sudo apt install -y ubertooth`
  2. Help: `ubertooth-rx -h`  (or `man ubertooth-rx`)
  3. Run: `sudo ubertooth-rx hci0` — needs a Bluetooth interface
- Docs: http://ubertooth.sourceforge.net/


## 06d · RFID/NFC Tools  (`kali-tools-rfid`)

### `proxmark3`
- Firmware, flasher, and client for the Proxmark3
- **Provides:** `proxmark3`
- **Steps:**
  1. Install: `sudo apt install -y proxmark3`
  2. Help: `proxmark3 -h`  (or `man proxmark3`)
  3. Run: `proxmark3 -h` — needs RFID reader hardware
- Docs: https://github.com/RfidResearchGroup/proxmark3

### `rfdump`
- tool to decode RFID tag data
- **Provides:** `rfdump`
- **Steps:**
  1. Install: `sudo apt install -y rfdump`
  2. Help: `rfdump -h`  (or `man rfdump`)
  3. Run: `rfdump -h` — needs RFID reader hardware
- Docs: http://www.rfdump.org/


## 06e · Software-Defined Radio  (`kali-tools-sdr`)

### `chirp`
- Configuration tool for amateur radios
- **Provides:** `chirpc`, `chirpw`, `experttune`
- **Steps:**
  1. Install: `sudo apt install -y chirp`
  2. Help: `chirpc -h`  (or `man chirpc`)
  3. Run: `chirpc -h` — needs SDR hardware (HackRF/RTL-SDR)
- Docs: https://chirpmyradio.com/

### `hackrf`
- Software defined radio peripheral - utilities
- **Provides:** `hackrf_biast`, `hackrf_clock`, `hackrf_cpldjtag`, `hackrf_debug`, `hackrf_info`, `hackrf_operacake`, `hackrf_spiflash`, `hackrf_sweep`, `hackrf_transfer`
- **Steps:**
  1. Install: `sudo apt install -y hackrf`
  2. Help: `hackrf_info -h`  (or `man hackrf_info`)
  3. Run: `hackrf_info -h` — needs SDR hardware (HackRF/RTL-SDR)
- Docs: http://greatscottgadgets.com/hackrf/

### `inspectrum`
- tool for visualising captured radio signals
- **Provides:** `inspectrum`
- **Steps:**
  1. Install: `sudo apt install -y inspectrum`
  2. Help: `inspectrum -h`  (or `man inspectrum`)
  3. Run: `inspectrum -h` — needs SDR hardware (HackRF/RTL-SDR)
- Docs: https://github.com/miek/inspectrum

### `kalibrate-rtl`
- Calculate local oscillator frequency offset using GSM base stations
- **Provides:** `kal`
- **Steps:**
  1. Install: `sudo apt install -y kalibrate-rtl`
  2. Help: `kal -h`  (or `man kal`)
  3. Run: `kal -h` — needs SDR hardware (HackRF/RTL-SDR)
- Docs: https://github.com/steve-m/kalibrate-rtl

### `multimon-ng`
- digital radio transmission decoder
- **Provides:** `multimon-ng`
- **Steps:**
  1. Install: `sudo apt install -y multimon-ng`
  2. Help: `multimon-ng -h`  (or `man multimon-ng`)
  3. Run: `multimon-ng -h` — needs SDR hardware (HackRF/RTL-SDR)
- Docs: https://github.com/EliasOenal/multimon-ng/

### `uhd-host`
- universal hardware driver for Ettus Research products - host apps
- **Provides:** `rfnoc_image_builder`, `rfnoc_modtool`, `uhd_adc_self_cal`, `uhd_cal_rx_iq_balance`, `uhd_cal_tx_dc_offset`, `uhd_cal_tx_iq_balance`, `uhd_config_info`, `uhd_find_devices`, `uhd_image_loader`, `uhd_images_downloader`, `uhd_usrp_probe`, `usrp2_card_burner`, `usrpctl`
- **Steps:**
  1. Install: `sudo apt install -y uhd-host`
  2. Help: `usrpctl -h`  (or `man usrpctl`)
  3. Run: `usrpctl -h` — needs SDR hardware (HackRF/RTL-SDR)
- Docs: https://www.ettus.com/sdr-software/uhd-usrp-hardware-driver/

### `uhd-images`
- Various UHD Images
- **Steps:**
  1. Install: `sudo apt install -y uhd-images`
  2. Help: `uhd-images -h`  (or `man uhd-images`)
  3. Run: `uhd-images -h` — needs SDR hardware (HackRF/RTL-SDR)
- Docs: https://www.ettus.com


## 07 · Reverse Engineering  (`kali-tools-reverse-engineering`)

### `apktool`
- tool for reverse engineering Android apk files
- **Provides:** `apktool`
- **Steps:**
  1. Install: `sudo apt install -y apktool`
  2. Help: `apktool -h`  (or `man apktool`)
  3. Run: `apktool ./a-binary-you-own` — analyse a binary you own
- Docs: https://ibotpeaches.github.io/Apktool/

### `bytecode-viewer`
- Java 8+ Jar & Android APK Reverse Engineering Suite
- **Provides:** `bytecode-viewer`
- **Steps:**
  1. Install: `sudo apt install -y bytecode-viewer`
  2. Help: `bytecode-viewer -h`  (or `man bytecode-viewer`)
  3. Run: `bytecode-viewer ./a-binary-you-own` — analyse a binary you own
- Docs: https://github.com/Konloch/bytecode-viewer

### `clang`
- C, C++ and Objective-C compiler (LLVM based), clang binary
- **Provides:** `clang`, `clang++`, `clang-cl`, `clang-cpp`, `clang-scan-deps`
- **Steps:**
  1. Install: `sudo apt install -y clang`
  2. Help: `clang -h`  (or `man clang`)
  3. Run: `clang ./a-binary-you-own` — analyse a binary you own

### `dex2jar`
- Tools to work with android .dex and java .class files
- **Provides:** `d2j-apk-sign`, `d2j-asm-verify`, `d2j-baksmali`, `d2j-class-version-switch`, `d2j-decrypt-string`, `d2j-dex2jar`, `d2j-dex2smali`, `d2j-dex-recompute-checksum`, `d2j-dex-weaver`, `d2j_invoke`, `d2j-jar2dex`, `d2j-jar2jasmin`, `d2j-jar-access`, `d2j-jar-weaver`, `d2j-jasmin2jar`, `d2j-smali`, `d2j-std-apk`, `dex-tools`
- **Steps:**
  1. Install: `sudo apt install -y dex2jar`
  2. Help: `d2j-smali -h`  (or `man d2j-smali`)
  3. Run: `d2j-smali ./a-binary-you-own` — analyse a binary you own
- Docs: https://github.com/pxb1988/dex2jar/tree/2.x

### `jadx`
- Dex to Java decompiler
- **Provides:** `jadx`, `jadx-gui`
- **Steps:**
  1. Install: `sudo apt install -y jadx`
  2. Help: `jadx -h`  (or `man jadx`)
  3. Run: `jadx ./a-binary-you-own` — analyse a binary you own
- Docs: https://github.com/skylot/jadx

### `javasnoop`
- Intercept Java applications locally
- **Provides:** `javasnoop`
- **Steps:**
  1. Install: `sudo apt install -y javasnoop`
  2. Help: `javasnoop -h`  (or `man javasnoop`)
  3. Run: `javasnoop ./a-binary-you-own` — analyse a binary you own

### `jd-gui`
- GUI Java .class decompiler
- **Provides:** `jd-gui`
- **Steps:**
  1. Install: `sudo apt install -y jd-gui`
  2. Help: `jd-gui -h`  (or `man jd-gui`)
  3. Run: `jd-gui ./a-binary-you-own` — analyse a binary you own
- Docs: http://jd.benow.ca/

### `metasploit-framework`
- Framework for exploit development and vulnerability research
- **Provides:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **Steps:**
  1. Install: `sudo apt install -y metasploit-framework`
  2. Help: `msf-jsobfu -h`  (or `man msf-jsobfu`)
  3. Run: `msf-jsobfu ./a-binary-you-own` — analyse a binary you own
- Docs: https://www.metasploit.com/

### `radare2`
- free and advanced command line hexadecimal editor
- **Provides:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **Steps:**
  1. Install: `sudo apt install -y radare2`
  2. Help: `radare2 -h`  (or `man radare2`)
  3. Run: `radare2 ./a-binary-you-own` — analyse a binary you own
- Docs: https://www.radare.org

### `rizin`
- reverse engineering framework and command-line toolset
- **Provides:** `rizin`, `rz-ar`, `rz-asm`, `rz-ax`, `rz-bin`, `rz-diff`, `rz-find`, `rz-gg`, `rz-hash`, `rz-run`, `rz-sign`, `rz-test`
- **Steps:**
  1. Install: `sudo apt install -y rizin`
  2. Help: `rizin -h`  (or `man rizin`)
  3. Run: `rizin ./a-binary-you-own` — analyse a binary you own
- Docs: https://rizin.re/

### `rizin-cutter`
- reverse engineering platform powered by rizin
- **Provides:** `cutter`
- **Steps:**
  1. Install: `sudo apt install -y rizin-cutter`
  2. Help: `cutter -h`  (or `man cutter`)
  3. Run: `cutter ./a-binary-you-own` — analyse a binary you own
- Docs: https://cutter.re

### `rz-ghidra`
- ghidra decompiler and sleigh disassembler for rizin
- **Steps:**
  1. Install: `sudo apt install -y rz-ghidra`
  2. Help: `rz-ghidra -h`  (or `man rz-ghidra`)
  3. Run: `rz-ghidra ./a-binary-you-own` — analyse a binary you own
- Docs: https://github.com/rizinorg/rz-ghidra


## 08 · Exploitation Tools  (`kali-tools-exploitation`)

### `armitage`
- Cyber attack management for Metasploit
- **Provides:** `armitage`, `teamserver`
- **Steps:**
  1. Install: `sudo apt install -y armitage`
  2. Help: `armitage -h`  (or `man armitage`)
  3. Run: `armitage` — interactive; validation on your own targets only
- Docs: https://github.com/r00t0v3rr1d3/armitage

### `beef-xss`
- Browser Exploitation Framework (BeEF)
- **Provides:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **Steps:**
  1. Install: `sudo apt install -y beef-xss`
  2. Help: `beef-xss -h`  (or `man beef-xss`)
  3. Run: `beef-xss` — interactive; validation on your own targets only
- Docs: https://beefproject.com/

### `exploitdb`
- Searchable Exploit Database archive
- **Provides:** `exploitdb`, `searchsploit`
- **Steps:**
  1. Install: `sudo apt install -y exploitdb`
  2. Help: `exploitdb -h`  (or `man exploitdb`)
  3. Run: `exploitdb` — interactive; validation on your own targets only
- Docs: https://www.exploit-db.com

### `metasploit-framework`
- Framework for exploit development and vulnerability research
- **Provides:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **Steps:**
  1. Install: `sudo apt install -y metasploit-framework`
  2. Help: `msf-jsobfu -h`  (or `man msf-jsobfu`)
  3. Run: `msf-jsobfu` — interactive; validation on your own targets only
- Docs: https://www.metasploit.com/

### `msfpc`
- MSFvenom Payload Creator (MSFPC)
- **Provides:** `msfpc`
- **Steps:**
  1. Install: `sudo apt install -y msfpc`
  2. Help: `msfpc -h`  (or `man msfpc`)
  3. Run: `msfpc` — interactive; validation on your own targets only
- Docs: https://github.com/g0tmi1k/msfpc

### `set`
- Social-Engineer Toolkit
- **Provides:** `se-toolkit`, `setoolkit`
- **Steps:**
  1. Install: `sudo apt install -y set`
  2. Help: `setoolkit -h`  (or `man setoolkit`)
  3. Run: `setoolkit` — interactive; validation on your own targets only
- Docs: https://www.trustedsec.com/downloads/social-engineer-toolkit/

### `sqlmap`
- automatic SQL injection tool
- **Provides:** `sqlmap`, `sqlmapapi`
- **Steps:**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap` — interactive; validation on your own targets only
- Docs: https://sqlmap.org/

### `termineter`
- Smart meter testing framework
- **Provides:** `termineter`
- **Steps:**
  1. Install: `sudo apt install -y termineter`
  2. Help: `termineter -h`  (or `man termineter`)
  3. Run: `termineter` — interactive; validation on your own targets only
- Docs: https://github.com/rsmusllp/termineter


## 09 · Sniffing & Spoofing  (`kali-tools-sniffing-spoofing`)

### `above`
- Network security sniffer for finding vulnerabilities in the network
- **Provides:** `above`
- **Steps:**
  1. Install: `sudo apt install -y above`
  2. Help: `above -h`  (or `man above`)
  3. Run: `sudo above -i eth0` — capture/test on your own segment
- Docs: https://github.com/caster0x00/Above

### `bettercap`
- Complete, modular, portable and easily extensible MITM framework
- **Provides:** `bettercap`
- **Steps:**
  1. Install: `sudo apt install -y bettercap`
  2. Help: `bettercap -h`  (or `man bettercap`)
  3. Run: `sudo bettercap -i eth0` — capture/test on your own segment
- Docs: https://www.bettercap.org

### `darkstat`
- network traffic analyzer
- **Provides:** `darkstat`
- **Steps:**
  1. Install: `sudo apt install -y darkstat`
  2. Help: `darkstat -h`  (or `man darkstat`)
  3. Run: `sudo darkstat -i eth0` — capture/test on your own segment
- Docs: https://unix4lyfe.org/darkstat/

### `dnschef`
- DNS proxy for penetration testers
- **Provides:** `dnschef`
- **Steps:**
  1. Install: `sudo apt install -y dnschef`
  2. Help: `dnschef -h`  (or `man dnschef`)
  3. Run: `sudo dnschef -i eth0` — capture/test on your own segment
- Docs: https://github.com/iphelix/dnschef

### `driftnet`
- picks out and displays images from network traffic
- **Provides:** `driftnet`
- **Steps:**
  1. Install: `sudo apt install -y driftnet`
  2. Help: `driftnet -h`  (or `man driftnet`)
  3. Run: `sudo driftnet -i eth0` — capture/test on your own segment
- Docs: https://github.com/deiv/driftnet

### `dsniff`
- Various tools to sniff network traffic for cleartext insecurities
- **Provides:** `arpspoof`, `dnsspoof`, `dsniff`, `filesnarf`, `macof`, `mailsnarf`, `msgsnarf`, `sshmitm`, `sshow`, `tcpkill`, `tcpnice`, `urlsnarf`, `webmitm`, `webspy`
- **Steps:**
  1. Install: `sudo apt install -y dsniff`
  2. Help: `dsniff -h`  (or `man dsniff`)
  3. Run: `sudo dsniff -i eth0` — capture/test on your own segment
- Docs: https://github.com/hackerschoice/dsniff

### `ettercap-graphical`
- Ettercap GUI-enabled executable
- **Provides:** `ettercap`, `ettercap-pkexec`, `etterfilter`, `etterlog`
- **Steps:**
  1. Install: `sudo apt install -y ettercap-graphical`
  2. Help: `ettercap -h`  (or `man ettercap`)
  3. Run: `sudo ettercap -i eth0` — capture/test on your own segment
- Docs: https://ettercap.github.io/ettercap/

### `ettercap-text-only`
- Ettercap console-mode executable
- **Provides:** `ettercap`, `etterfilter`, `etterlog`
- **Steps:**
  1. Install: `sudo apt install -y ettercap-text-only`
  2. Help: `ettercap -h`  (or `man ettercap`)
  3. Run: `sudo ettercap -i eth0` — capture/test on your own segment
- Docs: https://ettercap.github.io/ettercap/

### `ferret-sidejack`
- Monitors data and extracts interesting data
- **Provides:** `ferret-sidejack`
- **Steps:**
  1. Install: `sudo apt install -y ferret-sidejack`
  2. Help: `ferret-sidejack -h`  (or `man ferret-sidejack`)
  3. Run: `sudo ferret-sidejack -i eth0` — capture/test on your own segment
- Docs: https://github.com/robertdavidgraham/ferret

### `fiked`
- Cisco VPN attack tool
- **Provides:** `fiked`
- **Steps:**
  1. Install: `sudo apt install -y fiked`
  2. Help: `fiked -h`  (or `man fiked`)
  3. Run: `sudo fiked -i eth0` — capture/test on your own segment
- Docs: https://www.roe.ch/FakeIKEd

### `hamster-sidejack`
- Sidejacking tool
- **Provides:** `hamster-sidejack`
- **Steps:**
  1. Install: `sudo apt install -y hamster-sidejack`
  2. Help: `hamster-sidejack -h`  (or `man hamster-sidejack`)
  3. Run: `sudo hamster-sidejack -i eth0` — capture/test on your own segment
- Docs: http://www.erratasec.com/research.html

### `hexinject`
- Versatile packet injector and sniffer
- **Provides:** `hex2raw`, `hexinject`, `packets.tcl`, `prettypacket`
- **Steps:**
  1. Install: `sudo apt install -y hexinject`
  2. Help: `hexinject -h`  (or `man hexinject`)
  3. Run: `sudo hexinject -i eth0` — capture/test on your own segment
- Docs: https://hexinject.sourceforge.net/

### `isr-evilgrade`
- Evilgrade framework
- **Provides:** `evilgrade`
- **Steps:**
  1. Install: `sudo apt install -y isr-evilgrade`
  2. Help: `evilgrade -h`  (or `man evilgrade`)
  3. Run: `sudo evilgrade -i eth0` — capture/test on your own segment
- Docs: https://github.com/infobyte/evilgrade

### `macchanger`
- utility for manipulating the MAC address of network interfaces
- **Provides:** `macchanger`
- **Steps:**
  1. Install: `sudo apt install -y macchanger`
  2. Help: `macchanger -h`  (or `man macchanger`)
  3. Run: `sudo macchanger -i eth0` — capture/test on your own segment
- Docs: https://github.com/alobbs/macchanger

### `mitmproxy`
- SSL-capable man-in-the-middle HTTP proxy
- **Provides:** `mitmdump`, `mitmproxy`, `mitmweb`
- **Steps:**
  1. Install: `sudo apt install -y mitmproxy`
  2. Help: `mitmproxy -h`  (or `man mitmproxy`)
  3. Run: `sudo mitmproxy -i eth0` — capture/test on your own segment
- Docs: https://mitmproxy.org

### `netsniff-ng`
- Linux network packet sniffer toolkit
- **Provides:** `astraceroute`, `bpfc`, `curvetun`, `flowtop`, `ifpps`, `mausezahn`, `netsniff-ng`, `trafgen`
- **Steps:**
  1. Install: `sudo apt install -y netsniff-ng`
  2. Help: `netsniff-ng -h`  (or `man netsniff-ng`)
  3. Run: `sudo netsniff-ng -i eth0` — capture/test on your own segment
- Docs: http://netsniff-ng.org/

### `rebind`
- DNS rebinding tool
- **Provides:** `dns-rebind`
- **Steps:**
  1. Install: `sudo apt install -y rebind`
  2. Help: `dns-rebind -h`  (or `man dns-rebind`)
  3. Run: `sudo dns-rebind -i eth0` — capture/test on your own segment

### `responder`
- LLMNR/NBT-NS/mDNS Poisoner
- **Provides:** `responder`, `responder-BrowserListener`, `responder-DHCP_Auto`, `responder-FindSQLSrv`, `responder-Icmp-Redirect`, `responder-MultiRelay`, `responder-RunFinger`
- **Steps:**
  1. Install: `sudo apt install -y responder`
  2. Help: `responder -h`  (or `man responder`)
  3. Run: `sudo responder -i eth0` — capture/test on your own segment
- Docs: https://github.com/lgandx/Responder

### `sniffjoke`
- Transparent TCP connection scrambler
- **Provides:** `sj-commit-results`, `sj-iptcpopt-probe`, `sniffjoke`, `sniffjoke-autotest`, `sniffjokectl`
- **Steps:**
  1. Install: `sudo apt install -y sniffjoke`
  2. Help: `sniffjoke -h`  (or `man sniffjoke`)
  3. Run: `sudo sniffjoke -i eth0` — capture/test on your own segment
- Docs: https://github.com/vecna/sniffjoke

### `sslsniff`
- SSL/TLS man-in-the-middle attack tool
- **Provides:** `sslsniff`
- **Steps:**
  1. Install: `sudo apt install -y sslsniff`
  2. Help: `sslsniff -h`  (or `man sslsniff`)
  3. Run: `sudo sslsniff -i eth0` — capture/test on your own segment
- Docs: https://github.com/moxie0/sslsniff

### `sslsplit`
- transparent and scalable SSL/TLS interception
- **Provides:** `sslsplit`
- **Steps:**
  1. Install: `sudo apt install -y sslsplit`
  2. Help: `sslsplit -h`  (or `man sslsplit`)
  3. Run: `sudo sslsplit -i eth0` — capture/test on your own segment
- Docs: https://www.roe.ch/SSLsplit

### `tcpflow`
- TCP flow recorder
- **Provides:** `tcpflow`
- **Steps:**
  1. Install: `sudo apt install -y tcpflow`
  2. Help: `tcpflow -h`  (or `man tcpflow`)
  3. Run: `sudo tcpflow -i eth0` — capture/test on your own segment
- Docs: https://github.com/simsong/tcpflow

### `tcpreplay`
- Tool to replay saved tcpdump files at arbitrary speeds
- **Provides:** `tcpbridge`, `tcpcapinfo`, `tcpliveplay`, `tcpprep`, `tcpreplay`, `tcpreplay-edit`, `tcprewrite`
- **Steps:**
  1. Install: `sudo apt install -y tcpreplay`
  2. Help: `tcpreplay -h`  (or `man tcpreplay`)
  3. Run: `sudo tcpreplay -i eth0` — capture/test on your own segment
- Docs: http://tcpreplay.appneta.com/

### `wifi-honey`
- Wi-Fi honeypot
- **Provides:** `wifi-honey`
- **Steps:**
  1. Install: `sudo apt install -y wifi-honey`
  2. Help: `wifi-honey -h`  (or `man wifi-honey`)
  3. Run: `sudo wifi-honey -i eth0` — capture/test on your own segment
- Docs: https://www.digininja.org/projects/wifi_honey.php

### `wireshark`
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `sudo wireshark -i eth0` — capture/test on your own segment
- Docs: https://www.wireshark.org/


## 10 · Post-Exploitation  (`kali-tools-post-exploitation`)

### `dbd`
- Netcat clone with encryption
- **Provides:** `dbd`
- **Steps:**
  1. Install: `sudo apt install -y dbd`
  2. Help: `dbd -h`  (or `man dbd`)
  3. Run: `dbd -h` — use on your own host after a foothold
- Docs: https://github.com/gitdurandal/dbd

### `dns2tcp`
- TCP-over-DNS tunnel server and client
- **Provides:** `dns2tcpc`, `dns2tcpd`
- **Steps:**
  1. Install: `sudo apt install -y dns2tcp`
  2. Help: `dns2tcpc -h`  (or `man dns2tcpc`)
  3. Run: `dns2tcpc -h` — use on your own host after a foothold

### `exe2hexbat`
- Convert EXE to bat
- **Provides:** `exe2hex`
- **Steps:**
  1. Install: `sudo apt install -y exe2hexbat`
  2. Help: `exe2hex -h`  (or `man exe2hex`)
  3. Run: `exe2hex -h` — use on your own host after a foothold
- Docs: https://github.com/g0tmi1k/exe2hex/

### `iodine`
- tool for tunneling IPv4 data through a DNS server
- **Provides:** `iodine`, `iodine-client-start`, `iodined`
- **Steps:**
  1. Install: `sudo apt install -y iodine`
  2. Help: `iodine -h`  (or `man iodine`)
  3. Run: `iodine -h` — use on your own host after a foothold
- Docs: https://code.kryo.se/iodine

### `laudanum`
- Collection of injectable web files
- **Provides:** `laudanum`
- **Steps:**
  1. Install: `sudo apt install -y laudanum`
  2. Help: `laudanum -h`  (or `man laudanum`)
  3. Run: `laudanum -h` — use on your own host after a foothold
- Docs: https://sourceforge.net/projects/laudanum/

### `mimikatz`
- Uses admin rights on Windows to display passwords in plaintext
- **Provides:** `mimikatz`
- **Steps:**
  1. Install: `sudo apt install -y mimikatz`
  2. Help: `mimikatz -h`  (or `man mimikatz`)
  3. Run: `mimikatz -h` — use on your own host after a foothold
- Docs: https://blog.gentilkiwi.com/mimikatz

### `miredo`
- Teredo IPv6 tunneling through NATs
- **Provides:** `miredo`, `miredo-checkconf`, `teredo-mire`
- **Steps:**
  1. Install: `sudo apt install -y miredo`
  2. Help: `miredo -h`  (or `man miredo`)
  3. Run: `miredo -h` — use on your own host after a foothold
- Docs: http://www.remlab.net/miredo/

### `nishang`
- Collection of PowerShell scripts and payloads
- **Provides:** `nishang`
- **Steps:**
  1. Install: `sudo apt install -y nishang`
  2. Help: `nishang -h`  (or `man nishang`)
  3. Run: `nishang -h` — use on your own host after a foothold
- Docs: https://github.com/samratashok/nishang

### `powersploit`
- PowerShell Post-Exploitation Framework
- **Provides:** `powersploit`
- **Steps:**
  1. Install: `sudo apt install -y powersploit`
  2. Help: `powersploit -h`  (or `man powersploit`)
  3. Run: `powersploit -h` — use on your own host after a foothold
- Docs: https://github.com/PowerShellMafia/PowerSploit

### `proxychains4`
- redirect connections through socks/http proxies (proxychains-ng)
- **Provides:** `proxychains4`, `proxychains4-daemon`
- **Steps:**
  1. Install: `sudo apt install -y proxychains4`
  2. Help: `proxychains4 -h`  (or `man proxychains4`)
  3. Run: `proxychains4 -h` — use on your own host after a foothold
- Docs: https://github.com/rofl0r/proxychains-ng

### `proxytunnel`
- Help SSH and other protocols through HTTP(S) proxies
- **Provides:** `proxytunnel`
- **Steps:**
  1. Install: `sudo apt install -y proxytunnel`
  2. Help: `proxytunnel -h`  (or `man proxytunnel`)
  3. Run: `proxytunnel -h` — use on your own host after a foothold
- Docs: https://proxytunnel.sourceforge.io/

### `ptunnel`
- Tunnel TCP connections over ICMP packets
- **Provides:** `ptunnel`
- **Steps:**
  1. Install: `sudo apt install -y ptunnel`
  2. Help: `ptunnel -h`  (or `man ptunnel`)
  3. Run: `ptunnel -h` — use on your own host after a foothold
- Docs: http://www.mit.edu/afs.new/sipb/user/golem/tmp/ptunnel-0.61.orig/web/

### `pwnat`
- NAT to NAT client-server communication
- **Provides:** `pwnat`
- **Steps:**
  1. Install: `sudo apt install -y pwnat`
  2. Help: `pwnat -h`  (or `man pwnat`)
  3. Run: `pwnat -h` — use on your own host after a foothold
- Docs: https://samy.pl/pwnat/

### `sbd`
- Secure backdoor for Linux and Windows
- **Provides:** `sbd`
- **Steps:**
  1. Install: `sudo apt install -y sbd`
  2. Help: `sbd -h`  (or `man sbd`)
  3. Run: `sbd -h` — use on your own host after a foothold
- Docs: https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz

### `sslh`
- Applicative protocol multiplexer
- **Provides:** `sslh`, `sslh-ev`, `sslh-select`
- **Steps:**
  1. Install: `sudo apt install -y sslh`
  2. Help: `sslh -h`  (or `man sslh`)
  3. Run: `sslh -h` — use on your own host after a foothold
- Docs: http://www.rutschle.net/tech/sslh/README.html

### `stunnel4`
- Universal SSL tunnnel for network daemons - compatibility package
- **Provides:** `stunnel4`
- **Steps:**
  1. Install: `sudo apt install -y stunnel4`
  2. Help: `stunnel4 -h`  (or `man stunnel4`)
  3. Run: `stunnel4 -h` — use on your own host after a foothold
- Docs: https://www.stunnel.org/

### `udptunnel`
- tunnel UDP packets over a TCP connection
- **Provides:** `udptunnel`
- **Steps:**
  1. Install: `sudo apt install -y udptunnel`
  2. Help: `udptunnel -h`  (or `man udptunnel`)
  3. Run: `udptunnel -h` — use on your own host after a foothold
- Docs: http://www1.cs.columbia.edu/~lennox/udptunnel/

### `webacoo`
- Web backdoor cookie script kit
- **Provides:** `webacoo`
- **Steps:**
  1. Install: `sudo apt install -y webacoo`
  2. Help: `webacoo -h`  (or `man webacoo`)
  3. Run: `webacoo -h` — use on your own host after a foothold
- Docs: https://github.com/anestisb/WeBaCoo

### `weevely`
- Stealth tiny web shell
- **Provides:** `weevely`
- **Steps:**
  1. Install: `sudo apt install -y weevely`
  2. Help: `weevely -h`  (or `man weevely`)
  3. Run: `weevely -h` — use on your own host after a foothold
- Docs: https://github.com/epinna/weevely3/


## 11 · Forensics  (`kali-tools-forensics`)

### `7zip`
- 7-Zip file archiver with a high compression ratio
- **Provides:** `7z`, `7za`, `7zr`, `p7zip`
- **Steps:**
  1. Install: `sudo apt install -y 7zip`
  2. Help: `7z -h`  (or `man 7z`)
  3. Run: `7z <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.7-zip.org/

### `afflib-tools`
- Advanced Forensics Format Library (utilities)
- **Provides:** `affcat`, `affcompare`, `affconvert`, `affcopy`, `affcrypto`, `affdiskprint`, `affinfo`, `affix`, `affrecover`, `affsegment`, `affsign`, `affstats`, `affuse`, `affverify`, `affxml`
- **Steps:**
  1. Install: `sudo apt install -y afflib-tools`
  2. Help: `affix -h`  (or `man affix`)
  3. Run: `affix <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/sshock/AFFLIBv3

### `apktool`
- tool for reverse engineering Android apk files
- **Provides:** `apktool`
- **Steps:**
  1. Install: `sudo apt install -y apktool`
  2. Help: `apktool -h`  (or `man apktool`)
  3. Run: `apktool <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://ibotpeaches.github.io/Apktool/

### `autopsy`
- graphical interface to SleuthKit
- **Provides:** `autopsy`
- **Steps:**
  1. Install: `sudo apt install -y autopsy`
  2. Help: `autopsy -h`  (or `man autopsy`)
  3. Run: `autopsy <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.sleuthkit.org/autopsy/

### `binwalk`
- tool library for analyzing binary blobs and executable code
- **Provides:** `binwalk`
- **Steps:**
  1. Install: `sudo apt install -y binwalk`
  2. Help: `binwalk -h`  (or `man binwalk`)
  3. Run: `binwalk <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/ReFirmLabs/binwalk

### `binwalk3`
- tool library for analyzing binary blobs and executable code
- **Provides:** `binwalk3`
- **Steps:**
  1. Install: `sudo apt install -y binwalk3`
  2. Help: `binwalk3 -h`  (or `man binwalk3`)
  3. Run: `binwalk3 <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/ReFirmLabs/binwalk

### `bulk-extractor`
- Extracts information without parsing filesystem
- **Provides:** `bulk_extractor`
- **Steps:**
  1. Install: `sudo apt install -y bulk-extractor`
  2. Help: `bulk_extractor -h`  (or `man bulk_extractor`)
  3. Run: `bulk_extractor <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/simsong/bulk_extractor

### `bytecode-viewer`
- Java 8+ Jar & Android APK Reverse Engineering Suite
- **Provides:** `bytecode-viewer`
- **Steps:**
  1. Install: `sudo apt install -y bytecode-viewer`
  2. Help: `bytecode-viewer -h`  (or `man bytecode-viewer`)
  3. Run: `bytecode-viewer <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/Konloch/bytecode-viewer

### `cabextract`
- Microsoft Cabinet file unpacker
- **Provides:** `cabextract`
- **Steps:**
  1. Install: `sudo apt install -y cabextract`
  2. Help: `cabextract -h`  (or `man cabextract`)
  3. Run: `cabextract <image-or-file-you-own>` — analyse an image/file you own

### `chkrootkit`
- rootkit detector
- **Provides:** `chklastlog`, `chkrootkit`, `chkrootkit-daily`, `chkwtmp`
- **Steps:**
  1. Install: `sudo apt install -y chkrootkit`
  2. Help: `chkrootkit -h`  (or `man chkrootkit`)
  3. Run: `chkrootkit <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.chkrootkit.org/

### `creddump7`
- Python tool to extract credentials and secrets from Windows registry hives
- **Provides:** `creddump7`
- **Steps:**
  1. Install: `sudo apt install -y creddump7`
  2. Help: `creddump7 -h`  (or `man creddump7`)
  3. Run: `creddump7 <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/CiscoCXSecurity/creddump7

### `dc3dd`
- patched version of GNU dd with forensic features
- **Provides:** `dc3dd`
- **Steps:**
  1. Install: `sudo apt install -y dc3dd`
  2. Help: `dc3dd -h`  (or `man dc3dd`)
  3. Run: `dc3dd <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://sourceforge.net/projects/dc3dd/

### `dcfldd`
- enhanced version of dd for forensics and security
- **Provides:** `dcfldd`
- **Steps:**
  1. Install: `sudo apt install -y dcfldd`
  2. Help: `dcfldd -h`  (or `man dcfldd`)
  3. Run: `dcfldd <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/resurrecting-open-source-projects/dcfldd

### `ddrescue`
- data recovery and protection tool
- **Provides:** `dd_rescue`
- **Steps:**
  1. Install: `sudo apt install -y ddrescue`
  2. Help: `dd_rescue -h`  (or `man dd_rescue`)
  3. Run: `dd_rescue <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://www.garloff.de/kurt/linux/ddrescue/

### `dumpzilla`
- Mozilla browser forensic tool
- **Provides:** `dumpzilla`
- **Steps:**
  1. Install: `sudo apt install -y dumpzilla`
  2. Help: `dumpzilla -h`  (or `man dumpzilla`)
  3. Run: `dumpzilla <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://www.dumpzilla.org/

### `ewf-tools`
- collection of tools for reading and writing EWF files
- **Provides:** `ewfacquire`, `ewfacquirestream`, `ewfdebug`, `ewfexport`, `ewfinfo`, `ewfmount`, `ewfrecover`, `ewfverify`
- **Steps:**
  1. Install: `sudo apt install -y ewf-tools`
  2. Help: `ewfinfo -h`  (or `man ewfinfo`)
  3. Run: `ewfinfo <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/libyal/libewf-legacy

### `exifprobe`
- read metadata from digital pictures
- **Provides:** `exifgrep`, `exifprobe`
- **Steps:**
  1. Install: `sudo apt install -y exifprobe`
  2. Help: `exifprobe -h`  (or `man exifprobe`)
  3. Run: `exifprobe <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/hfiguiere/exifprobe

### `exiv2`
- EXIF/IPTC/XMP metadata manipulation tool
- **Provides:** `exiv2`
- **Steps:**
  1. Install: `sudo apt install -y exiv2`
  2. Help: `exiv2 -h`  (or `man exiv2`)
  3. Run: `exiv2 <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.exiv2.org/

### `ext3grep`
- tool to help recover deleted files on ext3 filesystems
- **Provides:** `ext3grep`
- **Steps:**
  1. Install: `sudo apt install -y ext3grep`
  2. Help: `ext3grep -h`  (or `man ext3grep`)
  3. Run: `ext3grep <image-or-file-you-own>` — analyse an image/file you own

### `ext4magic`
- recover deleted files from ext3 or ext4 partitions
- **Provides:** `ext4magic`
- **Steps:**
  1. Install: `sudo apt install -y ext4magic`
  2. Help: `ext4magic -h`  (or `man ext4magic`)
  3. Run: `ext4magic <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://ext4magic.sf.net/ext4magic_en.html

### `extundelete`
- utility to recover deleted files from ext3/ext4 partition
- **Provides:** `extundelete`
- **Steps:**
  1. Install: `sudo apt install -y extundelete`
  2. Help: `extundelete -h`  (or `man extundelete`)
  3. Run: `extundelete <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://extundelete.sourceforge.net/

### `fcrackzip`
- password cracker for zip archives
- **Provides:** `fcrackzip`, `fcrackzipinfo`
- **Steps:**
  1. Install: `sudo apt install -y fcrackzip`
  2. Help: `fcrackzip -h`  (or `man fcrackzip`)
  3. Run: `fcrackzip <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://oldhome.schmorp.de/marc/fcrackzip.html

### `foremost`
- forensic program to recover lost files
- **Provides:** `foremost`
- **Steps:**
  1. Install: `sudo apt install -y foremost`
  2. Help: `foremost -h`  (or `man foremost`)
  3. Run: `foremost <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://sourceforge.net/projects/foremost/

### `forensic-artifacts`
- knowledge base of forensic artifacts (data files)
- **Steps:**
  1. Install: `sudo apt install -y forensic-artifacts`
  2. Help: `forensic-artifacts -h`  (or `man forensic-artifacts`)
  3. Run: `forensic-artifacts <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/ForensicArtifacts/artifacts

### `forensics-colorize`
- show differences between files using color graphics
- **Provides:** `colorize`, `filecompare`
- **Steps:**
  1. Install: `sudo apt install -y forensics-colorize`
  2. Help: `colorize -h`  (or `man colorize`)
  3. Run: `colorize <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/jessek/colorize

### `galleta`
- Internet Explorer cookie forensic analysis tool
- **Provides:** `galleta`
- **Steps:**
  1. Install: `sudo apt install -y galleta`
  2. Help: `galleta -h`  (or `man galleta`)
  3. Run: `galleta <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://odessa.sourceforge.net/

### `gdb`
- GNU Debugger
- **Provides:** `aarch64-linux-gnu-run`, `gcore`, `gdb`, `gdb-add-index`, `gdbtui`, `gstack`
- **Steps:**
  1. Install: `sudo apt install -y gdb`
  2. Help: `gdb -h`  (or `man gdb`)
  3. Run: `gdb <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.gnu.org/s/gdb/

### `gparted`
- GNOME partition editor
- **Provides:** `gparted`
- **Steps:**
  1. Install: `sudo apt install -y gparted`
  2. Help: `gparted -h`  (or `man gparted`)
  3. Run: `gparted <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://gparted.org

### `grokevt`
- scripts for reading Microsoft Windows event log files
- **Provides:** `grokevt-addlog`, `grokevt-builddb`, `grokevt-dumpmsgs`, `grokevt-findlogs`, `grokevt-parselog`, `grokevt-ripdll`
- **Steps:**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-addlog -h`  (or `man grokevt-addlog`)
  3. Run: `grokevt-addlog <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://projects.sentinelchicken.org/grokevt/

### `guymager`
- Forensic imaging tool based on Qt
- **Provides:** `guymager`
- **Steps:**
  1. Install: `sudo apt install -y guymager`
  2. Help: `guymager -h`  (or `man guymager`)
  3. Run: `guymager <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://guymager.sourceforge.net/

### `hashdeep`
- recursively compute hashsums or piecewise hashings
- **Provides:** `hashdeep`, `md5deep`, `sha1deep`, `sha256deep`, `tigerdeep`, `whirlpooldeep`
- **Steps:**
  1. Install: `sudo apt install -y hashdeep`
  2. Help: `hashdeep -h`  (or `man hashdeep`)
  3. Run: `hashdeep <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://md5deep.sourceforge.net

### `inetsim`
- Software suite for simulating common internet services
- **Provides:** `inetsim`
- **Steps:**
  1. Install: `sudo apt install -y inetsim`
  2. Help: `inetsim -h`  (or `man inetsim`)
  3. Run: `inetsim <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.inetsim.org/index.html

### `jadx`
- Dex to Java decompiler
- **Provides:** `jadx`, `jadx-gui`
- **Steps:**
  1. Install: `sudo apt install -y jadx`
  2. Help: `jadx -h`  (or `man jadx`)
  3. Run: `jadx <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/skylot/jadx

### `javasnoop`
- Intercept Java applications locally
- **Provides:** `javasnoop`
- **Steps:**
  1. Install: `sudo apt install -y javasnoop`
  2. Help: `javasnoop -h`  (or `man javasnoop`)
  3. Run: `javasnoop <image-or-file-you-own>` — analyse an image/file you own

### `libhivex-bin`
- utilities for reading and writing Windows Registry hives
- **Provides:** `hivexget`, `hivexml`, `hivexsh`
- **Steps:**
  1. Install: `sudo apt install -y libhivex-bin`
  2. Help: `hivexml -h`  (or `man hivexml`)
  3. Run: `hivexml <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://libguestfs.org/

### `libsmali-java`
- assembler/disassembler for Android's dex format
- **Provides:** `baksmali`, `smali`
- **Steps:**
  1. Install: `sudo apt install -y libsmali-java`
  2. Help: `smali -h`  (or `man smali`)
  3. Run: `smali <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/JesusFreke/smali

### `lvm2`
- Linux Logical Volume Manager
- **Provides:** `fsadm`, `lvchange`, `lvconvert`, `lvcreate`, `lvdisplay`, `lvextend`, `lvm`, `lvmconfig`, `lvmdiskscan`, `lvmdump`, `lvmpolld`, `lvmsadc`, `lvmsar`, `lvreduce`, `lvremove`, `lvrename`, `lvresize`, `lvs`, `lvscan`, `pvchange`, `pvck`, `pvcreate`, `pvdisplay`, `pvmove`, `pvremove`, `pvresize`, `pvs`, `pvscan`, `vgcfgbackup`, `vgcfgrestore`, `vgchange`, `vgck`, `vgconvert`, `vgcreate`, `vgdisplay`, `vgexport`, `vgextend`, `vgimport`, `vgimportclone`, `vgmerge`, `vgmknodes`, `vgreduce`, `vgremove`, `vgrename`, `vgs`, `vgscan`, `vgsplit`
- **Steps:**
  1. Install: `sudo apt install -y lvm2`
  2. Help: `lvm -h`  (or `man lvm`)
  3. Run: `lvm <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://sourceware.org/lvm2/

### `lynis`
- security auditing tool for Unix based systems
- **Provides:** `lynis`
- **Steps:**
  1. Install: `sudo apt install -y lynis`
  2. Help: `lynis -h`  (or `man lynis`)
  3. Run: `lynis <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://cisofy.com/lynis/

### `mac-robber`
- collects data about allocated files in mounted filesystems
- **Provides:** `mac-robber`
- **Steps:**
  1. Install: `sudo apt install -y mac-robber`
  2. Help: `mac-robber -h`  (or `man mac-robber`)
  3. Run: `mac-robber <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.sleuthkit.org/mac-robber

### `magicrescue`
- recover files by looking for magic bytes
- **Provides:** `dupemap`, `magicrescue`, `magicsort`
- **Steps:**
  1. Install: `sudo apt install -y magicrescue`
  2. Help: `magicrescue -h`  (or `man magicrescue`)
  3. Run: `magicrescue <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/jbj/magicrescue

### `mdbtools`
- JET / MS Access database (MDB) tools
- **Provides:** `mdb-array`, `mdb-count`, `mdb-export`, `mdb-header`, `mdb-hexdump`, `mdb-import`, `mdb-json`, `mdb-parsecsv`, `mdb-prop`, `mdb-queries`, `mdb-schema`, `mdb-sql`, `mdb-tables`, `mdb-ver`
- **Steps:**
  1. Install: `sudo apt install -y mdbtools`
  2. Help: `mdb-sql -h`  (or `man mdb-sql`)
  3. Run: `mdb-sql <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/mdbtools/mdbtools

### `memdump`
- utility to dump memory contents to standard output
- **Provides:** `memdump`
- **Steps:**
  1. Install: `sudo apt install -y memdump`
  2. Help: `memdump -h`  (or `man memdump`)
  3. Run: `memdump <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://www.porcupine.org/forensics/tct.html

### `metacam`
- extract EXIF information from digital camera files
- **Provides:** `metacam`
- **Steps:**
  1. Install: `sudo apt install -y metacam`
  2. Help: `metacam -h`  (or `man metacam`)
  3. Run: `metacam <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://www.cheeseplant.org/~daniel/pages/metacam.html

### `missidentify`
- find win32 applications
- **Provides:** `missidentify`
- **Steps:**
  1. Install: `sudo apt install -y missidentify`
  2. Help: `missidentify -h`  (or `man missidentify`)
  3. Run: `missidentify <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://missidentify.sf.net

### `myrescue`
- rescue data from damaged disks
- **Provides:** `myrescue`, `myrescue-bitmap2ppm`, `myrescue-stat`
- **Steps:**
  1. Install: `sudo apt install -y myrescue`
  2. Help: `myrescue -h`  (or `man myrescue`)
  3. Run: `myrescue <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://myrescue.sf.net

### `nasm`
- General-purpose x86 assembler
- **Provides:** `nasm`, `ndisasm`
- **Steps:**
  1. Install: `sudo apt install -y nasm`
  2. Help: `nasm -h`  (or `man nasm`)
  3. Run: `nasm <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.nasm.us/

### `nasty`
- tool which helps you to recover your GPG passphrase
- **Provides:** `nasty`
- **Steps:**
  1. Install: `sudo apt install -y nasty`
  2. Help: `nasty -h`  (or `man nasty`)
  3. Run: `nasty <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/folkertvanheusden/nasty

### `parted`
- disk partition manipulator
- **Provides:** `parted`, `partprobe`
- **Steps:**
  1. Install: `sudo apt install -y parted`
  2. Help: `parted -h`  (or `man parted`)
  3. Run: `parted <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.gnu.org/software/parted

### `pasco`
- Internet Explorer cache forensic analysis tool
- **Provides:** `pasco`
- **Steps:**
  1. Install: `sudo apt install -y pasco`
  2. Help: `pasco -h`  (or `man pasco`)
  3. Run: `pasco <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://sf.net/projects/odessa

### `pdf-parser`
- Parses PDF files to identify fundamental elements
- **Provides:** `pdf-parser`
- **Steps:**
  1. Install: `sudo apt install -y pdf-parser`
  2. Help: `pdf-parser -h`  (or `man pdf-parser`)
  3. Run: `pdf-parser <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://blog.didierstevens.com/programs/pdf-tools/

### `pdfid`
- Scans PDF files for certain PDF keywords
- **Provides:** `pdfid`
- **Steps:**
  1. Install: `sudo apt install -y pdfid`
  2. Help: `pdfid -h`  (or `man pdfid`)
  3. Run: `pdfid <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://blog.didierstevens.com/programs/pdf-tools/

### `plaso`
- super timeline all the things -- metapackage
- **Steps:**
  1. Install: `sudo apt install -y plaso`
  2. Help: `plaso -h`  (or `man plaso`)
  3. Run: `plaso <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/log2timeline/plaso

### `polenum`
- Extracts the password policy from a Windows system
- **Provides:** `polenum`
- **Steps:**
  1. Install: `sudo apt install -y polenum`
  2. Help: `polenum -h`  (or `man polenum`)
  3. Run: `polenum <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/Wh1t3Fox/polenum/

### `pst-utils`
- tools for reading Microsoft Outlook PST files
- **Provides:** `lspst`, `nick2ldif`, `pst2dii`, `pst2ldif`, `readpst`
- **Steps:**
  1. Install: `sudo apt install -y pst-utils`
  2. Help: `lspst -h`  (or `man lspst`)
  3. Run: `lspst <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.five-ten-sg.com/libpst/

### `python3-capstone`
- lightweight multi-architecture disassembly framework - Python bindings
- **Steps:**
  1. Install: `sudo apt install -y python3-capstone`
  2. Help: `python3-capstone -h`  (or `man python3-capstone`)
  3. Run: `python3-capstone <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.capstone-engine.org/

### `python3-dfdatetime`
- Digital Forensics date and time library for Python 3
- **Steps:**
  1. Install: `sudo apt install -y python3-dfdatetime`
  2. Help: `python3-dfdatetime -h`  (or `man python3-dfdatetime`)
  3. Run: `python3-dfdatetime <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/log2timeline/dfdatetime

### `python3-dfvfs`
- Digital Forensics Virtual File System
- **Steps:**
  1. Install: `sudo apt install -y python3-dfvfs`
  2. Help: `python3-dfvfs -h`  (or `man python3-dfvfs`)
  3. Run: `python3-dfvfs <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/log2timeline/dfvfs

### `python3-dfwinreg`
- Digital Forensics Windows Registry library for Python 3
- **Steps:**
  1. Install: `sudo apt install -y python3-dfwinreg`
  2. Help: `python3-dfwinreg -h`  (or `man python3-dfwinreg`)
  3. Run: `python3-dfwinreg <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/log2timeline/dfwinreg

### `python3-distorm3`
- powerful disassembler library for x86/AMD64 binary streams (Python3 bindings)
- **Steps:**
  1. Install: `sudo apt install -y python3-distorm3`
  2. Help: `python3-distorm3 -h`  (or `man python3-distorm3`)
  3. Run: `python3-distorm3 <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/gdabah/distorm

### `radare2`
- free and advanced command line hexadecimal editor
- **Provides:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **Steps:**
  1. Install: `sudo apt install -y radare2`
  2. Help: `radare2 -h`  (or `man radare2`)
  3. Run: `radare2 <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.radare.org

### `readpe`
- command-line tools to manipulate Windows PE files
- **Provides:** `ofs2rva`, `pedis`, `pehash`, `peldd`, `pepack`, `peres`, `pescan`, `pesec`, `pestr`, `readpe`, `rva2ofs`
- **Steps:**
  1. Install: `sudo apt install -y readpe`
  2. Help: `readpe -h`  (or `man readpe`)
  3. Run: `readpe <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/mentebinaria/readpe/wiki

### `recoverdm`
- recover files on disks with damaged sectors
- **Provides:** `mergebad`, `recoverdm`
- **Steps:**
  1. Install: `sudo apt install -y recoverdm`
  2. Help: `recoverdm -h`  (or `man recoverdm`)
  3. Run: `recoverdm <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.vanheusden.com/recoverdm

### `recoverjpeg`
- recover JFIF (JPEG) pictures and MOV movies
- **Provides:** `recoverjpeg`, `recovermov`, `remove-duplicates`, `sort-pictures`
- **Steps:**
  1. Install: `sudo apt install -y recoverjpeg`
  2. Help: `recoverjpeg -h`  (or `man recoverjpeg`)
  3. Run: `recoverjpeg <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.rfc1149.net/devel/recoverjpeg

### `reglookup`
- utility to analysis for Windows NT-based registry
- **Provides:** `reglookup`, `reglookup-recover`, `reglookup-timeline`
- **Steps:**
  1. Install: `sudo apt install -y reglookup`
  2. Help: `reglookup -h`  (or `man reglookup`)
  3. Run: `reglookup <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://web.archive.org/web/20240804024044/http://projects.sentinelchicken.org/reglookup/

### `rephrase`
- Specialized passphrase recovery tool for GnuPG
- **Provides:** `rephrase`
- **Steps:**
  1. Install: `sudo apt install -y rephrase`
  2. Help: `rephrase -h`  (or `man rephrase`)
  3. Run: `rephrase <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.roguedaemon.net/rephrase/

### `rifiuti`
- MS Windows recycle bin analysis tool
- **Provides:** `rifiuti`
- **Steps:**
  1. Install: `sudo apt install -y rifiuti`
  2. Help: `rifiuti -h`  (or `man rifiuti`)
  3. Run: `rifiuti <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://sf.net/projects/odessa

### `rifiuti2`
- replacement for rifiuti, a MS Windows recycle bin analysis tool
- **Provides:** `rifiuti2`, `rifiuti-vista`
- **Steps:**
  1. Install: `sudo apt install -y rifiuti2`
  2. Help: `rifiuti2 -h`  (or `man rifiuti2`)
  3. Run: `rifiuti2 <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://abelcheung.github.io/rifiuti2

### `rizin-cutter`
- reverse engineering platform powered by rizin
- **Provides:** `cutter`
- **Steps:**
  1. Install: `sudo apt install -y rizin-cutter`
  2. Help: `cutter -h`  (or `man cutter`)
  3. Run: `cutter <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://cutter.re

### `rkhunter`
- rootkit, backdoor, sniffer and exploit scanner
- **Provides:** `rkhunter`
- **Steps:**
  1. Install: `sudo apt install -y rkhunter`
  2. Help: `rkhunter -h`  (or `man rkhunter`)
  3. Run: `rkhunter <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://rkhunter.sourceforge.net

### `rsakeyfind`
- locates BER-encoded RSA private keys in memory images
- **Provides:** `rsakeyfind`
- **Steps:**
  1. Install: `sudo apt install -y rsakeyfind`
  2. Help: `rsakeyfind -h`  (or `man rsakeyfind`)
  3. Run: `rsakeyfind <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://citp.princeton.edu/our-work/memory/code/

### `rz-ghidra`
- ghidra decompiler and sleigh disassembler for rizin
- **Steps:**
  1. Install: `sudo apt install -y rz-ghidra`
  2. Help: `rz-ghidra -h`  (or `man rz-ghidra`)
  3. Run: `rz-ghidra <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/rizinorg/rz-ghidra

### `safecopy`
- data recovery tool for problematic or damaged media
- **Provides:** `safecopy`
- **Steps:**
  1. Install: `sudo apt install -y safecopy`
  2. Help: `safecopy -h`  (or `man safecopy`)
  3. Run: `safecopy <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://safecopy.sf.net

### `samdump2`
- Dump Windows 2k/NT/XP password hashes
- **Provides:** `samdump2`
- **Steps:**
  1. Install: `sudo apt install -y samdump2`
  2. Help: `samdump2 -h`  (or `man samdump2`)
  3. Run: `samdump2 <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://ophcrack.sourceforge.net/

### `scalpel`
- fast filesystem-independent file recovery
- **Provides:** `scalpel`
- **Steps:**
  1. Install: `sudo apt install -y scalpel`
  2. Help: `scalpel -h`  (or `man scalpel`)
  3. Run: `scalpel <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/nolaforensix/scalpel-1.60

### `scrounge-ntfs`
- Data recovery program for NTFS filesystems
- **Provides:** `scrounge-ntfs`
- **Steps:**
  1. Install: `sudo apt install -y scrounge-ntfs`
  2. Help: `scrounge-ntfs -h`  (or `man scrounge-ntfs`)
  3. Run: `scrounge-ntfs <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://thewalter.net/stef/software/scrounge/

### `sleuthkit`
- tools for forensics analysis on volume and filesystem data
- **Provides:** `blkcalc`, `blkcat`, `blkls`, `blkstat`, `fcat`, `ffind`, `fiwalk`, `fls`, `fsstat`, `hfind`, `icat`, `ifind`, `ils`, `img_cat`, `img_stat`, `istat`, `jcat`, `jls`, `jpeg_extract`, `mactime`, `mmcat`, `mmls`, `mmstat`, `pstat`, `sigfind`, `sorter`, `srch_strings`, `tsk_comparedir`, `tsk_gettimes`, `tsk_imageinfo`, `tsk_loaddb`, `tsk_recover`, `usnjls`
- **Steps:**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `fls -h`  (or `man fls`)
  3. Run: `fls <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.sleuthkit.org/sleuthkit

### `sqlitebrowser`
- GUI editor for SQLite databases
- **Provides:** `sqlitebrowser`
- **Steps:**
  1. Install: `sudo apt install -y sqlitebrowser`
  2. Help: `sqlitebrowser -h`  (or `man sqlitebrowser`)
  3. Run: `sqlitebrowser <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://sqlitebrowser.org/

### `ssdeep`
- recursive piecewise hashing tool
- **Provides:** `ssdeep`
- **Steps:**
  1. Install: `sudo apt install -y ssdeep`
  2. Help: `ssdeep -h`  (or `man ssdeep`)
  3. Run: `ssdeep <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/ssdeep-project/ssdeep

### `tcpdump`
- command-line network traffic analyzer
- **Provides:** `tcpdump`
- **Steps:**
  1. Install: `sudo apt install -y tcpdump`
  2. Help: `tcpdump -h`  (or `man tcpdump`)
  3. Run: `tcpdump <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.tcpdump.org/

### `tcpflow`
- TCP flow recorder
- **Provides:** `tcpflow`
- **Steps:**
  1. Install: `sudo apt install -y tcpflow`
  2. Help: `tcpflow -h`  (or `man tcpflow`)
  3. Run: `tcpflow <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/simsong/tcpflow

### `tcpick`
- TCP stream sniffer and connection tracker
- **Provides:** `tcpick`
- **Steps:**
  1. Install: `sudo apt install -y tcpick`
  2. Help: `tcpick -h`  (or `man tcpick`)
  3. Run: `tcpick <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://tcpick.sourceforge.net

### `tcpreplay`
- Tool to replay saved tcpdump files at arbitrary speeds
- **Provides:** `tcpbridge`, `tcpcapinfo`, `tcpliveplay`, `tcpprep`, `tcpreplay`, `tcpreplay-edit`, `tcprewrite`
- **Steps:**
  1. Install: `sudo apt install -y tcpreplay`
  2. Help: `tcpreplay -h`  (or `man tcpreplay`)
  3. Run: `tcpreplay <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://tcpreplay.appneta.com/

### `truecrack`
- Bruteforce password cracker for TrueCrypt volumes
- **Provides:** `truecrack`
- **Steps:**
  1. Install: `sudo apt install -y truecrack`
  2. Help: `truecrack -h`  (or `man truecrack`)
  3. Run: `truecrack <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/lvaccaro/truecrack

### `unar`
- Unarchiver for a variety of file formats
- **Provides:** `lsar`, `unar`
- **Steps:**
  1. Install: `sudo apt install -y unar`
  2. Help: `unar -h`  (or `man unar`)
  3. Run: `unar <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://theunarchiver.com/command-line

### `undbx`
- tool to extract, recover and undelete e-mail messages from .dbx files
- **Provides:** `undbx`
- **Steps:**
  1. Install: `sudo apt install -y undbx`
  2. Help: `undbx -h`  (or `man undbx`)
  3. Run: `undbx <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/ZungBang/undbx

### `unhide`
- forensic tool to find hidden processes and ports
- **Provides:** `unhide`, `unhide-linux`, `unhide-posix`, `unhide_rb`, `unhide-tcp`
- **Steps:**
  1. Install: `sudo apt install -y unhide`
  2. Help: `unhide -h`  (or `man unhide`)
  3. Run: `unhide <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.unhide-forensics.info

### `unrar`
- Unarchiver for .rar files (non-free version)
- **Provides:** `unrar-nonfree`
- **Steps:**
  1. Install: `sudo apt install -y unrar`
  2. Help: `unrar-nonfree -h`  (or `man unrar-nonfree`)
  3. Run: `unrar-nonfree <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.rarlab.com/

### `upx-ucl`
- efficient live-compressor for executables
- **Provides:** `upx-ucl`
- **Steps:**
  1. Install: `sudo apt install -y upx-ucl`
  2. Help: `upx-ucl -h`  (or `man upx-ucl`)
  3. Run: `upx-ucl <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://upx.github.io/

### `vinetto`
- forensics tool to examine Thumbs.db files
- **Provides:** `vinetto`
- **Steps:**
  1. Install: `sudo apt install -y vinetto`
  2. Help: `vinetto -h`  (or `man vinetto`)
  3. Run: `vinetto <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://github.com/AtesComp/Vinetto

### `wce`
- Windows Credentials Editor
- **Provides:** `wce`
- **Steps:**
  1. Install: `sudo apt install -y wce`
  2. Help: `wce -h`  (or `man wce`)
  3. Run: `wce <image-or-file-you-own>` — analyse an image/file you own
- Docs: http://www.ampliasecurity.com/research.html

### `winregfs`
- Windows registry FUSE filesystem
- **Provides:** `fsck.winregfs`, `mount.winregfs`
- **Steps:**
  1. Install: `sudo apt install -y winregfs`
  2. Help: `fsck.winregfs -h`  (or `man fsck.winregfs`)
  3. Run: `fsck.winregfs <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://codeberg.org/jbruchon/winregfs

### `wireshark`
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.wireshark.org/

### `xmount`
- tool for crossmounting between disk image formats
- **Provides:** `xmount`
- **Steps:**
  1. Install: `sudo apt install -y xmount`
  2. Help: `xmount -h`  (or `man xmount`)
  3. Run: `xmount <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://www.sits.lu/xmount

### `yara`
- Pattern matching swiss knife for malware researchers
- **Provides:** `yara`, `yarac`
- **Steps:**
  1. Install: `sudo apt install -y yara`
  2. Help: `yara -h`  (or `man yara`)
  3. Run: `yara <image-or-file-you-own>` — analyse an image/file you own
- Docs: https://virustotal.github.io/yara/


## 12 · Reporting Tools  (`kali-tools-reporting`)

### `cutycapt`
- utility to capture WebKit's rendering of a web page
- **Provides:** `cutycapt`
- **Steps:**
  1. Install: `sudo apt install -y cutycapt`
  2. Help: `cutycapt -h`  (or `man cutycapt`)
  3. Run: `cutycapt` — organise findings and produce a report
- Docs: https://github.com/Crystalix007/CutyCapt

### `eyewitness`
- Rapid web application triage tool
- **Provides:** `eyewitness`, `geckodriver`
- **Steps:**
  1. Install: `sudo apt install -y eyewitness`
  2. Help: `eyewitness -h`  (or `man eyewitness`)
  3. Run: `eyewitness` — organise findings and produce a report
- Docs: https://www.christophertruncer.com/eyewitness-triage-tool/

### `faraday`
- Collaborative Penetration Test IDE
- **Provides:** `faraday`, `faraday-beat`, `faraday-manage`, `faraday-server`, `faraday-start`, `faraday-stop`, `faraday-worker`, `faraday-worker-gevent`, `python-faraday`
- **Steps:**
  1. Install: `sudo apt install -y faraday`
  2. Help: `faraday -h`  (or `man faraday`)
  3. Run: `faraday` — organise findings and produce a report
- Docs: https://faradaysec.com

### `maltego`
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego` — organise findings and produce a report
- Docs: https://www.maltego.com

### `metagoofil`
- Tool designed for extracting metadata of public documents
- **Provides:** `metagoofil`
- **Steps:**
  1. Install: `sudo apt install -y metagoofil`
  2. Help: `metagoofil -h`  (or `man metagoofil`)
  3. Run: `metagoofil` — organise findings and produce a report
- Docs: https://github.com/opsdisk/metagoofil

### `pipal`
- Statistical analysis on password dumps
- **Provides:** `pipal`
- **Steps:**
  1. Install: `sudo apt install -y pipal`
  2. Help: `pipal -h`  (or `man pipal`)
  3. Run: `pipal` — organise findings and produce a report
- Docs: https://www.digininja.org/projects/pipal.php

### `recordmydesktop`
- Captures audio-video data of a Linux desktop session
- **Provides:** `recordmydesktop`
- **Steps:**
  1. Install: `sudo apt install -y recordmydesktop`
  2. Help: `recordmydesktop -h`  (or `man recordmydesktop`)
  3. Run: `recordmydesktop` — organise findings and produce a report
- Docs: https://enselic.github.io/recordmydesktop/


## 13 · Social Engineering  (`kali-tools-social-engineering`)

### `beef-xss`
- Browser Exploitation Framework (BeEF)
- **Provides:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **Steps:**
  1. Install: `sudo apt install -y beef-xss`
  2. Help: `beef-xss -h`  (or `man beef-xss`)
  3. Run: `beef-xss` — lab-internal only, with consent
- Docs: https://beefproject.com/

### `maltego`
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego` — lab-internal only, with consent
- Docs: https://www.maltego.com

### `msfpc`
- MSFvenom Payload Creator (MSFPC)
- **Provides:** `msfpc`
- **Steps:**
  1. Install: `sudo apt install -y msfpc`
  2. Help: `msfpc -h`  (or `man msfpc`)
  3. Run: `msfpc` — lab-internal only, with consent
- Docs: https://github.com/g0tmi1k/msfpc

### `set`
- Social-Engineer Toolkit
- **Provides:** `se-toolkit`, `setoolkit`
- **Steps:**
  1. Install: `sudo apt install -y set`
  2. Help: `setoolkit -h`  (or `man setoolkit`)
  3. Run: `setoolkit` — lab-internal only, with consent
- Docs: https://www.trustedsec.com/downloads/social-engineer-toolkit/


## 14 · Identify (triage/recon helpers)  (`kali-tools-identify`)

### `amass`
- In-depth DNS Enumeration and Network Mapping
- **Provides:** `amass`
- **Steps:**
  1. Install: `sudo apt install -y amass`
  2. Help: `amass -h`  (or `man amass`)
  3. Run: `amass <NODE_IP>` — triage/identify a target you own
- Docs: https://github.com/OWASP/Amass

### `assetfinder`
- Find domains and subdomains related to a given domain
- **Provides:** `assetfinder`
- **Steps:**
  1. Install: `sudo apt install -y assetfinder`
  2. Help: `assetfinder -h`  (or `man assetfinder`)
  3. Run: `assetfinder <NODE_IP>` — triage/identify a target you own
- Docs: https://github.com/tomnomnom/assetfinder

### `cisco-auditing-tool`
- Scans Cisco routers for vulnerabilities
- **Provides:** `CAT`
- **Steps:**
  1. Install: `sudo apt install -y cisco-auditing-tool`
  2. Help: `CAT -h`  (or `man CAT`)
  3. Run: `CAT <NODE_IP>` — triage/identify a target you own
- Docs: http://www.scrypt.net/

### `defectdojo`
- security orchestration and vulnerability management platform
- **Provides:** `defectdojo`, `defectdojo-start`, `defectdojo-stop`
- **Steps:**
  1. Install: `sudo apt install -y defectdojo`
  2. Help: `defectdojo -h`  (or `man defectdojo`)
  3. Run: `defectdojo <NODE_IP>` — triage/identify a target you own
- Docs: https://github.com/DefectDojo/django-DefectDojo

### `exploitdb`
- Searchable Exploit Database archive
- **Provides:** `exploitdb`, `searchsploit`
- **Steps:**
  1. Install: `sudo apt install -y exploitdb`
  2. Help: `exploitdb -h`  (or `man exploitdb`)
  3. Run: `exploitdb <NODE_IP>` — triage/identify a target you own
- Docs: https://www.exploit-db.com

### `kali-autopilot`
- tool for automatic attack scripts in Kali
- **Provides:** `kali-autopilot`
- **Steps:**
  1. Install: `sudo apt install -y kali-autopilot`
  2. Help: `kali-autopilot -h`  (or `man kali-autopilot`)
  3. Run: `kali-autopilot <NODE_IP>` — triage/identify a target you own
- Docs: https://gitlab.com/kalilinux/packages/kali-autopilot

### `maltego`
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego <NODE_IP>` — triage/identify a target you own
- Docs: https://www.maltego.com

### `maryam`
- OWASP Maryam is a modular/optional open source framework bas
- **Provides:** `maryam`
- **Steps:**
  1. Install: `sudo apt install -y maryam`
  2. Help: `maryam -h`  (or `man maryam`)
  3. Run: `maryam <NODE_IP>` — triage/identify a target you own
- Docs: https://github.com/saeeddhqan/Maryam

### `nipper-ng`
- Device security configuration review tool
- **Provides:** `nipper`
- **Steps:**
  1. Install: `sudo apt install -y nipper-ng`
  2. Help: `nipper -h`  (or `man nipper`)
  3. Run: `nipper <NODE_IP>` — triage/identify a target you own

### `osrframework`
- Open Sources Research Framework
- **Provides:** `alias_generator`, `alias_generator.py`, `checkfy`, `checkfy.py`, `domainfy`, `domainfy.py`, `mailfy`, `mailfy.py`, `osrf`, `osrframework-cli`, `phonefy`, `phonefy.py`, `searchfy`, `searchfy.py`, `usufy`, `usufy.py`
- **Steps:**
  1. Install: `sudo apt install -y osrframework`
  2. Help: `osrf -h`  (or `man osrf`)
  3. Run: `osrf <NODE_IP>` — triage/identify a target you own
- Docs: https://pypi.org/project/osrframework/

### `spiderfoot`
- OSINT collection and reconnaissance tool
- **Provides:** `spiderfoot`, `spiderfoot-cli`
- **Steps:**
  1. Install: `sudo apt install -y spiderfoot`
  2. Help: `spiderfoot -h`  (or `man spiderfoot`)
  3. Run: `spiderfoot <NODE_IP>` — triage/identify a target you own
- Docs: https://www.spiderfoot.net

### `tiger`
- security auditing and intrusion detection tools for Linux
- **Provides:** `tiger`, `tigercron`, `tigexp`
- **Steps:**
  1. Install: `sudo apt install -y tiger`
  2. Help: `tiger -h`  (or `man tiger`)
  3. Run: `tiger <NODE_IP>` — triage/identify a target you own
- Docs: http://savannah.nongnu.org/projects/tiger/

### `wapiti`
- web application vulnerability scanner
- **Provides:** `wapiti`, `wapiti-getcookie`
- **Steps:**
  1. Install: `sudo apt install -y wapiti`
  2. Help: `wapiti -h`  (or `man wapiti`)
  3. Run: `wapiti <NODE_IP>` — triage/identify a target you own
- Docs: https://wapiti.sourceforge.net/

### `witnessme`
- Web Inventory tool
- **Provides:** `witnessme`, `wmapi`, `wmdb`
- **Steps:**
  1. Install: `sudo apt install -y witnessme`
  2. Help: `witnessme -h`  (or `man witnessme`)
  3. Run: `witnessme <NODE_IP>` — triage/identify a target you own
- Docs: https://github.com/byt3bl33d3r/WitnessMe

### `zaproxy`
- Testing tool for finding vulnerabilities in web applications
- **Provides:** `owasp-zap`, `zaproxy`
- **Steps:**
  1. Install: `sudo apt install -y zaproxy`
  2. Help: `zaproxy -h`  (or `man zaproxy`)
  3. Run: `zaproxy <NODE_IP>` — triage/identify a target you own
- Docs: https://github.com/zaproxy/zaproxy


## 15 · Fuzzing  (`kali-tools-fuzzing`)

### `afl++`
- instrumentation-driven fuzzer for binary formats
- **Provides:** `afl-addseeds`, `afl-analyze`, `afl-c++`, `afl-cc`, `afl-clang`, `afl-clang++`, `afl-clang-fast`, `afl-clang-fast++`, `afl-clang-lto`, `afl-clang-lto++`, `afl-cmin`, `afl-cmin.awk`, `afl-cmin.bash`, `afl-cmin.py`, `afl-fuzz`, `afl-g++`, `afl-gcc`, `afl-gcc-fast`, `afl-g++-fast`, `afl-gotcpu`, `afl-health`, `afl-ld-lto`, `afl-lto`, `afl-lto++`, `afl-network-client`, `afl-network-server`, `afl-persistent-config`, `afl-plot`, `afl-showmap`, `afl-system-config`, `afl-tmin`, `afl-whatsup`
- **Steps:**
  1. Install: `sudo apt install -y afl++`
  2. Help: `afl-cc -h`  (or `man afl-cc`)
  3. Run: `afl-cc <target-you-own>` — fuzz a target you own
- Docs: https://github.com/AFLplusplus/AFLplusplus

### `sfuzz`
- Black Box testing utilities
- **Provides:** `sfo`, `sfuzz`
- **Steps:**
  1. Install: `sudo apt install -y sfuzz`
  2. Help: `sfuzz -h`  (or `man sfuzz`)
  3. Run: `sfuzz <target-you-own>` — fuzz a target you own
- Docs: http://aconole.brad-x.com/programs/sfuzz.html

### `spike`
- Network protocol fuzzer
- **Provides:** `citrix`, `closed_source_web_server_fuzz`, `dceoversmb`, `dltest`, `do_post`, `generic_chunked`, `generic_listen_tcp`, `generic_send_tcp`, `generic_send_udp`, `generic_web_server_fuzz`, `generic_web_server_fuzz2`, `gopherd`, `halflife`, `line_send_tcp`, `msrpcfuzz`, `msrpcfuzz_udp`, `ntlm2`, `ntlm_brute`, `pmspike`, `post_fuzz`, `post_spike`, `quake`, `quakeserver`, `sendmsrpc`, `ss_spike`, `statd_spike`, `sunrpcfuzz`, `webfuzz`, `x11_spike`
- **Steps:**
  1. Install: `sudo apt install -y spike`
  2. Help: `ntlm2 -h`  (or `man ntlm2`)
  3. Run: `ntlm2 <target-you-own>` — fuzz a target you own
- Docs: http://www.immunitysec.com/resources-freesoftware.shtml

### `wfuzz`
- Web application bruteforcer
- **Provides:** `wfuzz`
- **Steps:**
  1. Install: `sudo apt install -y wfuzz`
  2. Help: `wfuzz -h`  (or `man wfuzz`)
  3. Run: `wfuzz <target-you-own>` — fuzz a target you own
- Docs: http://www.edge-security.com/wfuzz.php


## 16 · VoIP Tools  (`kali-tools-voip`)

### `enumiax`
- IAX protocol username enumerator
- **Provides:** `enumiax`
- **Steps:**
  1. Install: `sudo apt install -y enumiax`
  2. Help: `enumiax -h`  (or `man enumiax`)
  3. Run: `enumiax <NODE_IP>` — needs your own SIP/VoIP target
- Docs: https://enumiax.sourceforge.net/

### `iaxflood`
- VoIP flooder tool
- **Provides:** `iaxflood`
- **Steps:**
  1. Install: `sudo apt install -y iaxflood`
  2. Help: `iaxflood -h`  (or `man iaxflood`)
  3. Run: `iaxflood <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://www.hackingexposedvoip.com/sec_tools.html

### `inviteflood`
- SIP/SDP INVITE message flooding over UDP/IP
- **Provides:** `inviteflood`
- **Steps:**
  1. Install: `sudo apt install -y inviteflood`
  2. Help: `inviteflood -h`  (or `man inviteflood`)
  3. Run: `inviteflood <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://www.hackingvoip.com/sec_tools.html

### `libfindrtp`
- Library required by multiple VoIP tools
- **Steps:**
  1. Install: `sudo apt install -y libfindrtp`
  2. Help: `libfindrtp -h`  (or `man libfindrtp`)
  3. Run: `libfindrtp <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://www.hackingvoip.com/sec_tools.html

### `nmap`
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap <NODE_IP>` — needs your own SIP/VoIP target
- Docs: https://nmap.org/

### `ohrwurm`
- RTP fuzzer
- **Provides:** `ohrwurm`
- **Steps:**
  1. Install: `sudo apt install -y ohrwurm`
  2. Help: `ohrwurm -h`  (or `man ohrwurm`)
  3. Run: `ohrwurm <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://mazzoo.de/blog/2006/08/25#ohrwurm

### `protos-sip`
- SIP test suite
- **Provides:** `protos-sip`
- **Steps:**
  1. Install: `sudo apt install -y protos-sip`
  2. Help: `protos-sip -h`  (or `man protos-sip`)
  3. Run: `protos-sip <NODE_IP>` — needs your own SIP/VoIP target
- Docs: https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip

### `rtpbreak`
- Detects, reconstructs, and analyzes RTP sessions
- **Provides:** `rtpbreak`
- **Steps:**
  1. Install: `sudo apt install -y rtpbreak`
  2. Help: `rtpbreak -h`  (or `man rtpbreak`)
  3. Run: `rtpbreak <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://dallachiesa.com/code/rtpbreak/

### `rtpflood`
- Tool to flood any RTP device
- **Provides:** `rtpflood`
- **Steps:**
  1. Install: `sudo apt install -y rtpflood`
  2. Help: `rtpflood -h`  (or `man rtpflood`)
  3. Run: `rtpflood <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpinsertsound`
- Inserts audio into a specified stream
- **Provides:** `rtpinsertsound`
- **Steps:**
  1. Install: `sudo apt install -y rtpinsertsound`
  2. Help: `rtpinsertsound -h`  (or `man rtpinsertsound`)
  3. Run: `rtpinsertsound <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpmixsound`
- Mixes pre-recorded audio in real-time
- **Provides:** `rtpmixsound`
- **Steps:**
  1. Install: `sudo apt install -y rtpmixsound`
  2. Help: `rtpmixsound -h`  (or `man rtpmixsound`)
  3. Run: `rtpmixsound <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://www.hackingvoip.com/sec_tools.html

### `siparmyknife`
- SIP fuzzing tool
- **Provides:** `siparmyknife`
- **Steps:**
  1. Install: `sudo apt install -y siparmyknife`
  2. Help: `siparmyknife -h`  (or `man siparmyknife`)
  3. Run: `siparmyknife <NODE_IP>` — needs your own SIP/VoIP target
- Docs: https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html

### `sipcrack`
- SIP login dumper/cracker
- **Provides:** `sipcrack`, `sipdump`
- **Steps:**
  1. Install: `sudo apt install -y sipcrack`
  2. Help: `sipcrack -h`  (or `man sipcrack`)
  3. Run: `sipcrack <NODE_IP>` — needs your own SIP/VoIP target
- Docs: http://www.remote-exploit.org/codes_sipcrack.html

### `sipp`
- Traffic generator for the SIP protocol
- **Provides:** `sipp`
- **Steps:**
  1. Install: `sudo apt install -y sipp`
  2. Help: `sipp -h`  (or `man sipp`)
  3. Run: `sipp <NODE_IP>` — needs your own SIP/VoIP target
- Docs: https://sipp.sourceforge.net/

### `sipvicious`
- tools to audit SIP based VoIP systems
- **Provides:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **Steps:**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svmap -h`  (or `man svmap`)
  3. Run: `svmap <NODE_IP>` — needs your own SIP/VoIP target
- Docs: https://github.com/EnableSecurity/sipvicious

### `voiphopper`
- Runs a VLAN hop security test
- **Provides:** `voiphopper`
- **Steps:**
  1. Install: `sudo apt install -y voiphopper`
  2. Help: `voiphopper -h`  (or `man voiphopper`)
  3. Run: `voiphopper <NODE_IP>` — needs your own SIP/VoIP target
- Docs: https://sourceforge.net/projects/voiphopper

### `wireshark`
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark <NODE_IP>` — needs your own SIP/VoIP target
- Docs: https://www.wireshark.org/


## 17 · Hardware Hacking  (`kali-tools-hardware`)

### `binwalk`
- tool library for analyzing binary blobs and executable code
- **Provides:** `binwalk`
- **Steps:**
  1. Install: `sudo apt install -y binwalk`
  2. Help: `binwalk -h`  (or `man binwalk`)
  3. Run: `binwalk -h` — needs the matching hardware
- Docs: https://github.com/ReFirmLabs/binwalk

### `binwalk3`
- tool library for analyzing binary blobs and executable code
- **Provides:** `binwalk3`
- **Steps:**
  1. Install: `sudo apt install -y binwalk3`
  2. Help: `binwalk3 -h`  (or `man binwalk3`)
  3. Run: `binwalk3 -h` — needs the matching hardware
- Docs: https://github.com/ReFirmLabs/binwalk

### `cutecom`
- Graphical serial terminal, like minicom
- **Provides:** `cutecom`
- **Steps:**
  1. Install: `sudo apt install -y cutecom`
  2. Help: `cutecom -h`  (or `man cutecom`)
  3. Run: `cutecom -h` — needs the matching hardware
- Docs: https://gitlab.com/cutecom/cutecom

### `flashrom`
- Identify, read, write, erase, and verify BIOS/ROM/flash chips
- **Provides:** `flashrom`
- **Steps:**
  1. Install: `sudo apt install -y flashrom`
  2. Help: `flashrom -h`  (or `man flashrom`)
  3. Run: `flashrom -h` — needs the matching hardware
- Docs: http://www.flashrom.org

### `minicom`
- menu-driven serial communication program
- **Provides:** `ascii-xfr`, `minicom`, `runscript`, `xminicom`
- **Steps:**
  1. Install: `sudo apt install -y minicom`
  2. Help: `minicom -h`  (or `man minicom`)
  3. Run: `minicom -h` — needs the matching hardware
- Docs: https://salsa.debian.org/minicom-team/minicom

### `openocd`
- Open on-chip JTAG/SWD debug solution for embedded target devices
- **Provides:** `openocd`
- **Steps:**
  1. Install: `sudo apt install -y openocd`
  2. Help: `openocd -h`  (or `man openocd`)
  3. Run: `openocd -h` — needs the matching hardware
- Docs: http://openocd.sourceforge.net/

### `qemu-system-x86`
- QEMU full system emulation binaries (x86)
- **Provides:** `qemu-system-amd64`, `qemu-system-i386`, `qemu-system-x86_64`
- **Steps:**
  1. Install: `sudo apt install -y qemu-system-x86`
  2. Help: `qemu-system-i386 -h`  (or `man qemu-system-i386`)
  3. Run: `qemu-system-i386 -h` — needs the matching hardware
- Docs: http://www.qemu.org/

### `qemu-user`
- QEMU user mode emulation (static binaries)
- **Provides:** `qemu-aarch64`, `qemu-aarch64_be`, `qemu-alpha`, `qemu-amd64`, `qemu-arm`, `qemu-arm64`, `qemu-armeb`, `qemu-armel`, `qemu-armhf`, `qemu-hexagon`, `qemu-hppa`, `qemu-i386`, `qemu-loong64`, `qemu-loongarch64`, `qemu-m68k`, `qemu-microblaze`, `qemu-microblazeel`, `qemu-mips`, `qemu-mips64`, `qemu-mips64el`, `qemu-mipsel`, `qemu-mipsn32`, `qemu-mipsn32el`, `qemu-or1k`, `qemu-powerpc`, `qemu-ppc`, `qemu-ppc64`, `qemu-ppc64el`, `qemu-ppc64le`, `qemu-riscv32`, `qemu-riscv64`, `qemu-s390x`, `qemu-sh4`, `qemu-sh4eb`, `qemu-sparc`, `qemu-sparc32plus`, `qemu-sparc64`, `qemu-x86_64`, `qemu-xtensa`, `qemu-xtensaeb`
- **Steps:**
  1. Install: `sudo apt install -y qemu-user`
  2. Help: `qemu-arm -h`  (or `man qemu-arm`)
  3. Run: `qemu-arm -h` — needs the matching hardware
- Docs: http://www.qemu.org/

### `radare2`
- free and advanced command line hexadecimal editor
- **Provides:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **Steps:**
  1. Install: `sudo apt install -y radare2`
  2. Help: `radare2 -h`  (or `man radare2`)
  3. Run: `radare2 -h` — needs the matching hardware
- Docs: https://www.radare.org

### `rizin-cutter`
- reverse engineering platform powered by rizin
- **Provides:** `cutter`
- **Steps:**
  1. Install: `sudo apt install -y rizin-cutter`
  2. Help: `cutter -h`  (or `man cutter`)
  3. Run: `cutter -h` — needs the matching hardware
- Docs: https://cutter.re

### `rz-ghidra`
- ghidra decompiler and sleigh disassembler for rizin
- **Steps:**
  1. Install: `sudo apt install -y rz-ghidra`
  2. Help: `rz-ghidra -h`  (or `man rz-ghidra`)
  3. Run: `rz-ghidra -h` — needs the matching hardware
- Docs: https://github.com/rizinorg/rz-ghidra


## 18 · Crypto & Steganography  (`kali-tools-crypto-stego`)

### `aesfix`
- tool for correcting bit errors in an AES key schedule
- **Provides:** `aesfix`
- **Steps:**
  1. Install: `sudo apt install -y aesfix`
  2. Help: `aesfix -h`  (or `man aesfix`)
  3. Run: `aesfix <file-you-own>` — encrypt/steg on your own files
- Docs: https://citp.princeton.edu/our-work/memory/code/

### `ccrypt`
- secure encryption and decryption of files and streams
- **Provides:** `ccat`, `ccdecrypt`, `ccencrypt`, `ccguess`, `ccrypt`
- **Steps:**
  1. Install: `sudo apt install -y ccrypt`
  2. Help: `ccrypt -h`  (or `man ccrypt`)
  3. Run: `ccrypt <file-you-own>` — encrypt/steg on your own files
- Docs: https://ccrypt.sourceforge.net/

### `steghide`
- steganography hiding tool
- **Provides:** `steghide`
- **Steps:**
  1. Install: `sudo apt install -y steghide`
  2. Help: `steghide -h`  (or `man steghide`)
  3. Run: `steghide <file-you-own>` — encrypt/steg on your own files
- Docs: https://steghide.sourceforge.net/

### `stegosuite`
- steganography tool to hide information in image files
- **Provides:** `stegosuite`
- **Steps:**
  1. Install: `sudo apt install -y stegosuite`
  2. Help: `stegosuite -h`  (or `man stegosuite`)
  3. Run: `stegosuite <file-you-own>` — encrypt/steg on your own files
- Docs: https://codeberg.org/tob/stegosuite

### `stegsnow`
- steganography using ASCII files
- **Provides:** `stegsnow`
- **Steps:**
  1. Install: `sudo apt install -y stegsnow`
  2. Help: `stegsnow -h`  (or `man stegsnow`)
  3. Run: `stegsnow <file-you-own>` — encrypt/steg on your own files
- Docs: https://www.darkside.com.au/snow


## 19 · GPU Tools  (`kali-tools-gpu`)

### `truecrack`
- Bruteforce password cracker for TrueCrypt volumes
- **Provides:** `truecrack`
- **Steps:**
  1. Install: `sudo apt install -y truecrack`
  2. Help: `truecrack -h`  (or `man truecrack`)
  3. Run: `truecrack -h` — GPU-accelerated tool
- Docs: https://github.com/lvaccaro/truecrack


## 20 · Data Recovery  (`kali-tools-recover`)

### `ddrescue`
- data recovery and protection tool
- **Provides:** `dd_rescue`
- **Steps:**
  1. Install: `sudo apt install -y ddrescue`
  2. Help: `dd_rescue -h`  (or `man dd_rescue`)
  3. Run: `dd_rescue <device-or-image>` — recover data from your own media
- Docs: http://www.garloff.de/kurt/linux/ddrescue/

### `ext3grep`
- tool to help recover deleted files on ext3 filesystems
- **Provides:** `ext3grep`
- **Steps:**
  1. Install: `sudo apt install -y ext3grep`
  2. Help: `ext3grep -h`  (or `man ext3grep`)
  3. Run: `ext3grep <device-or-image>` — recover data from your own media

### `extundelete`
- utility to recover deleted files from ext3/ext4 partition
- **Provides:** `extundelete`
- **Steps:**
  1. Install: `sudo apt install -y extundelete`
  2. Help: `extundelete -h`  (or `man extundelete`)
  3. Run: `extundelete <device-or-image>` — recover data from your own media
- Docs: http://extundelete.sourceforge.net/

### `myrescue`
- rescue data from damaged disks
- **Provides:** `myrescue`, `myrescue-bitmap2ppm`, `myrescue-stat`
- **Steps:**
  1. Install: `sudo apt install -y myrescue`
  2. Help: `myrescue -h`  (or `man myrescue`)
  3. Run: `myrescue <device-or-image>` — recover data from your own media
- Docs: https://myrescue.sf.net

### `recoverdm`
- recover files on disks with damaged sectors
- **Provides:** `mergebad`, `recoverdm`
- **Steps:**
  1. Install: `sudo apt install -y recoverdm`
  2. Help: `recoverdm -h`  (or `man recoverdm`)
  3. Run: `recoverdm <device-or-image>` — recover data from your own media
- Docs: https://www.vanheusden.com/recoverdm

### `recoverjpeg`
- recover JFIF (JPEG) pictures and MOV movies
- **Provides:** `recoverjpeg`, `recovermov`, `remove-duplicates`, `sort-pictures`
- **Steps:**
  1. Install: `sudo apt install -y recoverjpeg`
  2. Help: `recoverjpeg -h`  (or `man recoverjpeg`)
  3. Run: `recoverjpeg <device-or-image>` — recover data from your own media
- Docs: https://www.rfc1149.net/devel/recoverjpeg

### `scrounge-ntfs`
- Data recovery program for NTFS filesystems
- **Provides:** `scrounge-ntfs`
- **Steps:**
  1. Install: `sudo apt install -y scrounge-ntfs`
  2. Help: `scrounge-ntfs -h`  (or `man scrounge-ntfs`)
  3. Run: `scrounge-ntfs <device-or-image>` — recover data from your own media
- Docs: http://thewalter.net/stef/software/scrounge/

### `undbx`
- tool to extract, recover and undelete e-mail messages from .dbx files
- **Provides:** `undbx`
- **Steps:**
  1. Install: `sudo apt install -y undbx`
  2. Help: `undbx -h`  (or `man undbx`)
  3. Run: `undbx <device-or-image>` — recover data from your own media
- Docs: https://github.com/ZungBang/undbx


## 21 · Detection  (`kali-tools-detect`)

### `grokevt`
- scripts for reading Microsoft Windows event log files
- **Provides:** `grokevt-addlog`, `grokevt-builddb`, `grokevt-dumpmsgs`, `grokevt-findlogs`, `grokevt-parselog`, `grokevt-ripdll`
- **Steps:**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-addlog -h`  (or `man grokevt-addlog`)
  3. Run: `sudo grokevt-addlog` — detect on your own host
- Docs: http://projects.sentinelchicken.org/grokevt/

### `sentrypeer`
- SIP peer to peer honeypot for VoIP
- **Provides:** `sentrypeer`
- **Steps:**
  1. Install: `sudo apt install -y sentrypeer`
  2. Help: `sentrypeer -h`  (or `man sentrypeer`)
  3. Run: `sudo sentrypeer` — detect on your own host
- Docs: https://sentrypeer.org


## 22 · Protection/Hardening  (`kali-tools-protect`)

### `clamav`
- anti-virus utility for Unix - command-line interface
- **Provides:** `clambc`, `clamscan`, `clamsubmit`, `sigtool`
- **Steps:**
  1. Install: `sudo apt install -y clamav`
  2. Help: `clambc -h`  (or `man clambc`)
  3. Run: `sudo clambc` — harden your own host
- Docs: https://www.clamav.net/

### `cryptsetup`
- disk encryption support - startup scripts
- **Provides:** `cryptdisks_start`, `cryptdisks_stop`, `luksformat`
- **Steps:**
  1. Install: `sudo apt install -y cryptsetup`
  2. Help: `luksformat -h`  (or `man luksformat`)
  3. Run: `sudo luksformat` — harden your own host
- Docs: https://gitlab.com/cryptsetup/cryptsetup

### `cryptsetup-initramfs`
- disk encryption support - initramfs integration
- **Steps:**
  1. Install: `sudo apt install -y cryptsetup-initramfs`
  2. Help: `cryptsetup-initramfs -h`  (or `man cryptsetup-initramfs`)
  3. Run: `sudo cryptsetup-initramfs` — harden your own host
- Docs: https://gitlab.com/cryptsetup/cryptsetup

### `cryptsetup-nuke-password`
- Erase the LUKS keys with a special password on the unlock prompt
- **Steps:**
  1. Install: `sudo apt install -y cryptsetup-nuke-password`
  2. Help: `cryptsetup-nuke-password -h`  (or `man cryptsetup-nuke-password`)
  3. Run: `sudo cryptsetup-nuke-password` — harden your own host
- Docs: https://salsa.debian.org/pkg-security-team/cryptsetup-nuke-password

### `fwbuilder`
- Firewall administration tool GUI
- **Provides:** `fwb_compile_all`, `fwbedit`, `fwb_iosacl`, `fwb_ipf`, `fwb_ipfw`, `fwb_ipt`, `fwb_pf`, `fwb_pix`, `fwb_procurve_acl`, `fwbuilder`
- **Steps:**
  1. Install: `sudo apt install -y fwbuilder`
  2. Help: `fwbuilder -h`  (or `man fwbuilder`)
  3. Run: `sudo fwbuilder` — harden your own host
- Docs: https://github.com/fwbuilder/fwbuilder/


## 23 · Incident Response  (`kali-tools-respond`)

### `ewf-tools`
- collection of tools for reading and writing EWF files
- **Provides:** `ewfacquire`, `ewfacquirestream`, `ewfdebug`, `ewfexport`, `ewfinfo`, `ewfmount`, `ewfrecover`, `ewfverify`
- **Steps:**
  1. Install: `sudo apt install -y ewf-tools`
  2. Help: `ewfinfo -h`  (or `man ewfinfo`)
  3. Run: `ewfinfo -h` — incident response on your own systems
- Docs: https://github.com/libyal/libewf-legacy

### `guymager`
- Forensic imaging tool based on Qt
- **Provides:** `guymager`
- **Steps:**
  1. Install: `sudo apt install -y guymager`
  2. Help: `guymager -h`  (or `man guymager`)
  3. Run: `guymager -h` — incident response on your own systems
- Docs: https://guymager.sourceforge.net/

### `hashrat`
- hashing tool supporting several hashes and recursivity
- **Provides:** `hashrat`
- **Steps:**
  1. Install: `sudo apt install -y hashrat`
  2. Help: `hashrat -h`  (or `man hashrat`)
  3. Run: `hashrat -h` — incident response on your own systems
- Docs: https://github.com/ColumPaget/Hashrat/

### `impacket-scripts`
- Links to useful impacket scripts examples
- **Provides:** `impacket-addcomputer`, `impacket-atexec`, `impacket-changepasswd`, `impacket-dacledit`, `impacket-dcomexec`, `impacket-describeTicket`, `impacket-dpapi`, `impacket-DumpNTLMInfo`, `impacket-esentutl`, `impacket-exchanger`, `impacket-findDelegation`, `impacket-GetADComputers`, `impacket-GetADUsers`, `impacket-getArch`, `impacket-Get-GPPPassword`, `impacket-GetLAPSPassword`, `impacket-GetNPUsers`, `impacket-getPac`, `impacket-getST`, `impacket-getTGT`, `impacket-GetUserSPNs`, `impacket-goldenPac`, `impacket-karmaSMB`, `impacket-keylistattack`, `impacket-lookupsid`, `impacket-machine_role`, `impacket-mimikatz`, `impacket-mqtt_check`, `impacket-mssqlclient`, `impacket-mssqlinstance`, `impacket-net`, `impacket-ntfs-read`, `impacket-ntlmrelayx`, `impacket-owneredit`, `impacket-ping`, `impacket-ping6`, `impacket-psexec`, `impacket-raiseChild`, `impacket-rbcd`, `impacket-rdp_check`, `impacket-reg`, `impacket-registry-read`, `impacket-rpcmap`, `impacket-sambaPipe`, `impacket-services`, `impacket-smbclient`, `impacket-smbexec`, `impacket-smbserver`, `impacket-sniff`, `impacket-sniffer`, `impacket-split`, `impacket-ticketConverter`, `impacket-ticketer`, `impacket-tstool`, `impacket-wmipersist`, `impacket-wmiquery`
- **Steps:**
  1. Install: `sudo apt install -y impacket-scripts`
  2. Help: `impacket-net -h`  (or `man impacket-net`)
  3. Run: `impacket-net -h` — incident response on your own systems

### `kali-tools-forensics`
- Kali's forensic tools menu
- **Steps:**
  1. Install: `sudo apt install -y kali-tools-forensics`
  2. Help: `kali-tools-forensics -h`  (or `man kali-tools-forensics`)
  3. Run: `kali-tools-forensics -h` — incident response on your own systems
- Docs: https://www.kali.org

### `netsniff-ng`
- Linux network packet sniffer toolkit
- **Provides:** `astraceroute`, `bpfc`, `curvetun`, `flowtop`, `ifpps`, `mausezahn`, `netsniff-ng`, `trafgen`
- **Steps:**
  1. Install: `sudo apt install -y netsniff-ng`
  2. Help: `netsniff-ng -h`  (or `man netsniff-ng`)
  3. Run: `netsniff-ng -h` — incident response on your own systems
- Docs: http://netsniff-ng.org/


## 24 · Windows Resources  (`kali-tools-windows-resources`)

### `dbd`
- Netcat clone with encryption
- **Provides:** `dbd`
- **Steps:**
  1. Install: `sudo apt install -y dbd`
  2. Help: `dbd -h`  (or `man dbd`)
  3. Run: `dbd -h` — Windows target resources (your own)
- Docs: https://github.com/gitdurandal/dbd

### `dnschef`
- DNS proxy for penetration testers
- **Provides:** `dnschef`
- **Steps:**
  1. Install: `sudo apt install -y dnschef`
  2. Help: `dnschef -h`  (or `man dnschef`)
  3. Run: `dnschef -h` — Windows target resources (your own)
- Docs: https://github.com/iphelix/dnschef

### `heartleech`
- Scanner detecting systems vulnerable to the heartbleed OpenSSL bug
- **Provides:** `heartleech`
- **Steps:**
  1. Install: `sudo apt install -y heartleech`
  2. Help: `heartleech -h`  (or `man heartleech`)
  3. Run: `heartleech -h` — Windows target resources (your own)
- Docs: https://github.com/robertdavidgraham/heartleech

### `hyperion`
- Runtime encrypter for 32-bit portable executables
- **Steps:**
  1. Install: `sudo apt install -y hyperion`
  2. Help: `hyperion -h`  (or `man hyperion`)
  3. Run: `hyperion -h` — Windows target resources (your own)
- Docs: http://www.nullsecurity.net/tools/binary.html

### `mimikatz`
- Uses admin rights on Windows to display passwords in plaintext
- **Provides:** `mimikatz`
- **Steps:**
  1. Install: `sudo apt install -y mimikatz`
  2. Help: `mimikatz -h`  (or `man mimikatz`)
  3. Run: `mimikatz -h` — Windows target resources (your own)
- Docs: https://blog.gentilkiwi.com/mimikatz

### `ncat-w32`
- Netcat for the 21st century
- **Provides:** `ncat-w32`
- **Steps:**
  1. Install: `sudo apt install -y ncat-w32`
  2. Help: `ncat-w32 -h`  (or `man ncat-w32`)
  3. Run: `ncat-w32 -h` — Windows target resources (your own)
- Docs: https://nmap.org/ncat/

### `powercat`
- netcat features all in powershell v2
- **Provides:** `powercat`
- **Steps:**
  1. Install: `sudo apt install -y powercat`
  2. Help: `powercat -h`  (or `man powercat`)
  3. Run: `powercat -h` — Windows target resources (your own)
- Docs: https://github.com/besimorhino/powercat

### `sbd`
- Secure backdoor for Linux and Windows
- **Provides:** `sbd`
- **Steps:**
  1. Install: `sudo apt install -y sbd`
  2. Help: `sbd -h`  (or `man sbd`)
  3. Run: `sbd -h` — Windows target resources (your own)
- Docs: https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz

### `secure-socket-funneling-windows-binaries`
- SSF - windows binaries
- **Steps:**
  1. Install: `sudo apt install -y secure-socket-funneling-windows-binaries`
  2. Help: `secure-socket-funneling-windows-binaries -h`  (or `man secure-socket-funneling-windows-binaries`)
  3. Run: `secure-socket-funneling-windows-binaries -h` — Windows target resources (your own)
- Docs: https://github.com/securesocketfunneling/ssf

### `tftpd32`
- Open source ipv6-ready TFTP server for Windows
- **Provides:** `tftpd32`
- **Steps:**
  1. Install: `sudo apt install -y tftpd32`
  2. Help: `tftpd32 -h`  (or `man tftpd32`)
  3. Run: `tftpd32 -h` — Windows target resources (your own)
- Docs: https://tftpd32.jounin.net/tftpd32.html

### `wce`
- Windows Credentials Editor
- **Provides:** `wce`
- **Steps:**
  1. Install: `sudo apt install -y wce`
  2. Help: `wce -h`  (or `man wce`)
  3. Run: `wce -h` — Windows target resources (your own)
- Docs: http://www.ampliasecurity.com/research.html

### `windows-binaries`
- Various pentesting Windows binaries
- **Provides:** `windows-binaries`, `windows-resources`
- **Steps:**
  1. Install: `sudo apt install -y windows-binaries`
  2. Help: `windows-binaries -h`  (or `man windows-binaries`)
  3. Run: `windows-binaries -h` — Windows target resources (your own)
- Docs: https://www.kali.org

### `windows-privesc-check`
- Windows privilege escalation checking tool
- **Provides:** `windows-privesc-check`
- **Steps:**
  1. Install: `sudo apt install -y windows-privesc-check`
  2. Help: `windows-privesc-check -h`  (or `man windows-privesc-check`)
  3. Run: `windows-privesc-check -h` — Windows target resources (your own)
- Docs: https://pentestmonkey.net/tools/windows-privesc-check


## T · Top 10 (most-used)  (`kali-tools-top10`)

### `aircrack-ng`
- wireless WEP/WPA cracking utilities
- **Provides:** `airbase-ng`, `aircrack-ng`, `airdecap-ng`, `airdecloak-ng`, `aireplay-ng`, `airmon-ng`, `airodump-ng`, `airodump-ng-oui-update`, `airolib-ng`, `airserv-ng`, `airtun-ng`, `airventriloquist-ng`, `besside-ng`, `besside-ng-crawler`, `buddy-ng`, `dcrack`, `easside-ng`, `ivstools`, `kstats`, `makeivs-ng`, `packetforge-ng`, `tkiptun-ng`, `wesside-ng`, `wpaclean`
- **Steps:**
  1. Install: `sudo apt install -y aircrack-ng`
  2. Help: `aircrack-ng -h`  (or `man aircrack-ng`)
  3. Run: `aircrack-ng -h` — one of the most-used tools
- Docs: https://www.aircrack-ng.org/

### `hydra`
- very fast network logon cracker
- **Provides:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **Steps:**
  1. Install: `sudo apt install -y hydra`
  2. Help: `hydra -h`  (or `man hydra`)
  3. Run: `hydra -h` — one of the most-used tools
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `john`
- active password cracking tool
- **Provides:** `base64conv`, `bitlocker2john`, `calc_stat`, `cprepair`, `dmg2john`, `eapmd5tojohn`, `genmkvpwd`, `gpg2john`, `hccap2john`, `john`, `keepass2john`, `mailer`, `mkvcalcproba`, `putty2john`, `racf2john`, `rar2john`, `raw2dyna`, `SIPdump`, `tgtsnarf`, `uaf2john`, `unafs`, `undrop`, `unique`, `unshadow`, `vncpcap2john`, `wpapcap2john`, `zip2john`
- **Steps:**
  1. Install: `sudo apt install -y john`
  2. Help: `john -h`  (or `man john`)
  3. Run: `john -h` — one of the most-used tools
- Docs: https://github.com/openwall/john

### `metasploit-framework`
- Framework for exploit development and vulnerability research
- **Provides:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **Steps:**
  1. Install: `sudo apt install -y metasploit-framework`
  2. Help: `msf-jsobfu -h`  (or `man msf-jsobfu`)
  3. Run: `msf-jsobfu -h` — one of the most-used tools
- Docs: https://www.metasploit.com/

### `netexec`
- Network Execution Tool
- **Provides:** `netexec`, `nxc`, `nxcdb`
- **Steps:**
  1. Install: `sudo apt install -y netexec`
  2. Help: `netexec -h`  (or `man netexec`)
  3. Run: `netexec -h` — one of the most-used tools
- Docs: https://github.com/Pennyw0rth/NetExec

### `nmap`
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap -h` — one of the most-used tools
- Docs: https://nmap.org/

### `responder`
- LLMNR/NBT-NS/mDNS Poisoner
- **Provides:** `responder`, `responder-BrowserListener`, `responder-DHCP_Auto`, `responder-FindSQLSrv`, `responder-Icmp-Redirect`, `responder-MultiRelay`, `responder-RunFinger`
- **Steps:**
  1. Install: `sudo apt install -y responder`
  2. Help: `responder -h`  (or `man responder`)
  3. Run: `responder -h` — one of the most-used tools
- Docs: https://github.com/lgandx/Responder

### `sqlmap`
- automatic SQL injection tool
- **Provides:** `sqlmap`, `sqlmapapi`
- **Steps:**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap -h` — one of the most-used tools
- Docs: https://sqlmap.org/

### `wireshark`
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark -h` — one of the most-used tools
- Docs: https://www.wireshark.org/

