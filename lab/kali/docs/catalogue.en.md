# Kali tool catalogue — ALL applications by menu category (English)

> 繁體中文：[`catalogue.zh-TW.md`](catalogue.zh-TW.md) · per-app desktop tutorials: [`installed-apps.md`](installed-apps.md)

Generated from the VM's apt metadata (the `kali-tools-*` metapackages define each
menu category). **382 unique tools** across 29 categories — the complete Kali toolset,
whether or not it is installed on this minimal VM.


## How to use ANY tool below (the same 4 steps work for every one)

```bash
# 1. install the category (or the single tool)
lab/kali/scripts/install-tools.sh cat:web          # whole category
sudo apt install -y <tool>                          # or one tool
# 2. read its help / manual
<tool> -h ;  man <tool>
# 3. run it against an asset you OWN (lab/ROE.md), capturing evidence
lab/kali/scripts/tool.sh <tool> [args...]           # ROE banner + ~/lab-evidence log
# 4. GUI tool? open it on the VNC desktop
lab/kali/scripts/apps.sh open "<Name>"
```

> Scope: operator-owned assets only (`lab/ROE.md`). Non-destructive, rate-limited.


## 01 · Information Gathering / Reconnaissance  (`kali-tools-information-gathering`, 50)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `0trace` | traceroute tool that can run within an existing TCP connection | `apt install 0trace` | [home](https://lcamtuf.coredump.cx) |
| `arping` | sends IP and/or ARP pings (to the MAC address) | `apt install arping` | [home](https://www.habets.pp.se/synscan/programs.php?prog=arping) |
| `braa` | Mass SNMP scanner | `apt install braa` | [home](https://github.com/mteg/braa) |
| `dmitry` | Deepmagic Information Gathering Tool | `apt install dmitry` | [home](https://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/) |
| `dnsenum` | tool to enumerate domain DNS information | `apt install dnsenum` | [home](https://github.com/SparrowOchon/dnsenum2) |
| `dnsmap` | DNS domain name brute forcing tool | `apt install dnsmap` | [home](https://github.com/resurrecting-open-source-projects/dnsmap) |
| `dnsrecon` | Powerful DNS enumeration script | `apt install dnsrecon` | [home](https://github.com/darkoperator/dnsrecon) |
| `dnstracer` | trace DNS queries to the source | `apt install dnstracer` | [home](http://www.mavetju.org/unix/dnstracer.php) |
| `dnswalk` | Checks dns zone information using nameserver lookups | `apt install dnswalk` | [home](https://github.com/davebarr/dnswalk) |
| `enum4linux` | Enumerates info from Windows and Samba systems | `apt install enum4linux` | [home](https://labs.portcullis.co.uk/tools/enum4linux/) |
| `fierce` | Domain DNS scanner | `apt install fierce` | [home](https://github.com/mschwager/fierce) |
| `firewalk` | active reconnaissance network security tool | `apt install firewalk` | [home](http://packetfactory.openwall.net/projects/firewalk/) |
| `fping` | sends ICMP ECHO_REQUEST packets to network hosts | `apt install fping` | [home](https://www.fping.org/) |
| `fragrouter` | IDS evasion toolkit | `apt install fragrouter` | [home](http://www.anzen.com/research/nidsbench/fragrouter.html) |
| `ftester` | Tool for testing firewalls and Intrusion Detection System (IDS) | `apt install ftester` | [home](https://dev.inversepath.com/ftester/) |
| `hping3` | Active Network Smashing Tool | `apt install hping3` | [home](http://www.hping.org/) |
| `ike-scan` | discover and fingerprint IKE hosts (IPsec VPN Servers) | `apt install ike-scan` | [home](https://github.com/royhills/ike-scan) |
| `intrace` | Traceroute-like application piggybacking on existing TCP connections | `apt install intrace` | [home](https://github.com/robertswiecki/intrace) |
| `iputils-arping` | Tool to send ICMP echo requests to an ARP address | `apt install iputils-arping` | [home](https://github.com/iputils/iputils/) |
| `irpas` | Internetwork Routing Protocol Attack Suite | `apt install irpas` | [home](https://web.archive.org/web/20200208113522fw_/http://phenoelit.org/fr/tools.html) |
| `lbd` | Load balancer detector | `apt install lbd` | [home](http://ge.mine.nu/code/) |
| `legion` | semi-automated network penetration testing tool | `apt install legion` | [home](https://github.com/Hackman238/legion) |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` | [home](https://www.maltego.com) |
| `masscan` | TCP port scanner | `apt install masscan` | [home](https://github.com/robertdavidgraham/masscan) |
| `metagoofil` | Tool designed for extracting metadata of public documents | `apt install metagoofil` | [home](https://github.com/opsdisk/metagoofil) |
| `nbtscan` | scan networks searching for NetBIOS information | `apt install nbtscan` | [home](https://github.com/resurrecting-open-source-projects/nbtscan) |
| `ncat` | NMAP netcat reimplementation | `apt install ncat` | [home](https://nmap.org/) |
| `netdiscover` | active/passive network address scanner using ARP requests | `apt install netdiscover` | [home](https://github.com/netdiscover-scanner/netdiscover) |
| `netmask` | helps determine network masks | `apt install netmask` | [home](https://github.com/tlby/netmask) |
| `nmap` | The Network Mapper | `apt install nmap` | [home](https://nmap.org/) |
| `onesixtyone` | fast and simple SNMP scanner | `apt install onesixtyone` | [home](https://github.com/trailofbits/onesixtyone) |
| `p0f` | Passive OS fingerprinting tool | `apt install p0f` | [home](https://lcamtuf.coredump.cx/p0f3/) |
| `qsslcaudit` | test SSL/TLS clients how secure they are | `apt install qsslcaudit` | [home](https://github.com/gremwell/qsslcaudit) |
| `recon-ng` | Web Reconnaissance framework written in Python | `apt install recon-ng` | [home](https://github.com/lanmaster53/recon-ng) |
| `smbmap` | handy SMB enumeration tool | `apt install smbmap` | [home](https://github.com/ShawnDEvans/smbmap) |
| `smtp-user-enum` | Username guessing tool for the SMTP service | `apt install smtp-user-enum` | [home](http://pentestmonkey.net/tools/user-enumeration/smtp-user-enum) |
| `snmpcheck` | SNMP service enumeration tool | `apt install snmpcheck` | [home](http://www.nothink.org/codes/snmpcheck/index.php) |
| `ssldump` | SSLv3/TLS network protocol analyzer | `apt install ssldump` | [home](https://github.com/adulau/ssldump) |
| `sslh` | Applicative protocol multiplexer | `apt install sslh` | [home](http://www.rutschle.net/tech/sslh/README.html) |
| `sslscan` | Tests SSL/TLS enabled services to discover supported cipher suites | `apt install sslscan` | [home](https://github.com/rbsec/sslscan) |
| `sslyze` | Fast and full-featured SSL scanner | `apt install sslyze` | [home](https://github.com/nabla-c0d3/sslyze) |
| `swaks` | SMTP command-line test tool | `apt install swaks` | [home](https://www.jetmore.org/john/code/swaks/) |
| `thc-ipv6` | The Hacker Choice's IPv6 Attack Toolkit | `apt install thc-ipv6` | [home](http://www.thc.org/thc-ipv6/) |
| `theharvester` | tool for gathering e-mail accounts and subdomain names from public sources | `apt install theharvester` | [home](https://github.com/laramies/theHarvester) |
| `tlssled` | Evaluates the security of a target SSL/TLS (HTTPS) server | `apt install tlssled` | [home](http://www.taddong.com/en/lab.html) |
| `twofi` | Twitter words of interest | `apt install twofi` | [home](https://www.digininja.org/projects/twofi.php) |
| `unicornscan` | Userland distributed TCP/IP stack | `apt install unicornscan` | [home](http://www.unicornscan.org/) |
| `urlcrazy` | Domain typo generator | `apt install urlcrazy` | [home](https://www.morningstarsecurity.com/research/urlcrazy) |
| `wafw00f` | identify and fingerprint Web Application Firewall products | `apt install wafw00f` | [home](https://github.com/EnableSecurity/wafw00f) |
| `zenmap` | The Network Mapper Front End | `apt install zenmap` | [home](https://nmap.org/) |

## 02 · Vulnerability Analysis  (`kali-tools-vulnerability`, 35)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `afl++` | instrumentation-driven fuzzer for binary formats | `apt install afl++` | [home](https://github.com/AFLplusplus/AFLplusplus) |
| `bed` | A network protocol fuzzer | `apt install bed` | [home](http://www.snake-basket.de) |
| `cisco-auditing-tool` | Scans Cisco routers for vulnerabilities | `apt install cisco-auditing-tool` | [home](http://www.scrypt.net/) |
| `cisco-global-exploiter` | Simple and fast Cisco exploitation tool | `apt install cisco-global-exploiter` | [home](http://www.blackangels.it) |
| `cisco-ocs` | Mass Cisco scanner | `apt install cisco-ocs` | [home](http://hacklab.altervista.org/) |
| `cisco-torch` | Cisco device scanner | `apt install cisco-torch` | `man cisco-torch` |
| `dhcpig` | DHCP exhaustion script using scapy network library | `apt install dhcpig` | [home](https://github.com/kamorin/DHCPig) |
| `enumiax` | IAX protocol username enumerator | `apt install enumiax` | [home](https://enumiax.sourceforge.net/) |
| `gvm` | remote network security auditor - metapackage and useful scripts | `apt install gvm` | [home](https://www.greenbone.net/) |
| `iaxflood` | VoIP flooder tool | `apt install iaxflood` | [home](http://www.hackingexposedvoip.com/sec_tools.html) |
| `inviteflood` | SIP/SDP INVITE message flooding over UDP/IP | `apt install inviteflood` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `legion` | semi-automated network penetration testing tool | `apt install legion` | [home](https://github.com/Hackman238/legion) |
| `lynis` | security auditing tool for Unix based systems | `apt install lynis` | [home](https://cisofy.com/lynis/) |
| `nikto` | web server security scanner | `apt install nikto` | [home](https://github.com/sullo/nikto) |
| `nmap` | The Network Mapper | `apt install nmap` | [home](https://nmap.org/) |
| `ohrwurm` | RTP fuzzer | `apt install ohrwurm` | [home](http://mazzoo.de/blog/2006/08/25#ohrwurm) |
| `peass` | Privilege Escalation Awesome Scripts SUITE | `apt install peass` | [home](https://github.com/carlospolop/PEASS-ng) |
| `protos-sip` | SIP test suite | `apt install protos-sip` | [home](https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip) |
| `rtpbreak` | Detects, reconstructs, and analyzes RTP sessions | `apt install rtpbreak` | [home](http://dallachiesa.com/code/rtpbreak/) |
| `rtpflood` | Tool to flood any RTP device | `apt install rtpflood` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `rtpinsertsound` | Inserts audio into a specified stream | `apt install rtpinsertsound` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `rtpmixsound` | Mixes pre-recorded audio in real-time | `apt install rtpmixsound` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `sfuzz` | Black Box testing utilities | `apt install sfuzz` | [home](http://aconole.brad-x.com/programs/sfuzz.html) |
| `siege` | HTTP regression testing and benchmarking utility | `apt install siege` | [home](https://www.joedog.org/JoeDog/Siege) |
| `siparmyknife` | SIP fuzzing tool | `apt install siparmyknife` | [home](https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html) |
| `sipp` | Traffic generator for the SIP protocol | `apt install sipp` | [home](https://sipp.sourceforge.net/) |
| `sipsak` | SIP Swiss army knife | `apt install sipsak` | [home](https://github.com/nils-ohlmeier/sipsak) |
| `sipvicious` | tools to audit SIP based VoIP systems | `apt install sipvicious` | [home](https://github.com/EnableSecurity/sipvicious) |
| `slowhttptest` | application layer Denial of Service attacks simulation tool | `apt install slowhttptest` | [home](https://github.com/shekyan/slowhttptest) |
| `spike` | Network protocol fuzzer | `apt install spike` | [home](http://www.immunitysec.com/resources-freesoftware.shtml) |
| `t50` | Multi-protocol packet injector tool | `apt install t50` | [home](https://gitlab.com/fredericopissarra/t50) |
| `thc-ssl-dos` | Stress tester for the SSL handshake | `apt install thc-ssl-dos` | [home](http://www.thc.org/thc-ssl-dos/) |
| `unix-privesc-check` | Script to check for simple privilege escalation vectors | `apt install unix-privesc-check` | [home](https://pentestmonkey.net/tools/audit/unix-privesc-check) |
| `voiphopper` | Runs a VLAN hop security test | `apt install voiphopper` | [home](https://sourceforge.net/projects/voiphopper) |
| `yersinia` | Network vulnerabilities check software | `apt install yersinia` | [home](https://github.com/tomac/yersinia) |

## 03 · Web Application Analysis  (`kali-tools-web`, 73)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `apache-users` | Enumerate usernames on systems with Apache UserDir module | `apt install apache-users` | [home](https://labs.portcullis.co.uk/downloads/) |
| `apache2` | Apache HTTP Server | `apt install apache2` | [home](https://httpd.apache.org/) |
| `beef-xss` | Browser Exploitation Framework (BeEF) | `apt install beef-xss` | [home](https://beefproject.com/) |
| `cadaver` | command-line WebDAV client | `apt install cadaver` | [home](https://github.com/notroj/cadaver) |
| `commix` | Automated All-in-One OS Command Injection and Exploitation Tool | `apt install commix` | [home](https://commixproject.com) |
| `cutycapt` | utility to capture WebKit's rendering of a web page | `apt install cutycapt` | [home](https://github.com/Crystalix007/CutyCapt) |
| `davtest` | Testing tool for WebDAV servers | `apt install davtest` | [home](https://github.com/cldrn/davtest) |
| `default-mysql-server` | MySQL database server binaries and system database setup (metapackage) | `apt install default-mysql-server` | `man default-mysql-server` |
| `dirb` | URL bruteforcing tool | `apt install dirb` | [home](https://dirb.sourceforge.net/) |
| `dirbuster` | Web server directory brute-forcer | `apt install dirbuster` | [home](https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project) |
| `dotdotpwn` | Directory Traversal Fuzzer. | `apt install dotdotpwn` | [home](https://dotdotpwn.blogspot.ca) |
| `eyewitness` | Rapid web application triage tool | `apt install eyewitness` | [home](https://www.christophertruncer.com/eyewitness-triage-tool/) |
| `ferret-sidejack` | Monitors data and extracts interesting data | `apt install ferret-sidejack` | [home](https://github.com/robertdavidgraham/ferret) |
| `ftester` | Tool for testing firewalls and Intrusion Detection System (IDS) | `apt install ftester` | [home](https://dev.inversepath.com/ftester/) |
| `hakrawler` | Web crawler designed for easy, quick discovery of endpoints and assets | `apt install hakrawler` | [home](https://github.com/hakluke/hakrawler) |
| `hamster-sidejack` | Sidejacking tool | `apt install hamster-sidejack` | [home](http://www.erratasec.com/research.html) |
| `heartleech` | Scanner detecting systems vulnerable to the heartbleed OpenSSL bug | `apt install heartleech` | [home](https://github.com/robertdavidgraham/heartleech) |
| `httrack` | Copy websites to your computer (Offline browser) | `apt install httrack` | [home](https://www.httrack.com) |
| `hydra` | very fast network logon cracker | `apt install hydra` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `hydra-gtk` | very fast network logon cracker - GTK+ based GUI | `apt install hydra-gtk` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `jboss-autopwn` | JBoss script for obtaining remote shell access | `apt install jboss-autopwn` | [home](https://github.com/SpiderLabs/jboss-autopwn) |
| `joomscan` | OWASP Joomla Vulnerability Scanner Project | `apt install joomscan` | [home](https://www.owasp.org/index.php/Category:OWASP_Joomla_Vulnerability_Scanner_Project) |
| `jsql-injection` | Java tool for automatic database injection | `apt install jsql-injection` | [home](https://github.com/ron190/jsql-injection) |
| `laudanum` | Collection of injectable web files | `apt install laudanum` | [home](https://sourceforge.net/projects/laudanum/) |
| `lbd` | Load balancer detector | `apt install lbd` | [home](http://ge.mine.nu/code/) |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` | [home](https://www.maltego.com) |
| `medusa` | fast, parallel, modular, login brute-forcer for network services | `apt install medusa` | [home](http://foofus.net/?page_id=51) |
| `mitmproxy` | SSL-capable man-in-the-middle HTTP proxy | `apt install mitmproxy` | [home](https://mitmproxy.org) |
| `ncrack` | High-speed network authentication cracking tool | `apt install ncrack` | [home](https://nmap.org/ncrack/) |
| `nikto` | web server security scanner | `apt install nikto` | [home](https://github.com/sullo/nikto) |
| `nishang` | Collection of PowerShell scripts and payloads | `apt install nishang` | [home](https://github.com/samratashok/nishang) |
| `nmap` | The Network Mapper | `apt install nmap` | [home](https://nmap.org/) |
| `oscanner` | Oracle assessment framework | `apt install oscanner` | [home](http://www.cqure.net/wp/tools/database/oscanner/) |
| `padbuster` | Script for performing Padding Oracle attacks | `apt install padbuster` | [home](https://github.com/GDSSecurity/PadBuster) |
| `paros` | Web application proxy | `apt install paros` | [home](http://www.parosproxy.org/index.shtml) |
| `patator` | Multi-purpose brute-forcer | `apt install patator` | [home](https://github.com/lanjelot/patator) |
| `php` | server-side, HTML-embedded scripting language (default) | `apt install php` | `man php` |
| `php-mysql` | MySQL module for PHP [default] | `apt install php-mysql` | `man php-mysql` |
| `proxychains4` | redirect connections through socks/http proxies (proxychains-ng) | `apt install proxychains4` | [home](https://github.com/rofl0r/proxychains-ng) |
| `proxytunnel` | Help SSH and other protocols through HTTP(S) proxies | `apt install proxytunnel` | [home](https://proxytunnel.sourceforge.io/) |
| `qsslcaudit` | test SSL/TLS clients how secure they are | `apt install qsslcaudit` | [home](https://github.com/gremwell/qsslcaudit) |
| `redsocks` | arbitrary TCP connection redirector to a SOCKS or HTTPS proxy server | `apt install redsocks` | [home](http://darkk.net.ru/redsocks/) |
| `sidguesser` | Guesses sids against an Oracle database | `apt install sidguesser` | [home](http://www.cqure.net/wp/tools/database/sidguesser/) |
| `siege` | HTTP regression testing and benchmarking utility | `apt install siege` | [home](https://www.joedog.org/JoeDog/Siege) |
| `skipfish` | fully automated, active web application security reconnaissance tool | `apt install skipfish` | `man skipfish` |
| `slowhttptest` | application layer Denial of Service attacks simulation tool | `apt install slowhttptest` | [home](https://github.com/shekyan/slowhttptest) |
| `sqlitebrowser` | GUI editor for SQLite databases | `apt install sqlitebrowser` | [home](https://sqlitebrowser.org/) |
| `sqlmap` | automatic SQL injection tool | `apt install sqlmap` | [home](https://sqlmap.org/) |
| `sqlninja` | SQL server injection and takeover tool | `apt install sqlninja` | [home](https://sqlninja.sourceforge.net/) |
| `sqlsus` | MySQL injection tool | `apt install sqlsus` | [home](https://sqlsus.sourceforge.net/) |
| `ssldump` | SSLv3/TLS network protocol analyzer | `apt install ssldump` | [home](https://github.com/adulau/ssldump) |
| `sslh` | Applicative protocol multiplexer | `apt install sslh` | [home](http://www.rutschle.net/tech/sslh/README.html) |
| `sslscan` | Tests SSL/TLS enabled services to discover supported cipher suites | `apt install sslscan` | [home](https://github.com/rbsec/sslscan) |
| `sslsniff` | SSL/TLS man-in-the-middle attack tool | `apt install sslsniff` | [home](https://github.com/moxie0/sslsniff) |
| `sslsplit` | transparent and scalable SSL/TLS interception | `apt install sslsplit` | [home](https://www.roe.ch/SSLsplit) |
| `sslyze` | Fast and full-featured SSL scanner | `apt install sslyze` | [home](https://github.com/nabla-c0d3/sslyze) |
| `stunnel4` | Universal SSL tunnnel for network daemons - compatibility package | `apt install stunnel4` | [home](https://www.stunnel.org/) |
| `thc-ssl-dos` | Stress tester for the SSL handshake | `apt install thc-ssl-dos` | [home](http://www.thc.org/thc-ssl-dos/) |
| `tlssled` | Evaluates the security of a target SSL/TLS (HTTPS) server | `apt install tlssled` | [home](http://www.taddong.com/en/lab.html) |
| `tnscmd10g` | Tool to prod the oracle tnslsnr process | `apt install tnscmd10g` | [home](http://www.red-database-security.com/) |
| `uniscan` | LFI, RFI, and RCE vulnerability scanner | `apt install uniscan` | [home](https://sourceforge.net/projects/uniscan/) |
| `wafw00f` | identify and fingerprint Web Application Firewall products | `apt install wafw00f` | [home](https://github.com/EnableSecurity/wafw00f) |
| `wapiti` | web application vulnerability scanner | `apt install wapiti` | [home](https://wapiti.sourceforge.net/) |
| `webacoo` | Web backdoor cookie script kit | `apt install webacoo` | [home](https://github.com/anestisb/WeBaCoo) |
| `webscarab` | Web application review tool | `apt install webscarab` | [home](https://github.com/OWASP/OWASP-WebScarab) |
| `webshells` | Collection of webshells | `apt install webshells` | [home](https://www.kali.org) |
| `weevely` | Stealth tiny web shell | `apt install weevely` | [home](https://github.com/epinna/weevely3/) |
| `wfuzz` | Web application bruteforcer | `apt install wfuzz` | [home](http://www.edge-security.com/wfuzz.php) |
| `whatweb` | Next generation web scanner | `apt install whatweb` | [home](https://github.com/urbanadventurer/WhatWeb) |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` | [home](https://www.wireshark.org/) |
| `wpscan` | Black box WordPress vulnerability scanner | `apt install wpscan` | [home](https://wpscan.com/wordpress-security-scanner) |
| `xsser` | XSS testing framework | `apt install xsser` | [home](https://xsser.03c8.net/) |
| `zaproxy` | Testing tool for finding vulnerabilities in web applications | `apt install zaproxy` | [home](https://github.com/zaproxy/zaproxy) |

## 04 · Database Assessment  (`kali-tools-database`, 9)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `jsql-injection` | Java tool for automatic database injection | `apt install jsql-injection` | [home](https://github.com/ron190/jsql-injection) |
| `mdbtools` | JET / MS Access database (MDB) tools | `apt install mdbtools` | [home](https://github.com/mdbtools/mdbtools) |
| `oscanner` | Oracle assessment framework | `apt install oscanner` | [home](http://www.cqure.net/wp/tools/database/oscanner/) |
| `sidguesser` | Guesses sids against an Oracle database | `apt install sidguesser` | [home](http://www.cqure.net/wp/tools/database/sidguesser/) |
| `sqlitebrowser` | GUI editor for SQLite databases | `apt install sqlitebrowser` | [home](https://sqlitebrowser.org/) |
| `sqlmap` | automatic SQL injection tool | `apt install sqlmap` | [home](https://sqlmap.org/) |
| `sqlninja` | SQL server injection and takeover tool | `apt install sqlninja` | [home](https://sqlninja.sourceforge.net/) |
| `sqlsus` | MySQL injection tool | `apt install sqlsus` | [home](https://sqlsus.sourceforge.net/) |
| `tnscmd10g` | Tool to prod the oracle tnslsnr process | `apt install tnscmd10g` | [home](http://www.red-database-security.com/) |

## 05 · Password Attacks  (`kali-tools-passwords`, 46)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `cewl` | custom word list generator | `apt install cewl` | [home](https://github.com/digininja/CeWL) |
| `chntpw` | NT SAM password recovery utility | `apt install chntpw` | [home](http://pogostick.net/~pnh/ntpasswd/) |
| `cisco-auditing-tool` | Scans Cisco routers for vulnerabilities | `apt install cisco-auditing-tool` | [home](http://www.scrypt.net/) |
| `crackle` | Crack and decrypt BLE encryption | `apt install crackle` | [home](https://github.com/mikeryan/crackle) |
| `creddump7` | Python tool to extract credentials and secrets from Windows registry hives | `apt install creddump7` | [home](https://github.com/CiscoCXSecurity/creddump7) |
| `crunch` | tool for creating wordlist | `apt install crunch` | [home](http://sourceforge.net/projects/crunch-wordlist/) |
| `fcrackzip` | password cracker for zip archives | `apt install fcrackzip` | [home](http://oldhome.schmorp.de/marc/fcrackzip.html) |
| `freerdp3-x11` | RDP client for Windows Terminal Services (X11 client tramsitional package) | `apt install freerdp3-x11` | [home](https://www.freerdp.com/) |
| `gpp-decrypt` | Group Policy Preferences decrypter | `apt install gpp-decrypt` | [home](http://carnal0wnage.attackresearch.com/2012/10/group-policy-preferences-and-getting.html) |
| `hash-identifier` | Tool to identify hash types | `apt install hash-identifier` | [home](https://github.com/blackploit/hash-identifier) |
| `hashcat` | World's fastest and most advanced password recovery utility | `apt install hashcat` | [home](https://hashcat.net/hashcat/) |
| `hashcat-utils` | Set of small utilities for advanced password cracking | `apt install hashcat-utils` | [home](https://github.com/hashcat/hashcat-utils/) |
| `hashid` | Identify the different types of hashes used to encrypt data | `apt install hashid` | [home](https://psypanda.github.io/hashID/) |
| `hydra` | very fast network logon cracker | `apt install hydra` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `hydra-gtk` | very fast network logon cracker - GTK+ based GUI | `apt install hydra-gtk` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `john` | active password cracking tool | `apt install john` | [home](https://github.com/openwall/john) |
| `johnny` | GUI for John the Ripper | `apt install johnny` | [home](https://openwall.info/wiki/john/johnny) |
| `kali-tools-gpu` | Kali's GPU tools | `apt install kali-tools-gpu` | [home](https://www.kali.org) |
| `maskprocessor` | high-performance word generator with a per-position configurable charset | `apt install maskprocessor` | [home](https://github.com/hashcat/maskprocessor) |
| `medusa` | fast, parallel, modular, login brute-forcer for network services | `apt install medusa` | [home](http://foofus.net/?page_id=51) |
| `mimikatz` | Uses admin rights on Windows to display passwords in plaintext | `apt install mimikatz` | [home](https://blog.gentilkiwi.com/mimikatz) |
| `ncrack` | High-speed network authentication cracking tool | `apt install ncrack` | [home](https://nmap.org/ncrack/) |
| `onesixtyone` | fast and simple SNMP scanner | `apt install onesixtyone` | [home](https://github.com/trailofbits/onesixtyone) |
| `ophcrack` | Microsoft Windows password cracker using rainbow tables (gui) | `apt install ophcrack` | [home](https://ophcrack.sourceforge.net/) |
| `ophcrack-cli` | Microsoft Windows password cracker using rainbow tables (cmdline) | `apt install ophcrack-cli` | [home](https://ophcrack.sourceforge.net/) |
| `pack` | Password analysis and cracking kit | `apt install pack` | [home](https://github.com/Hydraze/pack) |
| `pack2` | Password analysis and cracking kit 2 | `apt install pack2` | [home](https://github.com/hops/pack2) |
| `passing-the-hash` | Patched tools to use password hashes as authentication input | `apt install passing-the-hash` | [home](http://passing-the-hash.blogspot.fr) |
| `patator` | Multi-purpose brute-forcer | `apt install patator` | [home](https://github.com/lanjelot/patator) |
| `pdfcrack` | PDF files password cracker | `apt install pdfcrack` | [home](http://pdfcrack.sf.net) |
| `pipal` | Statistical analysis on password dumps | `apt install pipal` | [home](https://www.digininja.org/projects/pipal.php) |
| `polenum` | Extracts the password policy from a Windows system | `apt install polenum` | [home](https://github.com/Wh1t3Fox/polenum/) |
| `rarcrack` | Password cracker for rar archives | `apt install rarcrack` | [home](http://rarcrack.sourceforge.net/) |
| `rcracki-mt` | Version of rcrack that supports hybrid and indexed tables | `apt install rcracki-mt` | [home](https://freerainbowtables.com/) |
| `rsmangler` | Wordlist mangling tool | `apt install rsmangler` | [home](https://digi.ninja/projects/rsmangler.php) |
| `samdump2` | Dump Windows 2k/NT/XP password hashes | `apt install samdump2` | [home](https://ophcrack.sourceforge.net/) |
| `seclists` | Collection of multiple types of security lists | `apt install seclists` | [home](https://github.com/danielmiessler/SecLists) |
| `sipcrack` | SIP login dumper/cracker | `apt install sipcrack` | [home](http://www.remote-exploit.org/codes_sipcrack.html) |
| `sipvicious` | tools to audit SIP based VoIP systems | `apt install sipvicious` | [home](https://github.com/EnableSecurity/sipvicious) |
| `smbmap` | handy SMB enumeration tool | `apt install smbmap` | [home](https://github.com/ShawnDEvans/smbmap) |
| `statsprocessor` | word generator based on per-position Markov chains | `apt install statsprocessor` | [home](https://github.com/hashcat/statsprocessor) |
| `sucrack` | multithreaded su bruteforcer | `apt install sucrack` | [home](https://labs.portcullis.co.uk/tools/sucrack/) |
| `thc-pptp-bruter` | THC PPTP Brute Force | `apt install thc-pptp-bruter` | [home](http://www.thc.org/releases.php) |
| `truecrack` | Bruteforce password cracker for TrueCrypt volumes | `apt install truecrack` | [home](https://github.com/lvaccaro/truecrack) |
| `twofi` | Twitter words of interest | `apt install twofi` | [home](https://www.digininja.org/projects/twofi.php) |
| `wordlists` | Contains the rockyou wordlist | `apt install wordlists` | [home](https://www.kali.org) |

## 06 · Wireless Attacks  (`kali-tools-wireless`, 8)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `kali-tools-802-11` | Kali's 802.11 attacks tools | `apt install kali-tools-802-11` | [home](https://www.kali.org) |
| `kali-tools-bluetooth` | Kali's bluetooth attacks tools | `apt install kali-tools-bluetooth` | [home](https://www.kali.org) |
| `kali-tools-rfid` | Kali's RFID tools | `apt install kali-tools-rfid` | [home](https://www.kali.org) |
| `kali-tools-sdr` | Kali's SDR tools | `apt install kali-tools-sdr` | [home](https://www.kali.org) |
| `rfcat` | Swiss army knife of sub-GHz radio | `apt install rfcat` | [home](https://github.com/atlas0fd00m/rfcat) |
| `rfkill` | tool for enabling and disabling wireless devices | `apt install rfkill` | [home](https://github.com/util-linux/util-linux) |
| `sakis3g` | Tool for establishing 3G connections | `apt install sakis3g` | [home](http://www.sakis3g.org) |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` | [home](https://www.wireshark.org/) |

## 06b · 802.11 Wi-Fi Attacks  (`kali-tools-802-11`, 19)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `aircrack-ng` | wireless WEP/WPA cracking utilities | `apt install aircrack-ng` | [home](https://www.aircrack-ng.org/) |
| `airgeddon` | multi-use bash script for Linux systems to audit wireless networks | `apt install airgeddon` | [home](https://github.com/v1s1t0r1sh3r3/airgeddon) |
| `asleap` | A tool for exploiting Cisco LEAP networks | `apt install asleap` | [home](https://www.willhackforsushi.com/) |
| `bully` | Implementation of the WPS brute force attack, written in C | `apt install bully` | [home](https://github.com/kimocoder/bully) |
| `cowpatty` | Brute-force WPA dictionary attack | `apt install cowpatty` | [home](https://www.willhackforsushi.com/?page_id=50) |
| `eapmd5pass` | Tool for extracting and cracking EAP-MD5 | `apt install eapmd5pass` | [home](https://www.willhackforsushi.com/?page_id=67) |
| `fern-wifi-cracker` | Automated Wi-Fi cracker | `apt install fern-wifi-cracker` | [home](https://github.com/savio-code/fern-wifi-cracker) |
| `freeradius-wpe` | FreeRadius Wireless Pawn Edition | `apt install freeradius-wpe` | [home](https://www.freeradius.org/) |
| `hashcat` | World's fastest and most advanced password recovery utility | `apt install hashcat` | [home](https://hashcat.net/hashcat/) |
| `hostapd-wpe` | Modified hostapd to facilitate AP impersonation attacks | `apt install hostapd-wpe` | [home](https://github.com/aircrack-ng/aircrack-ng/tree/master/patches/wpe) |
| `iw` | tool for configuring Linux wireless devices | `apt install iw` | [home](https://wireless.wiki.kernel.org/en/users/documentation/iw) |
| `kismet` | wireless network and device detector (metapackage) | `apt install kismet` | [home](https://www.kismetwireless.net/) |
| `macchanger` | utility for manipulating the MAC address of network interfaces | `apt install macchanger` | [home](https://github.com/alobbs/macchanger) |
| `mdk3` | Wireless attack tool for IEEE 802.11 networks | `apt install mdk3` | [home](https://github.com/aircrack-ng/mdk3) |
| `mdk4` | Wireless attack tool for IEEE 802.11 networks | `apt install mdk4` | [home](https://github.com/aircrack-ng/mdk4) |
| `pixiewps` | Offline WPS bruteforce tool | `apt install pixiewps` | [home](https://github.com/wiire/pixiewps) |
| `reaver` | brute force attack tool against Wi-Fi Protected Setup PIN number | `apt install reaver` | [home](https://github.com/t6x/reaver-wps-fork-t6x) |
| `wifi-honey` | Wi-Fi honeypot | `apt install wifi-honey` | [home](https://www.digininja.org/projects/wifi_honey.php) |
| `wifite` | Python script to automate wireless auditing using aircrack-ng tools | `apt install wifite` | [home](https://github.com/kimocoder/wifite2) |

## 06c · Bluetooth Attacks  (`kali-tools-bluetooth`, 10)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `blue-hydra` | Bluetooth device discovery service | `apt install blue-hydra` | [home](https://github.com/ZeroChaos-/blue_hydra) |
| `bluelog` | Bluetooth scanner and logger | `apt install bluelog` | [home](http://www.digifail.com/software/bluelog.shtml) |
| `blueranger` | Simple Bash script to locate Bluetooth devices | `apt install blueranger` | [home](http://www.hackfromacave.com/projects/blueranger.html) |
| `bluesnarfer` | Bluesnarfing utility | `apt install bluesnarfer` | [home](http://www.alighieri.org/) |
| `bluez` | Bluetooth tools and daemons | `apt install bluez` | [home](http://www.bluez.org) |
| `btscanner` | ncurses-based scanner for Bluetooth devices | `apt install btscanner` | [home](https://salsa.debian.org/pkg-security-team/btscanner) |
| `crackle` | Crack and decrypt BLE encryption | `apt install crackle` | [home](https://github.com/mikeryan/crackle) |
| `redfang` | Locates non-discoverable bluetooth devices | `apt install redfang` | `man redfang` |
| `spooftooph` | Automates spoofing or cloning Bluetooth devices | `apt install spooftooph` | [home](http://www.hackfromacave.com/projects/spooftooph.html) |
| `ubertooth` | 2.4 GHz wireless development platform for Bluetooth experimentation | `apt install ubertooth` | [home](http://ubertooth.sourceforge.net/) |

## 06d · RFID/NFC Tools  (`kali-tools-rfid`, 2)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `proxmark3` | Firmware, flasher, and client for the Proxmark3 | `apt install proxmark3` | [home](https://github.com/RfidResearchGroup/proxmark3) |
| `rfdump` | tool to decode RFID tag data | `apt install rfdump` | [home](http://www.rfdump.org/) |

## 06e · Software-Defined Radio  (`kali-tools-sdr`, 7)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `chirp` | Configuration tool for amateur radios | `apt install chirp` | [home](https://chirpmyradio.com/) |
| `hackrf` | Software defined radio peripheral - utilities | `apt install hackrf` | [home](http://greatscottgadgets.com/hackrf/) |
| `inspectrum` | tool for visualising captured radio signals | `apt install inspectrum` | [home](https://github.com/miek/inspectrum) |
| `kalibrate-rtl` | Calculate local oscillator frequency offset using GSM base stations | `apt install kalibrate-rtl` | [home](https://github.com/steve-m/kalibrate-rtl) |
| `multimon-ng` | digital radio transmission decoder | `apt install multimon-ng` | [home](https://github.com/EliasOenal/multimon-ng/) |
| `uhd-host` | universal hardware driver for Ettus Research products - host apps | `apt install uhd-host` | [home](https://www.ettus.com/sdr-software/uhd-usrp-hardware-driver/) |
| `uhd-images` | Various UHD Images | `apt install uhd-images` | [home](https://www.ettus.com) |

## 07 · Reverse Engineering  (`kali-tools-reverse-engineering`, 12)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `apktool` | tool for reverse engineering Android apk files | `apt install apktool` | [home](https://ibotpeaches.github.io/Apktool/) |
| `bytecode-viewer` | Java 8+ Jar & Android APK Reverse Engineering Suite | `apt install bytecode-viewer` | [home](https://github.com/Konloch/bytecode-viewer) |
| `clang` | C, C++ and Objective-C compiler (LLVM based), clang binary | `apt install clang` | `man clang` |
| `dex2jar` | Tools to work with android .dex and java .class files | `apt install dex2jar` | [home](https://github.com/pxb1988/dex2jar/tree/2.x) |
| `jadx` | Dex to Java decompiler | `apt install jadx` | [home](https://github.com/skylot/jadx) |
| `javasnoop` | Intercept Java applications locally | `apt install javasnoop` | `man javasnoop` |
| `jd-gui` | GUI Java .class decompiler | `apt install jd-gui` | [home](http://jd.benow.ca/) |
| `metasploit-framework` | Framework for exploit development and vulnerability research | `apt install metasploit-framework` | [home](https://www.metasploit.com/) |
| `radare2` | free and advanced command line hexadecimal editor | `apt install radare2` | [home](https://www.radare.org) |
| `rizin` | reverse engineering framework and command-line toolset | `apt install rizin` | [home](https://rizin.re/) |
| `rizin-cutter` | reverse engineering platform powered by rizin | `apt install rizin-cutter` | [home](https://cutter.re) |
| `rz-ghidra` | ghidra decompiler and sleigh disassembler for rizin | `apt install rz-ghidra` | [home](https://github.com/rizinorg/rz-ghidra) |

## 08 · Exploitation Tools  (`kali-tools-exploitation`, 8)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `armitage` | Cyber attack management for Metasploit | `apt install armitage` | [home](https://github.com/r00t0v3rr1d3/armitage) |
| `beef-xss` | Browser Exploitation Framework (BeEF) | `apt install beef-xss` | [home](https://beefproject.com/) |
| `exploitdb` | Searchable Exploit Database archive | `apt install exploitdb` | [home](https://www.exploit-db.com) |
| `metasploit-framework` | Framework for exploit development and vulnerability research | `apt install metasploit-framework` | [home](https://www.metasploit.com/) |
| `msfpc` | MSFvenom Payload Creator (MSFPC) | `apt install msfpc` | [home](https://github.com/g0tmi1k/msfpc) |
| `set` | Social-Engineer Toolkit | `apt install set` | [home](https://www.trustedsec.com/downloads/social-engineer-toolkit/) |
| `sqlmap` | automatic SQL injection tool | `apt install sqlmap` | [home](https://sqlmap.org/) |
| `termineter` | Smart meter testing framework | `apt install termineter` | [home](https://github.com/rsmusllp/termineter) |

## 09 · Sniffing & Spoofing  (`kali-tools-sniffing-spoofing`, 25)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `above` | Network security sniffer for finding vulnerabilities in the network | `apt install above` | [home](https://github.com/caster0x00/Above) |
| `bettercap` | Complete, modular, portable and easily extensible MITM framework | `apt install bettercap` | [home](https://www.bettercap.org) |
| `darkstat` | network traffic analyzer | `apt install darkstat` | [home](https://unix4lyfe.org/darkstat/) |
| `dnschef` | DNS proxy for penetration testers | `apt install dnschef` | [home](https://github.com/iphelix/dnschef) |
| `driftnet` | picks out and displays images from network traffic | `apt install driftnet` | [home](https://github.com/deiv/driftnet) |
| `dsniff` | Various tools to sniff network traffic for cleartext insecurities | `apt install dsniff` | [home](https://github.com/hackerschoice/dsniff) |
| `ettercap-graphical` | Ettercap GUI-enabled executable | `apt install ettercap-graphical` | [home](https://ettercap.github.io/ettercap/) |
| `ettercap-text-only` | Ettercap console-mode executable | `apt install ettercap-text-only` | [home](https://ettercap.github.io/ettercap/) |
| `ferret-sidejack` | Monitors data and extracts interesting data | `apt install ferret-sidejack` | [home](https://github.com/robertdavidgraham/ferret) |
| `fiked` | Cisco VPN attack tool | `apt install fiked` | [home](https://www.roe.ch/FakeIKEd) |
| `hamster-sidejack` | Sidejacking tool | `apt install hamster-sidejack` | [home](http://www.erratasec.com/research.html) |
| `hexinject` | Versatile packet injector and sniffer | `apt install hexinject` | [home](https://hexinject.sourceforge.net/) |
| `isr-evilgrade` | Evilgrade framework | `apt install isr-evilgrade` | [home](https://github.com/infobyte/evilgrade) |
| `macchanger` | utility for manipulating the MAC address of network interfaces | `apt install macchanger` | [home](https://github.com/alobbs/macchanger) |
| `mitmproxy` | SSL-capable man-in-the-middle HTTP proxy | `apt install mitmproxy` | [home](https://mitmproxy.org) |
| `netsniff-ng` | Linux network packet sniffer toolkit | `apt install netsniff-ng` | [home](http://netsniff-ng.org/) |
| `rebind` | DNS rebinding tool | `apt install rebind` | `man rebind` |
| `responder` | LLMNR/NBT-NS/mDNS Poisoner | `apt install responder` | [home](https://github.com/lgandx/Responder) |
| `sniffjoke` | Transparent TCP connection scrambler | `apt install sniffjoke` | [home](https://github.com/vecna/sniffjoke) |
| `sslsniff` | SSL/TLS man-in-the-middle attack tool | `apt install sslsniff` | [home](https://github.com/moxie0/sslsniff) |
| `sslsplit` | transparent and scalable SSL/TLS interception | `apt install sslsplit` | [home](https://www.roe.ch/SSLsplit) |
| `tcpflow` | TCP flow recorder | `apt install tcpflow` | [home](https://github.com/simsong/tcpflow) |
| `tcpreplay` | Tool to replay saved tcpdump files at arbitrary speeds | `apt install tcpreplay` | [home](http://tcpreplay.appneta.com/) |
| `wifi-honey` | Wi-Fi honeypot | `apt install wifi-honey` | [home](https://www.digininja.org/projects/wifi_honey.php) |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` | [home](https://www.wireshark.org/) |

## 10 · Post-Exploitation  (`kali-tools-post-exploitation`, 19)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `dbd` | Netcat clone with encryption | `apt install dbd` | [home](https://github.com/gitdurandal/dbd) |
| `dns2tcp` | TCP-over-DNS tunnel server and client | `apt install dns2tcp` | `man dns2tcp` |
| `exe2hexbat` | Convert EXE to bat | `apt install exe2hexbat` | [home](https://github.com/g0tmi1k/exe2hex/) |
| `iodine` | tool for tunneling IPv4 data through a DNS server | `apt install iodine` | [home](https://code.kryo.se/iodine) |
| `laudanum` | Collection of injectable web files | `apt install laudanum` | [home](https://sourceforge.net/projects/laudanum/) |
| `mimikatz` | Uses admin rights on Windows to display passwords in plaintext | `apt install mimikatz` | [home](https://blog.gentilkiwi.com/mimikatz) |
| `miredo` | Teredo IPv6 tunneling through NATs | `apt install miredo` | [home](http://www.remlab.net/miredo/) |
| `nishang` | Collection of PowerShell scripts and payloads | `apt install nishang` | [home](https://github.com/samratashok/nishang) |
| `powersploit` | PowerShell Post-Exploitation Framework | `apt install powersploit` | [home](https://github.com/PowerShellMafia/PowerSploit) |
| `proxychains4` | redirect connections through socks/http proxies (proxychains-ng) | `apt install proxychains4` | [home](https://github.com/rofl0r/proxychains-ng) |
| `proxytunnel` | Help SSH and other protocols through HTTP(S) proxies | `apt install proxytunnel` | [home](https://proxytunnel.sourceforge.io/) |
| `ptunnel` | Tunnel TCP connections over ICMP packets | `apt install ptunnel` | [home](http://www.mit.edu/afs.new/sipb/user/golem/tmp/ptunnel-0.61.orig/web/) |
| `pwnat` | NAT to NAT client-server communication | `apt install pwnat` | [home](https://samy.pl/pwnat/) |
| `sbd` | Secure backdoor for Linux and Windows | `apt install sbd` | [home](https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz) |
| `sslh` | Applicative protocol multiplexer | `apt install sslh` | [home](http://www.rutschle.net/tech/sslh/README.html) |
| `stunnel4` | Universal SSL tunnnel for network daemons - compatibility package | `apt install stunnel4` | [home](https://www.stunnel.org/) |
| `udptunnel` | tunnel UDP packets over a TCP connection | `apt install udptunnel` | [home](http://www1.cs.columbia.edu/~lennox/udptunnel/) |
| `webacoo` | Web backdoor cookie script kit | `apt install webacoo` | [home](https://github.com/anestisb/WeBaCoo) |
| `weevely` | Stealth tiny web shell | `apt install weevely` | [home](https://github.com/epinna/weevely3/) |

## 11 · Forensics  (`kali-tools-forensics`, 94)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `7zip` | 7-Zip file archiver with a high compression ratio | `apt install 7zip` | [home](https://www.7-zip.org/) |
| `afflib-tools` | Advanced Forensics Format Library (utilities) | `apt install afflib-tools` | [home](https://github.com/sshock/AFFLIBv3) |
| `apktool` | tool for reverse engineering Android apk files | `apt install apktool` | [home](https://ibotpeaches.github.io/Apktool/) |
| `autopsy` | graphical interface to SleuthKit | `apt install autopsy` | [home](https://www.sleuthkit.org/autopsy/) |
| `binwalk` | tool library for analyzing binary blobs and executable code | `apt install binwalk` | [home](https://github.com/ReFirmLabs/binwalk) |
| `binwalk3` | tool library for analyzing binary blobs and executable code | `apt install binwalk3` | [home](https://github.com/ReFirmLabs/binwalk) |
| `bulk-extractor` | Extracts information without parsing filesystem | `apt install bulk-extractor` | [home](https://github.com/simsong/bulk_extractor) |
| `bytecode-viewer` | Java 8+ Jar & Android APK Reverse Engineering Suite | `apt install bytecode-viewer` | [home](https://github.com/Konloch/bytecode-viewer) |
| `cabextract` | Microsoft Cabinet file unpacker | `apt install cabextract` | `man cabextract` |
| `chkrootkit` | rootkit detector | `apt install chkrootkit` | [home](https://www.chkrootkit.org/) |
| `creddump7` | Python tool to extract credentials and secrets from Windows registry hives | `apt install creddump7` | [home](https://github.com/CiscoCXSecurity/creddump7) |
| `dc3dd` | patched version of GNU dd with forensic features | `apt install dc3dd` | [home](https://sourceforge.net/projects/dc3dd/) |
| `dcfldd` | enhanced version of dd for forensics and security | `apt install dcfldd` | [home](https://github.com/resurrecting-open-source-projects/dcfldd) |
| `ddrescue` | data recovery and protection tool | `apt install ddrescue` | [home](http://www.garloff.de/kurt/linux/ddrescue/) |
| `dumpzilla` | Mozilla browser forensic tool | `apt install dumpzilla` | [home](http://www.dumpzilla.org/) |
| `ewf-tools` | collection of tools for reading and writing EWF files | `apt install ewf-tools` | [home](https://github.com/libyal/libewf-legacy) |
| `exifprobe` | read metadata from digital pictures | `apt install exifprobe` | [home](https://github.com/hfiguiere/exifprobe) |
| `exiv2` | EXIF/IPTC/XMP metadata manipulation tool | `apt install exiv2` | [home](https://www.exiv2.org/) |
| `ext3grep` | tool to help recover deleted files on ext3 filesystems | `apt install ext3grep` | `man ext3grep` |
| `ext4magic` | recover deleted files from ext3 or ext4 partitions | `apt install ext4magic` | [home](http://ext4magic.sf.net/ext4magic_en.html) |
| `extundelete` | utility to recover deleted files from ext3/ext4 partition | `apt install extundelete` | [home](http://extundelete.sourceforge.net/) |
| `fcrackzip` | password cracker for zip archives | `apt install fcrackzip` | [home](http://oldhome.schmorp.de/marc/fcrackzip.html) |
| `foremost` | forensic program to recover lost files | `apt install foremost` | [home](https://sourceforge.net/projects/foremost/) |
| `forensic-artifacts` | knowledge base of forensic artifacts (data files) | `apt install forensic-artifacts` | [home](https://github.com/ForensicArtifacts/artifacts) |
| `forensics-colorize` | show differences between files using color graphics | `apt install forensics-colorize` | [home](https://github.com/jessek/colorize) |
| `galleta` | Internet Explorer cookie forensic analysis tool | `apt install galleta` | [home](https://odessa.sourceforge.net/) |
| `gdb` | GNU Debugger | `apt install gdb` | [home](https://www.gnu.org/s/gdb/) |
| `gparted` | GNOME partition editor | `apt install gparted` | [home](https://gparted.org) |
| `grokevt` | scripts for reading Microsoft Windows event log files | `apt install grokevt` | [home](http://projects.sentinelchicken.org/grokevt/) |
| `guymager` | Forensic imaging tool based on Qt | `apt install guymager` | [home](https://guymager.sourceforge.net/) |
| `hashdeep` | recursively compute hashsums or piecewise hashings | `apt install hashdeep` | [home](https://md5deep.sourceforge.net) |
| `inetsim` | Software suite for simulating common internet services | `apt install inetsim` | [home](https://www.inetsim.org/index.html) |
| `jadx` | Dex to Java decompiler | `apt install jadx` | [home](https://github.com/skylot/jadx) |
| `javasnoop` | Intercept Java applications locally | `apt install javasnoop` | `man javasnoop` |
| `libhivex-bin` | utilities for reading and writing Windows Registry hives | `apt install libhivex-bin` | [home](http://libguestfs.org/) |
| `libsmali-java` | assembler/disassembler for Android's dex format | `apt install libsmali-java` | [home](https://github.com/JesusFreke/smali) |
| `lvm2` | Linux Logical Volume Manager | `apt install lvm2` | [home](https://sourceware.org/lvm2/) |
| `lynis` | security auditing tool for Unix based systems | `apt install lynis` | [home](https://cisofy.com/lynis/) |
| `mac-robber` | collects data about allocated files in mounted filesystems | `apt install mac-robber` | [home](https://www.sleuthkit.org/mac-robber) |
| `magicrescue` | recover files by looking for magic bytes | `apt install magicrescue` | [home](https://github.com/jbj/magicrescue) |
| `mdbtools` | JET / MS Access database (MDB) tools | `apt install mdbtools` | [home](https://github.com/mdbtools/mdbtools) |
| `memdump` | utility to dump memory contents to standard output | `apt install memdump` | [home](http://www.porcupine.org/forensics/tct.html) |
| `metacam` | extract EXIF information from digital camera files | `apt install metacam` | [home](http://www.cheeseplant.org/~daniel/pages/metacam.html) |
| `missidentify` | find win32 applications | `apt install missidentify` | [home](https://missidentify.sf.net) |
| `myrescue` | rescue data from damaged disks | `apt install myrescue` | [home](https://myrescue.sf.net) |
| `nasm` | General-purpose x86 assembler | `apt install nasm` | [home](https://www.nasm.us/) |
| `nasty` | tool which helps you to recover your GPG passphrase | `apt install nasty` | [home](https://github.com/folkertvanheusden/nasty) |
| `parted` | disk partition manipulator | `apt install parted` | [home](https://www.gnu.org/software/parted) |
| `pasco` | Internet Explorer cache forensic analysis tool | `apt install pasco` | [home](https://sf.net/projects/odessa) |
| `pdf-parser` | Parses PDF files to identify fundamental elements | `apt install pdf-parser` | [home](https://blog.didierstevens.com/programs/pdf-tools/) |
| `pdfid` | Scans PDF files for certain PDF keywords | `apt install pdfid` | [home](https://blog.didierstevens.com/programs/pdf-tools/) |
| `plaso` | super timeline all the things -- metapackage | `apt install plaso` | [home](https://github.com/log2timeline/plaso) |
| `polenum` | Extracts the password policy from a Windows system | `apt install polenum` | [home](https://github.com/Wh1t3Fox/polenum/) |
| `pst-utils` | tools for reading Microsoft Outlook PST files | `apt install pst-utils` | [home](https://www.five-ten-sg.com/libpst/) |
| `python3-capstone` | lightweight multi-architecture disassembly framework - Python bindings | `apt install python3-capstone` | [home](https://www.capstone-engine.org/) |
| `python3-dfdatetime` | Digital Forensics date and time library for Python 3 | `apt install python3-dfdatetime` | [home](https://github.com/log2timeline/dfdatetime) |
| `python3-dfvfs` | Digital Forensics Virtual File System | `apt install python3-dfvfs` | [home](https://github.com/log2timeline/dfvfs) |
| `python3-dfwinreg` | Digital Forensics Windows Registry library for Python 3 | `apt install python3-dfwinreg` | [home](https://github.com/log2timeline/dfwinreg) |
| `python3-distorm3` | powerful disassembler library for x86/AMD64 binary streams (Python3 bindings) | `apt install python3-distorm3` | [home](https://github.com/gdabah/distorm) |
| `radare2` | free and advanced command line hexadecimal editor | `apt install radare2` | [home](https://www.radare.org) |
| `readpe` | command-line tools to manipulate Windows PE files | `apt install readpe` | [home](https://github.com/mentebinaria/readpe/wiki) |
| `recoverdm` | recover files on disks with damaged sectors | `apt install recoverdm` | [home](https://www.vanheusden.com/recoverdm) |
| `recoverjpeg` | recover JFIF (JPEG) pictures and MOV movies | `apt install recoverjpeg` | [home](https://www.rfc1149.net/devel/recoverjpeg) |
| `reglookup` | utility to analysis for Windows NT-based registry | `apt install reglookup` | [home](https://web.archive.org/web/20240804024044/http://projects.sentinelchicken.org/reglookup/) |
| `rephrase` | Specialized passphrase recovery tool for GnuPG | `apt install rephrase` | [home](https://www.roguedaemon.net/rephrase/) |
| `rifiuti` | MS Windows recycle bin analysis tool | `apt install rifiuti` | [home](https://sf.net/projects/odessa) |
| `rifiuti2` | replacement for rifiuti, a MS Windows recycle bin analysis tool | `apt install rifiuti2` | [home](https://abelcheung.github.io/rifiuti2) |
| `rizin-cutter` | reverse engineering platform powered by rizin | `apt install rizin-cutter` | [home](https://cutter.re) |
| `rkhunter` | rootkit, backdoor, sniffer and exploit scanner | `apt install rkhunter` | [home](https://rkhunter.sourceforge.net) |
| `rsakeyfind` | locates BER-encoded RSA private keys in memory images | `apt install rsakeyfind` | [home](https://citp.princeton.edu/our-work/memory/code/) |
| `rz-ghidra` | ghidra decompiler and sleigh disassembler for rizin | `apt install rz-ghidra` | [home](https://github.com/rizinorg/rz-ghidra) |
| `safecopy` | data recovery tool for problematic or damaged media | `apt install safecopy` | [home](http://safecopy.sf.net) |
| `samdump2` | Dump Windows 2k/NT/XP password hashes | `apt install samdump2` | [home](https://ophcrack.sourceforge.net/) |
| `scalpel` | fast filesystem-independent file recovery | `apt install scalpel` | [home](https://github.com/nolaforensix/scalpel-1.60) |
| `scrounge-ntfs` | Data recovery program for NTFS filesystems | `apt install scrounge-ntfs` | [home](http://thewalter.net/stef/software/scrounge/) |
| `sleuthkit` | tools for forensics analysis on volume and filesystem data | `apt install sleuthkit` | [home](https://www.sleuthkit.org/sleuthkit) |
| `sqlitebrowser` | GUI editor for SQLite databases | `apt install sqlitebrowser` | [home](https://sqlitebrowser.org/) |
| `ssdeep` | recursive piecewise hashing tool | `apt install ssdeep` | [home](https://github.com/ssdeep-project/ssdeep) |
| `tcpdump` | command-line network traffic analyzer | `apt install tcpdump` | [home](https://www.tcpdump.org/) |
| `tcpflow` | TCP flow recorder | `apt install tcpflow` | [home](https://github.com/simsong/tcpflow) |
| `tcpick` | TCP stream sniffer and connection tracker | `apt install tcpick` | [home](http://tcpick.sourceforge.net) |
| `tcpreplay` | Tool to replay saved tcpdump files at arbitrary speeds | `apt install tcpreplay` | [home](http://tcpreplay.appneta.com/) |
| `truecrack` | Bruteforce password cracker for TrueCrypt volumes | `apt install truecrack` | [home](https://github.com/lvaccaro/truecrack) |
| `unar` | Unarchiver for a variety of file formats | `apt install unar` | [home](https://theunarchiver.com/command-line) |
| `undbx` | tool to extract, recover and undelete e-mail messages from .dbx files | `apt install undbx` | [home](https://github.com/ZungBang/undbx) |
| `unhide` | forensic tool to find hidden processes and ports | `apt install unhide` | [home](https://www.unhide-forensics.info) |
| `unrar` | Unarchiver for .rar files (non-free version) | `apt install unrar` | [home](https://www.rarlab.com/) |
| `upx-ucl` | efficient live-compressor for executables | `apt install upx-ucl` | [home](https://upx.github.io/) |
| `vinetto` | forensics tool to examine Thumbs.db files | `apt install vinetto` | [home](https://github.com/AtesComp/Vinetto) |
| `wce` | Windows Credentials Editor | `apt install wce` | [home](http://www.ampliasecurity.com/research.html) |
| `winregfs` | Windows registry FUSE filesystem | `apt install winregfs` | [home](https://codeberg.org/jbruchon/winregfs) |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` | [home](https://www.wireshark.org/) |
| `xmount` | tool for crossmounting between disk image formats | `apt install xmount` | [home](https://www.sits.lu/xmount) |
| `yara` | Pattern matching swiss knife for malware researchers | `apt install yara` | [home](https://virustotal.github.io/yara/) |

## 12 · Reporting Tools  (`kali-tools-reporting`, 7)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `cutycapt` | utility to capture WebKit's rendering of a web page | `apt install cutycapt` | [home](https://github.com/Crystalix007/CutyCapt) |
| `eyewitness` | Rapid web application triage tool | `apt install eyewitness` | [home](https://www.christophertruncer.com/eyewitness-triage-tool/) |
| `faraday` | Collaborative Penetration Test IDE | `apt install faraday` | [home](https://faradaysec.com) |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` | [home](https://www.maltego.com) |
| `metagoofil` | Tool designed for extracting metadata of public documents | `apt install metagoofil` | [home](https://github.com/opsdisk/metagoofil) |
| `pipal` | Statistical analysis on password dumps | `apt install pipal` | [home](https://www.digininja.org/projects/pipal.php) |
| `recordmydesktop` | Captures audio-video data of a Linux desktop session | `apt install recordmydesktop` | [home](https://enselic.github.io/recordmydesktop/) |

## 13 · Social Engineering  (`kali-tools-social-engineering`, 4)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `beef-xss` | Browser Exploitation Framework (BeEF) | `apt install beef-xss` | [home](https://beefproject.com/) |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` | [home](https://www.maltego.com) |
| `msfpc` | MSFvenom Payload Creator (MSFPC) | `apt install msfpc` | [home](https://github.com/g0tmi1k/msfpc) |
| `set` | Social-Engineer Toolkit | `apt install set` | [home](https://www.trustedsec.com/downloads/social-engineer-toolkit/) |

## 14 · Identify (triage/recon helpers)  (`kali-tools-identify`, 15)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `amass` | In-depth DNS Enumeration and Network Mapping | `apt install amass` | [home](https://github.com/OWASP/Amass) |
| `assetfinder` | Find domains and subdomains related to a given domain | `apt install assetfinder` | [home](https://github.com/tomnomnom/assetfinder) |
| `cisco-auditing-tool` | Scans Cisco routers for vulnerabilities | `apt install cisco-auditing-tool` | [home](http://www.scrypt.net/) |
| `defectdojo` | security orchestration and vulnerability management platform | `apt install defectdojo` | [home](https://github.com/DefectDojo/django-DefectDojo) |
| `exploitdb` | Searchable Exploit Database archive | `apt install exploitdb` | [home](https://www.exploit-db.com) |
| `kali-autopilot` | tool for automatic attack scripts in Kali | `apt install kali-autopilot` | [home](https://gitlab.com/kalilinux/packages/kali-autopilot) |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` | [home](https://www.maltego.com) |
| `maryam` | OWASP Maryam is a modular/optional open source framework bas | `apt install maryam` | [home](https://github.com/saeeddhqan/Maryam) |
| `nipper-ng` | Device security configuration review tool | `apt install nipper-ng` | `man nipper-ng` |
| `osrframework` | Open Sources Research Framework | `apt install osrframework` | [home](https://pypi.org/project/osrframework/) |
| `spiderfoot` | OSINT collection and reconnaissance tool | `apt install spiderfoot` | [home](https://www.spiderfoot.net) |
| `tiger` | security auditing and intrusion detection tools for Linux | `apt install tiger` | [home](http://savannah.nongnu.org/projects/tiger/) |
| `wapiti` | web application vulnerability scanner | `apt install wapiti` | [home](https://wapiti.sourceforge.net/) |
| `witnessme` | Web Inventory tool | `apt install witnessme` | [home](https://github.com/byt3bl33d3r/WitnessMe) |
| `zaproxy` | Testing tool for finding vulnerabilities in web applications | `apt install zaproxy` | [home](https://github.com/zaproxy/zaproxy) |

## 15 · Fuzzing  (`kali-tools-fuzzing`, 4)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `afl++` | instrumentation-driven fuzzer for binary formats | `apt install afl++` | [home](https://github.com/AFLplusplus/AFLplusplus) |
| `sfuzz` | Black Box testing utilities | `apt install sfuzz` | [home](http://aconole.brad-x.com/programs/sfuzz.html) |
| `spike` | Network protocol fuzzer | `apt install spike` | [home](http://www.immunitysec.com/resources-freesoftware.shtml) |
| `wfuzz` | Web application bruteforcer | `apt install wfuzz` | [home](http://www.edge-security.com/wfuzz.php) |

## 16 · VoIP Tools  (`kali-tools-voip`, 17)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `enumiax` | IAX protocol username enumerator | `apt install enumiax` | [home](https://enumiax.sourceforge.net/) |
| `iaxflood` | VoIP flooder tool | `apt install iaxflood` | [home](http://www.hackingexposedvoip.com/sec_tools.html) |
| `inviteflood` | SIP/SDP INVITE message flooding over UDP/IP | `apt install inviteflood` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `libfindrtp` | Library required by multiple VoIP tools | `apt install libfindrtp` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `nmap` | The Network Mapper | `apt install nmap` | [home](https://nmap.org/) |
| `ohrwurm` | RTP fuzzer | `apt install ohrwurm` | [home](http://mazzoo.de/blog/2006/08/25#ohrwurm) |
| `protos-sip` | SIP test suite | `apt install protos-sip` | [home](https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip) |
| `rtpbreak` | Detects, reconstructs, and analyzes RTP sessions | `apt install rtpbreak` | [home](http://dallachiesa.com/code/rtpbreak/) |
| `rtpflood` | Tool to flood any RTP device | `apt install rtpflood` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `rtpinsertsound` | Inserts audio into a specified stream | `apt install rtpinsertsound` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `rtpmixsound` | Mixes pre-recorded audio in real-time | `apt install rtpmixsound` | [home](http://www.hackingvoip.com/sec_tools.html) |
| `siparmyknife` | SIP fuzzing tool | `apt install siparmyknife` | [home](https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html) |
| `sipcrack` | SIP login dumper/cracker | `apt install sipcrack` | [home](http://www.remote-exploit.org/codes_sipcrack.html) |
| `sipp` | Traffic generator for the SIP protocol | `apt install sipp` | [home](https://sipp.sourceforge.net/) |
| `sipvicious` | tools to audit SIP based VoIP systems | `apt install sipvicious` | [home](https://github.com/EnableSecurity/sipvicious) |
| `voiphopper` | Runs a VLAN hop security test | `apt install voiphopper` | [home](https://sourceforge.net/projects/voiphopper) |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` | [home](https://www.wireshark.org/) |

## 17 · Hardware Hacking  (`kali-tools-hardware`, 11)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `binwalk` | tool library for analyzing binary blobs and executable code | `apt install binwalk` | [home](https://github.com/ReFirmLabs/binwalk) |
| `binwalk3` | tool library for analyzing binary blobs and executable code | `apt install binwalk3` | [home](https://github.com/ReFirmLabs/binwalk) |
| `cutecom` | Graphical serial terminal, like minicom | `apt install cutecom` | [home](https://gitlab.com/cutecom/cutecom) |
| `flashrom` | Identify, read, write, erase, and verify BIOS/ROM/flash chips | `apt install flashrom` | [home](http://www.flashrom.org) |
| `minicom` | menu-driven serial communication program | `apt install minicom` | [home](https://salsa.debian.org/minicom-team/minicom) |
| `openocd` | Open on-chip JTAG/SWD debug solution for embedded target devices | `apt install openocd` | [home](http://openocd.sourceforge.net/) |
| `qemu-system-x86` | QEMU full system emulation binaries (x86) | `apt install qemu-system-x86` | [home](http://www.qemu.org/) |
| `qemu-user` | QEMU user mode emulation (static binaries) | `apt install qemu-user` | [home](http://www.qemu.org/) |
| `radare2` | free and advanced command line hexadecimal editor | `apt install radare2` | [home](https://www.radare.org) |
| `rizin-cutter` | reverse engineering platform powered by rizin | `apt install rizin-cutter` | [home](https://cutter.re) |
| `rz-ghidra` | ghidra decompiler and sleigh disassembler for rizin | `apt install rz-ghidra` | [home](https://github.com/rizinorg/rz-ghidra) |

## 18 · Crypto & Steganography  (`kali-tools-crypto-stego`, 5)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `aesfix` | tool for correcting bit errors in an AES key schedule | `apt install aesfix` | [home](https://citp.princeton.edu/our-work/memory/code/) |
| `ccrypt` | secure encryption and decryption of files and streams | `apt install ccrypt` | [home](https://ccrypt.sourceforge.net/) |
| `steghide` | steganography hiding tool | `apt install steghide` | [home](https://steghide.sourceforge.net/) |
| `stegosuite` | steganography tool to hide information in image files | `apt install stegosuite` | [home](https://codeberg.org/tob/stegosuite) |
| `stegsnow` | steganography using ASCII files | `apt install stegsnow` | [home](https://www.darkside.com.au/snow) |

## 19 · GPU Tools  (`kali-tools-gpu`, 1)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `truecrack` | Bruteforce password cracker for TrueCrypt volumes | `apt install truecrack` | [home](https://github.com/lvaccaro/truecrack) |

## 20 · Data Recovery  (`kali-tools-recover`, 8)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `ddrescue` | data recovery and protection tool | `apt install ddrescue` | [home](http://www.garloff.de/kurt/linux/ddrescue/) |
| `ext3grep` | tool to help recover deleted files on ext3 filesystems | `apt install ext3grep` | `man ext3grep` |
| `extundelete` | utility to recover deleted files from ext3/ext4 partition | `apt install extundelete` | [home](http://extundelete.sourceforge.net/) |
| `myrescue` | rescue data from damaged disks | `apt install myrescue` | [home](https://myrescue.sf.net) |
| `recoverdm` | recover files on disks with damaged sectors | `apt install recoverdm` | [home](https://www.vanheusden.com/recoverdm) |
| `recoverjpeg` | recover JFIF (JPEG) pictures and MOV movies | `apt install recoverjpeg` | [home](https://www.rfc1149.net/devel/recoverjpeg) |
| `scrounge-ntfs` | Data recovery program for NTFS filesystems | `apt install scrounge-ntfs` | [home](http://thewalter.net/stef/software/scrounge/) |
| `undbx` | tool to extract, recover and undelete e-mail messages from .dbx files | `apt install undbx` | [home](https://github.com/ZungBang/undbx) |

## 21 · Detection  (`kali-tools-detect`, 2)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `grokevt` | scripts for reading Microsoft Windows event log files | `apt install grokevt` | [home](http://projects.sentinelchicken.org/grokevt/) |
| `sentrypeer` | SIP peer to peer honeypot for VoIP | `apt install sentrypeer` | [home](https://sentrypeer.org) |

## 22 · Protection/Hardening  (`kali-tools-protect`, 5)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `clamav` | anti-virus utility for Unix - command-line interface | `apt install clamav` | [home](https://www.clamav.net/) |
| `cryptsetup` | disk encryption support - startup scripts | `apt install cryptsetup` | [home](https://gitlab.com/cryptsetup/cryptsetup) |
| `cryptsetup-initramfs` | disk encryption support - initramfs integration | `apt install cryptsetup-initramfs` | [home](https://gitlab.com/cryptsetup/cryptsetup) |
| `cryptsetup-nuke-password` | Erase the LUKS keys with a special password on the unlock prompt | `apt install cryptsetup-nuke-password` | [home](https://salsa.debian.org/pkg-security-team/cryptsetup-nuke-password) |
| `fwbuilder` | Firewall administration tool GUI | `apt install fwbuilder` | [home](https://github.com/fwbuilder/fwbuilder/) |

## 23 · Incident Response  (`kali-tools-respond`, 6)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `ewf-tools` | collection of tools for reading and writing EWF files | `apt install ewf-tools` | [home](https://github.com/libyal/libewf-legacy) |
| `guymager` | Forensic imaging tool based on Qt | `apt install guymager` | [home](https://guymager.sourceforge.net/) |
| `hashrat` | hashing tool supporting several hashes and recursivity | `apt install hashrat` | [home](https://github.com/ColumPaget/Hashrat/) |
| `impacket-scripts` | Links to useful impacket scripts examples | `apt install impacket-scripts` | `man impacket-scripts` |
| `kali-tools-forensics` | Kali's forensic tools menu | `apt install kali-tools-forensics` | [home](https://www.kali.org) |
| `netsniff-ng` | Linux network packet sniffer toolkit | `apt install netsniff-ng` | [home](http://netsniff-ng.org/) |

## 24 · Windows Resources  (`kali-tools-windows-resources`, 13)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `dbd` | Netcat clone with encryption | `apt install dbd` | [home](https://github.com/gitdurandal/dbd) |
| `dnschef` | DNS proxy for penetration testers | `apt install dnschef` | [home](https://github.com/iphelix/dnschef) |
| `heartleech` | Scanner detecting systems vulnerable to the heartbleed OpenSSL bug | `apt install heartleech` | [home](https://github.com/robertdavidgraham/heartleech) |
| `hyperion` | Runtime encrypter for 32-bit portable executables | `apt install hyperion` | [home](http://www.nullsecurity.net/tools/binary.html) |
| `mimikatz` | Uses admin rights on Windows to display passwords in plaintext | `apt install mimikatz` | [home](https://blog.gentilkiwi.com/mimikatz) |
| `ncat-w32` | Netcat for the 21st century | `apt install ncat-w32` | [home](https://nmap.org/ncat/) |
| `powercat` | netcat features all in powershell v2 | `apt install powercat` | [home](https://github.com/besimorhino/powercat) |
| `sbd` | Secure backdoor for Linux and Windows | `apt install sbd` | [home](https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz) |
| `secure-socket-funneling-windows-binaries` | SSF - windows binaries | `apt install secure-socket-funneling-windows-binaries` | [home](https://github.com/securesocketfunneling/ssf) |
| `tftpd32` | Open source ipv6-ready TFTP server for Windows | `apt install tftpd32` | [home](https://tftpd32.jounin.net/tftpd32.html) |
| `wce` | Windows Credentials Editor | `apt install wce` | [home](http://www.ampliasecurity.com/research.html) |
| `windows-binaries` | Various pentesting Windows binaries | `apt install windows-binaries` | [home](https://www.kali.org) |
| `windows-privesc-check` | Windows privilege escalation checking tool | `apt install windows-privesc-check` | [home](https://pentestmonkey.net/tools/windows-privesc-check) |

## T · Top 10 (most-used)  (`kali-tools-top10`, 9)

| Tool | What it is | Install | Docs / steps |
|---|---|---|---|
| `aircrack-ng` | wireless WEP/WPA cracking utilities | `apt install aircrack-ng` | [home](https://www.aircrack-ng.org/) |
| `hydra` | very fast network logon cracker | `apt install hydra` | [home](https://github.com/vanhauser-thc/thc-hydra) |
| `john` | active password cracking tool | `apt install john` | [home](https://github.com/openwall/john) |
| `metasploit-framework` | Framework for exploit development and vulnerability research | `apt install metasploit-framework` | [home](https://www.metasploit.com/) |
| `netexec` | Network Execution Tool | `apt install netexec` | [home](https://github.com/Pennyw0rth/NetExec) |
| `nmap` | The Network Mapper | `apt install nmap` | [home](https://nmap.org/) |
| `responder` | LLMNR/NBT-NS/mDNS Poisoner | `apt install responder` | [home](https://github.com/lgandx/Responder) |
| `sqlmap` | automatic SQL injection tool | `apt install sqlmap` | [home](https://sqlmap.org/) |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` | [home](https://www.wireshark.org/) |

---

Install everything: `lab/kali/scripts/install-tools.sh --all` (kali-linux-default) or per category `install-tools.sh cat:<slug>`. Drive any tool: `tool.sh <name>`; chain the common workflow: `toolkit.sh chain recon,web,vuln`.

