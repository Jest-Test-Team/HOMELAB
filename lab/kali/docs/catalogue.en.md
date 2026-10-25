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

| Tool | What it is | Install |
|---|---|---|
| `0trace` | traceroute tool that can run within an existing TCP connection | `apt install 0trace` |
| `arping` | sends IP and/or ARP pings (to the MAC address) | `apt install arping` |
| `braa` | Mass SNMP scanner | `apt install braa` |
| `dmitry` | Deepmagic Information Gathering Tool | `apt install dmitry` |
| `dnsenum` | tool to enumerate domain DNS information | `apt install dnsenum` |
| `dnsmap` | DNS domain name brute forcing tool | `apt install dnsmap` |
| `dnsrecon` | Powerful DNS enumeration script | `apt install dnsrecon` |
| `dnstracer` | trace DNS queries to the source | `apt install dnstracer` |
| `dnswalk` | Checks dns zone information using nameserver lookups | `apt install dnswalk` |
| `enum4linux` | Enumerates info from Windows and Samba systems | `apt install enum4linux` |
| `fierce` | Domain DNS scanner | `apt install fierce` |
| `firewalk` | active reconnaissance network security tool | `apt install firewalk` |
| `fping` | sends ICMP ECHO_REQUEST packets to network hosts | `apt install fping` |
| `fragrouter` | IDS evasion toolkit | `apt install fragrouter` |
| `ftester` | Tool for testing firewalls and Intrusion Detection System (IDS) | `apt install ftester` |
| `hping3` | Active Network Smashing Tool | `apt install hping3` |
| `ike-scan` | discover and fingerprint IKE hosts (IPsec VPN Servers) | `apt install ike-scan` |
| `intrace` | Traceroute-like application piggybacking on existing TCP connections | `apt install intrace` |
| `iputils-arping` | Tool to send ICMP echo requests to an ARP address | `apt install iputils-arping` |
| `irpas` | Internetwork Routing Protocol Attack Suite | `apt install irpas` |
| `lbd` | Load balancer detector | `apt install lbd` |
| `legion` | semi-automated network penetration testing tool | `apt install legion` |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` |
| `masscan` | TCP port scanner | `apt install masscan` |
| `metagoofil` | Tool designed for extracting metadata of public documents | `apt install metagoofil` |
| `nbtscan` | scan networks searching for NetBIOS information | `apt install nbtscan` |
| `ncat` | NMAP netcat reimplementation | `apt install ncat` |
| `netdiscover` | active/passive network address scanner using ARP requests | `apt install netdiscover` |
| `netmask` | helps determine network masks | `apt install netmask` |
| `nmap` | The Network Mapper | `apt install nmap` |
| `onesixtyone` | fast and simple SNMP scanner | `apt install onesixtyone` |
| `p0f` | Passive OS fingerprinting tool | `apt install p0f` |
| `qsslcaudit` | test SSL/TLS clients how secure they are | `apt install qsslcaudit` |
| `recon-ng` | Web Reconnaissance framework written in Python | `apt install recon-ng` |
| `smbmap` | handy SMB enumeration tool | `apt install smbmap` |
| `smtp-user-enum` | Username guessing tool for the SMTP service | `apt install smtp-user-enum` |
| `snmpcheck` | SNMP service enumeration tool | `apt install snmpcheck` |
| `ssldump` | SSLv3/TLS network protocol analyzer | `apt install ssldump` |
| `sslh` | Applicative protocol multiplexer | `apt install sslh` |
| `sslscan` | Tests SSL/TLS enabled services to discover supported cipher suites | `apt install sslscan` |
| `sslyze` | Fast and full-featured SSL scanner | `apt install sslyze` |
| `swaks` | SMTP command-line test tool | `apt install swaks` |
| `thc-ipv6` | The Hacker Choice's IPv6 Attack Toolkit | `apt install thc-ipv6` |
| `theharvester` | tool for gathering e-mail accounts and subdomain names from public sources | `apt install theharvester` |
| `tlssled` | Evaluates the security of a target SSL/TLS (HTTPS) server | `apt install tlssled` |
| `twofi` | Twitter words of interest | `apt install twofi` |
| `unicornscan` | Userland distributed TCP/IP stack | `apt install unicornscan` |
| `urlcrazy` | Domain typo generator | `apt install urlcrazy` |
| `wafw00f` | identify and fingerprint Web Application Firewall products | `apt install wafw00f` |
| `zenmap` | The Network Mapper Front End | `apt install zenmap` |

## 02 · Vulnerability Analysis  (`kali-tools-vulnerability`, 35)

| Tool | What it is | Install |
|---|---|---|
| `afl++` | instrumentation-driven fuzzer for binary formats | `apt install afl++` |
| `bed` | A network protocol fuzzer | `apt install bed` |
| `cisco-auditing-tool` | Scans Cisco routers for vulnerabilities | `apt install cisco-auditing-tool` |
| `cisco-global-exploiter` | Simple and fast Cisco exploitation tool | `apt install cisco-global-exploiter` |
| `cisco-ocs` | Mass Cisco scanner | `apt install cisco-ocs` |
| `cisco-torch` | Cisco device scanner | `apt install cisco-torch` |
| `dhcpig` | DHCP exhaustion script using scapy network library | `apt install dhcpig` |
| `enumiax` | IAX protocol username enumerator | `apt install enumiax` |
| `gvm` | remote network security auditor - metapackage and useful scripts | `apt install gvm` |
| `iaxflood` | VoIP flooder tool | `apt install iaxflood` |
| `inviteflood` | SIP/SDP INVITE message flooding over UDP/IP | `apt install inviteflood` |
| `legion` | semi-automated network penetration testing tool | `apt install legion` |
| `lynis` | security auditing tool for Unix based systems | `apt install lynis` |
| `nikto` | web server security scanner | `apt install nikto` |
| `nmap` | The Network Mapper | `apt install nmap` |
| `ohrwurm` | RTP fuzzer | `apt install ohrwurm` |
| `peass` | Privilege Escalation Awesome Scripts SUITE | `apt install peass` |
| `protos-sip` | SIP test suite | `apt install protos-sip` |
| `rtpbreak` | Detects, reconstructs, and analyzes RTP sessions | `apt install rtpbreak` |
| `rtpflood` | Tool to flood any RTP device | `apt install rtpflood` |
| `rtpinsertsound` | Inserts audio into a specified stream | `apt install rtpinsertsound` |
| `rtpmixsound` | Mixes pre-recorded audio in real-time | `apt install rtpmixsound` |
| `sfuzz` | Black Box testing utilities | `apt install sfuzz` |
| `siege` | HTTP regression testing and benchmarking utility | `apt install siege` |
| `siparmyknife` | SIP fuzzing tool | `apt install siparmyknife` |
| `sipp` | Traffic generator for the SIP protocol | `apt install sipp` |
| `sipsak` | SIP Swiss army knife | `apt install sipsak` |
| `sipvicious` | tools to audit SIP based VoIP systems | `apt install sipvicious` |
| `slowhttptest` | application layer Denial of Service attacks simulation tool | `apt install slowhttptest` |
| `spike` | Network protocol fuzzer | `apt install spike` |
| `t50` | Multi-protocol packet injector tool | `apt install t50` |
| `thc-ssl-dos` | Stress tester for the SSL handshake | `apt install thc-ssl-dos` |
| `unix-privesc-check` | Script to check for simple privilege escalation vectors | `apt install unix-privesc-check` |
| `voiphopper` | Runs a VLAN hop security test | `apt install voiphopper` |
| `yersinia` | Network vulnerabilities check software | `apt install yersinia` |

## 03 · Web Application Analysis  (`kali-tools-web`, 73)

| Tool | What it is | Install |
|---|---|---|
| `apache-users` | Enumerate usernames on systems with Apache UserDir module | `apt install apache-users` |
| `apache2` | Apache HTTP Server | `apt install apache2` |
| `beef-xss` | Browser Exploitation Framework (BeEF) | `apt install beef-xss` |
| `cadaver` | command-line WebDAV client | `apt install cadaver` |
| `commix` | Automated All-in-One OS Command Injection and Exploitation Tool | `apt install commix` |
| `cutycapt` | utility to capture WebKit's rendering of a web page | `apt install cutycapt` |
| `davtest` | Testing tool for WebDAV servers | `apt install davtest` |
| `default-mysql-server` | MySQL database server binaries and system database setup (metapackage) | `apt install default-mysql-server` |
| `dirb` | URL bruteforcing tool | `apt install dirb` |
| `dirbuster` | Web server directory brute-forcer | `apt install dirbuster` |
| `dotdotpwn` | Directory Traversal Fuzzer. | `apt install dotdotpwn` |
| `eyewitness` | Rapid web application triage tool | `apt install eyewitness` |
| `ferret-sidejack` | Monitors data and extracts interesting data | `apt install ferret-sidejack` |
| `ftester` | Tool for testing firewalls and Intrusion Detection System (IDS) | `apt install ftester` |
| `hakrawler` | Web crawler designed for easy, quick discovery of endpoints and assets | `apt install hakrawler` |
| `hamster-sidejack` | Sidejacking tool | `apt install hamster-sidejack` |
| `heartleech` | Scanner detecting systems vulnerable to the heartbleed OpenSSL bug | `apt install heartleech` |
| `httrack` | Copy websites to your computer (Offline browser) | `apt install httrack` |
| `hydra` | very fast network logon cracker | `apt install hydra` |
| `hydra-gtk` | very fast network logon cracker - GTK+ based GUI | `apt install hydra-gtk` |
| `jboss-autopwn` | JBoss script for obtaining remote shell access | `apt install jboss-autopwn` |
| `joomscan` | OWASP Joomla Vulnerability Scanner Project | `apt install joomscan` |
| `jsql-injection` | Java tool for automatic database injection | `apt install jsql-injection` |
| `laudanum` | Collection of injectable web files | `apt install laudanum` |
| `lbd` | Load balancer detector | `apt install lbd` |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` |
| `medusa` | fast, parallel, modular, login brute-forcer for network services | `apt install medusa` |
| `mitmproxy` | SSL-capable man-in-the-middle HTTP proxy | `apt install mitmproxy` |
| `ncrack` | High-speed network authentication cracking tool | `apt install ncrack` |
| `nikto` | web server security scanner | `apt install nikto` |
| `nishang` | Collection of PowerShell scripts and payloads | `apt install nishang` |
| `nmap` | The Network Mapper | `apt install nmap` |
| `oscanner` | Oracle assessment framework | `apt install oscanner` |
| `padbuster` | Script for performing Padding Oracle attacks | `apt install padbuster` |
| `paros` | Web application proxy | `apt install paros` |
| `patator` | Multi-purpose brute-forcer | `apt install patator` |
| `php` | server-side, HTML-embedded scripting language (default) | `apt install php` |
| `php-mysql` | MySQL module for PHP [default] | `apt install php-mysql` |
| `proxychains4` | redirect connections through socks/http proxies (proxychains-ng) | `apt install proxychains4` |
| `proxytunnel` | Help SSH and other protocols through HTTP(S) proxies | `apt install proxytunnel` |
| `qsslcaudit` | test SSL/TLS clients how secure they are | `apt install qsslcaudit` |
| `redsocks` | arbitrary TCP connection redirector to a SOCKS or HTTPS proxy server | `apt install redsocks` |
| `sidguesser` | Guesses sids against an Oracle database | `apt install sidguesser` |
| `siege` | HTTP regression testing and benchmarking utility | `apt install siege` |
| `skipfish` | fully automated, active web application security reconnaissance tool | `apt install skipfish` |
| `slowhttptest` | application layer Denial of Service attacks simulation tool | `apt install slowhttptest` |
| `sqlitebrowser` | GUI editor for SQLite databases | `apt install sqlitebrowser` |
| `sqlmap` | automatic SQL injection tool | `apt install sqlmap` |
| `sqlninja` | SQL server injection and takeover tool | `apt install sqlninja` |
| `sqlsus` | MySQL injection tool | `apt install sqlsus` |
| `ssldump` | SSLv3/TLS network protocol analyzer | `apt install ssldump` |
| `sslh` | Applicative protocol multiplexer | `apt install sslh` |
| `sslscan` | Tests SSL/TLS enabled services to discover supported cipher suites | `apt install sslscan` |
| `sslsniff` | SSL/TLS man-in-the-middle attack tool | `apt install sslsniff` |
| `sslsplit` | transparent and scalable SSL/TLS interception | `apt install sslsplit` |
| `sslyze` | Fast and full-featured SSL scanner | `apt install sslyze` |
| `stunnel4` | Universal SSL tunnnel for network daemons - compatibility package | `apt install stunnel4` |
| `thc-ssl-dos` | Stress tester for the SSL handshake | `apt install thc-ssl-dos` |
| `tlssled` | Evaluates the security of a target SSL/TLS (HTTPS) server | `apt install tlssled` |
| `tnscmd10g` | Tool to prod the oracle tnslsnr process | `apt install tnscmd10g` |
| `uniscan` | LFI, RFI, and RCE vulnerability scanner | `apt install uniscan` |
| `wafw00f` | identify and fingerprint Web Application Firewall products | `apt install wafw00f` |
| `wapiti` | web application vulnerability scanner | `apt install wapiti` |
| `webacoo` | Web backdoor cookie script kit | `apt install webacoo` |
| `webscarab` | Web application review tool | `apt install webscarab` |
| `webshells` | Collection of webshells | `apt install webshells` |
| `weevely` | Stealth tiny web shell | `apt install weevely` |
| `wfuzz` | Web application bruteforcer | `apt install wfuzz` |
| `whatweb` | Next generation web scanner | `apt install whatweb` |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` |
| `wpscan` | Black box WordPress vulnerability scanner | `apt install wpscan` |
| `xsser` | XSS testing framework | `apt install xsser` |
| `zaproxy` | Testing tool for finding vulnerabilities in web applications | `apt install zaproxy` |

## 04 · Database Assessment  (`kali-tools-database`, 9)

| Tool | What it is | Install |
|---|---|---|
| `jsql-injection` | Java tool for automatic database injection | `apt install jsql-injection` |
| `mdbtools` | JET / MS Access database (MDB) tools | `apt install mdbtools` |
| `oscanner` | Oracle assessment framework | `apt install oscanner` |
| `sidguesser` | Guesses sids against an Oracle database | `apt install sidguesser` |
| `sqlitebrowser` | GUI editor for SQLite databases | `apt install sqlitebrowser` |
| `sqlmap` | automatic SQL injection tool | `apt install sqlmap` |
| `sqlninja` | SQL server injection and takeover tool | `apt install sqlninja` |
| `sqlsus` | MySQL injection tool | `apt install sqlsus` |
| `tnscmd10g` | Tool to prod the oracle tnslsnr process | `apt install tnscmd10g` |

## 05 · Password Attacks  (`kali-tools-passwords`, 46)

| Tool | What it is | Install |
|---|---|---|
| `cewl` | custom word list generator | `apt install cewl` |
| `chntpw` | NT SAM password recovery utility | `apt install chntpw` |
| `cisco-auditing-tool` | Scans Cisco routers for vulnerabilities | `apt install cisco-auditing-tool` |
| `crackle` | Crack and decrypt BLE encryption | `apt install crackle` |
| `creddump7` | Python tool to extract credentials and secrets from Windows registry hives | `apt install creddump7` |
| `crunch` | tool for creating wordlist | `apt install crunch` |
| `fcrackzip` | password cracker for zip archives | `apt install fcrackzip` |
| `freerdp3-x11` | RDP client for Windows Terminal Services (X11 client tramsitional package) | `apt install freerdp3-x11` |
| `gpp-decrypt` | Group Policy Preferences decrypter | `apt install gpp-decrypt` |
| `hash-identifier` | Tool to identify hash types | `apt install hash-identifier` |
| `hashcat` | World's fastest and most advanced password recovery utility | `apt install hashcat` |
| `hashcat-utils` | Set of small utilities for advanced password cracking | `apt install hashcat-utils` |
| `hashid` | Identify the different types of hashes used to encrypt data | `apt install hashid` |
| `hydra` | very fast network logon cracker | `apt install hydra` |
| `hydra-gtk` | very fast network logon cracker - GTK+ based GUI | `apt install hydra-gtk` |
| `john` | active password cracking tool | `apt install john` |
| `johnny` | GUI for John the Ripper | `apt install johnny` |
| `kali-tools-gpu` | Kali's GPU tools | `apt install kali-tools-gpu` |
| `maskprocessor` | high-performance word generator with a per-position configurable charset | `apt install maskprocessor` |
| `medusa` | fast, parallel, modular, login brute-forcer for network services | `apt install medusa` |
| `mimikatz` | Uses admin rights on Windows to display passwords in plaintext | `apt install mimikatz` |
| `ncrack` | High-speed network authentication cracking tool | `apt install ncrack` |
| `onesixtyone` | fast and simple SNMP scanner | `apt install onesixtyone` |
| `ophcrack` | Microsoft Windows password cracker using rainbow tables (gui) | `apt install ophcrack` |
| `ophcrack-cli` | Microsoft Windows password cracker using rainbow tables (cmdline) | `apt install ophcrack-cli` |
| `pack` | Password analysis and cracking kit | `apt install pack` |
| `pack2` | Password analysis and cracking kit 2 | `apt install pack2` |
| `passing-the-hash` | Patched tools to use password hashes as authentication input | `apt install passing-the-hash` |
| `patator` | Multi-purpose brute-forcer | `apt install patator` |
| `pdfcrack` | PDF files password cracker | `apt install pdfcrack` |
| `pipal` | Statistical analysis on password dumps | `apt install pipal` |
| `polenum` | Extracts the password policy from a Windows system | `apt install polenum` |
| `rarcrack` | Password cracker for rar archives | `apt install rarcrack` |
| `rcracki-mt` | Version of rcrack that supports hybrid and indexed tables | `apt install rcracki-mt` |
| `rsmangler` | Wordlist mangling tool | `apt install rsmangler` |
| `samdump2` | Dump Windows 2k/NT/XP password hashes | `apt install samdump2` |
| `seclists` | Collection of multiple types of security lists | `apt install seclists` |
| `sipcrack` | SIP login dumper/cracker | `apt install sipcrack` |
| `sipvicious` | tools to audit SIP based VoIP systems | `apt install sipvicious` |
| `smbmap` | handy SMB enumeration tool | `apt install smbmap` |
| `statsprocessor` | word generator based on per-position Markov chains | `apt install statsprocessor` |
| `sucrack` | multithreaded su bruteforcer | `apt install sucrack` |
| `thc-pptp-bruter` | THC PPTP Brute Force | `apt install thc-pptp-bruter` |
| `truecrack` | Bruteforce password cracker for TrueCrypt volumes | `apt install truecrack` |
| `twofi` | Twitter words of interest | `apt install twofi` |
| `wordlists` | Contains the rockyou wordlist | `apt install wordlists` |

## 06 · Wireless Attacks  (`kali-tools-wireless`, 8)

| Tool | What it is | Install |
|---|---|---|
| `kali-tools-802-11` | Kali's 802.11 attacks tools | `apt install kali-tools-802-11` |
| `kali-tools-bluetooth` | Kali's bluetooth attacks tools | `apt install kali-tools-bluetooth` |
| `kali-tools-rfid` | Kali's RFID tools | `apt install kali-tools-rfid` |
| `kali-tools-sdr` | Kali's SDR tools | `apt install kali-tools-sdr` |
| `rfcat` | Swiss army knife of sub-GHz radio | `apt install rfcat` |
| `rfkill` | tool for enabling and disabling wireless devices | `apt install rfkill` |
| `sakis3g` | Tool for establishing 3G connections | `apt install sakis3g` |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` |

## 06b · 802.11 Wi-Fi Attacks  (`kali-tools-802-11`, 19)

| Tool | What it is | Install |
|---|---|---|
| `aircrack-ng` | wireless WEP/WPA cracking utilities | `apt install aircrack-ng` |
| `airgeddon` | multi-use bash script for Linux systems to audit wireless networks | `apt install airgeddon` |
| `asleap` | A tool for exploiting Cisco LEAP networks | `apt install asleap` |
| `bully` | Implementation of the WPS brute force attack, written in C | `apt install bully` |
| `cowpatty` | Brute-force WPA dictionary attack | `apt install cowpatty` |
| `eapmd5pass` | Tool for extracting and cracking EAP-MD5 | `apt install eapmd5pass` |
| `fern-wifi-cracker` | Automated Wi-Fi cracker | `apt install fern-wifi-cracker` |
| `freeradius-wpe` | FreeRadius Wireless Pawn Edition | `apt install freeradius-wpe` |
| `hashcat` | World's fastest and most advanced password recovery utility | `apt install hashcat` |
| `hostapd-wpe` | Modified hostapd to facilitate AP impersonation attacks | `apt install hostapd-wpe` |
| `iw` | tool for configuring Linux wireless devices | `apt install iw` |
| `kismet` | wireless network and device detector (metapackage) | `apt install kismet` |
| `macchanger` | utility for manipulating the MAC address of network interfaces | `apt install macchanger` |
| `mdk3` | Wireless attack tool for IEEE 802.11 networks | `apt install mdk3` |
| `mdk4` | Wireless attack tool for IEEE 802.11 networks | `apt install mdk4` |
| `pixiewps` | Offline WPS bruteforce tool | `apt install pixiewps` |
| `reaver` | brute force attack tool against Wi-Fi Protected Setup PIN number | `apt install reaver` |
| `wifi-honey` | Wi-Fi honeypot | `apt install wifi-honey` |
| `wifite` | Python script to automate wireless auditing using aircrack-ng tools | `apt install wifite` |

## 06c · Bluetooth Attacks  (`kali-tools-bluetooth`, 10)

| Tool | What it is | Install |
|---|---|---|
| `blue-hydra` | Bluetooth device discovery service | `apt install blue-hydra` |
| `bluelog` | Bluetooth scanner and logger | `apt install bluelog` |
| `blueranger` | Simple Bash script to locate Bluetooth devices | `apt install blueranger` |
| `bluesnarfer` | Bluesnarfing utility | `apt install bluesnarfer` |
| `bluez` | Bluetooth tools and daemons | `apt install bluez` |
| `btscanner` | ncurses-based scanner for Bluetooth devices | `apt install btscanner` |
| `crackle` | Crack and decrypt BLE encryption | `apt install crackle` |
| `redfang` | Locates non-discoverable bluetooth devices | `apt install redfang` |
| `spooftooph` | Automates spoofing or cloning Bluetooth devices | `apt install spooftooph` |
| `ubertooth` | 2.4 GHz wireless development platform for Bluetooth experimentation | `apt install ubertooth` |

## 06d · RFID/NFC Tools  (`kali-tools-rfid`, 2)

| Tool | What it is | Install |
|---|---|---|
| `proxmark3` | Firmware, flasher, and client for the Proxmark3 | `apt install proxmark3` |
| `rfdump` | tool to decode RFID tag data | `apt install rfdump` |

## 06e · Software-Defined Radio  (`kali-tools-sdr`, 7)

| Tool | What it is | Install |
|---|---|---|
| `chirp` | Configuration tool for amateur radios | `apt install chirp` |
| `hackrf` | Software defined radio peripheral - utilities | `apt install hackrf` |
| `inspectrum` | tool for visualising captured radio signals | `apt install inspectrum` |
| `kalibrate-rtl` | Calculate local oscillator frequency offset using GSM base stations | `apt install kalibrate-rtl` |
| `multimon-ng` | digital radio transmission decoder | `apt install multimon-ng` |
| `uhd-host` | universal hardware driver for Ettus Research products - host apps | `apt install uhd-host` |
| `uhd-images` | Various UHD Images | `apt install uhd-images` |

## 07 · Reverse Engineering  (`kali-tools-reverse-engineering`, 12)

| Tool | What it is | Install |
|---|---|---|
| `apktool` | tool for reverse engineering Android apk files | `apt install apktool` |
| `bytecode-viewer` | Java 8+ Jar & Android APK Reverse Engineering Suite | `apt install bytecode-viewer` |
| `clang` | C, C++ and Objective-C compiler (LLVM based), clang binary | `apt install clang` |
| `dex2jar` | Tools to work with android .dex and java .class files | `apt install dex2jar` |
| `jadx` | Dex to Java decompiler | `apt install jadx` |
| `javasnoop` | Intercept Java applications locally | `apt install javasnoop` |
| `jd-gui` | GUI Java .class decompiler | `apt install jd-gui` |
| `metasploit-framework` | Framework for exploit development and vulnerability research | `apt install metasploit-framework` |
| `radare2` | free and advanced command line hexadecimal editor | `apt install radare2` |
| `rizin` | reverse engineering framework and command-line toolset | `apt install rizin` |
| `rizin-cutter` | reverse engineering platform powered by rizin | `apt install rizin-cutter` |
| `rz-ghidra` | ghidra decompiler and sleigh disassembler for rizin | `apt install rz-ghidra` |

## 08 · Exploitation Tools  (`kali-tools-exploitation`, 8)

| Tool | What it is | Install |
|---|---|---|
| `armitage` | Cyber attack management for Metasploit | `apt install armitage` |
| `beef-xss` | Browser Exploitation Framework (BeEF) | `apt install beef-xss` |
| `exploitdb` | Searchable Exploit Database archive | `apt install exploitdb` |
| `metasploit-framework` | Framework for exploit development and vulnerability research | `apt install metasploit-framework` |
| `msfpc` | MSFvenom Payload Creator (MSFPC) | `apt install msfpc` |
| `set` | Social-Engineer Toolkit | `apt install set` |
| `sqlmap` | automatic SQL injection tool | `apt install sqlmap` |
| `termineter` | Smart meter testing framework | `apt install termineter` |

## 09 · Sniffing & Spoofing  (`kali-tools-sniffing-spoofing`, 25)

| Tool | What it is | Install |
|---|---|---|
| `above` | Network security sniffer for finding vulnerabilities in the network | `apt install above` |
| `bettercap` | Complete, modular, portable and easily extensible MITM framework | `apt install bettercap` |
| `darkstat` | network traffic analyzer | `apt install darkstat` |
| `dnschef` | DNS proxy for penetration testers | `apt install dnschef` |
| `driftnet` | picks out and displays images from network traffic | `apt install driftnet` |
| `dsniff` | Various tools to sniff network traffic for cleartext insecurities | `apt install dsniff` |
| `ettercap-graphical` | Ettercap GUI-enabled executable | `apt install ettercap-graphical` |
| `ettercap-text-only` | Ettercap console-mode executable | `apt install ettercap-text-only` |
| `ferret-sidejack` | Monitors data and extracts interesting data | `apt install ferret-sidejack` |
| `fiked` | Cisco VPN attack tool | `apt install fiked` |
| `hamster-sidejack` | Sidejacking tool | `apt install hamster-sidejack` |
| `hexinject` | Versatile packet injector and sniffer | `apt install hexinject` |
| `isr-evilgrade` | Evilgrade framework | `apt install isr-evilgrade` |
| `macchanger` | utility for manipulating the MAC address of network interfaces | `apt install macchanger` |
| `mitmproxy` | SSL-capable man-in-the-middle HTTP proxy | `apt install mitmproxy` |
| `netsniff-ng` | Linux network packet sniffer toolkit | `apt install netsniff-ng` |
| `rebind` | DNS rebinding tool | `apt install rebind` |
| `responder` | LLMNR/NBT-NS/mDNS Poisoner | `apt install responder` |
| `sniffjoke` | Transparent TCP connection scrambler | `apt install sniffjoke` |
| `sslsniff` | SSL/TLS man-in-the-middle attack tool | `apt install sslsniff` |
| `sslsplit` | transparent and scalable SSL/TLS interception | `apt install sslsplit` |
| `tcpflow` | TCP flow recorder | `apt install tcpflow` |
| `tcpreplay` | Tool to replay saved tcpdump files at arbitrary speeds | `apt install tcpreplay` |
| `wifi-honey` | Wi-Fi honeypot | `apt install wifi-honey` |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` |

## 10 · Post-Exploitation  (`kali-tools-post-exploitation`, 19)

| Tool | What it is | Install |
|---|---|---|
| `dbd` | Netcat clone with encryption | `apt install dbd` |
| `dns2tcp` | TCP-over-DNS tunnel server and client | `apt install dns2tcp` |
| `exe2hexbat` | Convert EXE to bat | `apt install exe2hexbat` |
| `iodine` | tool for tunneling IPv4 data through a DNS server | `apt install iodine` |
| `laudanum` | Collection of injectable web files | `apt install laudanum` |
| `mimikatz` | Uses admin rights on Windows to display passwords in plaintext | `apt install mimikatz` |
| `miredo` | Teredo IPv6 tunneling through NATs | `apt install miredo` |
| `nishang` | Collection of PowerShell scripts and payloads | `apt install nishang` |
| `powersploit` | PowerShell Post-Exploitation Framework | `apt install powersploit` |
| `proxychains4` | redirect connections through socks/http proxies (proxychains-ng) | `apt install proxychains4` |
| `proxytunnel` | Help SSH and other protocols through HTTP(S) proxies | `apt install proxytunnel` |
| `ptunnel` | Tunnel TCP connections over ICMP packets | `apt install ptunnel` |
| `pwnat` | NAT to NAT client-server communication | `apt install pwnat` |
| `sbd` | Secure backdoor for Linux and Windows | `apt install sbd` |
| `sslh` | Applicative protocol multiplexer | `apt install sslh` |
| `stunnel4` | Universal SSL tunnnel for network daemons - compatibility package | `apt install stunnel4` |
| `udptunnel` | tunnel UDP packets over a TCP connection | `apt install udptunnel` |
| `webacoo` | Web backdoor cookie script kit | `apt install webacoo` |
| `weevely` | Stealth tiny web shell | `apt install weevely` |

## 11 · Forensics  (`kali-tools-forensics`, 94)

| Tool | What it is | Install |
|---|---|---|
| `7zip` | 7-Zip file archiver with a high compression ratio | `apt install 7zip` |
| `afflib-tools` | Advanced Forensics Format Library (utilities) | `apt install afflib-tools` |
| `apktool` | tool for reverse engineering Android apk files | `apt install apktool` |
| `autopsy` | graphical interface to SleuthKit | `apt install autopsy` |
| `binwalk` | tool library for analyzing binary blobs and executable code | `apt install binwalk` |
| `binwalk3` | tool library for analyzing binary blobs and executable code | `apt install binwalk3` |
| `bulk-extractor` | Extracts information without parsing filesystem | `apt install bulk-extractor` |
| `bytecode-viewer` | Java 8+ Jar & Android APK Reverse Engineering Suite | `apt install bytecode-viewer` |
| `cabextract` | Microsoft Cabinet file unpacker | `apt install cabextract` |
| `chkrootkit` | rootkit detector | `apt install chkrootkit` |
| `creddump7` | Python tool to extract credentials and secrets from Windows registry hives | `apt install creddump7` |
| `dc3dd` | patched version of GNU dd with forensic features | `apt install dc3dd` |
| `dcfldd` | enhanced version of dd for forensics and security | `apt install dcfldd` |
| `ddrescue` | data recovery and protection tool | `apt install ddrescue` |
| `dumpzilla` | Mozilla browser forensic tool | `apt install dumpzilla` |
| `ewf-tools` | collection of tools for reading and writing EWF files | `apt install ewf-tools` |
| `exifprobe` | read metadata from digital pictures | `apt install exifprobe` |
| `exiv2` | EXIF/IPTC/XMP metadata manipulation tool | `apt install exiv2` |
| `ext3grep` | tool to help recover deleted files on ext3 filesystems | `apt install ext3grep` |
| `ext4magic` | recover deleted files from ext3 or ext4 partitions | `apt install ext4magic` |
| `extundelete` | utility to recover deleted files from ext3/ext4 partition | `apt install extundelete` |
| `fcrackzip` | password cracker for zip archives | `apt install fcrackzip` |
| `foremost` | forensic program to recover lost files | `apt install foremost` |
| `forensic-artifacts` | knowledge base of forensic artifacts (data files) | `apt install forensic-artifacts` |
| `forensics-colorize` | show differences between files using color graphics | `apt install forensics-colorize` |
| `galleta` | Internet Explorer cookie forensic analysis tool | `apt install galleta` |
| `gdb` | GNU Debugger | `apt install gdb` |
| `gparted` | GNOME partition editor | `apt install gparted` |
| `grokevt` | scripts for reading Microsoft Windows event log files | `apt install grokevt` |
| `guymager` | Forensic imaging tool based on Qt | `apt install guymager` |
| `hashdeep` | recursively compute hashsums or piecewise hashings | `apt install hashdeep` |
| `inetsim` | Software suite for simulating common internet services | `apt install inetsim` |
| `jadx` | Dex to Java decompiler | `apt install jadx` |
| `javasnoop` | Intercept Java applications locally | `apt install javasnoop` |
| `libhivex-bin` | utilities for reading and writing Windows Registry hives | `apt install libhivex-bin` |
| `libsmali-java` | assembler/disassembler for Android's dex format | `apt install libsmali-java` |
| `lvm2` | Linux Logical Volume Manager | `apt install lvm2` |
| `lynis` | security auditing tool for Unix based systems | `apt install lynis` |
| `mac-robber` | collects data about allocated files in mounted filesystems | `apt install mac-robber` |
| `magicrescue` | recover files by looking for magic bytes | `apt install magicrescue` |
| `mdbtools` | JET / MS Access database (MDB) tools | `apt install mdbtools` |
| `memdump` | utility to dump memory contents to standard output | `apt install memdump` |
| `metacam` | extract EXIF information from digital camera files | `apt install metacam` |
| `missidentify` | find win32 applications | `apt install missidentify` |
| `myrescue` | rescue data from damaged disks | `apt install myrescue` |
| `nasm` | General-purpose x86 assembler | `apt install nasm` |
| `nasty` | tool which helps you to recover your GPG passphrase | `apt install nasty` |
| `parted` | disk partition manipulator | `apt install parted` |
| `pasco` | Internet Explorer cache forensic analysis tool | `apt install pasco` |
| `pdf-parser` | Parses PDF files to identify fundamental elements | `apt install pdf-parser` |
| `pdfid` | Scans PDF files for certain PDF keywords | `apt install pdfid` |
| `plaso` | super timeline all the things -- metapackage | `apt install plaso` |
| `polenum` | Extracts the password policy from a Windows system | `apt install polenum` |
| `pst-utils` | tools for reading Microsoft Outlook PST files | `apt install pst-utils` |
| `python3-capstone` | lightweight multi-architecture disassembly framework - Python bindings | `apt install python3-capstone` |
| `python3-dfdatetime` | Digital Forensics date and time library for Python 3 | `apt install python3-dfdatetime` |
| `python3-dfvfs` | Digital Forensics Virtual File System | `apt install python3-dfvfs` |
| `python3-dfwinreg` | Digital Forensics Windows Registry library for Python 3 | `apt install python3-dfwinreg` |
| `python3-distorm3` | powerful disassembler library for x86/AMD64 binary streams (Python3 bindings) | `apt install python3-distorm3` |
| `radare2` | free and advanced command line hexadecimal editor | `apt install radare2` |
| `readpe` | command-line tools to manipulate Windows PE files | `apt install readpe` |
| `recoverdm` | recover files on disks with damaged sectors | `apt install recoverdm` |
| `recoverjpeg` | recover JFIF (JPEG) pictures and MOV movies | `apt install recoverjpeg` |
| `reglookup` | utility to analysis for Windows NT-based registry | `apt install reglookup` |
| `rephrase` | Specialized passphrase recovery tool for GnuPG | `apt install rephrase` |
| `rifiuti` | MS Windows recycle bin analysis tool | `apt install rifiuti` |
| `rifiuti2` | replacement for rifiuti, a MS Windows recycle bin analysis tool | `apt install rifiuti2` |
| `rizin-cutter` | reverse engineering platform powered by rizin | `apt install rizin-cutter` |
| `rkhunter` | rootkit, backdoor, sniffer and exploit scanner | `apt install rkhunter` |
| `rsakeyfind` | locates BER-encoded RSA private keys in memory images | `apt install rsakeyfind` |
| `rz-ghidra` | ghidra decompiler and sleigh disassembler for rizin | `apt install rz-ghidra` |
| `safecopy` | data recovery tool for problematic or damaged media | `apt install safecopy` |
| `samdump2` | Dump Windows 2k/NT/XP password hashes | `apt install samdump2` |
| `scalpel` | fast filesystem-independent file recovery | `apt install scalpel` |
| `scrounge-ntfs` | Data recovery program for NTFS filesystems | `apt install scrounge-ntfs` |
| `sleuthkit` | tools for forensics analysis on volume and filesystem data | `apt install sleuthkit` |
| `sqlitebrowser` | GUI editor for SQLite databases | `apt install sqlitebrowser` |
| `ssdeep` | recursive piecewise hashing tool | `apt install ssdeep` |
| `tcpdump` | command-line network traffic analyzer | `apt install tcpdump` |
| `tcpflow` | TCP flow recorder | `apt install tcpflow` |
| `tcpick` | TCP stream sniffer and connection tracker | `apt install tcpick` |
| `tcpreplay` | Tool to replay saved tcpdump files at arbitrary speeds | `apt install tcpreplay` |
| `truecrack` | Bruteforce password cracker for TrueCrypt volumes | `apt install truecrack` |
| `unar` | Unarchiver for a variety of file formats | `apt install unar` |
| `undbx` | tool to extract, recover and undelete e-mail messages from .dbx files | `apt install undbx` |
| `unhide` | forensic tool to find hidden processes and ports | `apt install unhide` |
| `unrar` | Unarchiver for .rar files (non-free version) | `apt install unrar` |
| `upx-ucl` | efficient live-compressor for executables | `apt install upx-ucl` |
| `vinetto` | forensics tool to examine Thumbs.db files | `apt install vinetto` |
| `wce` | Windows Credentials Editor | `apt install wce` |
| `winregfs` | Windows registry FUSE filesystem | `apt install winregfs` |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` |
| `xmount` | tool for crossmounting between disk image formats | `apt install xmount` |
| `yara` | Pattern matching swiss knife for malware researchers | `apt install yara` |

## 12 · Reporting Tools  (`kali-tools-reporting`, 7)

| Tool | What it is | Install |
|---|---|---|
| `cutycapt` | utility to capture WebKit's rendering of a web page | `apt install cutycapt` |
| `eyewitness` | Rapid web application triage tool | `apt install eyewitness` |
| `faraday` | Collaborative Penetration Test IDE | `apt install faraday` |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` |
| `metagoofil` | Tool designed for extracting metadata of public documents | `apt install metagoofil` |
| `pipal` | Statistical analysis on password dumps | `apt install pipal` |
| `recordmydesktop` | Captures audio-video data of a Linux desktop session | `apt install recordmydesktop` |

## 13 · Social Engineering  (`kali-tools-social-engineering`, 4)

| Tool | What it is | Install |
|---|---|---|
| `beef-xss` | Browser Exploitation Framework (BeEF) | `apt install beef-xss` |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` |
| `msfpc` | MSFvenom Payload Creator (MSFPC) | `apt install msfpc` |
| `set` | Social-Engineer Toolkit | `apt install set` |

## 14 · Identify (triage/recon helpers)  (`kali-tools-identify`, 15)

| Tool | What it is | Install |
|---|---|---|
| `amass` | In-depth DNS Enumeration and Network Mapping | `apt install amass` |
| `assetfinder` | Find domains and subdomains related to a given domain | `apt install assetfinder` |
| `cisco-auditing-tool` | Scans Cisco routers for vulnerabilities | `apt install cisco-auditing-tool` |
| `defectdojo` | security orchestration and vulnerability management platform | `apt install defectdojo` |
| `exploitdb` | Searchable Exploit Database archive | `apt install exploitdb` |
| `kali-autopilot` | tool for automatic attack scripts in Kali | `apt install kali-autopilot` |
| `maltego` | Open source intelligence and forensics application | `apt install maltego` |
| `maryam` | OWASP Maryam is a modular/optional open source framework bas | `apt install maryam` |
| `nipper-ng` | Device security configuration review tool | `apt install nipper-ng` |
| `osrframework` | Open Sources Research Framework | `apt install osrframework` |
| `spiderfoot` | OSINT collection and reconnaissance tool | `apt install spiderfoot` |
| `tiger` | security auditing and intrusion detection tools for Linux | `apt install tiger` |
| `wapiti` | web application vulnerability scanner | `apt install wapiti` |
| `witnessme` | Web Inventory tool | `apt install witnessme` |
| `zaproxy` | Testing tool for finding vulnerabilities in web applications | `apt install zaproxy` |

## 15 · Fuzzing  (`kali-tools-fuzzing`, 4)

| Tool | What it is | Install |
|---|---|---|
| `afl++` | instrumentation-driven fuzzer for binary formats | `apt install afl++` |
| `sfuzz` | Black Box testing utilities | `apt install sfuzz` |
| `spike` | Network protocol fuzzer | `apt install spike` |
| `wfuzz` | Web application bruteforcer | `apt install wfuzz` |

## 16 · VoIP Tools  (`kali-tools-voip`, 17)

| Tool | What it is | Install |
|---|---|---|
| `enumiax` | IAX protocol username enumerator | `apt install enumiax` |
| `iaxflood` | VoIP flooder tool | `apt install iaxflood` |
| `inviteflood` | SIP/SDP INVITE message flooding over UDP/IP | `apt install inviteflood` |
| `libfindrtp` | Library required by multiple VoIP tools | `apt install libfindrtp` |
| `nmap` | The Network Mapper | `apt install nmap` |
| `ohrwurm` | RTP fuzzer | `apt install ohrwurm` |
| `protos-sip` | SIP test suite | `apt install protos-sip` |
| `rtpbreak` | Detects, reconstructs, and analyzes RTP sessions | `apt install rtpbreak` |
| `rtpflood` | Tool to flood any RTP device | `apt install rtpflood` |
| `rtpinsertsound` | Inserts audio into a specified stream | `apt install rtpinsertsound` |
| `rtpmixsound` | Mixes pre-recorded audio in real-time | `apt install rtpmixsound` |
| `siparmyknife` | SIP fuzzing tool | `apt install siparmyknife` |
| `sipcrack` | SIP login dumper/cracker | `apt install sipcrack` |
| `sipp` | Traffic generator for the SIP protocol | `apt install sipp` |
| `sipvicious` | tools to audit SIP based VoIP systems | `apt install sipvicious` |
| `voiphopper` | Runs a VLAN hop security test | `apt install voiphopper` |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` |

## 17 · Hardware Hacking  (`kali-tools-hardware`, 11)

| Tool | What it is | Install |
|---|---|---|
| `binwalk` | tool library for analyzing binary blobs and executable code | `apt install binwalk` |
| `binwalk3` | tool library for analyzing binary blobs and executable code | `apt install binwalk3` |
| `cutecom` | Graphical serial terminal, like minicom | `apt install cutecom` |
| `flashrom` | Identify, read, write, erase, and verify BIOS/ROM/flash chips | `apt install flashrom` |
| `minicom` | menu-driven serial communication program | `apt install minicom` |
| `openocd` | Open on-chip JTAG/SWD debug solution for embedded target devices | `apt install openocd` |
| `qemu-system-x86` | QEMU full system emulation binaries (x86) | `apt install qemu-system-x86` |
| `qemu-user` | QEMU user mode emulation (static binaries) | `apt install qemu-user` |
| `radare2` | free and advanced command line hexadecimal editor | `apt install radare2` |
| `rizin-cutter` | reverse engineering platform powered by rizin | `apt install rizin-cutter` |
| `rz-ghidra` | ghidra decompiler and sleigh disassembler for rizin | `apt install rz-ghidra` |

## 18 · Crypto & Steganography  (`kali-tools-crypto-stego`, 5)

| Tool | What it is | Install |
|---|---|---|
| `aesfix` | tool for correcting bit errors in an AES key schedule | `apt install aesfix` |
| `ccrypt` | secure encryption and decryption of files and streams | `apt install ccrypt` |
| `steghide` | steganography hiding tool | `apt install steghide` |
| `stegosuite` | steganography tool to hide information in image files | `apt install stegosuite` |
| `stegsnow` | steganography using ASCII files | `apt install stegsnow` |

## 19 · GPU Tools  (`kali-tools-gpu`, 1)

| Tool | What it is | Install |
|---|---|---|
| `truecrack` | Bruteforce password cracker for TrueCrypt volumes | `apt install truecrack` |

## 20 · Data Recovery  (`kali-tools-recover`, 8)

| Tool | What it is | Install |
|---|---|---|
| `ddrescue` | data recovery and protection tool | `apt install ddrescue` |
| `ext3grep` | tool to help recover deleted files on ext3 filesystems | `apt install ext3grep` |
| `extundelete` | utility to recover deleted files from ext3/ext4 partition | `apt install extundelete` |
| `myrescue` | rescue data from damaged disks | `apt install myrescue` |
| `recoverdm` | recover files on disks with damaged sectors | `apt install recoverdm` |
| `recoverjpeg` | recover JFIF (JPEG) pictures and MOV movies | `apt install recoverjpeg` |
| `scrounge-ntfs` | Data recovery program for NTFS filesystems | `apt install scrounge-ntfs` |
| `undbx` | tool to extract, recover and undelete e-mail messages from .dbx files | `apt install undbx` |

## 21 · Detection  (`kali-tools-detect`, 2)

| Tool | What it is | Install |
|---|---|---|
| `grokevt` | scripts for reading Microsoft Windows event log files | `apt install grokevt` |
| `sentrypeer` | SIP peer to peer honeypot for VoIP | `apt install sentrypeer` |

## 22 · Protection/Hardening  (`kali-tools-protect`, 5)

| Tool | What it is | Install |
|---|---|---|
| `clamav` | anti-virus utility for Unix - command-line interface | `apt install clamav` |
| `cryptsetup` | disk encryption support - startup scripts | `apt install cryptsetup` |
| `cryptsetup-initramfs` | disk encryption support - initramfs integration | `apt install cryptsetup-initramfs` |
| `cryptsetup-nuke-password` | Erase the LUKS keys with a special password on the unlock prompt | `apt install cryptsetup-nuke-password` |
| `fwbuilder` | Firewall administration tool GUI | `apt install fwbuilder` |

## 23 · Incident Response  (`kali-tools-respond`, 6)

| Tool | What it is | Install |
|---|---|---|
| `ewf-tools` | collection of tools for reading and writing EWF files | `apt install ewf-tools` |
| `guymager` | Forensic imaging tool based on Qt | `apt install guymager` |
| `hashrat` | hashing tool supporting several hashes and recursivity | `apt install hashrat` |
| `impacket-scripts` | Links to useful impacket scripts examples | `apt install impacket-scripts` |
| `kali-tools-forensics` | Kali's forensic tools menu | `apt install kali-tools-forensics` |
| `netsniff-ng` | Linux network packet sniffer toolkit | `apt install netsniff-ng` |

## 24 · Windows Resources  (`kali-tools-windows-resources`, 13)

| Tool | What it is | Install |
|---|---|---|
| `dbd` | Netcat clone with encryption | `apt install dbd` |
| `dnschef` | DNS proxy for penetration testers | `apt install dnschef` |
| `heartleech` | Scanner detecting systems vulnerable to the heartbleed OpenSSL bug | `apt install heartleech` |
| `hyperion` | Runtime encrypter for 32-bit portable executables | `apt install hyperion` |
| `mimikatz` | Uses admin rights on Windows to display passwords in plaintext | `apt install mimikatz` |
| `ncat-w32` | Netcat for the 21st century | `apt install ncat-w32` |
| `powercat` | netcat features all in powershell v2 | `apt install powercat` |
| `sbd` | Secure backdoor for Linux and Windows | `apt install sbd` |
| `secure-socket-funneling-windows-binaries` | SSF - windows binaries | `apt install secure-socket-funneling-windows-binaries` |
| `tftpd32` | Open source ipv6-ready TFTP server for Windows | `apt install tftpd32` |
| `wce` | Windows Credentials Editor | `apt install wce` |
| `windows-binaries` | Various pentesting Windows binaries | `apt install windows-binaries` |
| `windows-privesc-check` | Windows privilege escalation checking tool | `apt install windows-privesc-check` |

## T · Top 10 (most-used)  (`kali-tools-top10`, 9)

| Tool | What it is | Install |
|---|---|---|
| `aircrack-ng` | wireless WEP/WPA cracking utilities | `apt install aircrack-ng` |
| `hydra` | very fast network logon cracker | `apt install hydra` |
| `john` | active password cracking tool | `apt install john` |
| `metasploit-framework` | Framework for exploit development and vulnerability research | `apt install metasploit-framework` |
| `netexec` | Network Execution Tool | `apt install netexec` |
| `nmap` | The Network Mapper | `apt install nmap` |
| `responder` | LLMNR/NBT-NS/mDNS Poisoner | `apt install responder` |
| `sqlmap` | automatic SQL injection tool | `apt install sqlmap` |
| `wireshark` | network traffic analyzer - graphical interface | `apt install wireshark` |

---

Install everything: `lab/kali/scripts/install-tools.sh --all` (kali-linux-default) or per category `install-tools.sh cat:<slug>`. Drive any tool: `tool.sh <name>`; chain the common workflow: `toolkit.sh chain recon,web,vuln`.

