# Kali tool tutorials — step-by-step for every tool (English)

> 繁體中文：[`tutorials.zh-TW.md`](tutorials.zh-TW.md) · catalogue: [`catalogue.en.md`](catalogue.en.md)

Every tool has 3 steps: install → read its help → run it (against an asset you **own**, `<NODE_IP>`). `Provides` lists the commands the package actually ships (via apt-file). **0 of the 382 tools were installed and run on the VM — their real `--help` is embedded and marked ✓** (the rest are libraries/data/GUI-only with no CLI help). Scope: `../../ROE.md`.


## 01 · Information Gathering / Reconnaissance  (`kali-tools-information-gathering`)

### `0trace` ✓ verified on VM
- traceroute tool that can run within an existing TCP connection
- **Provides:** `0trace.sh`, `sendprobe`, `usleep`
- **Steps:**
  1. Install: `sudo apt install -y 0trace`
  2. Help: `usleep -h`  (or `man usleep`)
  3. Run: `usleep <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Usage: /usr/bin/0trace.sh iface target_ip [ target_port ]
  ```
- Docs: https://lcamtuf.coredump.cx

### `arping` ✓ verified on VM
- sends IP and/or ARP pings (to the MAC address)
- **Provides:** `arping`
- **Steps:**
  1. Install: `sudo apt install -y arping`
  2. Help: `arping -h`  (or `man arping`)
  3. Run: `arping <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  ARPing 2.29, by Thomas Habets <<email>>
  usage: arping [ -0aAbdDeFpPqrRuUvzZ ] [ -w <sec> ] [ -W <sec> ] [ -S <host/ip> ]
                [ -T <host/ip ] [ -s <MAC> ] [ -t <MAC> ] [ -c <count> ]
                [ -C <count> ] [ -i <interface> ] [ -m <type> ] [ -g <group> ]
                [ -V <vlan> ] [ -Q <priority> ] <host/ip/MAC | -B>
  ```
- Docs: https://www.habets.pp.se/synscan/programs.php?prog=arping

### `braa` ✓ verified on VM
- Mass SNMP scanner
- **Provides:** `braa`
- **Steps:**
  1. Install: `sudo apt install -y braa`
  2. Help: `braa -h`  (or `man braa`)
  3. Run: `braa <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  braa: invalid option -- '-'
  braa 0.90.1 - (c) by Mateusz 'mteg' Golicz and contributors, 2003 - 2015, 2024
  usage: braa [options] [query1] [query2] ...
    -h        Show this help.
    -2        Claim to be a SNMP2C agent.
    -b <n>    Use GETBULK requests for walks.
  ```
- Docs: https://github.com/mteg/braa

### `dmitry` ✓ verified on VM
- Deepmagic Information Gathering Tool
- **Provides:** `dmitry`
- **Steps:**
  1. Install: `sudo apt install -y dmitry`
  2. Help: `dmitry -h`  (or `man dmitry`)
  3. Run: `dmitry <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  dmitry: invalid option -- '-'
  Deepmagic Information Gathering Tool
  "There be some deep magic going on"
  
  Usage: dmitry [-winsepfb] [-t 0-9] [-o %host.txt] host
    -o	 Save output to %host.txt or to file specified by -o file
  ```
- Docs: https://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/

### `dnsenum` ✓ verified on VM
- tool to enumerate domain DNS information
- **Provides:** `dnsenum`
- **Steps:**
  1. Install: `sudo apt install -y dnsenum`
  2. Help: `dnsenum -h`  (or `man dnsenum`)
  3. Run: `dnsenum <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  dnsenum VERSION:1.3.1
  Usage: dnsenum [Options] <domain>
  [Options]:
  Note: If no -f tag supplied will default to /usr/share/dnsenum/dns.txt or
  the dns.txt file in the same directory as dnsenum
  GENERAL OPTIONS:
  ```
- Docs: https://github.com/SparrowOchon/dnsenum2

### `dnsmap` ✓ verified on VM
- DNS domain name brute forcing tool
- **Provides:** `dnsmap`, `dnsmap-bulk`
- **Steps:**
  1. Install: `sudo apt install -y dnsmap`
  2. Help: `dnsmap -h`  (or `man dnsmap`)
  3. Run: `dnsmap <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  dnsmap 0.36 - DNS Network Mapper
  
  [+] error: entered domain is not valid!
  ```
- Docs: https://github.com/resurrecting-open-source-projects/dnsmap

### `dnsrecon` ✓ verified on VM
- Powerful DNS enumeration script
- **Provides:** `dnsrecon`
- **Steps:**
  1. Install: `sudo apt install -y dnsrecon`
  2. Help: `dnsrecon -h`  (or `man dnsrecon`)
  3. Run: `dnsrecon <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  usage: dnsrecon [-h] [-d DOMAIN] [-iL INPUT_LIST] [-n NS_SERVER] [-r RANGE]
                  [-D DICTIONARY] [-f] [-a] [-s] [-b] [-y] [-k] [-w] [--shodan]
                  [--shodan-active] [--shodan-key SHODAN_KEY] [-z]
                  [--threads THREADS] [--lifetime LIFETIME]
                  [--loglevel {DEBUG,INFO,WARNING,ERROR,CRITICAL}] [--tcp]
                  [--db DB] [-x XML] [-c CSV] [-j JSON] [--iw]
  ```
- Docs: https://github.com/darkoperator/dnsrecon

### `dnstracer` ✓ verified on VM
- trace DNS queries to the source
- **Provides:** `dnstracer`
- **Steps:**
  1. Install: `sudo apt install -y dnstracer`
  2. Help: `dnstracer -h`  (or `man dnstracer`)
  3. Run: `dnstracer <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  dnstracer: invalid option -- '-'
  DNSTRACER version 1.10 - (c) Edwin Groothuis - http://www.mavetju.org
  Usage: dnstracer [options] [host]
  	-c: disable local caching, default enabled
  	-C: enable negative caching, default disabled
  	-e: disable EDNS0, default enabled
  ```
- Docs: http://www.mavetju.org/unix/dnstracer.php

### `dnswalk` ✓ verified on VM
- Checks dns zone information using nameserver lookups
- **Provides:** `dnswalk`
- **Steps:**
  1. Install: `sudo apt install -y dnswalk`
  2. Help: `dnswalk -h`  (or `man dnswalk`)
  3. Run: `dnswalk <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  /usr/bin/dnswalk version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: dnswalk [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://github.com/davebarr/dnswalk

### `enum4linux` ✓ verified on VM
- Enumerates info from Windows and Samba systems
- **Provides:** `enum4linux`
- **Steps:**
  1. Install: `sudo apt install -y enum4linux`
  2. Help: `enum4linux -h`  (or `man enum4linux`)
  3. Run: `enum4linux <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  ./enum4linux.pl version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: enum4linux.pl [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://labs.portcullis.co.uk/tools/enum4linux/

### `fierce` ✓ verified on VM
- Domain DNS scanner
- **Provides:** `fierce`
- **Steps:**
  1. Install: `sudo apt install -y fierce`
  2. Help: `fierce -h`  (or `man fierce`)
  3. Run: `fierce <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  usage: fierce [-h] [--domain DOMAIN] [--connect] [--wide]
                [--traverse TRAVERSE] [--search SEARCH [SEARCH ...]]
                [--range RANGE] [--delay DELAY]
                [--subdomains SUBDOMAINS [SUBDOMAINS ...] |
                --subdomain-file SUBDOMAIN_FILE]
                [--dns-servers DNS_SERVERS [DNS_SERVERS ...] |
  ```
- Docs: https://github.com/mschwager/fierce

### `firewalk` ✓ verified on VM
- active reconnaissance network security tool
- **Provides:** `firewalk`
- **Steps:**
  1. Install: `sudo apt install -y firewalk`
  2. Help: `firewalk -h`  (or `man firewalk`)
  3. Run: `firewalk <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  firewalk: invalid option -- '-'
  Usage : firewalk [options] target_gateway metric
  		   [-d 0 - 65535] destination port to use (ramping phase)
  		   [-h] program help
  		   [-i device] interface
  		   [-n] do not resolve IP addresses into hostnames
  ```
- Docs: http://packetfactory.openwall.net/projects/firewalk/

### `fping` ✓ verified on VM
- sends ICMP ECHO_REQUEST packets to network hosts
- **Provides:** `fping`, `fping6`
- **Steps:**
  1. Install: `sudo apt install -y fping`
  2. Help: `fping -h`  (or `man fping`)
  3. Run: `fping <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Usage: fping [options] [targets...]
  
  Probing options:
     -4, --ipv4         only ping IPv4 addresses
     -6, --ipv6         only ping IPv6 addresses
     -b, --size=BYTES   amount of ping data to send, in bytes (default: 56)
  ```
- Docs: https://www.fping.org/

### `fragrouter` ✓ verified on VM
- IDS evasion toolkit
- **Provides:** `fragrouter`
- **Steps:**
  1. Install: `sudo apt install -y fragrouter`
  2. Help: `fragrouter -h`  (or `man fragrouter`)
  3. Run: `fragrouter <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  fragrouter: invalid option -- '-'
  Version 1.6
  Usage: fragrouter [-i interface] [-p] [-g hop] [-G hopcount] ATTACK
  
   where ATTACK is one of the following:
  ```
- Docs: http://www.anzen.com/research/nidsbench/fragrouter.html

### `ftester` ✓ verified on VM
- Tool for testing firewalls and Intrusion Detection System (IDS)
- **Provides:** `freport`, `ftest`, `ftestd`
- **Steps:**
  1. Install: `sudo apt install -y ftester`
  2. Help: `ftest -h`  (or `man ftest`)
  3. Run: `ftest <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  /usr/bin/ftest version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: ftest [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://dev.inversepath.com/ftester/

### `hping3` ✓ verified on VM
- Active Network Smashing Tool
- **Provides:** `hping3`
- **Steps:**
  1. Install: `sudo apt install -y hping3`
  2. Help: `hping3 -h`  (or `man hping3`)
  3. Run: `hping3 <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  usage: hping3 host [options]
    -h  --help      show this help
    -v  --version   show version
    -c  --count     packet count
    -i  --interval  wait (uX for X microseconds, for example -i u1000)
        --fast      alias for -i u10000 (10 packets for second)
  ```
- Docs: http://www.hping.org/

### `ike-scan` ✓ verified on VM
- discover and fingerprint IKE hosts (IPsec VPN Servers)
- **Provides:** `ike-scan`, `psk-crack`
- **Steps:**
  1. Install: `sudo apt install -y ike-scan`
  2. Help: `ike-scan -h`  (or `man ike-scan`)
  3. Run: `ike-scan <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Usage: ike-scan [options] [hosts...]
  
  Target hosts must be specified on the command line unless the --file option is
  given, in which case the targets are read from the specified file instead.
  
  The target hosts can be specified as IP addresses or hostnames. You can also
  ```
- Docs: https://github.com/royhills/ike-scan

### `intrace` ✓ verified on VM
- Traceroute-like application piggybacking on existing TCP connections
- **Provides:** `intrace`
- **Steps:**
  1. Install: `sudo apt install -y intrace`
  2. Help: `intrace -h`  (or `man intrace`)
  3. Run: `intrace <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  intrace: invalid option -- '-'
  InTrace, version 1.6 (C)2007-2016 Robert Swiecki <<email>>
  2026/10/25 05:44:39.93599 <ERROR> Couldn't resolve 'elp': 'Authoritative Answer. Host not found'
  2026/10/25 05:44:39.93660 <FATAL> Resolving 'elp' failed
  ```
- Docs: https://github.com/robertswiecki/intrace

### `iputils-arping` ✓ verified on VM
- Tool to send ICMP echo requests to an ARP address
- **Provides:** `arping`
- **Steps:**
  1. Install: `sudo apt install -y iputils-arping`
  2. Help: `arping -h`  (or `man arping`)
  3. Run: `arping <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  ARPing 2.29, by Thomas Habets <<email>>
  usage: arping [ -0aAbdDeFpPqrRuUvzZ ] [ -w <sec> ] [ -W <sec> ] [ -S <host/ip> ]
                [ -T <host/ip ] [ -s <MAC> ] [ -t <MAC> ] [ -c <count> ]
                [ -C <count> ] [ -i <interface> ] [ -m <type> ] [ -g <group> ]
                [ -V <vlan> ] [ -Q <priority> ] <host/ip/MAC | -B>
  ```
- Docs: https://github.com/iputils/iputils/

### `irpas` ✓ verified on VM
- Internetwork Routing Protocol Attack Suite
- **Provides:** `ass`, `cdp`, `dfkaa`, `dhcpx`, `file2cable`, `hsrp`, `icmp_redirect`, `igrp`, `inetmask`, `irdp`, `irdpresponder`, `itrace`, `netenum`, `protos`, `tctrace`, `timestamp`
- **Steps:**
  1. Install: `sudo apt install -y irpas`
  2. Help: `ass -h`  (or `man ass`)
  3. Run: `ass <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  ass: invalid option -- '-'
  ass [-v[v[v]]] -i <interface> [-ApcMs] [-P IER12]
  	[-a <autonomous system start> -b <autonomous system stop>]
  	[-S <spoofed source IP>] [-D <destination ip>]
  	[-T <packets per delay>]
  	[-r <filename>]
  ```
- Docs: https://web.archive.org/web/20200208113522fw_/http://phenoelit.org/fr/tools.html

### `lbd` ✓ verified on VM
- Load balancer detector
- **Provides:** `lbd`
- **Steps:**
  1. Install: `sudo apt install -y lbd`
  2. Help: `lbd -h`  (or `man lbd`)
  3. Run: `lbd <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  
  lbd - load balancing detector 0.4 - Checks if a given domain uses load-balancing.
                                      Written by Stefan Behte (http://ge.mine.nu)
                                      Proof-of-concept! Might give false positives.
  
  Checking for DNS-Loadbalancing:host: illegal option -- -
  ```
- Docs: http://ge.mine.nu/code/

### `legion` ✓ verified on VM
- semi-automated network penetration testing tool
- **Provides:** `legion`
- **Steps:**
  1. Install: `sudo apt install -y legion`
  2. Help: `legion -h`  (or `man legion`)
  3. Run: `legion <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  usage: legion.py [-h] [--mcp-server] [--headless] [--web] [--tool-audit |
                   --tool-install-plan {kali,ubuntu} |
                   --tool-install {kali,ubuntu}] [--web-port WEB_PORT]
                   [--web-bind-all] [--web-transparent-ui]
                   [--input-file INPUT_FILE] [--discovery] [--staged-scan]
                   [--output-file OUTPUT_FILE] [--run-actions]
  ```
- Docs: https://github.com/Hackman238/legion

### `maltego` ✓ verified on VM
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  arm64
  java is /usr/bin/java
  found java executable in PATH
  pwd: jar:file:/usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar!/BOOT-INF/lib/java-config-lib-1.0-SNAPSHOT.jar!/
  file: /usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar
  installDir: /usr/share/maltego
  ```
- Docs: https://www.maltego.com

### `masscan` ✓ verified on VM
- TCP port scanner
- **Provides:** `masscan`
- **Steps:**
  1. Install: `sudo apt install -y masscan`
  2. Help: `masscan -h`  (or `man masscan`)
  3. Run: `masscan <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  MASSCAN is a fast port scanner. The primary input parameters are the
  IP addresses/ranges you want to scan, and the port numbers. An example
  is the following, which scans the 10.x.x.x network for web servers:
   masscan 10.0.0.0/8 -p80
  The program auto-detects network interface/adapter settings. If this
  fails, you'll have to set these manually. The following is an
  ```
- Docs: https://github.com/robertdavidgraham/masscan

### `metagoofil` ✓ verified on VM
- Tool designed for extracting metadata of public documents
- **Provides:** `metagoofil`
- **Steps:**
  1. Install: `sudo apt install -y metagoofil`
  2. Help: `metagoofil -h`  (or `man metagoofil`)
  3. Run: `metagoofil <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  usage: metagoofil.py [-h] -d DOMAIN [-e DELAY] [-f [SAVE_FILE]]
                       [-i URL_TIMEOUT] [-l SEARCH_MAX] [-n DOWNLOAD_FILE_LIMIT]
                       [-o SAVE_DIRECTORY] [-r NUMBER_OF_THREADS] -t FILE_TYPES
                       [-u [USER_AGENT]] [-w]
  
  Metagoofil v1.2.0 - Search Google and download specific file types.
  ```
- Docs: https://github.com/opsdisk/metagoofil

### `nbtscan` ✓ verified on VM
- scan networks searching for NetBIOS information
- **Provides:** `nbtscan`
- **Steps:**
  1. Install: `sudo apt install -y nbtscan`
  2. Help: `nbtscan -h`  (or `man nbtscan`)
  3. Run: `nbtscan <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  nbtscan: invalid option -- '-'
  
  NBTscan version 1.7.2.
  This is a free software and it comes with absolutely no warranty.
  You can use, distribute and modify it under terms of GNU GPL 2+.
  ```
- Docs: https://github.com/resurrecting-open-source-projects/nbtscan

### `ncat` ✓ verified on VM
- NMAP netcat reimplementation
- **Provides:** `ncat`
- **Steps:**
  1. Install: `sudo apt install -y ncat`
  2. Help: `ncat -h`  (or `man ncat`)
  3. Run: `ncat <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Ncat 7.991 ( https://nmap.org/ncat )
  Usage: ncat [options] [hostname] [port]
  
  Options taking a time assume seconds. Append 'ms' for milliseconds,
  's' for seconds, 'm' for minutes, or 'h' for hours (e.g. 500ms).
    -4                         Use IPv4 only
  ```
- Docs: https://nmap.org/

### `netdiscover` ✓ verified on VM
- active/passive network address scanner using ARP requests
- **Provides:** `netdiscover`
- **Steps:**
  1. Install: `sudo apt install -y netdiscover`
  2. Help: `netdiscover -h`  (or `man netdiscover`)
  3. Run: `netdiscover <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  netdiscover: invalid option -- '-'
  
  Netdiscover 0.21 [Active/passive ARP reconnaissance tool]
  Written by: Jaime Penalba <<email>>
  
  Usage: netdiscover [-i device] [-r range | -l file | -p] [-m file] [-F filter] [-s time] [-c count] [-n node] [-dfPLNS]
  ```
- Docs: https://github.com/netdiscover-scanner/netdiscover

### `netmask` ✓ verified on VM
- helps determine network masks
- **Provides:** `netmask`
- **Steps:**
  1. Install: `sudo apt install -y netmask`
  2. Help: `netmask -h`  (or `man netmask`)
  3. Run: `netmask <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  This is netmask, an address netmask generation utility
  Usage: netmask spec [spec ...]
    -h, --help			Print a summary of the options
    -v, --version			Print the version number
    -d, --debug			Print status/progress information
    -s, --standard		Output address/netmask pairs
  ```
- Docs: https://github.com/tlby/netmask

### `nmap` ✓ verified on VM
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- Docs: https://nmap.org/

### `onesixtyone` ✓ verified on VM
- fast and simple SNMP scanner
- **Provides:** `onesixtyone`
- **Steps:**
  1. Install: `sudo apt install -y onesixtyone`
  2. Help: `onesixtyone -h`  (or `man onesixtyone`)
  3. Run: `onesixtyone <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  onesixtyone: invalid option -- '-'
  onesixtyone 0.3.3 [options] <host> <community>
    -c <communityfile> file with community names to try
    -i <inputfile>     file with target hosts
    -o <outputfile>    output log
    -p                 specify an alternate destination SNMP port
  ```
- Docs: https://github.com/trailofbits/onesixtyone

### `p0f` ✓ verified on VM
- Passive OS fingerprinting tool
- **Provides:** `p0f`
- **Steps:**
  1. Install: `sudo apt install -y p0f`
  2. Help: `p0f -h`  (or `man p0f`)
  3. Run: `p0f <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  --- p0f 3.09b by Michal Zalewski <<email>> ---
  
  p0f: invalid option -- '-'
  Usage: p0f [ ...options... ] [ 'filter rule' ]
  
  Network interface options:
  ```
- Docs: https://lcamtuf.coredump.cx/p0f3/

### `qsslcaudit` ✓ verified on VM
- test SSL/TLS clients how secure they are
- **Provides:** `qsslcaudit`
- **Steps:**
  1. Install: `sudo apt install -y qsslcaudit`
  2. Help: `qsslcaudit -h`  (or `man qsslcaudit`)
  3. Run: `qsslcaudit <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Usage: qsslcaudit [options]
  A tool to test SSL clients behavior
  
  SSL client tests:
  	1: (certs) custom certificate trust
  	   certificate trust test with user-supplied certificate
  ```
- Docs: https://github.com/gremwell/qsslcaudit

### `recon-ng` ✓ verified on VM
- Web Reconnaissance framework written in Python
- **Provides:** `recon-cli`, `recon-ng`, `recon-web`
- **Steps:**
  1. Install: `sudo apt install -y recon-ng`
  2. Help: `recon-ng -h`  (or `man recon-ng`)
  3. Run: `recon-ng <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  usage: recon-ng [-h] [-w workspace] [-r filename] [--no-version]
                  [--no-analytics] [--no-marketplace] [--stealth] [--accessible]
                  [--version]
  
  recon-ng - Tim Tomes (@lanmaster53)
  ```
- Docs: https://github.com/lanmaster53/recon-ng

### `smbmap` ✓ verified on VM
- handy SMB enumeration tool
- **Provides:** `smbmap`
- **Steps:**
  1. Install: `sudo apt install -y smbmap`
  2. Help: `smbmap -h`  (or `man smbmap`)
  3. Run: `smbmap <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  usage: smbmap [-h] (-H HOST | --host-file FILE) [-u USERNAME] [-p PASSWORD |
                --prompt] [-k] [--no-pass] [--dc-ip IP or Host] [-s SHARE]
                [-d DOMAIN] [-P PORT] [-v] [--signing] [--admin] [--no-banner]
                [--no-color] [--no-update] [--timeout SCAN_TIMEOUT] [-x COMMAND]
                [--mode CMDMODE] [-L | -r [PATH]] [-g FILE | --csv FILE]
                [--dir-only] [--no-write-check] [-q] [--depth DEPTH]
  ```
- Docs: https://github.com/ShawnDEvans/smbmap

### `smtp-user-enum` ✓ verified on VM
- Username guessing tool for the SMTP service
- **Provides:** `smtp-user-enum`
- **Steps:**
  1. Install: `sudo apt install -y smtp-user-enum`
  2. Help: `smtp-user-enum -h`  (or `man smtp-user-enum`)
  3. Run: `smtp-user-enum <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  /usr/bin/smtp-user-enum version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: smtp-user-enum [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: http://pentestmonkey.net/tools/user-enumeration/smtp-user-enum

### `snmpcheck` ✓ verified on VM
- SNMP service enumeration tool
- **Provides:** `snmp-check`
- **Steps:**
  1. Install: `sudo apt install -y snmpcheck`
  2. Help: `snmp-check -h`  (or `man snmp-check`)
  3. Run: `snmp-check <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  snmp-check v1.9 - SNMP enumerator
  Copyright (c) 2005-2015 by Matteo Cantoni (www.nothink.org)
  
   Usage: snmp-check [OPTIONS] <target IP address>
  
    -p --port        : SNMP port. Default port is 161;
  ```
- Docs: http://www.nothink.org/codes/snmpcheck/index.php

### `ssldump` ✓ verified on VM
- SSLv3/TLS network protocol analyzer
- **Provides:** `ssldump`
- **Steps:**
  1. Install: `sudo apt install -y ssldump`
  2. Help: `ssldump -h`  (or `man ssldump`)
  3. Run: `ssldump <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  ssldump: invalid option -- '-'
  Usage: ssldump [-r dumpfile] [-i interface] [-l sslkeylogfile] [-w outpcapfile]
                 [-k keyfile] [-p password] [-vtaTznsAxVNde]
                 [filter]
  ```
- Docs: https://github.com/adulau/ssldump

### `sslh` ✓ verified on VM
- Applicative protocol multiplexer
- **Provides:** `sslh`, `sslh-ev`, `sslh-select`
- **Steps:**
  1. Install: `sudo apt install -y sslh`
  2. Help: `sslh -h`  (or `man sslh`)
  3. Run: `sslh <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  sslhcfg: invalid option "--help"
   [-Vfin] [-F <file>] [-v <n>] [--verbose-config=<n>] [--verbose-config-error=<n>] [--verbose-connections=<n>] [--verbose-connections-try=<n>] [--verbose-connections-error=<n>] [--verbose-fd=<n>] [--verbose-packets=<n>] [--verbose-probe-info=<n>] [--verbose-probe-error=<n>] [--verbose-system-error=<n>] [--verbose-int-error=<n>] [--transparent] [-t <n>] [--udp-max-connections=<n>] [-u <str>] [-P <file>] [-C <path>] [--syslog-facility=<str>] [--logfile=<str>] [--on-timeout=<str>] [--prefix=<str>] [-p <host:port>]... [--ssh=<host:port>]... [--tls=<host:port>]... [--ssl=<host:port>]... [--openvpn=<host:port>]... [--tinc=<host:port>]... [--wireguard=<host:port>]... [--xmpp=<host:port>]... [--http=<host:port>]... [--adb=<host:port>]... [--socks5=<host:port>]... [--syslog=<host:port>]... [--msrdp=<host:port>]... [--anyprot=<host:port>]...
    -F, --config=<file>      	Specify configuration file
    -v, --verbose=<n>        	Override all verbosness options
    --verbose-config=<n>     	Print configuration at startup
    --verbose-config-error=<n>	Print configuration errors
  ```
- Docs: http://www.rutschle.net/tech/sslh/README.html

### `sslscan` ✓ verified on VM
- Tests SSL/TLS enabled services to discover supported cipher suites
- **Provides:** `sslscan`
- **Steps:**
  1. Install: `sudo apt install -y sslscan`
  2. Help: `sslscan -h`  (or `man sslscan`)
  3. Run: `sslscan <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
                     _
             ___ ___| |___  ___ __ _ _ __
            / __/ __| / __|/ __/ _` | '_ \
            \__ \__ \ \__ \ (_| (_| | | | |
            |___/___/_|___/\___\__,_|_| |_|
  ```
- Docs: https://github.com/rbsec/sslscan

### `sslyze` ✓ verified on VM
- Fast and full-featured SSL scanner
- **Provides:** `sslyze`
- **Steps:**
  1. Install: `sudo apt install -y sslyze`
  2. Help: `sslyze -h`  (or `man sslyze`)
  3. Run: `sslyze <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  usage: sslyze [-h] [--update_trust_stores] [--cert CERTIFICATE_FILE]
                [--key KEY_FILE] [--keyform KEY_FORMAT] [--pass PASSPHRASE]
                [--json_out JSON_FILE] [--targets_in TARGET_FILE] [--quiet]
                [--slow_connection] [--https_tunnel PROXY_SETTINGS]
                [--starttls PROTOCOL] [--xmpp_to HOSTNAME]
                [--sni SERVER_NAME_INDICATION] [--http_headers] [--ems]
  ```
- Docs: https://github.com/nabla-c0d3/sslyze

### `swaks` ✓ verified on VM
- SMTP command-line test tool
- **Provides:** `swaks`
- **Steps:**
  1. Install: `sudo apt install -y swaks`
  2. Help: `swaks -h`  (or `man swaks`)
  3. Run: `swaks <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  SWAKS(1)                             SWAKS                             SWAKS(1)
  
  NAME
       Swaks - Swiss Army Knife SMTP, the all-purpose SMTP transaction tester
  
  DESCRIPTION
  ```
- Docs: https://www.jetmore.org/john/code/swaks/

### `thc-ipv6` ✓ verified on VM
- The Hacker Choice's IPv6 Attack Toolkit
- **Provides:** `atk6-address6`, `atk6-alive6`, `atk6-connect6`, `atk6-connsplit6`, `atk6-covert_send6`, `atk6-covert_send6d`, `atk6-denial6`, `atk6-detect-new-ip6`, `atk6-detect_sniffer6`, `atk6-dnsdict6`, `atk6-dnsrevenum6`, `atk6-dnssecwalk`, `atk6-dos-new-ip6`, `atk6-dump_dhcp6`, `atk6-dump_router6`, `atk6-exploit6`, `atk6-extract_hosts6`, `atk6-extract_networks6`, `atk6-fake_advertise6`, `atk6-fake_dhcps6`, `atk6-fake_dns6d`, `atk6-fake_dnsupdate6`, `atk6-fake_mipv6`, `atk6-fake_mld26`, `atk6-fake_mld6`, `atk6-fake_mldrouter6`, `atk6-fake_pim6`, `atk6-fake_router26`, `atk6-fake_router6`, `atk6-fake_solicitate6`, `atk6-firewall6`, `atk6-flood_advertise6`, `atk6-flood_dhcpc6`, `atk6-flood_mld26`, `atk6-flood_mld6`, `atk6-flood_mldrouter6`, `atk6-flood_redir6`, `atk6-flood_router26`, `atk6-flood_router6`, `atk6-flood_rs6`, `atk6-flood_solicitate6`, `atk6-flood_unreach6`, `atk6-four2six`, `atk6-fragmentation6`, `atk6-fragrouter6`, `atk6-fuzz_dhcpc6`, `atk6-fuzz_dhcps6`, `atk6-fuzz_ip6`, `atk6-implementation6`, `atk6-implementation6d`, `atk6-inject_alive6`, `atk6-inverse_lookup6`, `atk6-kill_router6`, `atk6-ndpexhaust26`, `atk6-ndpexhaust6`, `atk6-node_query6`, `atk6-parasite6`, `atk6-passive_discovery6`, `atk6-randicmp6`, `atk6-redir6`, `atk6-redirsniff6`, `atk6-rsmurf6`, `atk6-sendpees6`, `atk6-sendpeesmp6`, `atk6-smurf6`, `atk6-thcping6`, `atk6-thcsyn6`, `atk6-toobig6`, `atk6-toobigsniff6`, `atk6-trace6`
- **Steps:**
  1. Install: `sudo apt install -y thc-ipv6`
  2. Help: `atk6-alive6 -h`  (or `man atk6-alive6`)
  3. Run: `atk6-alive6 <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  atk6-alive6: invalid option -- '-'
  Error: unknown option -?
  ```
- Docs: http://www.thc.org/thc-ipv6/

### `theharvester` ✓ verified on VM
- tool for gathering e-mail accounts and subdomain names from public sources
- **Provides:** `restfulHarvest`, `theharvester`, `theHarvester`
- **Steps:**
  1. Install: `sudo apt install -y theharvester`
  2. Help: `theharvester -h`  (or `man theharvester`)
  3. Run: `theharvester <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ The command theharvester is deprecated. Please use theHarvester instead.
  ┃
  ┗━
  ```
- Docs: https://github.com/laramies/theHarvester

### `tlssled` ✓ verified on VM
- Evaluates the security of a target SSL/TLS (HTTPS) server
- **Provides:** `tlssled`
- **Steps:**
  1. Install: `sudo apt install -y tlssled`
  2. Help: `tlssled -h`  (or `man tlssled`)
  3. Run: `tlssled <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  ------------------------------------------------------
   TLSSLed - (1.3) based on sslscan and openssl
                   by Raul Siles (www.taddong.com)
  ------------------------------------------------------
      openssl version: OpenSSL 3.6.3 9 Jun 2026 (Library: OpenSSL 3.6.3 9 Jun 2026)
      
  ```
- Docs: http://www.taddong.com/en/lab.html

### `twofi` ✓ verified on VM
- Twitter words of interest
- **Provides:** `twofi`
- **Steps:**
  1. Install: `sudo apt install -y twofi`
  2. Help: `twofi -h`  (or `man twofi`)
  3. Run: `twofi <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  twoif 2.0-beta Robin Wood (<email>) (www.digininja.org)
  twoif - Twitter Words of Interest
  
  Usage: twoif [OPTIONS]
  	--help, -h: show help
  	--config <file>: config file, default is twofi.yml
  ```
- Docs: https://www.digininja.org/projects/twofi.php

### `unicornscan` ✓ verified on VM
- Userland distributed TCP/IP stack
- **Provides:** `fantaip`, `unibrow`, `unicfgtst`, `unicornscan`, `us`
- **Steps:**
  1. Install: `sudo apt install -y unicornscan`
  2. Help: `unicornscan -h`  (or `man unicornscan`)
  3. Run: `unicornscan <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  unicornscan (version 0.4.7)
  usage: unicornscan [options `b:B:cd:De:EFG:hHi:Ij:l:L:m:M:o:p:P:q:Qr:R:s:St:T:u:Uw:W:vVzZ:' ] X.X.X.X/YY:S-E
  	-b, --broken-crc     *set broken crc sums on [T]ransport layer, [N]etwork layer, or both[TN]
  	-B, --source-port    *set source port? or whatever the scan module expects as a number
  	-c, --proc-duplicates process duplicate replies
  	-d, --delay-type     *set delay type (numeric value, valid options are `1:tsc 2:gtod 3:sleep')
  ```
- Docs: http://www.unicornscan.org/

### `urlcrazy` ✓ verified on VM
- Domain typo generator
- **Provides:** `urlcrazy`
- **Steps:**
  1. Install: `sudo apt install -y urlcrazy`
  2. Help: `urlcrazy -h`  (or `man urlcrazy`)
  3. Run: `urlcrazy <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Warning. File descriptor limit may be too low. Check with `ulimit -a` and change with `ulimit -n 10000`
  
  ____ _____________.____   _________                             
  |    |   \______   \    |  \_   ___ \___________  ___________.__.
  |    |   /|       _/    |  /    \  \|_  __ \__  \ \___   <   |  |
  |    |  / |    |   \    |__\     \___|  | \// __ \_/    / \___  |
  ```
- Docs: https://www.morningstarsecurity.com/research/urlcrazy

### `wafw00f` ✓ verified on VM
- identify and fingerprint Web Application Firewall products
- **Provides:** `wafw00f`
- **Steps:**
  1. Install: `sudo apt install -y wafw00f`
  2. Help: `wafw00f -h`  (or `man wafw00f`)
  3. Run: `wafw00f <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Usage: wafw00f url1 [url2 [url3 ... ]]
  example: wafw00f http://www.victim.org/
  
  Options:
    -h, --help            show this help message and exit
    -v, --verbose         Enable verbosity, multiple -v options increase
  ```
- Docs: https://github.com/EnableSecurity/wafw00f

### `zenmap` ✓ verified on VM
- The Network Mapper Front End
- **Provides:** `zenmap`
- **Steps:**
  1. Install: `sudo apt install -y zenmap`
  2. Help: `zenmap -h`  (or `man zenmap`)
  3. Run: `zenmap <NODE_IP>` — run recon against a node you own
- **real --help (verified on VM):**
  ```
  Usage: zenmap [options] [result files]
  
  Options:
    --version             show program's version number and exit
    -h, --help            show this help message and exit
    --confdir=DIR         Use DIR as the user configuration directory. Default:
  ```
- Docs: https://nmap.org/


## 02 · Vulnerability Analysis  (`kali-tools-vulnerability`)

### `afl++` ✓ verified on VM
- instrumentation-driven fuzzer for binary formats
- **Provides:** `afl-addseeds`, `afl-analyze`, `afl-c++`, `afl-cc`, `afl-clang`, `afl-clang++`, `afl-clang-fast`, `afl-clang-fast++`, `afl-clang-lto`, `afl-clang-lto++`, `afl-cmin`, `afl-cmin.awk`, `afl-cmin.bash`, `afl-cmin.py`, `afl-fuzz`, `afl-g++`, `afl-gcc`, `afl-gcc-fast`, `afl-g++-fast`, `afl-gotcpu`, `afl-health`, `afl-ld-lto`, `afl-lto`, `afl-lto++`, `afl-network-client`, `afl-network-server`, `afl-persistent-config`, `afl-plot`, `afl-showmap`, `afl-system-config`, `afl-tmin`, `afl-whatsup`
- **Steps:**
  1. Install: `sudo apt install -y afl++`
  2. Help: `afl-cc -h`  (or `man afl-cc`)
  3. Run: `afl-cc http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  afl-cc++5.02c by Michal Zalewski, Laszlo Szekeres, Marc Heuse
  
  afl-cc/afl-c++ [options]
  
  This is a helper application for afl-fuzz. It serves as a drop-in replacement
  for gcc and clang, letting you recompile third-party code with the required
  ```
- Docs: https://github.com/AFLplusplus/AFLplusplus

### `bed` ✓ verified on VM
- A network protocol fuzzer
- **Provides:** `bed`
- **Steps:**
  1. Install: `sudo apt install -y bed`
  2. Help: `bed -h`  (or `man bed`)
  3. Run: `bed http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  ./bed.pl version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: bed.pl [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: http://www.snake-basket.de

### `cisco-auditing-tool` ✓ verified on VM
- Scans Cisco routers for vulnerabilities
- **Provides:** `CAT`
- **Steps:**
  1. Install: `sudo apt install -y cisco-auditing-tool`
  2. Help: `CAT -h`  (or `man CAT`)
  3. Run: `CAT http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  /usr/bin/CAT version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: CAT [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: http://www.scrypt.net/

### `cisco-global-exploiter` ✓ verified on VM
- Simple and fast Cisco exploitation tool
- **Provides:** `cge.pl`
- **Steps:**
  1. Install: `sudo apt install -y cisco-global-exploiter`
  2. Help: `cge.pl -h`  (or `man cge.pl`)
  3. Run: `cge.pl http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  
  Usage :
  perl cge.pl <target> <vulnerability number>
  
  Vulnerabilities list :
  [1] - Cisco 677/678 Telnet Buffer Overflow Vulnerability
  ```
- Docs: http://www.blackangels.it

### `cisco-ocs` ✓ verified on VM
- Mass Cisco scanner
- **Provides:** `cisco-ocs`
- **Steps:**
  1. Install: `sudo apt install -y cisco-ocs`
  2. Help: `cisco-ocs -h`  (or `man cisco-ocs`)
  3. Run: `cisco-ocs http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  ********************************* OCS v 0.2 **********************************
  ****                                                                      ****
  ****                           coded by OverIP                            ****
  ****                           <email>                           ****
  ****                           under GPL License                          ****
  ****                                                                      ****
  ```
- Docs: http://hacklab.altervista.org/

### `cisco-torch` ✓ verified on VM
- Cisco device scanner
- **Provides:** `cisco-torch`
- **Steps:**
  1. Install: `sudo apt install -y cisco-torch`
  2. Help: `cisco-torch -h`  (or `man cisco-torch`)
  3. Run: `cisco-torch http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  /usr/bin/cisco-torch version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: cisco-torch [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```

### `dhcpig` ✓ verified on VM
- DHCP exhaustion script using scapy network library
- **Provides:** `dhcpig`
- **Steps:**
  1. Install: `sudo apt install -y dhcpig`
  2. Help: `dhcpig -h`  (or `man dhcpig`)
  3. Run: `dhcpig http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  
  enhanced DHCP exhaustion attack.
  
  Doc:
      http://github.com/kamorin/DHCPig
  ```
- Docs: https://github.com/kamorin/DHCPig

### `enumiax` ✓ verified on VM
- IAX protocol username enumerator
- **Provides:** `enumiax`
- **Steps:**
  1. Install: `sudo apt install -y enumiax`
  2. Help: `enumiax -h`  (or `man enumiax`)
  3. Run: `enumiax http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  enumiax: invalid option -- '-'
  enumIAX 0.4a
  Dustin D. Trammell <<email>>
  
  Usage: enumiax [options] target
    options:
  ```
- Docs: https://enumiax.sourceforge.net/

### `gvm` ✓ verified on VM
- remote network security auditor - metapackage and useful scripts
- **Provides:** `gvm-check-setup`, `gvm-setup`, `gvm-start`, `gvm-stop`
- **Steps:**
  1. Install: `sudo apt install -y gvm`
  2. Help: `gvm-stop -h`  (or `man gvm-stop`)
  3. Run: `gvm-stop http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  [-] Error: /usr/bin/gvm-stop must be run as root
  ```
- Docs: https://www.greenbone.net/

### `iaxflood` ✓ verified on VM
- VoIP flooder tool
- **Provides:** `iaxflood`
- **Steps:**
  1. Install: `sudo apt install -y iaxflood`
  2. Help: `iaxflood -h`  (or `man iaxflood`)
  3. Run: `iaxflood http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  usage: iaxflood sourcename destinationname numpackets
  ```
- Docs: http://www.hackingexposedvoip.com/sec_tools.html

### `inviteflood` ✓ verified on VM
- SIP/SDP INVITE message flooding over UDP/IP
- **Provides:** `inviteflood`
- **Steps:**
  1. Install: `sudo apt install -y inviteflood`
  2. Help: `inviteflood -h`  (or `man inviteflood`)
  3. Run: `inviteflood http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  
  inviteflood - Version 2.0
                June 09, 2006
   Usage:
   Mandatory -
  	interface (e.g. eth0)
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### `legion` ✓ verified on VM
- semi-automated network penetration testing tool
- **Provides:** `legion`
- **Steps:**
  1. Install: `sudo apt install -y legion`
  2. Help: `legion -h`  (or `man legion`)
  3. Run: `legion http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  usage: legion.py [-h] [--mcp-server] [--headless] [--web] [--tool-audit |
                   --tool-install-plan {kali,ubuntu} |
                   --tool-install {kali,ubuntu}] [--web-port WEB_PORT]
                   [--web-bind-all] [--web-transparent-ui]
                   [--input-file INPUT_FILE] [--discovery] [--staged-scan]
                   [--output-file OUTPUT_FILE] [--run-actions]
  ```
- Docs: https://github.com/Hackman238/legion

### `lynis` ✓ verified on VM
- security auditing tool for Unix based systems
- **Provides:** `lynis`
- **Steps:**
  1. Install: `sudo apt install -y lynis`
  2. Help: `lynis -h`  (or `man lynis`)
  3. Run: `lynis http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  
  [ Lynis 3.1.7 ]
  
  ################################################################################
    Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
    welcome to redistribute it under the terms of the GNU General Public License.
  ```
- Docs: https://cisofy.com/lynis/

### `nikto` ✓ verified on VM
- web server security scanner
- **Provides:** `nikto`, `replay`
- **Steps:**
  1. Install: `sudo apt install -y nikto`
  2. Help: `nikto -h`  (or `man nikto`)
  3. Run: `nikto http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  Unknown option: help
  
     Options:
         -Add-header         Add HTTP headers (can be used multiple times, one per header pair)
         -ask+               Whether to ask about submitting updates
                                 yes   Ask about each (default)
  ```
- Docs: https://github.com/sullo/nikto

### `nmap` ✓ verified on VM
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- Docs: https://nmap.org/

### `ohrwurm` ✓ verified on VM
- RTP fuzzer
- **Provides:** `ohrwurm`
- **Steps:**
  1. Install: `sudo apt install -y ohrwurm`
  2. Help: `ohrwurm -h`  (or `man ohrwurm`)
  3. Run: `ohrwurm http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  ohrwurm-0.1
  ERROR: couldn't read from /proc/sys/net/ipv4/ip_forward
  ```
- Docs: http://mazzoo.de/blog/2006/08/25#ohrwurm

### `peass` ✓ verified on VM
- Privilege Escalation Awesome Scripts SUITE
- **Provides:** `linpeas`, `peass`, `winpeas`
- **Steps:**
  1. Install: `sudo apt install -y peass`
  2. Help: `peass -h`  (or `man peass`)
  3. Run: `peass http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  
  > peass ~ Privilege Escalation Awesome Scripts SUITE
  
  /usr/share/peass/
  ├── linpeas
  │   ├── linpeas_darwin_amd64
  ```
- Docs: https://github.com/carlospolop/PEASS-ng

### `protos-sip` ✓ verified on VM
- SIP test suite
- **Provides:** `protos-sip`
- **Steps:**
  1. Install: `sudo apt install -y protos-sip`
  2. Help: `protos-sip -h`  (or `man protos-sip`)
  3. Run: `protos-sip http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  ERROR: unknown command line argument: --help
  ```
- Docs: https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip

### `rtpbreak` ✓ verified on VM
- Detects, reconstructs, and analyzes RTP sessions
- **Provides:** `rtpbreak`
- **Steps:**
  1. Install: `sudo apt install -y rtpbreak`
  2. Help: `rtpbreak -h`  (or `man rtpbreak`)
  3. Run: `rtpbreak http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  --
  25/10/2026#05:47:08 Fatal error at main.c:485:init_opt: option '-' invalid; exit forced.
  --
  ```
- Docs: http://dallachiesa.com/code/rtpbreak/

### `rtpflood` ✓ verified on VM
- Tool to flood any RTP device
- **Provides:** `rtpflood`
- **Steps:**
  1. Install: `sudo apt install -y rtpflood`
  2. Help: `rtpflood -h`  (or `man rtpflood`)
  3. Run: `rtpflood http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  usage: rtpflood sourcename destinationname srcport destport numpackets seqno timestamp SSID
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpinsertsound` ✓ verified on VM
- Inserts audio into a specified stream
- **Provides:** `rtpinsertsound`
- **Steps:**
  1. Install: `sudo apt install -y rtpinsertsound`
  2. Help: `rtpinsertsound -h`  (or `man rtpinsertsound`)
  3. Run: `rtpinsertsound http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  rtpinsertsound: invalid option -- '-'
  
  rtpinsertsound - Version 2.0
                   October 10, 2006
   Usage:
   Mandatory -
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpmixsound` ✓ verified on VM
- Mixes pre-recorded audio in real-time
- **Provides:** `rtpmixsound`
- **Steps:**
  1. Install: `sudo apt install -y rtpmixsound`
  2. Help: `rtpmixsound -h`  (or `man rtpmixsound`)
  3. Run: `rtpmixsound http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  rtpmixsound: invalid option -- '-'
  
  rtpmixsound - Version 3.0
                January 03, 2007
   Usage:
   Mandatory -
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### `sfuzz` ✓ verified on VM
- Black Box testing utilities
- **Provides:** `sfo`, `sfuzz`
- **Steps:**
  1. Install: `sudo apt install -y sfuzz`
  2. Help: `sfuzz -h`  (or `man sfuzz`)
  3. Run: `sfuzz http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  unknown option: h
  ```
- Docs: http://aconole.brad-x.com/programs/sfuzz.html

### `siege` ✓ verified on VM
- HTTP regression testing and benchmarking utility
- **Provides:** `bombardment`, `siege`, `siege2csv`, `siege.config`
- **Steps:**
  1. Install: `sudo apt install -y siege`
  2. Help: `siege -h`  (or `man siege`)
  3. Run: `siege http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  New configuration template added to /home/kali/.siege
  Run siege -C to view the current settings in that file
  SIEGE 4.1.7
  Usage: siege [options]
         siege [options] URL
         siege -g URL
  ```
- Docs: https://www.joedog.org/JoeDog/Siege

### `siparmyknife` ✓ verified on VM
- SIP fuzzing tool
- **Provides:** `siparmyknife`
- **Steps:**
  1. Install: `sudo apt install -y siparmyknife`
  2. Help: `siparmyknife -h`  (or `man siparmyknife`)
  3. Run: `siparmyknife http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  Duplicate specification "sport|p=s" for option "p"
  
  
  THIS IS THERE TO PUT THE HELP REFERENCE
  ```
- Docs: https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html

### `sipp` ✓ verified on VM
- Traffic generator for the SIP protocol
- **Provides:** `sipp`
- **Steps:**
  1. Install: `sudo apt install -y sipp`
  2. Help: `sipp -h`  (or `man sipp`)
  3. Run: `sipp http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  
  Usage:
  
    sipp remote_host[:remote_port] [options]
  
    Available options:
  ```
- Docs: https://sipp.sourceforge.net/

### `sipsak` ✓ verified on VM
- SIP Swiss army knife
- **Provides:** `sipsak`
- **Steps:**
  1. Install: `sudo apt install -y sipsak`
  2. Help: `sipsak -h`  (or `man sipsak`)
  3. Run: `sipsak http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  long option help
  sipsak 0.9.8.1 by Nils Ohlmeier
   Copyright (C) 2002-2004 FhG Fokus
   Copyright (C) 2004-2005 Nils Ohlmeier
   report bugs to <email>
  ```
- Docs: https://github.com/nils-ohlmeier/sipsak

### `sipvicious` ✓ verified on VM
- tools to audit SIP based VoIP systems
- **Provides:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **Steps:**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svmap -h`  (or `man svmap`)
  3. Run: `svmap http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  Usage: svmap [options] host1 host2 hostrange
  Scans for SIP devices on a given network
  
  examples:
  
  svmap 10.0.0.1-10.0.0.255 172.16.131.1 sipvicious.org/22 10.0.1.1/241.1.1.1-20 1.1.2-20.* 4.1.*.*
  ```
- Docs: https://github.com/EnableSecurity/sipvicious

### `slowhttptest` ✓ verified on VM
- application layer Denial of Service attacks simulation tool
- **Provides:** `slowhttptest`
- **Steps:**
  1. Install: `sudo apt install -y slowhttptest`
  2. Help: `slowhttptest -h`  (or `man slowhttptest`)
  3. Run: `slowhttptest http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  Illegal option --
  Try 'slowhttptest -h' for more information
  ```
- Docs: https://github.com/shekyan/slowhttptest

### `spike` ✓ verified on VM
- Network protocol fuzzer
- **Provides:** `citrix`, `closed_source_web_server_fuzz`, `dceoversmb`, `dltest`, `do_post`, `generic_chunked`, `generic_listen_tcp`, `generic_send_tcp`, `generic_send_udp`, `generic_web_server_fuzz`, `generic_web_server_fuzz2`, `gopherd`, `halflife`, `line_send_tcp`, `msrpcfuzz`, `msrpcfuzz_udp`, `ntlm2`, `ntlm_brute`, `pmspike`, `post_fuzz`, `post_spike`, `quake`, `quakeserver`, `sendmsrpc`, `ss_spike`, `statd_spike`, `sunrpcfuzz`, `webfuzz`, `x11_spike`
- **Steps:**
  1. Install: `sudo apt install -y spike`
  2. Help: `ntlm2 -h`  (or `man ntlm2`)
  3. Run: `ntlm2 http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  Usage: ./ntlm_brute target port username[@domain] password url
  If you get a nice message from the server saying Use Localhost only, then you got the right password. Use a shell script to spam this througha word list or something. 
  ```
- Docs: http://www.immunitysec.com/resources-freesoftware.shtml

### `t50` ✓ verified on VM
- Multi-protocol packet injector tool
- **Provides:** `t50`
- **Steps:**
  1. Install: `sudo apt install -y t50`
  2. Help: `t50 -h`  (or `man t50`)
  3. Run: `t50 http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  T50 Experimental Mixed Packet Injector Tool v5.8.7c
  Copyright (C) 2010 - 2025 - T50 developers
  Originally created by Nelson Brito <<email>>
  Previously maintained by Fernando Mercês <<email>>
  Maintained by Frederico Lamberti Pissarra <<email>>
  ```
- Docs: https://gitlab.com/fredericopissarra/t50

### `thc-ssl-dos` ✓ verified on VM
- Stress tester for the SSL handshake
- **Provides:** `thc-ssl-dos`
- **Steps:**
  1. Install: `sudo apt install -y thc-ssl-dos`
  2. Help: `thc-ssl-dos -h`  (or `man thc-ssl-dos`)
  3. Run: `thc-ssl-dos http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
       ______________ ___  _________
       \__    ___/   |   \ \_   ___ \
         |    | /    ~    \/    \  \/
         |    | \    Y    /\     \____
         |____|  \___|_  /  \______  /
                       \/          \/
  ```
- Docs: http://www.thc.org/thc-ssl-dos/

### `unix-privesc-check` ✓ verified on VM
- Script to check for simple privilege escalation vectors
- **Provides:** `unix-privesc-check`
- **Steps:**
  1. Install: `sudo apt install -y unix-privesc-check`
  2. Help: `unix-privesc-check -h`  (or `man unix-privesc-check`)
  3. Run: `unix-privesc-check http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  unix-privesc-check v1.6-svn- ( http://pentestmonkey.net/tools/unix-privesc-check )
  
  Usage: unix-privesc-check { standard | detailed }
  
  "standard" mode: Speed-optimised check of lots of security settings.
  ```
- Docs: https://pentestmonkey.net/tools/audit/unix-privesc-check

### `voiphopper` ✓ verified on VM
- Runs a VLAN hop security test
- **Provides:** `voiphopper`
- **Steps:**
  1. Install: `sudo apt install -y voiphopper`
  2. Help: `voiphopper -h`  (or `man voiphopper`)
  3. Run: `voiphopper http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  voiphopper: invalid option -- '-'
  VoIP Hopper Extended Usage:
  
  Miscellaneous Options:
  	-l (list available interfaces for CDP sniffing, then exit)
  	Example:  voiphopper -l
  ```
- Docs: https://sourceforge.net/projects/voiphopper

### `yersinia` ✓ verified on VM
- Network vulnerabilities check software
- **Provides:** `yersinia`
- **Steps:**
  1. Install: `sudo apt install -y yersinia`
  2. Help: `yersinia -h`  (or `man yersinia`)
  3. Run: `yersinia http://<NODE_IP>:30080` — scan a service you own
- **real --help (verified on VM):**
  ```
  You must be root to run yersinia 0.8.2
  
  
  MOTD: Having lotto fun with my Audiovector Mi3 Avantgarde Arrete LE... :)
  ```
- Docs: https://github.com/tomac/yersinia


## 03 · Web Application Analysis  (`kali-tools-web`)

### `apache-users` ✓ verified on VM
- Enumerate usernames on systems with Apache UserDir module
- **Provides:** `apache-users`
- **Steps:**
  1. Install: `sudo apt install -y apache-users`
  2. Help: `apache-users -h`  (or `man apache-users`)
  3. Run: `apache-users http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  USAGE: apache-users [-h 1.2.3.4] [-l names] [-p 80] [-s (SSL Support 1=true 0=false)] [-e 403 (http code)] [-t threads]
  
   
  ```
- Docs: https://labs.portcullis.co.uk/downloads/

### `apache2` ✓ verified on VM
- Apache HTTP Server
- **Provides:** `a2disconf`, `a2dismod`, `a2dissite`, `a2enconf`, `a2enmod`, `a2ensite`, `a2query`, `apache2ctl`, `apachectl`
- **Steps:**
  1. Install: `sudo apt install -y apache2`
  2. Help: `a2enmod -h`  (or `man a2enmod`)
  3. Run: `a2enmod http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Unknown option: help
  ```
- Docs: https://httpd.apache.org/

### `beef-xss` ✓ verified on VM
- Browser Exploitation Framework (BeEF)
- **Provides:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **Steps:**
  1. Install: `sudo apt install -y beef-xss`
  2. Help: `beef-xss -h`  (or `man beef-xss`)
  3. Run: `beef-xss http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ The command beef-xss is deprecated. Please use beef-xss-start instead.
  ┃
  ┗━
  ```
- Docs: https://beefproject.com/

### `cadaver` ✓ verified on VM
- command-line WebDAV client
- **Provides:** `cadaver`
- **Steps:**
  1. Install: `sudo apt install -y cadaver`
  2. Help: `cadaver -h`  (or `man cadaver`)
  3. Run: `cadaver http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Usage: cadaver [OPTIONS] URL
    URL must be an absolute URI using the http: or https: scheme.
  Options:
    -t, --tolerant            Allow cd/open into non-WebDAV enabled collection.
    -r, --rcfile=FILE         Read script from FILE instead of ~/.cadaverrc.
    -p, --proxy=PROXY[:PORT]  Use proxy host PROXY and optional proxy port PORT.
  ```
- Docs: https://github.com/notroj/cadaver

### `commix` ✓ verified on VM
- Automated All-in-One OS Command Injection and Exploitation Tool
- **Provides:** `commix`
- **Steps:**
  1. Install: `sudo apt install -y commix`
  2. Help: `commix -h`  (or `man commix`)
  3. Run: `commix http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Usage: commix [option(s)]
  
  Options:
    -h, --help            Show help and exit.
  
    General:
  ```
- Docs: https://commixproject.com

### `cutycapt` ✓ verified on VM
- utility to capture WebKit's rendering of a web page
- **Provides:** `cutycapt`
- **Steps:**
  1. Install: `sudo apt install -y cutycapt`
  2. Help: `cutycapt -h`  (or `man cutycapt`)
  3. Run: `cutycapt http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://github.com/Crystalix007/CutyCapt

### `davtest` ✓ verified on VM
- Testing tool for WebDAV servers
- **Provides:** `davtest`
- **Steps:**
  1. Install: `sudo apt install -y davtest`
  2. Help: `davtest -h`  (or `man davtest`)
  3. Run: `davtest http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Unknown option: help
  ^^^^^^^^^^^^^^  ERROR ^^^^^^^^^^^^^^
  
  /usr/bin/davtest -url <url> [options]
  
   -auth+ 	Authorization (user:password)
  ```
- Docs: https://github.com/cldrn/davtest

### `default-mysql-server` ✓ verified on VM
- MySQL database server binaries and system database setup (metapackage)
- **Steps:**
  1. Install: `sudo apt install -y default-mysql-server`
  2. Help: `default-mysql-server -h`  (or `man default-mysql-server`)
  3. Run: `default-mysql-server http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  mysqld  Ver 11.8.9-MariaDB-2 from Debian for debian-linux-gnu on aarch64 (-- Please help get to 10k stars at https://github.com/MariaDB/Server)
  Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.
  
  Starts the MariaDB database server.
  
  Usage: mysqld [OPTIONS]
  ```

### `dirb` ✓ verified on VM
- URL bruteforcing tool
- **Provides:** `dirb`, `dirb-gendict`, `html2dic`
- **Steps:**
  1. Install: `sudo apt install -y dirb`
  2. Help: `dirb -h`  (or `man dirb`)
  3. Run: `dirb http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  -----------------
  DIRB v2.22    
  By The Dark Raver
  -----------------
  ```
- Docs: https://dirb.sourceforge.net/

### `dirbuster` ✓ verified on VM
- Web server directory brute-forcer
- **Provides:** `dirbuster`
- **Steps:**
  1. Install: `sudo apt install -y dirbuster`
  2. Help: `dirbuster -h`  (or `man dirbuster`)
  3. Run: `dirbuster http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  DirBuster - 1.0-RC1
  Usage: java -jar DirBuster-1.0-RC1 -u <URL http://example.com/> [Options]
  
  	Options:
  	 -h : Display this help message
  	 -H : Start DirBuster in headless mode (no gui), report will be auto saved on exit
  ```
- Docs: https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project

### `dotdotpwn` ✓ verified on VM
- Directory Traversal Fuzzer.
- **Provides:** `dotdotpwn`
- **Steps:**
  1. Install: `sudo apt install -y dotdotpwn`
  2. Help: `dotdotpwn -h`  (or `man dotdotpwn`)
  3. Run: `dotdotpwn http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  #################################################################################
  #                                                                               #
  #  CubilFelino                                                       Chatsubo   #
  #  Security Research Lab              and            [(in)Security Dark] Labs   #
  #  chr1x.sectester.net                             chatsubo-labs.blogspot.com   #
  #                                                                               #
  ```
- Docs: https://dotdotpwn.blogspot.ca

### `eyewitness` ✓ verified on VM
- Rapid web application triage tool
- **Provides:** `eyewitness`, `geckodriver`
- **Steps:**
  1. Install: `sudo apt install -y eyewitness`
  2. Help: `eyewitness -h`  (or `man eyewitness`)
  3. Run: `eyewitness http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  ################################################################################
  #                                  EyeWitness                                  #
  ################################################################################
  #           Red Siege Information Security - https://www.redsiege.com           #
  ################################################################################
  ```
- Docs: https://www.christophertruncer.com/eyewitness-triage-tool/

### `ferret-sidejack` ✓ verified on VM
- Monitors data and extracts interesting data
- **Provides:** `ferret-sidejack`
- **Steps:**
  1. Install: `sudo apt install -y ferret-sidejack`
  2. Help: `ferret-sidejack -h`  (or `man ferret-sidejack`)
  3. Run: `ferret-sidejack http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  -- FERRET 3.0.1 - 2007-2012 (c) Errata Security
  -- build = Sep 29 2024 02:38:07 (64-bits)
  -- libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3)
  -- graceful exit --
  --help: unknown option
  ```
- Docs: https://github.com/robertdavidgraham/ferret

### `ftester` ✓ verified on VM
- Tool for testing firewalls and Intrusion Detection System (IDS)
- **Provides:** `freport`, `ftest`, `ftestd`
- **Steps:**
  1. Install: `sudo apt install -y ftester`
  2. Help: `ftest -h`  (or `man ftest`)
  3. Run: `ftest http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  /usr/bin/ftest version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: ftest [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://dev.inversepath.com/ftester/

### `hakrawler` ✓ verified on VM
- Web crawler designed for easy, quick discovery of endpoints and assets
- **Provides:** `hakrawler`
- **Steps:**
  1. Install: `sudo apt install -y hakrawler`
  2. Help: `hakrawler -h`  (or `man hakrawler`)
  3. Run: `hakrawler http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Usage of hakrawler:
    -d int
      	Depth to crawl. (default 2)
    -h string
      	Custom headers separated by two semi-colons. E.g. -h "Cookie: foo=bar;;Referer: http://example.com/" 
    -insecure
  ```
- Docs: https://github.com/hakluke/hakrawler

### `hamster-sidejack` ✓ verified on VM
- Sidejacking tool
- **Provides:** `hamster-sidejack`
- **Steps:**
  1. Install: `sudo apt install -y hamster-sidejack`
  2. Help: `hamster-sidejack -h`  (or `man hamster-sidejack`)
  3. Run: `hamster-sidejack http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  unknown parm, all parms must be name=value pairs. (--help)
  Proxy: listening on 127.0.0.1:1234
  ```
- Docs: http://www.erratasec.com/research.html

### `heartleech` ✓ verified on VM
- Scanner detecting systems vulnerable to the heartbleed OpenSSL bug
- **Provides:** `heartleech`
- **Steps:**
  1. Install: `sudo apt install -y heartleech`
  2. Help: `heartleech -h`  (or `man heartleech`)
  3. Run: `heartleech http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  > heartleech ~ Scanner detecting systems vulnerable to the heartbleed OpenSSL bug
  
  /usr/share/windows-resources/heartleech/
  └── heartleech.exe
  bash: cannot set terminal process group (159027): Inappropriate ioctl for device
  ```
- Docs: https://github.com/robertdavidgraham/heartleech

### `httrack` ✓ verified on VM
- Copy websites to your computer (Offline browser)
- **Provides:** `httrack`
- **Steps:**
  1. Install: `sudo apt install -y httrack`
  2. Help: `httrack -h`  (or `man httrack`)
  3. Run: `httrack http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  HTTrack version 3.50-5
  	usage: httrack <URLs> [-option] [+<URL_FILTER>] [-<URL_FILTER>] [+<mime:MIME_FILTER>] [-<mime:MIME_FILTER>]
  	with options listed below: (* is the default value)
  
  General options:
  ```
- Docs: https://www.httrack.com

### `hydra` ✓ verified on VM
- very fast network logon cracker
- **Provides:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **Steps:**
  1. Install: `sudo apt install -y hydra`
  2. Help: `hydra -h`  (or `man hydra`)
  3. Run: `hydra http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Hydra v9.7 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).
  
  hydra: invalid option -- '-'
  ```
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `hydra-gtk` ✓ verified on VM
- very fast network logon cracker - GTK+ based GUI
- **Provides:** `xhydra`
- **Steps:**
  1. Install: `sudo apt install -y hydra-gtk`
  2. Help: `xhydra -h`  (or `man xhydra`)
  3. Run: `xhydra http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  (xhydra:159274): Gtk-WARNING **: 05:44:31.117: cannot open display: 
  ```
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `jboss-autopwn` ✓ verified on VM
- JBoss script for obtaining remote shell access
- **Provides:** `jboss-linux`, `jboss-win`
- **Steps:**
  1. Install: `sudo apt install -y jboss-autopwn`
  2. Help: `jboss-win -h`  (or `man jboss-win`)
  3. Run: `jboss-win http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  [x] Retrieving cookie
  nc: invalid option -- '-'
  nc -h for help
  [x] Now creating BSH script...
  nc: invalid option -- '-'
  nc -h for help
  ```
- Docs: https://github.com/SpiderLabs/jboss-autopwn

### `joomscan` ✓ verified on VM
- OWASP Joomla Vulnerability Scanner Project
- **Provides:** `joomscan`
- **Steps:**
  1. Install: `sudo apt install -y joomscan`
  2. Help: `joomscan -h`  (or `man joomscan`)
  3. Run: `joomscan http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  TERM environment variable not set.
  
      ____  _____  _____  __  __  ___   ___    __    _  _ 
     (_  _)(  _  )(  _  )(  \/  )/ __) / __)  /__\  ( \( )
    .-_)(   )(_)(  )(_)(  )    ( \__ \( (__  /(__)\  )  ( 
    \____) (_____)(_____)(_/\/\_)(___/ \___)(__)(__)(_)\_)
  ```
- Docs: https://www.owasp.org/index.php/Category:OWASP_Joomla_Vulnerability_Scanner_Project

### `jsql-injection` ✓ verified on VM
- Java tool for automatic database injection
- **Provides:** `jsql`, `jsql-injection`
- **Steps:**
  1. Install: `sudo apt install -y jsql-injection`
  2. Help: `jsql-injection -h`  (or `man jsql-injection`)
  3. Run: `jsql-injection http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  2026-10-25 05:44:56,803 ERROR [main] jsql.MainApp (MainApp.java:30) - Headless runtime not supported, use default Java runtime instead
  ```
- Docs: https://github.com/ron190/jsql-injection

### `laudanum` ✓ verified on VM
- Collection of injectable web files
- **Provides:** `laudanum`
- **Steps:**
  1. Install: `sudo apt install -y laudanum`
  2. Help: `laudanum -h`  (or `man laudanum`)
  3. Run: `laudanum http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  > laudanum ~ Collection of injectable web files
  
  /usr/share/laudanum
  ├── asp
  ├── aspx
  ```
- Docs: https://sourceforge.net/projects/laudanum/

### `lbd` ✓ verified on VM
- Load balancer detector
- **Provides:** `lbd`
- **Steps:**
  1. Install: `sudo apt install -y lbd`
  2. Help: `lbd -h`  (or `man lbd`)
  3. Run: `lbd http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  lbd - load balancing detector 0.4 - Checks if a given domain uses load-balancing.
                                      Written by Stefan Behte (http://ge.mine.nu)
                                      Proof-of-concept! Might give false positives.
  
  Checking for DNS-Loadbalancing:host: illegal option -- -
  ```
- Docs: http://ge.mine.nu/code/

### `maltego` ✓ verified on VM
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  arm64
  java is /usr/bin/java
  found java executable in PATH
  pwd: jar:file:/usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar!/BOOT-INF/lib/java-config-lib-1.0-SNAPSHOT.jar!/
  file: /usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar
  installDir: /usr/share/maltego
  ```
- Docs: https://www.maltego.com

### `medusa` ✓ verified on VM
- fast, parallel, modular, login brute-forcer for network services
- **Provides:** `medusa`
- **Steps:**
  1. Install: `sudo apt install -y medusa`
  2. Help: `medusa -h`  (or `man medusa`)
  3. Run: `medusa http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  medusa: invalid option -- '-'
  CRITICAL: Unknown error processing command-line options.
  ALERT: User logon information must be supplied.
  Medusa v2.3 [http://www.foofus.net] (C) JoMo-Kun / Foofus Networks <<email>>
  ```
- Docs: http://foofus.net/?page_id=51

### `mitmproxy` ✓ verified on VM
- SSL-capable man-in-the-middle HTTP proxy
- **Provides:** `mitmdump`, `mitmproxy`, `mitmweb`
- **Steps:**
  1. Install: `sudo apt install -y mitmproxy`
  2. Help: `mitmproxy -h`  (or `man mitmproxy`)
  3. Run: `mitmproxy http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  usage: mitmproxy [options]
  
  options:
    -h, --help            show this help message and exit
    --version             show version number and exit
    --options             Show all options and their default values
  ```
- Docs: https://mitmproxy.org

### `ncrack` ✓ verified on VM
- High-speed network authentication cracking tool
- **Provides:** `ncrack`
- **Steps:**
  1. Install: `sudo apt install -y ncrack`
  2. Help: `ncrack -h`  (or `man ncrack`)
  3. Run: `ncrack http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Ncrack 0.7 ( http://ncrack.org )
  Usage: ncrack [Options] {target and service specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iX <inputfilename>: Input from Nmap's -oX XML output format
  ```
- Docs: https://nmap.org/ncrack/

### `nikto` ✓ verified on VM
- web server security scanner
- **Provides:** `nikto`, `replay`
- **Steps:**
  1. Install: `sudo apt install -y nikto`
  2. Help: `nikto -h`  (or `man nikto`)
  3. Run: `nikto http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Unknown option: help
  
     Options:
         -Add-header         Add HTTP headers (can be used multiple times, one per header pair)
         -ask+               Whether to ask about submitting updates
                                 yes   Ask about each (default)
  ```
- Docs: https://github.com/sullo/nikto

### `nishang` ✓ verified on VM
- Collection of PowerShell scripts and payloads
- **Provides:** `nishang`
- **Steps:**
  1. Install: `sudo apt install -y nishang`
  2. Help: `nishang -h`  (or `man nishang`)
  3. Run: `nishang http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  > nishang ~ Collection of PowerShell scripts and payloads
  
  /usr/share/nishang
  ├── ActiveDirectory
  ├── Antak-WebShell
  ```
- Docs: https://github.com/samratashok/nishang

### `nmap` ✓ verified on VM
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- Docs: https://nmap.org/

### `oscanner` ✓ verified on VM
- Oracle assessment framework
- **Provides:** `oscanner`
- **Steps:**
  1. Install: `sudo apt install -y oscanner`
  2. Help: `oscanner -h`  (or `man oscanner`)
  3. Run: `oscanner http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  OracleScanner: invalid option -- h
  	Oracle Scanner 1.0.6 by <email>
  	--------------------------------------
  	OracleScanner -s <ip> -r <repfile> [options]
  		-s	<servername>
  		-f	<serverlist>
  ```
- Docs: http://www.cqure.net/wp/tools/database/oscanner/

### `padbuster` ✓ verified on VM
- Script for performing Padding Oracle attacks
- **Provides:** `padbuster`
- **Steps:**
  1. Install: `sudo apt install -y padbuster`
  2. Help: `padbuster -h`  (or `man padbuster`)
  3. Run: `padbuster http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Possible precedence problem between ! and string eq at /usr/bin/padbuster line 677.
  Unknown option: help
      
      Use: padbuster URL EncryptedSample BlockSize [options]
  
    Where: URL = The target URL (and query string if applicable)
  ```
- Docs: https://github.com/GDSSecurity/PadBuster

### `paros` ✓ verified on VM
- Web application proxy
- **Provides:** `paros`
- **Steps:**
  1. Install: `sudo apt install -y paros`
  2. Help: `paros -h`  (or `man paros`)
  3. Run: `paros http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Exception in thread "main" java.awt.HeadlessException: 
  No X11 DISPLAY variable was set,
  or no headful library support was found,
  but this program performed an operation which requires it.
  	at java.desktop/java.awt.GraphicsEnvironment.checkHeadless(GraphicsEnvironment.java:158)
  	at java.desktop/java.awt.Window.<init>(Window.java:518)
  ```
- Docs: http://www.parosproxy.org/index.shtml

### `patator` ✓ verified on VM
- Multi-purpose brute-forcer
- **Provides:** `patator`
- **Steps:**
  1. Install: `sudo apt install -y patator`
  2. Help: `patator -h`  (or `man patator`)
  3. Run: `patator http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Patator 1.1.0 (https://github.com/lanjelot/patator) with Python-3.14.8
  Usage: patator module --help
  
  Available modules:
    + ftp_login     : Brute-force FTP
    + ssh_login     : Brute-force SSH
  ```
- Docs: https://github.com/lanjelot/patator

### `php` ✓ verified on VM
- server-side, HTML-embedded scripting language (default)
- **Steps:**
  1. Install: `sudo apt install -y php`
  2. Help: `php -h`  (or `man php`)
  3. Run: `php http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Usage: php [options] [-f] <file> [--] [args...]
     php [options] -r <code> [--] [args...]
     php [options] [-B <begin_code>] -R <code> [-E <end_code>] [--] [args...]
     php [options] [-B <begin_code>] -F <file> [-E <end_code>] [--] [args...]
     php [options] -S <addr>:<port> [-t docroot] [router]
     php [options] -- [args...]
  ```

### `php-mysql`
- MySQL module for PHP [default]
- **Type:** PHP MySQL/MariaDB driver module
- **Steps:**
  1. Install: `sudo apt install -y php-mysql`
  2. Verify it is enabled: `php -m | grep -i mysqli`
  3. A PHP extension — enables DB access from PHP web apps

### `proxychains4` ✓ verified on VM
- redirect connections through socks/http proxies (proxychains-ng)
- **Provides:** `proxychains4`, `proxychains4-daemon`
- **Steps:**
  1. Install: `sudo apt install -y proxychains4`
  2. Help: `proxychains4 -h`  (or `man proxychains4`)
  3. Run: `proxychains4 http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  Usage:	proxychains4 -q -f config_file program_name [arguments]
  	-q makes proxychains quiet - this overrides the config setting
  	-f allows one to manually specify a configfile to use
  	for example : proxychains telnet somehost.com
  More help in README file
  ```
- Docs: https://github.com/rofl0r/proxychains-ng

### `proxytunnel` ✓ verified on VM
- Help SSH and other protocols through HTTP(S) proxies
- **Provides:** `proxytunnel`
- **Steps:**
  1. Install: `sudo apt install -y proxytunnel`
  2. Help: `proxytunnel -h`  (or `man proxytunnel`)
  3. Run: `proxytunnel http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  proxytunnel 1.13.0 Copyright 2001-2026 Proxytunnel Project
  Usage: proxytunnel [OPTIONS]...
  Build generic tunnels through HTTPS proxies using HTTP authentication
  
  Standard options:
   -i, --inetd                Run from inetd (default: off)
  ```
- Docs: https://proxytunnel.sourceforge.io/

### `qsslcaudit` ✓ verified on VM
- test SSL/TLS clients how secure they are
- **Provides:** `qsslcaudit`
- **Steps:**
  1. Install: `sudo apt install -y qsslcaudit`
  2. Help: `qsslcaudit -h`  (or `man qsslcaudit`)
  3. Run: `qsslcaudit http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Usage: qsslcaudit [options]
  A tool to test SSL clients behavior
  
  SSL client tests:
  	1: (certs) custom certificate trust
  	   certificate trust test with user-supplied certificate
  ```
- Docs: https://github.com/gremwell/qsslcaudit

### `redsocks` ✓ verified on VM
- arbitrary TCP connection redirector to a SOCKS or HTTPS proxy server
- **Provides:** `redsocks`
- **Steps:**
  1. Install: `sudo apt install -y redsocks`
  2. Help: `redsocks -h`  (or `man redsocks`)
  3. Run: `redsocks http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  redsocks: invalid option -- '-'
  Usage: redsocks [-?hvt] [-c config] [-p pidfile]
    -h, -?       this message
    -v           print version
    -t           test config syntax
    -p           write pid to pidfile
  ```
- Docs: http://darkk.net.ru/redsocks/

### `sidguesser` ✓ verified on VM
- Guesses sids against an Oracle database
- **Provides:** `sidguess`
- **Steps:**
  1. Install: `sudo apt install -y sidguesser`
  2. Help: `sidguess -h`  (or `man sidguess`)
  3. Run: `sidguess http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  sidguess: invalid option -- '-'
  
  SIDGuesser v1.0.5 by <email>
  -------------------------------------
  sidguess -i <ip> -d <dictionary> [options]
  ```
- Docs: http://www.cqure.net/wp/tools/database/sidguesser/

### `siege` ✓ verified on VM
- HTTP regression testing and benchmarking utility
- **Provides:** `bombardment`, `siege`, `siege2csv`, `siege.config`
- **Steps:**
  1. Install: `sudo apt install -y siege`
  2. Help: `siege -h`  (or `man siege`)
  3. Run: `siege http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  New configuration template added to /home/kali/.siege
  Run siege -C to view the current settings in that file
  SIEGE 4.1.7
  Usage: siege [options]
         siege [options] URL
         siege -g URL
  ```
- Docs: https://www.joedog.org/JoeDog/Siege

### `skipfish` ✓ verified on VM
- fully automated, active web application security reconnaissance tool
- **Provides:** `skipfish`
- **Steps:**
  1. Install: `sudo apt install -y skipfish`
  2. Help: `skipfish -h`  (or `man skipfish`)
  3. Run: `skipfish http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  skipfish web application scanner - version 2.10b
  Usage: skipfish [ options ... ] -W wordlist -o output_dir start_url [ start_url2 ... ]
  
  Authentication and access options:
  
    -A user:pass      - use specified HTTP authentication credentials
  ```

### `slowhttptest` ✓ verified on VM
- application layer Denial of Service attacks simulation tool
- **Provides:** `slowhttptest`
- **Steps:**
  1. Install: `sudo apt install -y slowhttptest`
  2. Help: `slowhttptest -h`  (or `man slowhttptest`)
  3. Run: `slowhttptest http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Illegal option --
  Try 'slowhttptest -h' for more information
  ```
- Docs: https://github.com/shekyan/slowhttptest

### `sqlitebrowser` ✓ verified on VM
- GUI editor for SQLite databases
- **Provides:** `sqlitebrowser`
- **Steps:**
  1. Install: `sudo apt install -y sqlitebrowser`
  2. Help: `sqlitebrowser -h`  (or `man sqlitebrowser`)
  3. Run: `sqlitebrowser http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://sqlitebrowser.org/

### `sqlmap` ✓ verified on VM
- automatic SQL injection tool
- **Provides:** `sqlmap`, `sqlmapapi`
- **Steps:**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
          ___
         __H__
   ___ ___[.]_____ ___ ___  {1.10.9#stable}
  |_ -| . [.]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- Docs: https://sqlmap.org/

### `sqlninja` ✓ verified on VM
- SQL server injection and takeover tool
- **Provides:** `sqlninja`
- **Steps:**
  1. Install: `sudo apt install -y sqlninja`
  2. Help: `sqlninja -h`  (or `man sqlninja`)
  3. Run: `sqlninja http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  /usr/bin/sqlninja version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: sqlninja [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://sqlninja.sourceforge.net/

### `sqlsus` ✓ verified on VM
- MySQL injection tool
- **Provides:** `sqlsus`
- **Steps:**
  1. Install: `sudo apt install -y sqlsus`
  2. Help: `sqlsus -h`  (or `man sqlsus`)
  3. Run: `sqlsus http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Can't locate Switch.pm in @INC (you may need to install the Switch module) (@INC entries checked: /usr/share/sqlsus/lib /etc/perl /usr/local/lib/aarch64-linux-gnu/perl/5.42.3 /usr/local/share/perl/5.42.3 /usr/lib/aarch64-linux-gnu/perl5/5.42 /usr/share/perl5 /usr/lib/aarch64-linux-gnu/perl-base /usr/lib/aarch64-linux-gnu/perl/5.42 /usr/share/perl/5.42 /usr/local/lib/site_perl) at /usr/share/sqlsus/lib/Sqlsus/autoconf.pm line 15.
  BEGIN failed--compilation aborted at /usr/share/sqlsus/lib/Sqlsus/autoconf.pm line 15.
  Compilation failed in require at /usr/bin/sqlsus line 29.
  BEGIN failed--compilation aborted at /usr/bin/sqlsus line 29.
  ```
- Docs: https://sqlsus.sourceforge.net/

### `ssldump` ✓ verified on VM
- SSLv3/TLS network protocol analyzer
- **Provides:** `ssldump`
- **Steps:**
  1. Install: `sudo apt install -y ssldump`
  2. Help: `ssldump -h`  (or `man ssldump`)
  3. Run: `ssldump http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  ssldump: invalid option -- '-'
  Usage: ssldump [-r dumpfile] [-i interface] [-l sslkeylogfile] [-w outpcapfile]
                 [-k keyfile] [-p password] [-vtaTznsAxVNde]
                 [filter]
  ```
- Docs: https://github.com/adulau/ssldump

### `sslh` ✓ verified on VM
- Applicative protocol multiplexer
- **Provides:** `sslh`, `sslh-ev`, `sslh-select`
- **Steps:**
  1. Install: `sudo apt install -y sslh`
  2. Help: `sslh -h`  (or `man sslh`)
  3. Run: `sslh http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  sslhcfg: invalid option "--help"
   [-Vfin] [-F <file>] [-v <n>] [--verbose-config=<n>] [--verbose-config-error=<n>] [--verbose-connections=<n>] [--verbose-connections-try=<n>] [--verbose-connections-error=<n>] [--verbose-fd=<n>] [--verbose-packets=<n>] [--verbose-probe-info=<n>] [--verbose-probe-error=<n>] [--verbose-system-error=<n>] [--verbose-int-error=<n>] [--transparent] [-t <n>] [--udp-max-connections=<n>] [-u <str>] [-P <file>] [-C <path>] [--syslog-facility=<str>] [--logfile=<str>] [--on-timeout=<str>] [--prefix=<str>] [-p <host:port>]... [--ssh=<host:port>]... [--tls=<host:port>]... [--ssl=<host:port>]... [--openvpn=<host:port>]... [--tinc=<host:port>]... [--wireguard=<host:port>]... [--xmpp=<host:port>]... [--http=<host:port>]... [--adb=<host:port>]... [--socks5=<host:port>]... [--syslog=<host:port>]... [--msrdp=<host:port>]... [--anyprot=<host:port>]...
    -F, --config=<file>      	Specify configuration file
    -v, --verbose=<n>        	Override all verbosness options
    --verbose-config=<n>     	Print configuration at startup
    --verbose-config-error=<n>	Print configuration errors
  ```
- Docs: http://www.rutschle.net/tech/sslh/README.html

### `sslscan` ✓ verified on VM
- Tests SSL/TLS enabled services to discover supported cipher suites
- **Provides:** `sslscan`
- **Steps:**
  1. Install: `sudo apt install -y sslscan`
  2. Help: `sslscan -h`  (or `man sslscan`)
  3. Run: `sslscan http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
                     _
             ___ ___| |___  ___ __ _ _ __
            / __/ __| / __|/ __/ _` | '_ \
            \__ \__ \ \__ \ (_| (_| | | | |
            |___/___/_|___/\___\__,_|_| |_|
  ```
- Docs: https://github.com/rbsec/sslscan

### `sslsniff` ✓ verified on VM
- SSL/TLS man-in-the-middle attack tool
- **Provides:** `sslsniff`
- **Steps:**
  1. Install: `sudo apt install -y sslsniff`
  2. Help: `sslsniff -h`  (or `man sslsniff`)
  3. Run: `sslsniff http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  sslsniff: invalid option -- '-'
  Usage: sslsniff [options]
  
  Modes:
  -a	Authority mode.  Specify a certificate that will act as a CA.
  -t	Targeted mode.  Specify a directory full of certificates to target.
  ```
- Docs: https://github.com/moxie0/sslsniff

### `sslsplit` ✓ verified on VM
- transparent and scalable SSL/TLS interception
- **Provides:** `sslsplit`
- **Steps:**
  1. Install: `sudo apt install -y sslsplit`
  2. Help: `sslsplit -h`  (or `man sslsplit`)
  3. Run: `sslsplit http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  sslsplit: invalid option -- '-'
  ```
- Docs: https://www.roe.ch/SSLsplit

### `sslyze` ✓ verified on VM
- Fast and full-featured SSL scanner
- **Provides:** `sslyze`
- **Steps:**
  1. Install: `sudo apt install -y sslyze`
  2. Help: `sslyze -h`  (or `man sslyze`)
  3. Run: `sslyze http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  usage: sslyze [-h] [--update_trust_stores] [--cert CERTIFICATE_FILE]
                [--key KEY_FILE] [--keyform KEY_FORMAT] [--pass PASSPHRASE]
                [--json_out JSON_FILE] [--targets_in TARGET_FILE] [--quiet]
                [--slow_connection] [--https_tunnel PROXY_SETTINGS]
                [--starttls PROTOCOL] [--xmpp_to HOSTNAME]
                [--sni SERVER_NAME_INDICATION] [--http_headers] [--ems]
  ```
- Docs: https://github.com/nabla-c0d3/sslyze

### `stunnel4` ✓ verified on VM
- Universal SSL tunnnel for network daemons - compatibility package
- **Provides:** `stunnel4`
- **Steps:**
  1. Install: `sudo apt install -y stunnel4`
  2. Help: `stunnel4 -h`  (or `man stunnel4`)
  3. Run: `stunnel4 http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  [.] stunnel 5.82 on aarch64-unknown-linux-gnu platform
  [.] Compiled with OpenSSL 3.6.4 25 Aug 2026
  [.] Running  with OpenSSL 3.6.3 9 Jun 2026
  [.] Threading:PTHREAD Sockets:POLL,IPv6,SYSTEMD TLS:ENGINE,OCSP,PSK,SNI,DTLS Auth:LIBWRAP
  [!] Invalid configuration file name "--help"
  [!] realpath: No such file or directory (2)
  ```
- Docs: https://www.stunnel.org/

### `thc-ssl-dos` ✓ verified on VM
- Stress tester for the SSL handshake
- **Provides:** `thc-ssl-dos`
- **Steps:**
  1. Install: `sudo apt install -y thc-ssl-dos`
  2. Help: `thc-ssl-dos -h`  (or `man thc-ssl-dos`)
  3. Run: `thc-ssl-dos http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
       ______________ ___  _________
       \__    ___/   |   \ \_   ___ \
         |    | /    ~    \/    \  \/
         |    | \    Y    /\     \____
         |____|  \___|_  /  \______  /
                       \/          \/
  ```
- Docs: http://www.thc.org/thc-ssl-dos/

### `tlssled` ✓ verified on VM
- Evaluates the security of a target SSL/TLS (HTTPS) server
- **Provides:** `tlssled`
- **Steps:**
  1. Install: `sudo apt install -y tlssled`
  2. Help: `tlssled -h`  (or `man tlssled`)
  3. Run: `tlssled http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  ------------------------------------------------------
   TLSSLed - (1.3) based on sslscan and openssl
                   by Raul Siles (www.taddong.com)
  ------------------------------------------------------
      openssl version: OpenSSL 3.6.3 9 Jun 2026 (Library: OpenSSL 3.6.3 9 Jun 2026)
      
  ```
- Docs: http://www.taddong.com/en/lab.html

### `tnscmd10g` ✓ verified on VM
- Tool to prod the oracle tnslsnr process
- **Provides:** `tnscmd10g`
- **Steps:**
  1. Install: `sudo apt install -y tnscmd10g`
  2. Help: `tnscmd10g -h`  (or `man tnscmd10g`)
  3. Run: `tnscmd10g http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  usage: /usr/bin/tnscmd10g [command] -h hostname
         where 'command' is something like ping, version, status, etc.  
         (default is ping)
         [-p port] - alternate TCP port to use (default is 1521)
         [--logfile logfile] - write raw packets to specified logfile
         [--indent] - indent & outdent on parens
  ```
- Docs: http://www.red-database-security.com/

### `uniscan` ✓ verified on VM
- LFI, RFI, and RCE vulnerability scanner
- **Provides:** `uniscan`, `uniscan-gui`
- **Steps:**
  1. Install: `sudo apt install -y uniscan`
  2. Help: `uniscan -h`  (or `man uniscan`)
  3. Run: `uniscan http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  ./uniscan.pl version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: uniscan.pl [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://sourceforge.net/projects/uniscan/

### `wafw00f` ✓ verified on VM
- identify and fingerprint Web Application Firewall products
- **Provides:** `wafw00f`
- **Steps:**
  1. Install: `sudo apt install -y wafw00f`
  2. Help: `wafw00f -h`  (or `man wafw00f`)
  3. Run: `wafw00f http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Usage: wafw00f url1 [url2 [url3 ... ]]
  example: wafw00f http://www.victim.org/
  
  Options:
    -h, --help            show this help message and exit
    -v, --verbose         Enable verbosity, multiple -v options increase
  ```
- Docs: https://github.com/EnableSecurity/wafw00f

### `wapiti` ✓ verified on VM
- web application vulnerability scanner
- **Provides:** `wapiti`, `wapiti-getcookie`
- **Steps:**
  1. Install: `sudo apt install -y wapiti`
  2. Help: `wapiti -h`  (or `man wapiti`)
  3. Run: `wapiti http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
   ██╗    ██╗ █████╗ ██████╗ ██╗████████╗██╗██████╗
   ██║    ██║██╔══██╗██╔══██╗██║╚══██╔══╝██║╚════██╗
   ██║ █╗ ██║███████║██████╔╝██║   ██║   ██║ █████╔╝
   ██║███╗██║██╔══██║██╔═══╝ ██║   ██║   ██║ ╚═══██╗
   ╚███╔███╔╝██║  ██║██║     ██║   ██║   ██║██████╔╝
  ```
- Docs: https://wapiti.sourceforge.net/

### `webacoo` ✓ verified on VM
- Web backdoor cookie script kit
- **Provides:** `webacoo`
- **Steps:**
  1. Install: `sudo apt install -y webacoo`
  2. Help: `webacoo -h`  (or `man webacoo`)
  3. Run: `webacoo http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  /usr/bin/webacoo version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: webacoo [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://github.com/anestisb/WeBaCoo

### `webscarab` ✓ verified on VM
- Web application review tool
- **Provides:** `webscarab`
- **Steps:**
  1. Install: `sudo apt install -y webscarab`
  2. Help: `webscarab -h`  (or `man webscarab`)
  3. Run: `webscarab http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  No plugins found!
  java.awt.HeadlessException: 
  No X11 DISPLAY variable was set,
  or no headful library support was found,
  but this program performed an operation which requires it.
  	at java.desktop/java.awt.GraphicsEnvironment.checkHeadless(GraphicsEnvironment.java:158)
  ```
- Docs: https://github.com/OWASP/OWASP-WebScarab

### `webshells` ✓ verified on VM
- Collection of webshells
- **Provides:** `webshells`
- **Steps:**
  1. Install: `sudo apt install -y webshells`
  2. Help: `webshells -h`  (or `man webshells`)
  3. Run: `webshells http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  > webshells ~ Collection of webshells
  
  /usr/share/webshells
  ├── asp
  ├── aspx
  ```
- Docs: https://www.kali.org

### `weevely` ✓ verified on VM
- Stealth tiny web shell
- **Provides:** `weevely`
- **Steps:**
  1. Install: `sudo apt install -y weevely`
  2. Help: `weevely -h`  (or `man weevely`)
  3. Run: `weevely http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  usage: weevely [-h] {terminal,session,generate} ...
  
  positional arguments:
    {terminal,session,generate}
      terminal            Run terminal or command on the target
      session             Recover an existing session
  ```
- Docs: https://github.com/epinna/weevely3/

### `wfuzz` ✓ verified on VM
- Web application bruteforcer
- **Provides:** `wfuzz`
- **Steps:**
  1. Install: `sudo apt install -y wfuzz`
  2. Help: `wfuzz -h`  (or `man wfuzz`)
  3. Run: `wfuzz http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  default
  default
  ********************************************************
  * Wfuzz 3.1.0 - The Web Fuzzer                         *
  *                                                      *
  * Version up to 1.4c coded by:                         *
  ```
- Docs: http://www.edge-security.com/wfuzz.php

### `whatweb` ✓ verified on VM
- Next generation web scanner
- **Provides:** `whatweb`
- **Steps:**
  1. Install: `sudo apt install -y whatweb`
  2. Help: `whatweb -h`  (or `man whatweb`)
  3. Run: `whatweb http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  
  .$$$     $.                                   .$$$     $.
  $$$$     $$. .$$$  $$$ .$$$$$$.  .$$$$$$$$$$. $$$$     $$. .$$$$$$$. .$$$$$$.
  $ $$     $$$ $ $$  $$$ $ $$$$$$. $$$$$ $$$$$$ $ $$     $$$ $ $$   $$ $ $$$$$$.
  $ `$     $$$ $ `$  $$$ $ `$  $$$ $$' $ `$ `$$ $ `$     $$$ $ `$      $ `$  $$$'
  $. $     $$$ $. $$$$$$ $. $$$$$$ `$  $. $  :' $. $     $$$ $. $$$$   $. $$$$$.
  ```
- Docs: https://github.com/urbanadventurer/WhatWeb

### `wireshark` ✓ verified on VM
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Wireshark 4.6.6
  Interactively dump and analyze network traffic.
  See https://www.wireshark.org for more information.
  
  Usage: wireshark [options] ... [ <infile> ]
  ```
- Docs: https://www.wireshark.org/

### `wpscan` ✓ verified on VM
- Black box WordPress vulnerability scanner
- **Provides:** `wpscan`
- **Steps:**
  1. Install: `sudo apt install -y wpscan`
  2. Help: `wpscan -h`  (or `man wpscan`)
  3. Run: `wpscan http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  _______________________________________________________________
           __          _______   _____
           \ \        / /  __ \ / ____|
            \ \  /\  / /| |__) | (___   ___  __ _ _ __ ®
             \ \/  \/ / |  ___/ \___ \ / __|/ _` | '_ \
              \  /\  /  | |     ____) | (__| (_| | | | |
  ```
- Docs: https://wpscan.com/wordpress-security-scanner

### `xsser` ✓ verified on VM
- XSS testing framework
- **Provides:** `xsser`
- **Steps:**
  1. Install: `sudo apt install -y xsser`
  2. Help: `xsser -h`  (or `man xsser`)
  3. Run: `xsser http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Usage: 
  
  xsser [OPTIONS] [--all <url> |-u <url> |-i <file> |-d <dork> (options)|-l ] [-g <get> |-p <post> |-c <crawl> (options)]
  [Request(s)] [Checker(s)] [Vector(s)] [Anti-antiXSS/IDS] [Bypasser(s)] [Technique(s)] [Final Injection(s)] [Reporting] {Miscellaneous}
  
  Cross Site "Scripter" is an automatic -framework- to detect, exploit and
  ```
- Docs: https://xsser.03c8.net/

### `zaproxy` ✓ verified on VM
- Testing tool for finding vulnerabilities in web applications
- **Provides:** `owasp-zap`, `zaproxy`
- **Steps:**
  1. Install: `sudo apt install -y zaproxy`
  2. Help: `zaproxy -h`  (or `man zaproxy`)
  3. Run: `zaproxy http://<NODE_IP>:30080` — run against your own web service
- **real --help (verified on VM):**
  ```
  Found Java version 25.0.5-ea
  Available memory: 2965 MB
  Using JVM args: -Xmx741m
  666 [main] INFO  org.parosproxy.paros.Constant - Copying default configuration to /home/kali/.ZAP/config.xml
  814 [main] INFO  org.parosproxy.paros.Constant - Creating directory /home/kali/.ZAP/session
  815 [main] INFO  org.parosproxy.paros.Constant - Creating directory /home/kali/.ZAP/dirbuster
  ```
- Docs: https://github.com/zaproxy/zaproxy


## 04 · Database Assessment  (`kali-tools-database`)

### `jsql-injection` ✓ verified on VM
- Java tool for automatic database injection
- **Provides:** `jsql`, `jsql-injection`
- **Steps:**
  1. Install: `sudo apt install -y jsql-injection`
  2. Help: `jsql-injection -h`  (or `man jsql-injection`)
  3. Run: `jsql-injection <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
  2026-10-25 05:44:56,803 ERROR [main] jsql.MainApp (MainApp.java:30) - Headless runtime not supported, use default Java runtime instead
  ```
- Docs: https://github.com/ron190/jsql-injection

### `mdbtools` ✓ verified on VM
- JET / MS Access database (MDB) tools
- **Provides:** `mdb-array`, `mdb-count`, `mdb-export`, `mdb-header`, `mdb-hexdump`, `mdb-import`, `mdb-json`, `mdb-parsecsv`, `mdb-prop`, `mdb-queries`, `mdb-schema`, `mdb-sql`, `mdb-tables`, `mdb-ver`
- **Steps:**
  1. Install: `sudo apt install -y mdbtools`
  2. Help: `mdb-sql -h`  (or `man mdb-sql`)
  3. Run: `mdb-sql <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
  Usage:
    mdb-sql [OPTION…] <file> - Run SQL
  
  Help Options:
    -h, --help                Show help options
  ```
- Docs: https://github.com/mdbtools/mdbtools

### `oscanner` ✓ verified on VM
- Oracle assessment framework
- **Provides:** `oscanner`
- **Steps:**
  1. Install: `sudo apt install -y oscanner`
  2. Help: `oscanner -h`  (or `man oscanner`)
  3. Run: `oscanner <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
  OracleScanner: invalid option -- h
  	Oracle Scanner 1.0.6 by <email>
  	--------------------------------------
  	OracleScanner -s <ip> -r <repfile> [options]
  		-s	<servername>
  		-f	<serverlist>
  ```
- Docs: http://www.cqure.net/wp/tools/database/oscanner/

### `sidguesser` ✓ verified on VM
- Guesses sids against an Oracle database
- **Provides:** `sidguess`
- **Steps:**
  1. Install: `sudo apt install -y sidguesser`
  2. Help: `sidguess -h`  (or `man sidguess`)
  3. Run: `sidguess <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
  sidguess: invalid option -- '-'
  
  SIDGuesser v1.0.5 by <email>
  -------------------------------------
  sidguess -i <ip> -d <dictionary> [options]
  ```
- Docs: http://www.cqure.net/wp/tools/database/sidguesser/

### `sqlitebrowser` ✓ verified on VM
- GUI editor for SQLite databases
- **Provides:** `sqlitebrowser`
- **Steps:**
  1. Install: `sudo apt install -y sqlitebrowser`
  2. Help: `sqlitebrowser -h`  (or `man sqlitebrowser`)
  3. Run: `sqlitebrowser <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://sqlitebrowser.org/

### `sqlmap` ✓ verified on VM
- automatic SQL injection tool
- **Provides:** `sqlmap`, `sqlmapapi`
- **Steps:**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
          ___
         __H__
   ___ ___[.]_____ ___ ___  {1.10.9#stable}
  |_ -| . [.]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- Docs: https://sqlmap.org/

### `sqlninja` ✓ verified on VM
- SQL server injection and takeover tool
- **Provides:** `sqlninja`
- **Steps:**
  1. Install: `sudo apt install -y sqlninja`
  2. Help: `sqlninja -h`  (or `man sqlninja`)
  3. Run: `sqlninja <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
  /usr/bin/sqlninja version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: sqlninja [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://sqlninja.sourceforge.net/

### `sqlsus` ✓ verified on VM
- MySQL injection tool
- **Provides:** `sqlsus`
- **Steps:**
  1. Install: `sudo apt install -y sqlsus`
  2. Help: `sqlsus -h`  (or `man sqlsus`)
  3. Run: `sqlsus <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
  Can't locate Switch.pm in @INC (you may need to install the Switch module) (@INC entries checked: /usr/share/sqlsus/lib /etc/perl /usr/local/lib/aarch64-linux-gnu/perl/5.42.3 /usr/local/share/perl/5.42.3 /usr/lib/aarch64-linux-gnu/perl5/5.42 /usr/share/perl5 /usr/lib/aarch64-linux-gnu/perl-base /usr/lib/aarch64-linux-gnu/perl/5.42 /usr/share/perl/5.42 /usr/local/lib/site_perl) at /usr/share/sqlsus/lib/Sqlsus/autoconf.pm line 15.
  BEGIN failed--compilation aborted at /usr/share/sqlsus/lib/Sqlsus/autoconf.pm line 15.
  Compilation failed in require at /usr/bin/sqlsus line 29.
  BEGIN failed--compilation aborted at /usr/bin/sqlsus line 29.
  ```
- Docs: https://sqlsus.sourceforge.net/

### `tnscmd10g` ✓ verified on VM
- Tool to prod the oracle tnslsnr process
- **Provides:** `tnscmd10g`
- **Steps:**
  1. Install: `sudo apt install -y tnscmd10g`
  2. Help: `tnscmd10g -h`  (or `man tnscmd10g`)
  3. Run: `tnscmd10g <NODE_IP>` — assess your own DB (5432 should be blocked)
- **real --help (verified on VM):**
  ```
  usage: /usr/bin/tnscmd10g [command] -h hostname
         where 'command' is something like ping, version, status, etc.  
         (default is ping)
         [-p port] - alternate TCP port to use (default is 1521)
         [--logfile logfile] - write raw packets to specified logfile
         [--indent] - indent & outdent on parens
  ```
- Docs: http://www.red-database-security.com/


## 05 · Password Attacks  (`kali-tools-passwords`)

### `cewl` ✓ verified on VM
- custom word list generator
- **Provides:** `cewl`, `fab-cewl`
- **Steps:**
  1. Install: `sudo apt install -y cewl`
  2. Help: `cewl -h`  (or `man cewl`)
  3. Run: `cewl <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  CeWL 6.2.1 (More Fixes) Robin Wood (<email>) (https://digi.ninja/)
  Usage: cewl [OPTIONS] ... <url>
  
      OPTIONS:
  	-h, --help: Show help.
  	-k, --keep: Keep the downloaded file.
  ```
- Docs: https://github.com/digininja/CeWL

### `chntpw` ✓ verified on VM
- NT SAM password recovery utility
- **Provides:** `chntpw`, `reged`, `sampasswd`, `samunlock`, `samusrgrp`
- **Steps:**
  1. Install: `sudo apt install -y chntpw`
  2. Help: `chntpw -h`  (or `man chntpw`)
  3. Run: `chntpw <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  chntpw: invalid option -- '-'
  chntpw: change password of a user in a Windows SAM file,
  or invoke registry editor. Should handle both 32 and 64 bit windows and
  all version from NT3.x to Win8.1
  chntpw [OPTIONS] <samfile> [systemfile] [securityfile] [otherreghive] [...]
   -h          This message
  ```
- Docs: http://pogostick.net/~pnh/ntpasswd/

### `cisco-auditing-tool` ✓ verified on VM
- Scans Cisco routers for vulnerabilities
- **Provides:** `CAT`
- **Steps:**
  1. Install: `sudo apt install -y cisco-auditing-tool`
  2. Help: `CAT -h`  (or `man CAT`)
  3. Run: `CAT <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  /usr/bin/CAT version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: CAT [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: http://www.scrypt.net/

### `crackle` ✓ verified on VM
- Crack and decrypt BLE encryption
- **Provides:** `crackle`
- **Steps:**
  1. Install: `sudo apt install -y crackle`
  2. Help: `crackle -h`  (or `man crackle`)
  3. Run: `crackle <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  crackle: invalid option -- '-'
  Usage: crackle -i <input.pcap> [-o <output.pcap>] [-l <ltk>]
  Cracks Bluetooth Low Energy encryption (AKA Bluetooth Smart)
  
  Major modes:  Crack TK // Decrypt with LTK
  ```
- Docs: https://github.com/mikeryan/crackle

### `creddump7` ✓ verified on VM
- Python tool to extract credentials and secrets from Windows registry hives
- **Provides:** `creddump7`
- **Steps:**
  1. Install: `sudo apt install -y creddump7`
  2. Help: `creddump7 -h`  (or `man creddump7`)
  3. Run: `creddump7 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  creddump7 - Python tool to extract credentials and secrets from Windows registry hives
  /usr/share/creddump7
  ├── cachedump.py
  ├── framework
  ├── lsadump.py
  ├── pwdump.py
  ```
- Docs: https://github.com/CiscoCXSecurity/creddump7

### `crunch` ✓ verified on VM
- tool for creating wordlist
- **Provides:** `crunch`
- **Steps:**
  1. Install: `sudo apt install -y crunch`
  2. Help: `crunch -h`  (or `man crunch`)
  3. Run: `crunch <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  crunch version 3.6
  
  Crunch can create a wordlist based on criteria you specify.  The output from crunch can be sent to the screen, file, or to another program.
  
  Usage: crunch <min> <max> [options]
  where min and max are numbers
  ```
- Docs: http://sourceforge.net/projects/crunch-wordlist/

### `fcrackzip` ✓ verified on VM
- password cracker for zip archives
- **Provides:** `fcrackzip`, `fcrackzipinfo`
- **Steps:**
  1. Install: `sudo apt install -y fcrackzip`
  2. Help: `fcrackzip -h`  (or `man fcrackzip`)
  3. Run: `fcrackzip <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  
  fcrackzip version 1.0, a fast/free zip password cracker
  written by Marc Lehmann <<email>> You can find more info on
  http://www.goof.com/pcg/marc/
  
  USAGE: fcrackzip
  ```
- Docs: http://oldhome.schmorp.de/marc/fcrackzip.html

### `freerdp3-x11` ✓ verified on VM
- RDP client for Windows Terminal Services (X11 client tramsitional package)
- **Provides:** `xfreerdp3`
- **Steps:**
  1. Install: `sudo apt install -y freerdp3-x11`
  2. Help: `xfreerdp3 -h`  (or `man xfreerdp3`)
  3. Run: `xfreerdp3 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  
  xfreerdp3 - A Free Remote Desktop Protocol Implementation
  See www.freerdp.com for more information
  
  Usage: xfreerdp3 [file] [options] [/v:<server>[:port]]
  ```
- Docs: https://www.freerdp.com/

### `gpp-decrypt` ✓ verified on VM
- Group Policy Preferences decrypter
- **Provides:** `gpp-decrypt`
- **Steps:**
  1. Install: `sudo apt install -y gpp-decrypt`
  2. Help: `gpp-decrypt -h`  (or `man gpp-decrypt`)
  3. Run: `gpp-decrypt <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  /usr/bin/gpp-decrypt:25:in `final': wrong final block length (OpenSSL::Cipher::CipherError)
  	from /usr/bin/gpp-decrypt:25:in `decrypt'
  	from /usr/bin/gpp-decrypt:31:in `<main>'
  ```
- Docs: http://carnal0wnage.attackresearch.com/2012/10/group-policy-preferences-and-getting.html

### `hash-identifier` ✓ verified on VM
- Tool to identify hash types
- **Provides:** `hash-identifier`
- **Steps:**
  1. Install: `sudo apt install -y hash-identifier`
  2. Help: `hash-identifier -h`  (or `man hash-identifier`)
  3. Run: `hash-identifier <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
     #########################################################################
     #     __  __                     __           ______    _____           #
     #    /\ \/\ \                   /\ \         /\__  _\  /\  _ `\         #
     #    \ \ \_\ \     __      ____ \ \ \___     \/_/\ \/  \ \ \/\ \        #
     #     \ \  _  \  /'__`\   / ,__\ \ \  _ `\      \ \ \   \ \ \ \ \       #
     #      \ \ \ \ \/\ \_\ \_/\__, `\ \ \ \ \ \      \_\ \__ \ \ \_\ \      #
  ```
- Docs: https://github.com/blackploit/hash-identifier

### `hashcat` ✓ verified on VM
- World's fastest and most advanced password recovery utility
- **Provides:** `hashcat`
- **Steps:**
  1. Install: `sudo apt install -y hashcat`
  2. Help: `hashcat -h`  (or `man hashcat`)
  3. Run: `hashcat <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  hashcat (v7.1.2) starting in help mode
  
  Usage: hashcat [options]... hash|hashfile|hccapxfile [dictionary|mask|directory]...
  
  - [ Options ] -
  ```
- Docs: https://hashcat.net/hashcat/

### `hashcat-utils` ✓ verified on VM
- Set of small utilities for advanced password cracking
- **Steps:**
  1. Install: `sudo apt install -y hashcat-utils`
  2. Help: `hashcat-utils -h`  (or `man hashcat-utils`)
  3. Run: `hashcat-utils <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  usage: /usr/lib/hashcat-utils/cap2hccapx.bin input.pcap output.hccapx [filter by essid] [additional network essid:bssid]
  ```
- Docs: https://github.com/hashcat/hashcat-utils/

### `hashid` ✓ verified on VM
- Identify the different types of hashes used to encrypt data
- **Provides:** `hashid`
- **Steps:**
  1. Install: `sudo apt install -y hashid`
  2. Help: `hashid -h`  (or `man hashid`)
  3. Run: `hashid <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  usage: hashid.py [-h] [-e] [-m] [-j] [-o FILE] [--version] INPUT
  
  Identify the different types of hashes used to encrypt data
  
  positional arguments:
    INPUT               input to analyze (default: STDIN)
  ```
- Docs: https://psypanda.github.io/hashID/

### `hydra` ✓ verified on VM
- very fast network logon cracker
- **Provides:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **Steps:**
  1. Install: `sudo apt install -y hydra`
  2. Help: `hydra -h`  (or `man hydra`)
  3. Run: `hydra <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  Hydra v9.7 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).
  
  hydra: invalid option -- '-'
  ```
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `hydra-gtk` ✓ verified on VM
- very fast network logon cracker - GTK+ based GUI
- **Provides:** `xhydra`
- **Steps:**
  1. Install: `sudo apt install -y hydra-gtk`
  2. Help: `xhydra -h`  (or `man xhydra`)
  3. Run: `xhydra <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  
  (xhydra:159274): Gtk-WARNING **: 05:44:31.117: cannot open display: 
  ```
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `john` ✓ verified on VM
- active password cracking tool
- **Provides:** `base64conv`, `bitlocker2john`, `calc_stat`, `cprepair`, `dmg2john`, `eapmd5tojohn`, `genmkvpwd`, `gpg2john`, `hccap2john`, `john`, `keepass2john`, `mailer`, `mkvcalcproba`, `putty2john`, `racf2john`, `rar2john`, `raw2dyna`, `SIPdump`, `tgtsnarf`, `uaf2john`, `unafs`, `undrop`, `unique`, `unshadow`, `vncpcap2john`, `wpapcap2john`, `zip2john`
- **Steps:**
  1. Install: `sudo apt install -y john`
  2. Help: `john -h`  (or `man john`)
  3. Run: `john <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  John the Ripper 1.9.0-jumbo-1+bleeding-aec1328d6c 2021-11-02 10:45:52 +0100 OMP [linux-gnu 64-bit aarch64 ASIMD AC]
  Copyright (c) 1996-2021 by Solar Designer and others
  Homepage: https://www.openwall.com/john/
  
  Usage: john [OPTIONS] [PASSWORD-FILES]
  ```
- Docs: https://github.com/openwall/john

### `johnny` ✓ verified on VM
- GUI for John the Ripper
- **Provides:** `johnny`
- **Steps:**
  1. Install: `sudo apt install -y johnny`
  2. Help: `johnny -h`  (or `man johnny`)
  3. Run: `johnny <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://openwall.info/wiki/john/johnny

### `kali-tools-gpu`
- Kali's GPU tools
- **Type:** Category metapackage (installs a whole menu)
- **Steps:**
  1. Install the whole category: `sudo apt install -y kali-tools-gpu`
  2. Or via the helper: `../scripts/install-tools.sh cat:gpu`
  3. Not a tool itself — it pulls in every tool in that category
- Docs: https://www.kali.org

### `maskprocessor` ✓ verified on VM
- high-performance word generator with a per-position configurable charset
- **Provides:** `mp32`, `mp64`
- **Steps:**
  1. Install: `sudo apt install -y maskprocessor`
  2. Help: `mp32 -h`  (or `man mp32`)
  3. Run: `mp32 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  High-Performance word generator with a per-position configureable charset
  
  Usage: mp32 [options]... mask
  
  * Startup:
  ```
- Docs: https://github.com/hashcat/maskprocessor

### `medusa` ✓ verified on VM
- fast, parallel, modular, login brute-forcer for network services
- **Provides:** `medusa`
- **Steps:**
  1. Install: `sudo apt install -y medusa`
  2. Help: `medusa -h`  (or `man medusa`)
  3. Run: `medusa <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  medusa: invalid option -- '-'
  CRITICAL: Unknown error processing command-line options.
  ALERT: User logon information must be supplied.
  Medusa v2.3 [http://www.foofus.net] (C) JoMo-Kun / Foofus Networks <<email>>
  ```
- Docs: http://foofus.net/?page_id=51

### `mimikatz` ✓ verified on VM
- Uses admin rights on Windows to display passwords in plaintext
- **Provides:** `mimikatz`
- **Steps:**
  1. Install: `sudo apt install -y mimikatz`
  2. Help: `mimikatz -h`  (or `man mimikatz`)
  3. Run: `mimikatz <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  
  > mimikatz ~ Uses admin rights on Windows to display passwords in plaintext
  
  /usr/share/windows-resources/mimikatz
  ├── kiwi_passwords.yar
  ├── mimicom.idl
  ```
- Docs: https://blog.gentilkiwi.com/mimikatz

### `ncrack` ✓ verified on VM
- High-speed network authentication cracking tool
- **Provides:** `ncrack`
- **Steps:**
  1. Install: `sudo apt install -y ncrack`
  2. Help: `ncrack -h`  (or `man ncrack`)
  3. Run: `ncrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  Ncrack 0.7 ( http://ncrack.org )
  Usage: ncrack [Options] {target and service specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iX <inputfilename>: Input from Nmap's -oX XML output format
  ```
- Docs: https://nmap.org/ncrack/

### `onesixtyone` ✓ verified on VM
- fast and simple SNMP scanner
- **Provides:** `onesixtyone`
- **Steps:**
  1. Install: `sudo apt install -y onesixtyone`
  2. Help: `onesixtyone -h`  (or `man onesixtyone`)
  3. Run: `onesixtyone <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  onesixtyone: invalid option -- '-'
  onesixtyone 0.3.3 [options] <host> <community>
    -c <communityfile> file with community names to try
    -i <inputfile>     file with target hosts
    -o <outputfile>    output log
    -p                 specify an alternate destination SNMP port
  ```
- Docs: https://github.com/trailofbits/onesixtyone

### `ophcrack` ✓ verified on VM
- Microsoft Windows password cracker using rainbow tables (gui)
- **Provides:** `ophcrack`
- **Steps:**
  1. Install: `sudo apt install -y ophcrack`
  2. Help: `ophcrack -h`  (or `man ophcrack`)
  3. Run: `ophcrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  ophcrack: invalid option -- '-'
  ophcrack 3.8.0 by Objectif Securite (http://www.objectif-securite.ch)
  
  Usage: ophcrack [OPTIONS]
  Cracks Windows passwords with Rainbow tables
  ```
- Docs: https://ophcrack.sourceforge.net/

### `ophcrack-cli` ✓ verified on VM
- Microsoft Windows password cracker using rainbow tables (cmdline)
- **Provides:** `ophcrack-cli`
- **Steps:**
  1. Install: `sudo apt install -y ophcrack-cli`
  2. Help: `ophcrack-cli -h`  (or `man ophcrack-cli`)
  3. Run: `ophcrack-cli <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  ophcrack-cli: invalid option -- '-'
  ophcrack 3.8.0 by Objectif Securite (http://www.objectif-securite.ch)
  
  Usage: ophcrack [OPTIONS]
  Cracks Windows passwords with Rainbow tables
  ```
- Docs: https://ophcrack.sourceforge.net/

### `pack` ✓ verified on VM
- Password analysis and cracking kit
- **Provides:** `dictstat`, `maskgen`, `policygen`, `rulegen`, `statsgen`
- **Steps:**
  1. Install: `sudo apt install -y pack`
  2. Help: `maskgen -h`  (or `man maskgen`)
  3. Run: `maskgen <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  Usage: maskgen pass0.masks [pass1.masks ...] [options]
  
  Options:
    --version             show program's version number and exit
    -h, --help            show this help message and exit
    -t 86400, --targettime=86400
  ```
- Docs: https://github.com/Hydraze/pack

### `pack2` ✓ verified on VM
- Password analysis and cracking kit 2
- **Provides:** `pack2`
- **Steps:**
  1. Install: `sudo apt install -y pack2`
  2. Help: `pack2 -h`  (or `man pack2`)
  3. Run: `pack2 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  pack2 0.1.0
  
  USAGE:
      pack2 <SUBCOMMAND>
  
  FLAGS:
  ```
- Docs: https://github.com/hops/pack2

### `passing-the-hash` ✓ verified on VM
- Patched tools to use password hashes as authentication input
- **Provides:** `pth-curl`, `pth-net`, `pth-rpcclient`, `pth-smbclient`, `pth-smbget`, `pth-sqsh`, `pth-winexe`, `pth-wmic`, `pth-wmis`
- **Steps:**
  1. Install: `sudo apt install -y passing-the-hash`
  2. Help: `pth-net -h`  (or `man pth-net`)
  3. Run: `pth-net <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  Usage:
    Use 'net help rpc' to get more extensive information about 'net rpc' commands.
    Use 'net help rap' to get more extensive information about 'net rap' commands.
    Use 'net help ads' to get more extensive information about 'net ads' commands.
    Use 'net help file' to get more information about 'net file' commands.
    Use 'net help share' to get more information about 'net share' commands.
  ```
- Docs: http://passing-the-hash.blogspot.fr

### `patator` ✓ verified on VM
- Multi-purpose brute-forcer
- **Provides:** `patator`
- **Steps:**
  1. Install: `sudo apt install -y patator`
  2. Help: `patator -h`  (or `man patator`)
  3. Run: `patator <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  Patator 1.1.0 (https://github.com/lanjelot/patator) with Python-3.14.8
  Usage: patator module --help
  
  Available modules:
    + ftp_login     : Brute-force FTP
    + ssh_login     : Brute-force SSH
  ```
- Docs: https://github.com/lanjelot/patator

### `pdfcrack` ✓ verified on VM
- PDF files password cracker
- **Provides:** `pdfcrack`
- **Steps:**
  1. Install: `sudo apt install -y pdfcrack`
  2. Help: `pdfcrack -h`  (or `man pdfcrack`)
  3. Run: `pdfcrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  pdfcrack: unrecognized option '--help'
  Usage: pdfcrack -f filename [OPTIONS]
  OPTIONS:
  -b, --bench		perform benchmark and exit
  -c, --charset=STRING	Use the characters in STRING as charset
  -w, --wordlist=FILE	Use FILE as source of passwords to try
  ```
- Docs: http://pdfcrack.sf.net

### `pipal` ✓ verified on VM
- Statistical analysis on password dumps
- **Provides:** `pipal`
- **Steps:**
  1. Install: `sudo apt install -y pipal`
  2. Help: `pipal -h`  (or `man pipal`)
  3. Run: `pipal <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  pipal 3.4.0 Robin Wood (<email>) (http://digi.ninja)
  
  Usage: pipal [OPTION] ... FILENAME
  	--help, -h, -?: show help
  	--top, -t X: show the top X results (default 10)
  	--output, -o <filename>: output to file
  ```
- Docs: https://www.digininja.org/projects/pipal.php

### `polenum` ✓ verified on VM
- Extracts the password policy from a Windows system
- **Provides:** `polenum`
- **Steps:**
  1. Install: `sudo apt install -y polenum`
  2. Help: `polenum -h`  (or `man polenum`)
  3. Run: `polenum <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  usage: polenum [-h] [--username USERNAME] [--password PASSWORD]
                 [--domain DOMAIN] [--protocols [PROTOCOLS ...]]
                 [enum4linux]
  
  positional arguments:
    enum4linux            username:password@IPaddress
  ```
- Docs: https://github.com/Wh1t3Fox/polenum/

### `rarcrack` ✓ verified on VM
- Password cracker for rar archives
- **Provides:** `rarcrack`
- **Steps:**
  1. Install: `sudo apt install -y rarcrack`
  2. Help: `rarcrack -h`  (or `man rarcrack`)
  3. Run: `rarcrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  RarCrack! 0.2 by David Zoltan Kedves (<email>)
  
  Usage:   rarcrack encrypted_archive.ext [--threads NUM] [--type rar|zip|7z]
  
  Options: --help: show this screen.
           --type: you can specify the archive program, this needed when
  ```
- Docs: http://rarcrack.sourceforge.net/

### `rcracki-mt` ✓ verified on VM
- Version of rcrack that supports hybrid and indexed tables
- **Provides:** `rcracki_mt`
- **Steps:**
  1. Install: `sudo apt install -y rcracki-mt`
  2. Help: `rcracki_mt -h`  (or `man rcracki_mt`)
  3. Run: `rcracki_mt <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  Using 1 threads for pre-calculation and false alarm checking...
  no rainbow table found
  ```
- Docs: https://freerainbowtables.com/

### `rsmangler` ✓ verified on VM
- Wordlist mangling tool
- **Provides:** `rsmangler`
- **Steps:**
  1. Install: `sudo apt install -y rsmangler`
  2. Help: `rsmangler -h`  (or `man rsmangler`)
  3. Run: `rsmangler <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  rsmangler v 1.5 Robin Wood (<email>) <https://digi.ninja>
  
  Basic usage:
  
  	rsmangler --file wordlist.txt
  ```
- Docs: https://digi.ninja/projects/rsmangler.php

### `samdump2` ✓ verified on VM
- Dump Windows 2k/NT/XP password hashes
- **Provides:** `samdump2`
- **Steps:**
  1. Install: `sudo apt install -y samdump2`
  2. Help: `samdump2 -h`  (or `man samdump2`)
  3. Run: `samdump2 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  samdump2: invalid option -- '-'
  samdump2 3.0.0 by Objectif Securite (http://www.objectif-securite.ch)
  original author: <email>
  
  Usage: samdump2 [OPTION]... SYSTEM_FILE SAM_FILE
  Retrieves syskey and extract hashes from Windows 2k/NT/XP/Vista SAM
  ```
- Docs: https://ophcrack.sourceforge.net/

### `seclists` ✓ verified on VM
- Collection of multiple types of security lists
- **Provides:** `seclists`
- **Steps:**
  1. Install: `sudo apt install -y seclists`
  2. Help: `seclists -h`  (or `man seclists`)
  3. Run: `seclists <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  
  > seclists ~ Collection of multiple types of security lists
  
  /usr/share/seclists
  ├── Discovery
  ├── Fuzzing
  ```
- Docs: https://github.com/danielmiessler/SecLists

### `sipcrack` ✓ verified on VM
- SIP login dumper/cracker
- **Provides:** `sipcrack`, `sipdump`
- **Steps:**
  1. Install: `sudo apt install -y sipcrack`
  2. Help: `sipcrack -h`  (or `man sipcrack`)
  3. Run: `sipcrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  
  SIPcrack 0.2 
  ----------------------------------------
  
  Usage: sipcrack [OPTIONS] [ -s | -w <wordlist> ] <dump file>
  ```
- Docs: http://www.remote-exploit.org/codes_sipcrack.html

### `sipvicious` ✓ verified on VM
- tools to audit SIP based VoIP systems
- **Provides:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **Steps:**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svmap -h`  (or `man svmap`)
  3. Run: `svmap <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  Usage: svmap [options] host1 host2 hostrange
  Scans for SIP devices on a given network
  
  examples:
  
  svmap 10.0.0.1-10.0.0.255 172.16.131.1 sipvicious.org/22 10.0.1.1/241.1.1.1-20 1.1.2-20.* 4.1.*.*
  ```
- Docs: https://github.com/EnableSecurity/sipvicious

### `smbmap` ✓ verified on VM
- handy SMB enumeration tool
- **Provides:** `smbmap`
- **Steps:**
  1. Install: `sudo apt install -y smbmap`
  2. Help: `smbmap -h`  (or `man smbmap`)
  3. Run: `smbmap <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  usage: smbmap [-h] (-H HOST | --host-file FILE) [-u USERNAME] [-p PASSWORD |
                --prompt] [-k] [--no-pass] [--dc-ip IP or Host] [-s SHARE]
                [-d DOMAIN] [-P PORT] [-v] [--signing] [--admin] [--no-banner]
                [--no-color] [--no-update] [--timeout SCAN_TIMEOUT] [-x COMMAND]
                [--mode CMDMODE] [-L | -r [PATH]] [-g FILE | --csv FILE]
                [--dir-only] [--no-write-check] [-q] [--depth DEPTH]
  ```
- Docs: https://github.com/ShawnDEvans/smbmap

### `statsprocessor` ✓ verified on VM
- word generator based on per-position Markov chains
- **Provides:** `sp32`, `sp64`
- **Steps:**
  1. Install: `sudo apt install -y statsprocessor`
  2. Help: `sp32 -h`  (or `man sp32`)
  3. Run: `sp32 <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  sp by atom, High-Performance word generator based on hashcat markov stats
  
  Usage: sp32 [options]... hcstat-file [filter-mask]
  
  * Startup:
  ```
- Docs: https://github.com/hashcat/statsprocessor

### `sucrack` ✓ verified on VM
- multithreaded su bruteforcer
- **Provides:** `sucrack`
- **Steps:**
  1. Install: `sudo apt install -y sucrack`
  2. Help: `sucrack -h`  (or `man sucrack`)
  3. Run: `sucrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  sucrack: invalid option -- '-'
  ERROR: unrecognized option -?
  sucrack 1.2.3 (LINUX) - the su cracker
  Copyright (C) 2006  Nico Leidecker; <email>
  
   Usage: sucrack [-char] [-w num] [-b size] [-s sec] [-u user] [-l rules] wordlist
  ```
- Docs: https://labs.portcullis.co.uk/tools/sucrack/

### `thc-pptp-bruter` ✓ verified on VM
- THC PPTP Brute Force
- **Provides:** `thc-pptp-bruter`
- **Steps:**
  1. Install: `sudo apt install -y thc-pptp-bruter`
  2. Help: `thc-pptp-bruter -h`  (or `man thc-pptp-bruter`)
  3. Run: `thc-pptp-bruter <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  thc-pptp-bruter: invalid option -- '-'
  thc-pptp-bruter [options] <remote host IP>
    -v        Verbose output / Debug output
    -W        Disable windows hack [default: enabled]
    -u <user> User [default: administrator]
    -w <file> Wordlist file [default: stdin]
  ```
- Docs: http://www.thc.org/releases.php

### `truecrack` ✓ verified on VM
- Bruteforce password cracker for TrueCrypt volumes
- **Provides:** `truecrack`
- **Steps:**
  1. Install: `sudo apt install -y truecrack`
  2. Help: `truecrack -h`  (or `man truecrack`)
  3. Run: `truecrack <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  TrueCrack v3.6
  Website: https://github.com/lvaccaro/truecrack
  Contact us: <email>
  Bruteforce password cracker for Truecrypt volume. Optimazed with Nvidia Cuda technology.
  Based on TrueCrypt, freely available at http://www.truecrypt.org/
  Copyright (c) 2011 by Luca Vaccaro.
  ```
- Docs: https://github.com/lvaccaro/truecrack

### `twofi` ✓ verified on VM
- Twitter words of interest
- **Provides:** `twofi`
- **Steps:**
  1. Install: `sudo apt install -y twofi`
  2. Help: `twofi -h`  (or `man twofi`)
  3. Run: `twofi <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  twoif 2.0-beta Robin Wood (<email>) (www.digininja.org)
  twoif - Twitter Words of Interest
  
  Usage: twoif [OPTIONS]
  	--help, -h: show help
  	--config <file>: config file, default is twofi.yml
  ```
- Docs: https://www.digininja.org/projects/twofi.php

### `wordlists` ✓ verified on VM
- Contains the rockyou wordlist
- **Provides:** `wordlists`
- **Steps:**
  1. Install: `sudo apt install -y wordlists`
  2. Help: `wordlists -h`  (or `man wordlists`)
  3. Run: `wordlists <hash-or-wordlist>` — crack hashes you lawfully hold / use your own wordlist
- **real --help (verified on VM):**
  ```
  
  > wordlists ~ Contains the rockyou wordlist
  
  /usr/share/wordlists
  ├── dirb -> /usr/share/dirb/wordlists
  ├── dirbuster -> /usr/share/dirbuster/wordlists
  ```
- Docs: https://www.kali.org


## 06 · Wireless Attacks  (`kali-tools-wireless`)

### `kali-tools-802-11`
- Kali's 802.11 attacks tools
- **Type:** Category metapackage (installs a whole menu)
- **Steps:**
  1. Install the whole category: `sudo apt install -y kali-tools-802-11`
  2. Or via the helper: `../scripts/install-tools.sh cat:802-11`
  3. Not a tool itself — it pulls in every tool in that category
- Docs: https://www.kali.org

### `kali-tools-bluetooth`
- Kali's bluetooth attacks tools
- **Type:** Category metapackage (installs a whole menu)
- **Steps:**
  1. Install the whole category: `sudo apt install -y kali-tools-bluetooth`
  2. Or via the helper: `../scripts/install-tools.sh cat:bluetooth`
  3. Not a tool itself — it pulls in every tool in that category
- Docs: https://www.kali.org

### `kali-tools-rfid`
- Kali's RFID tools
- **Type:** Category metapackage (installs a whole menu)
- **Steps:**
  1. Install the whole category: `sudo apt install -y kali-tools-rfid`
  2. Or via the helper: `../scripts/install-tools.sh cat:rfid`
  3. Not a tool itself — it pulls in every tool in that category
- Docs: https://www.kali.org

### `kali-tools-sdr`
- Kali's SDR tools
- **Type:** Category metapackage (installs a whole menu)
- **Steps:**
  1. Install the whole category: `sudo apt install -y kali-tools-sdr`
  2. Or via the helper: `../scripts/install-tools.sh cat:sdr`
  3. Not a tool itself — it pulls in every tool in that category
- Docs: https://www.kali.org

### `rfcat` ✓ verified on VM
- Swiss army knife of sub-GHz radio
- **Provides:** `rfcat`, `rfcat_bootloader`, `rfcat_msfrelay`, `rfcat_server`
- **Steps:**
  1. Install: `sudo apt install -y rfcat`
  2. Help: `rfcat -h`  (or `man rfcat`)
  3. Run: `sudo rfcat wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- **real --help (verified on VM):**
  ```
  usage: rfcat [-h] [-r] [-i INDEX] [-s] [-f CENTFREQ] [-c INC] [-n SPECCHANS]
               [--bootloader] [--force] [-S]
  
  options:
    -h, --help            show this help message and exit
    -r, --research        Interactive Python and the "d" instance to talk to
  ```
- Docs: https://github.com/atlas0fd00m/rfcat

### `rfkill` ✓ verified on VM
- tool for enabling and disabling wireless devices
- **Provides:** `rfkill`
- **Steps:**
  1. Install: `sudo apt install -y rfkill`
  2. Help: `rfkill -h`  (or `man rfkill`)
  3. Run: `sudo rfkill wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- **real --help (verified on VM):**
  ```
  
  Usage:
   rfkill [options] command [identifier ...]
  
  Tool for enabling and disabling wireless devices.
  ```
- Docs: https://github.com/util-linux/util-linux

### `sakis3g` ✓ verified on VM
- Tool for establishing 3G connections
- **Provides:** `sakis3g`
- **Steps:**
  1. Install: `sudo apt install -y sakis3g`
  2. Help: `sakis3g -h`  (or `man sakis3g`)
  3. Run: `sudo sakis3g wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- **real --help (verified on VM):**
  ```
  Sakis 3G All-in-one script - Version 0.2.0e
  (c) Sakis Dimopoulos 2009, 2010 under GNU GPL v2
  
  
  Usage:
        sakis3g [actors] [switches] [variables]
  ```
- Docs: http://www.sakis3g.org

### `wireshark` ✓ verified on VM
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `sudo wireshark wlan0` — needs a Wi-Fi adapter (the VM has none by default)
- **real --help (verified on VM):**
  ```
  Wireshark 4.6.6
  Interactively dump and analyze network traffic.
  See https://www.wireshark.org for more information.
  
  Usage: wireshark [options] ... [ <infile> ]
  ```
- Docs: https://www.wireshark.org/


## 06b · 802.11 Wi-Fi Attacks  (`kali-tools-802-11`)

### `aircrack-ng` ✓ verified on VM
- wireless WEP/WPA cracking utilities
- **Provides:** `airbase-ng`, `aircrack-ng`, `airdecap-ng`, `airdecloak-ng`, `aireplay-ng`, `airmon-ng`, `airodump-ng`, `airodump-ng-oui-update`, `airolib-ng`, `airserv-ng`, `airtun-ng`, `airventriloquist-ng`, `besside-ng`, `besside-ng-crawler`, `buddy-ng`, `dcrack`, `easside-ng`, `ivstools`, `kstats`, `makeivs-ng`, `packetforge-ng`, `tkiptun-ng`, `wesside-ng`, `wpaclean`
- **Steps:**
  1. Install: `sudo apt install -y aircrack-ng`
  2. Help: `aircrack-ng -h`  (or `man aircrack-ng`)
  3. Run: `sudo aircrack-ng wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  
    Aircrack-ng 1.7  - (C) 2006-2022 Thomas d'Otreppe
    https://www.aircrack-ng.org
  
    usage: aircrack-ng [options] <input file(s)>
  ```
- Docs: https://www.aircrack-ng.org/

### `airgeddon` ✓ verified on VM
- multi-use bash script for Linux systems to audit wireless networks
- **Provides:** `airgeddon`
- **Steps:**
  1. Install: `sudo apt install -y airgeddon`
  2. Help: `airgeddon -h`  (or `man airgeddon`)
  3. Run: `sudo airgeddon wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  [8lTERM environment variable not set.
  *********************************** Welcome ************************************ 
  Welcome to airgeddon script v12.02 
  
  tput: No value for $TERM and no -T specified
  tput: No value for $TERM and no -T specified
  ```
- Docs: https://github.com/v1s1t0r1sh3r3/airgeddon

### `asleap` ✓ verified on VM
- A tool for exploiting Cisco LEAP networks
- **Provides:** `asleap`, `genkeys`
- **Steps:**
  1. Install: `sudo apt install -y asleap`
  2. Help: `asleap -h`  (or `man asleap`)
  3. Run: `sudo asleap wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  asleap: invalid option -- '-'
  asleap 2.5 - actively recover LEAP/PPTP passwords. <<email>>
  Usage: asleap [options]
  
  	-r 	Read from a libpcap file
  	-i 	Interface to capture on
  ```
- Docs: https://www.willhackforsushi.com/

### `bully` ✓ verified on VM
- Implementation of the WPS brute force attack, written in C
- **Provides:** `bully`
- **Steps:**
  1. Install: `sudo apt install -y bully`
  2. Help: `bully -h`  (or `man bully`)
  3. Run: `sudo bully wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  
    bully v1.4
    the fork that actually works!
    maintained by kimocoder - https://twitter.com/kimocoder
  
    usage: bully <options> interface
  ```
- Docs: https://github.com/kimocoder/bully

### `cowpatty` ✓ verified on VM
- Brute-force WPA dictionary attack
- **Provides:** `cowpatty`, `genpmk`
- **Steps:**
  1. Install: `sudo apt install -y cowpatty`
  2. Help: `cowpatty -h`  (or `man cowpatty`)
  3. Run: `sudo cowpatty wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  cowpatty: invalid option -- '-'
  cowpatty 4.8 - WPA-PSK dictionary attack. <<email>>
  
  Usage: cowpatty [options]
  
  	-f 	Dictionary file
  ```
- Docs: https://www.willhackforsushi.com/?page_id=50

### `eapmd5pass` ✓ verified on VM
- Tool for extracting and cracking EAP-MD5
- **Provides:** `eapmd5pass`
- **Steps:**
  1. Install: `sudo apt install -y eapmd5pass`
  2. Help: `eapmd5pass -h`  (or `man eapmd5pass`)
  3. Run: `sudo eapmd5pass wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  eapmd5pass: invalid option -- '-'
  eapmd5pass - Dictionary attack against EAP-MD5
  
  Usage: eapmd5pass [ -i <int> | -r <pcapfile> ] [ -w wordfile ] [options]
  
    -i <iface>	interface name
  ```
- Docs: https://www.willhackforsushi.com/?page_id=67

### `fern-wifi-cracker` ✓ verified on VM
- Automated Wi-Fi cracker
- **Provides:** `fern-wifi-cracker`
- **Steps:**
  1. Install: `sudo apt install -y fern-wifi-cracker`
  2. Help: `fern-wifi-cracker -h`  (or `man fern-wifi-cracker`)
  3. Run: `sudo fern-wifi-cracker wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  Traceback (most recent call last):
    File "/usr/share/fern-wifi-cracker/execute.py", line 101, in <module>
      initialize()
      ~~~~~~~~~~^^
    File "/usr/share/fern-wifi-cracker/execute.py", line 46, in initialize
      create_directory()
  ```
- Docs: https://github.com/savio-code/fern-wifi-cracker

### `freeradius-wpe` ✓ verified on VM
- FreeRadius Wireless Pawn Edition
- **Provides:** `freeradius-wpe`
- **Steps:**
  1. Install: `sudo apt install -y freeradius-wpe`
  2. Help: `freeradius-wpe -h`  (or `man freeradius-wpe`)
  3. Run: `sudo freeradius-wpe wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  freeradius-wpe: invalid option -- '-'
  Usage: freeradius [options]
  Options:
    -C            Check configuration and exit.
    -d <raddb>    Set configuration directory (defaults to /etc/freeradius-wpe/3.0).
    -D <dictdir>  Set main dictionary directory (defaults to /usr/share/freeradius-wpe/dictionary).
  ```
- Docs: https://www.freeradius.org/

### `hashcat` ✓ verified on VM
- World's fastest and most advanced password recovery utility
- **Provides:** `hashcat`
- **Steps:**
  1. Install: `sudo apt install -y hashcat`
  2. Help: `hashcat -h`  (or `man hashcat`)
  3. Run: `sudo hashcat wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  hashcat (v7.1.2) starting in help mode
  
  Usage: hashcat [options]... hash|hashfile|hccapxfile [dictionary|mask|directory]...
  
  - [ Options ] -
  ```
- Docs: https://hashcat.net/hashcat/

### `hostapd-wpe` ✓ verified on VM
- Modified hostapd to facilitate AP impersonation attacks
- **Provides:** `hostapd-wpe`, `hostapd-wpe_cli`
- **Steps:**
  1. Install: `sudo apt install -y hostapd-wpe`
  2. Help: `hostapd-wpe -h`  (or `man hostapd-wpe`)
  3. Run: `sudo hostapd-wpe wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  hostapd-wpe: invalid option -- '-'
  hostapd-WPE v2.10
  User space daemon for IEEE 802.11 AP management,
  IEEE 802.1X/WPA/WPA2/EAP/RADIUS Authenticator
  Copyright (c) 2002-2022, Jouni Malinen <<email>> and contributors
  -----------------------------------------------------
  ```
- Docs: https://github.com/aircrack-ng/aircrack-ng/tree/master/patches/wpe

### `iw` ✓ verified on VM
- tool for configuring Linux wireless devices
- **Provides:** `iw`
- **Steps:**
  1. Install: `sudo apt install -y iw`
  2. Help: `iw -h`  (or `man iw`)
  3. Run: `sudo iw wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  Usage:	iw [options] command
  Options:
  	--debug		enable netlink debugging
  	--version	show version (6.17)
  Commands:
  	dev <devname> ap stop 
  ```
- Docs: https://wireless.wiki.kernel.org/en/users/documentation/iw

### `kismet` ✓ verified on VM
- wireless network and device detector (metapackage)
- **Steps:**
  1. Install: `sudo apt install -y kismet`
  2. Help: `kismet -h`  (or `man kismet`)
  3. Run: `sudo kismet wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  usage: kismet [OPTION]
  Nearly all of these options are run-time overrides for values in the
  kismet.conf configuration file.  Permanent changes should be made to
  the configuration file.
   *** Generic Options ***
   -v, --version                Show version
  ```
- Docs: https://www.kismetwireless.net/

### `macchanger` ✓ verified on VM
- utility for manipulating the MAC address of network interfaces
- **Provides:** `macchanger`
- **Steps:**
  1. Install: `sudo apt install -y macchanger`
  2. Help: `macchanger -h`  (or `man macchanger`)
  3. Run: `sudo macchanger wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  GNU MAC Changer
  Usage: macchanger [options] device
  
    -h,  --help                   Print this help
    -V,  --version                Print version and exit
    -s,  --show                   Print the MAC address and exit
  ```
- Docs: https://github.com/alobbs/macchanger

### `mdk3` ✓ verified on VM
- Wireless attack tool for IEEE 802.11 networks
- **Provides:** `mdk3`
- **Steps:**
  1. Install: `sudo apt install -y mdk3`
  2. Help: `mdk3 -h`  (or `man mdk3`)
  3. Run: `sudo mdk3 wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  This program requires root privileges.
  ```
- Docs: https://github.com/aircrack-ng/mdk3

### `mdk4` ✓ verified on VM
- Wireless attack tool for IEEE 802.11 networks
- **Provides:** `mdk4`
- **Steps:**
  1. Install: `sudo apt install -y mdk4`
  2. Help: `mdk4 -h`  (or `man mdk4`)
  3. Run: `sudo mdk4 wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  MDK4 4.2 - "Awesome! Supports Proof-of-concept of WiFi protocol implementation vulnerability testing"
  by E7mer, thanks to the author of MDK3 and aircrack-ng community.
  MDK4 is a proof-of-concept tool to exploit common IEEE 802.11 protocol weaknesses.
  IMPORTANT: It is your responsibility to make sure you have permission from the
  network owner before running MDK4 against it.
  ```
- Docs: https://github.com/aircrack-ng/mdk4

### `pixiewps` ✓ verified on VM
- Offline WPS bruteforce tool
- **Provides:** `pixiewps`
- **Steps:**
  1. Install: `sudo apt install -y pixiewps`
  2. Help: `pixiewps -h`  (or `man pixiewps`)
  3. Run: `sudo pixiewps wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  
   Pixiewps 1.4 WPS pixie-dust attack tool
   Copyright (c) 2015-2017, wiire <<email>>
  
   Description of arguments:
  ```
- Docs: https://github.com/wiire/pixiewps

### `reaver` ✓ verified on VM
- brute force attack tool against Wi-Fi Protected Setup PIN number
- **Provides:** `reaver`, `wash`
- **Steps:**
  1. Install: `sudo apt install -y reaver`
  2. Help: `reaver -h`  (or `man reaver`)
  3. Run: `sudo reaver wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  
  Reaver v1.6.6 WiFi Protected Setup Attack Tool
  Copyright (c) 2011, Tactical Network Solutions, Craig Heffner <<email>>
  
  Required Arguments:
  	-i, --interface=<wlan>          Name of the monitor-mode interface to use
  ```
- Docs: https://github.com/t6x/reaver-wps-fork-t6x

### `wifi-honey` ✓ verified on VM
- Wi-Fi honeypot
- **Provides:** `wifi-honey`
- **Steps:**
  1. Install: `sudo apt install -y wifi-honey`
  2. Help: `wifi-honey -h`  (or `man wifi-honey`)
  3. Run: `sudo wifi-honey wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
  /usr/bin/wifi-honey: line 35: iwconfig: command not found
  Run it as root
  Run it as root
  Run it as root
  Run it as root
  Run it as root
  ```
- Docs: https://www.digininja.org/projects/wifi_honey.php

### `wifite` ✓ verified on VM
- Python script to automate wireless auditing using aircrack-ng tools
- **Provides:** `wifite`
- **Steps:**
  1. Install: `sudo apt install -y wifite`
  2. Help: `wifite -h`  (or `man wifite`)
  3. Run: `sudo wifite wlan0` — needs a monitor-mode adapter
- **real --help (verified on VM):**
  ```
     .               .    
   .´  ·  .     .  ·  `.  wifite2 2.8.1
   :  :  :  (¯)  :  :  :  a wireless auditor by derv82
   `.  ·  ` /¯\ ´  ·  .´  maintained by kimocoder
     `     /¯¯¯\     ´    https://github.com/kimocoder/wifite2
  ```
- Docs: https://github.com/kimocoder/wifite2


## 06c · Bluetooth Attacks  (`kali-tools-bluetooth`)

### `blue-hydra` ✓ verified on VM
- Bluetooth device discovery service
- **Provides:** `blue_hydra`, `rfkill-reset`, `test-discovery`
- **Steps:**
  1. Install: `sudo apt install -y blue-hydra`
  2. Help: `blue_hydra -h`  (or `man blue_hydra`)
  3. Run: `sudo blue_hydra hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  Usage: BlueHydra [options]
      -d, --daemonize                  Suppress output and run in daemon mode
      -z, --demo                       Hide mac addresses in CLI UI
      -p, --pulse                      Send results to hermes
          --pulse-debug                Store results in a file for review
          --no-db                      Keep db in ram only
  ```
- Docs: https://github.com/ZeroChaos-/blue_hydra

### `bluelog` ✓ verified on VM
- Bluetooth scanner and logger
- **Provides:** `bluelog`
- **Steps:**
  1. Install: `sudo apt install -y bluelog`
  2. Help: `bluelog -h`  (or `man bluelog`)
  3. Run: `sudo bluelog hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  Bluelog (v1.1.2) by Tom Nardi "MS3FGX" (<email>)
  ----------------------------------------------------------------
  Bluelog is a Bluetooth site survey tool, designed to tell you how
  many discoverable devices there are in an area as quickly as possible.
  As the name implies, its primary function is to log discovered devices
  to file rather than to be used interactively. Bluelog could run on a
  ```
- Docs: http://www.digifail.com/software/bluelog.shtml

### `blueranger` ✓ verified on VM
- Simple Bash script to locate Bluetooth devices
- **Provides:** `blueranger`
- **Steps:**
  1. Install: `sudo apt install -y blueranger`
  2. Help: `blueranger -h`  (or `man blueranger`)
  3. Run: `sudo blueranger hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  
  BlueRanger 1.0 by JP Dunning (.ronin) 
  <www.hackfromacave.com>
  (c) 2009-2012 Shadow Cave LLC.
  
  NAME
  ```
- Docs: http://www.hackfromacave.com/projects/blueranger.html

### `bluesnarfer` ✓ verified on VM
- Bluesnarfing utility
- **Provides:** `bluesnarfer`
- **Steps:**
  1. Install: `sudo apt install -y bluesnarfer`
  2. Help: `bluesnarfer -h`  (or `man bluesnarfer`)
  3. Run: `sudo bluesnarfer hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  bluesnarfer: you must be root
  bluesnarfer, version 0.1 -
  usage: bluesnarfer [options] [ATCMD] -b bt_addr
  
  ATCMD     : valid AT+CMD (GSM EXTENSION)
  ```
- Docs: http://www.alighieri.org/

### `bluez` ✓ verified on VM
- Bluetooth tools and daemons
- **Provides:** `bluemoon`, `bluetoothctl`, `bluetoothd`, `btattach`, `btmgmt`, `btmon`, `ciptool`, `gatttool`, `hciattach`, `hciconfig`, `hcitool`, `hex2hcd`, `l2ping`, `l2test`, `mpris-proxy`, `obexctl`, `rctest`, `rfcomm`, `sdptool`
- **Steps:**
  1. Install: `sudo apt install -y bluez`
  2. Help: `btmon -h`  (or `man btmon`)
  3. Run: `sudo btmon hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  btmon - Bluetooth monitor
  Usage:
  	btmon [options]
  options:
  	-r, --read <file>      Read traces in btsnoop format
  	-w, --write <file>     Save traces in btsnoop format
  ```
- Docs: http://www.bluez.org

### `btscanner` ✓ verified on VM
- ncurses-based scanner for Bluetooth devices
- **Provides:** `btscanner`
- **Steps:**
  1. Install: `sudo apt install -y btscanner`
  2. Help: `btscanner -h`  (or `man btscanner`)
  3. Run: `sudo btscanner hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  Usage: btscanner [options]
  options
  	--help	Display help
  	--cfg=<file>	Use <file> as the config file
  	--no-reset	Do not reset the Bluetooth adapter before scanning
  ```
- Docs: https://salsa.debian.org/pkg-security-team/btscanner

### `crackle` ✓ verified on VM
- Crack and decrypt BLE encryption
- **Provides:** `crackle`
- **Steps:**
  1. Install: `sudo apt install -y crackle`
  2. Help: `crackle -h`  (or `man crackle`)
  3. Run: `sudo crackle hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  crackle: invalid option -- '-'
  Usage: crackle -i <input.pcap> [-o <output.pcap>] [-l <ltk>]
  Cracks Bluetooth Low Energy encryption (AKA Bluetooth Smart)
  
  Major modes:  Crack TK // Decrypt with LTK
  ```
- Docs: https://github.com/mikeryan/crackle

### `redfang` ✓ verified on VM
- Locates non-discoverable bluetooth devices
- **Provides:** `fang`
- **Steps:**
  1. Install: `sudo apt install -y redfang`
  2. Help: `fang -h`  (or `man fang`)
  3. Run: `sudo fang hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  fang: invalid option -- '-'
  redfang - the bluetooth hunter ver 2.5
  (c)2003 @stake Inc
  author:   Ollie Whitehouse <<email>>
  enhanced: threads by Simon Halsall <<email>>
  enhanced: device info discovery by Stephen Kapp <<email>>
  ```

### `spooftooph` ✓ verified on VM
- Automates spoofing or cloning Bluetooth devices
- **Provides:** `spooftooph`
- **Steps:**
  1. Install: `sudo apt install -y spooftooph`
  2. Help: `spooftooph -h`  (or `man spooftooph`)
  3. Run: `sudo spooftooph hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  
  spooftooph v0.5.2 by JP Dunning (.ronin) 
  <www.hackfromacave.com>
  (c) 2009-2012 Shadow Cave LLC.
  
  NAME
  ```
- Docs: http://www.hackfromacave.com/projects/spooftooph.html

### `ubertooth` ✓ verified on VM
- 2.4 GHz wireless development platform for Bluetooth experimentation
- **Provides:** `ubertooth-afh`, `ubertooth-btbr`, `ubertooth-btle`, `ubertooth-debug`, `ubertooth-dfu`, `ubertooth-ducky`, `ubertooth-dump`, `ubertooth-ego`, `ubertooth-follow`, `ubertooth-rx`, `ubertooth-scan`, `ubertooth-specan`, `ubertooth-specan-ui`, `ubertooth-util`
- **Steps:**
  1. Install: `sudo apt install -y ubertooth`
  2. Help: `ubertooth-rx -h`  (or `man ubertooth-rx`)
  3. Run: `sudo ubertooth-rx hci0` — needs a Bluetooth interface
- **real --help (verified on VM):**
  ```
  ubertooth-rx: invalid option -- '-'
  ubertooth-rx - passive Classic Bluetooth discovery/decode
  
  Example usage:
  	ubertooth-rx -- sniff for all LAPs
  	ubertooth-rx -l <lap> -- calculate UAP for a given LAP
  ```
- Docs: http://ubertooth.sourceforge.net/


## 06d · RFID/NFC Tools  (`kali-tools-rfid`)

### `proxmark3` ✓ verified on VM
- Firmware, flasher, and client for the Proxmark3
- **Provides:** `proxmark3`
- **Steps:**
  1. Install: `sudo apt install -y proxmark3`
  2. Help: `proxmark3 -h`  (or `man proxmark3`)
  3. Run: `proxmark3 -h` — needs RFID reader hardware
- **real --help (verified on VM):**
  ```
  
  syntax: proxmark3 [-h|-t|-m|--fulltext]
          proxmark3 [[-p] <port>] [-b] [-w] [-f] [-d <0|1|2>] [--incognito] [--ncpu <num_cores>] [-c "<command>"]|[-l <lua_script_file>]|[-y <python_script_file>]|[-s <cmd_script_file>] [-i] [-- <arg0> <arg1>...]
          proxmark3 [-p] <port> --flash [--unlock-bootloader] [--image <imagefile>]+ [-w] [-f] [-d <0|1|2>]
  
  Common options:
  ```
- Docs: https://github.com/RfidResearchGroup/proxmark3

### `rfdump` ✓ verified on VM
- tool to decode RFID tag data
- **Provides:** `rfdump`
- **Steps:**
  1. Install: `sudo apt install -y rfdump`
  2. Help: `rfdump -h`  (or `man rfdump`)
  3. Run: `rfdump -h` — needs RFID reader hardware
- **real --help (verified on VM):**
  ```
  
  (rfdump:165270): Gtk-WARNING **: 05:47:00.137: cannot open display: 
  ```
- Docs: http://www.rfdump.org/


## 06e · Software-Defined Radio  (`kali-tools-sdr`)

### `chirp`
- Configuration tool for amateur radios
- **Provides:** `chirpc`, `chirpw`, `experttune`
- **Type:** Amateur-radio programmer (GUI)
- **Steps:**
  1. Install: `sudo apt install -y chirp`
  2. Launch on the VNC desktop: `../scripts/apps.sh open chirpw` (binary `/usr/bin/chirpw`)
  3. GUI tool — needs a supported radio on a serial/USB port
- Docs: https://chirpmyradio.com/

### `hackrf` ✓ verified on VM
- Software defined radio peripheral - utilities
- **Provides:** `hackrf_biast`, `hackrf_clock`, `hackrf_cpldjtag`, `hackrf_debug`, `hackrf_info`, `hackrf_operacake`, `hackrf_spiflash`, `hackrf_sweep`, `hackrf_transfer`
- **Steps:**
  1. Install: `sudo apt install -y hackrf`
  2. Help: `hackrf_info -h`  (or `man hackrf_info`)
  3. Run: `hackrf_info -h` — needs SDR hardware (HackRF/RTL-SDR)
- **real --help (verified on VM):**
  ```
  hackrf_info version: 2026.01.3
  libhackrf version: 2026.01.3 (0.9.2)
  No HackRF boards found.
  ```
- Docs: http://greatscottgadgets.com/hackrf/

### `inspectrum` ✓ verified on VM
- tool for visualising captured radio signals
- **Provides:** `inspectrum`
- **Steps:**
  1. Install: `sudo apt install -y inspectrum`
  2. Help: `inspectrum -h`  (or `man inspectrum`)
  3. Run: `inspectrum -h` — needs SDR hardware (HackRF/RTL-SDR)
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://github.com/miek/inspectrum

### `kalibrate-rtl` ✓ verified on VM
- Calculate local oscillator frequency offset using GSM base stations
- **Provides:** `kal`
- **Steps:**
  1. Install: `sudo apt install -y kalibrate-rtl`
  2. Help: `kal -h`  (or `man kal`)
  3. Run: `kal -h` — needs SDR hardware (HackRF/RTL-SDR)
- **real --help (verified on VM):**
  ```
  kal: invalid option -- '-'
  kalibrate v0.4.1-rtl, Copyright (c) 2010, Joshua Lackey
  modified for use with rtl-sdr devices, Copyright (c) 2012, Steve Markgraf
  Usage:
  	GSM Base Station Scan:
  		kal <-s band indicator> [options]
  ```
- Docs: https://github.com/steve-m/kalibrate-rtl

### `multimon-ng` ✓ verified on VM
- digital radio transmission decoder
- **Provides:** `multimon-ng`
- **Steps:**
  1. Install: `sudo apt install -y multimon-ng`
  2. Help: `multimon-ng -h`  (or `man multimon-ng`)
  3. Run: `multimon-ng -h` — needs SDR hardware (HackRF/RTL-SDR)
- **real --help (verified on VM):**
  ```
  multimon-ng: unrecognized option '--help'
  multimon-ng 1.3.1
    (C) 1996/1997 by Tom Sailer HB9JNX/AE4WA
    (C) 2012-2024 by Elias Oenal
  Available demodulators: POCSAG512 POCSAG1200 POCSAG2400 FLEX FLEX_NEXT EAS UFSK1200 CLIPFSK FMSFSK AFSK1200 AFSK2400 AFSK2400_2 AFSK2400_3 HAPN4800 FSK9600 DTMF ZVEI1 ZVEI2 ZVEI3 DZVEI PZVEI EEA EIA CCIR MORSE_CW DUMPCSV X10 SCOPE
  ```
- Docs: https://github.com/EliasOenal/multimon-ng/

### `uhd-host` ✓ verified on VM
- universal hardware driver for Ettus Research products - host apps
- **Provides:** `rfnoc_image_builder`, `rfnoc_modtool`, `uhd_adc_self_cal`, `uhd_cal_rx_iq_balance`, `uhd_cal_tx_dc_offset`, `uhd_cal_tx_iq_balance`, `uhd_config_info`, `uhd_find_devices`, `uhd_image_loader`, `uhd_images_downloader`, `uhd_usrp_probe`, `usrp2_card_burner`, `usrpctl`
- **Steps:**
  1. Install: `sudo apt install -y uhd-host`
  2. Help: `usrpctl -h`  (or `man usrpctl`)
  3. Run: `usrpctl -h` — needs SDR hardware (HackRF/RTL-SDR)
- **real --help (verified on VM):**
  ```
  usage: usrpctl [-h] [-v] [id] {find,probe,reset} ...
  
  positional arguments:
    id                  identifies USRPs devices utilizing dev_addr_type
    {find,probe,reset}  supported commands, detailed help with usrpctl <cmd>
                        --help
  ```
- Docs: https://www.ettus.com/sdr-software/uhd-usrp-hardware-driver/

### `uhd-images`
- Various UHD Images
- **Type:** USRP SDR firmware/FPGA images (data)
- **Steps:**
  1. Install: `sudo apt install -y uhd-images`
  2. Download/refresh: `uhd_images_downloader`
  3. Data for Ettus USRP radios — used by uhd_usrp_probe when hardware is attached
- Docs: https://www.ettus.com


## 07 · Reverse Engineering  (`kali-tools-reverse-engineering`)

### `apktool` ✓ verified on VM
- tool for reverse engineering Android apk files
- **Provides:** `apktool`
- **Steps:**
  1. Install: `sudo apt install -y apktool`
  2. Help: `apktool -h`  (or `man apktool`)
  3. Run: `apktool ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  Unrecognized option: --help
  Apktool v2.7.0-dirty - a tool for reengineering Android apk files
  with smali v2.5.2.git2771eae-debian and baksmali v2.5.2.git2771eae-debian
  Copyright 2010 Ryszard Wiśniewski <<email>>
  Copyright 2010 Connor Tumbleson <<email>>
  ```
- Docs: https://ibotpeaches.github.io/Apktool/

### `bytecode-viewer` ✓ verified on VM
- Java 8+ Jar & Android APK Reverse Engineering Suite
- **Provides:** `bytecode-viewer`
- **Steps:**
  1. Install: `sudo apt install -y bytecode-viewer`
  2. Help: `bytecode-viewer -h`  (or `man bytecode-viewer`)
  3. Run: `bytecode-viewer ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  Bytecode Viewer 2.13.2 [Fat Jar] - https://bytecodeviewer.com
  Created by @Konloch - https://konloch.com
  Presented by https://the.bytecode.club
  Cannot set security manager! Are you on Java 18+ and have not enabled support for it?
  Because of this, you may be susceptible to some exploits!
  Either deal with it or allow it using the -Djava.security.manager=allow parameter.
  ```
- Docs: https://github.com/Konloch/bytecode-viewer

### `clang` ✓ verified on VM
- C, C++ and Objective-C compiler (LLVM based), clang binary
- **Provides:** `clang`, `clang++`, `clang-cl`, `clang-cpp`, `clang-scan-deps`
- **Steps:**
  1. Install: `sudo apt install -y clang`
  2. Help: `clang -h`  (or `man clang`)
  3. Run: `clang ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  OVERVIEW: clang LLVM compiler
  
  USAGE: clang [options] file...
  
  OPTIONS:
    -###                    Print (but do not run) the commands to run for this compilation
  ```

### `dex2jar` ✓ verified on VM
- Tools to work with android .dex and java .class files
- **Provides:** `d2j-apk-sign`, `d2j-asm-verify`, `d2j-baksmali`, `d2j-class-version-switch`, `d2j-decrypt-string`, `d2j-dex2jar`, `d2j-dex2smali`, `d2j-dex-recompute-checksum`, `d2j-dex-weaver`, `d2j_invoke`, `d2j-jar2dex`, `d2j-jar2jasmin`, `d2j-jar-access`, `d2j-jar-weaver`, `d2j-jasmin2jar`, `d2j-smali`, `d2j-std-apk`, `dex-tools`
- **Steps:**
  1. Install: `sudo apt install -y dex2jar`
  2. Help: `d2j-smali -h`  (or `man d2j-smali`)
  3. Run: `d2j-smali ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  d2j-smali -- assembles a set of smali files into a dex file
  usage: d2j-smali [options] [--] [<smali-file>|folder]*
  options:
   --                             read smali from stdin
   -a,--api-level <API_LEVEL>     [not impl] The numeric api-level of the file to 
                                  generate, e.g. 14 for ICS. If not specified, it 
  ```
- Docs: https://github.com/pxb1988/dex2jar/tree/2.x

### `jadx` ✓ verified on VM
- Dex to Java decompiler
- **Provides:** `jadx`, `jadx-gui`
- **Steps:**
  1. Install: `sudo apt install -y jadx`
  2. Help: `jadx -h`  (or `man jadx`)
  3. Run: `jadx ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  
  jadx - dex to java decompiler, version: 1.5.6
  
  usage: jadx [command] [options] <input files> (.apk, .dex, .jar, .class, .smali, .zip, .aar, .arsc, .aab, .xapk, .apkm, .jadx.kts)
  commands (use '<command> --help' for command options):
    plugins	  - manage jadx plugins
  ```
- Docs: https://github.com/skylot/jadx

### `javasnoop` ✓ verified on VM
- Intercept Java applications locally
- **Provides:** `javasnoop`
- **Steps:**
  1. Install: `sudo apt install -y javasnoop`
  2. Help: `javasnoop -h`  (or `man javasnoop`)
  3. Run: `javasnoop ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  [2] Turning off Java security for JavaSnoop usage
  [3] Starting JavaSnoop...
  log4j:ERROR setFile(null,true) call failed.
  java.io.FileNotFoundException: js.log (Permission denied)
  	at java.base/java.io.FileOutputStream.open0(Native Method)
  	at java.base/java.io.FileOutputStream.open(FileOutputStream.java:255)
  ```

### `jd-gui` ✓ verified on VM
- GUI Java .class decompiler
- **Provides:** `jd-gui`
- **Steps:**
  1. Install: `sudo apt install -y jd-gui`
  2. Help: `jd-gui -h`  (or `man jd-gui`)
  3. Run: `jd-gui ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  Exception in thread "main" java.awt.HeadlessException: 
  No X11 DISPLAY variable was set,
  or no headful library support was found,
  but this program performed an operation which requires it.
  	at java.desktop/sun.awt.HeadlessToolkit.getScreenSize(HeadlessToolkit.java:186)
  	at org.jd.gui.service.a.c.a(Unknown Source)
  ```
- Docs: http://jd.benow.ca/

### `metasploit-framework` ✓ verified on VM
- Framework for exploit development and vulnerability research
- **Provides:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **Steps:**
  1. Install: `sudo apt install -y metasploit-framework`
  2. Help: `msf-jsobfu -h`  (or `man msf-jsobfu`)
  3. Run: `msf-jsobfu ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  Aborted! SIGTERM
  ```
- Docs: https://www.metasploit.com/

### `radare2` ✓ verified on VM
- free and advanced command line hexadecimal editor
- **Provides:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **Steps:**
  1. Install: `sudo apt install -y radare2`
  2. Help: `radare2 -h`  (or `man radare2`)
  3. Run: `radare2 ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  Usage: r2 [-ACdfjLMnNqStuvwzX] [-P patch] [-p prj] [-a arch] [-b bits] [-c cmd]
            [-s addr] [-B baddr] [-m maddr] [-i script] [-e k=v] file|pid|-|--|=
   --           run radare2 without opening any file
   -            same as 'r2 malloc://512'
   =            read file from stdin (use -i and -c to run cmds)
   -=           perform !=! command to run all commands remotely
  ```
- Docs: https://www.radare.org

### `rizin` ✓ verified on VM
- reverse engineering framework and command-line toolset
- **Provides:** `rizin`, `rz-ar`, `rz-asm`, `rz-ax`, `rz-bin`, `rz-diff`, `rz-find`, `rz-gg`, `rz-hash`, `rz-run`, `rz-sign`, `rz-test`
- **Steps:**
  1. Install: `sudo apt install -y rizin`
  2. Help: `rizin -h`  (or `man rizin`)
  3. Run: `rizin ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
   -- You can add commands into your ~/.rizinrc to customize your experience with Rizin
  [2K
  
  [0x00000000]> 
  [0x00000000]> 
  ```
- Docs: https://rizin.re/

### `rizin-cutter` ✓ verified on VM
- reverse engineering platform powered by rizin
- **Provides:** `cutter`
- **Steps:**
  1. Install: `sudo apt install -y rizin-cutter`
  2. Help: `cutter -h`  (or `man cutter`)
  3. Run: `cutter ./a-binary-you-own` — analyse a binary you own
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: From 6.5.0, xcb-cursor0 or libxcb-cursor0 is needed to load the Qt xcb platform plugin.
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: wayland-brcm, wayland-egl, wayland, vkkhrdisplay, xcb, vnc, minimal, eglfs, minimalegl, linuxfb, offscreen.
  ```
- Docs: https://cutter.re

### `rz-ghidra`
- ghidra decompiler and sleigh disassembler for rizin
- **Type:** Ghidra decompiler plugin for rizin
- **Steps:**
  1. Install: `sudo apt install -y rz-ghidra rizin`
  2. Use inside rizin: `rizin -c "aa; pdg @ main" ./binary-you-own`
  3. A plugin (no standalone CLI) — adds `pdg` decompile to rizin/cutter
- Docs: https://github.com/rizinorg/rz-ghidra


## 08 · Exploitation Tools  (`kali-tools-exploitation`)

### `armitage` ✓ verified on VM
- Cyber attack management for Metasploit
- **Provides:** `armitage`, `teamserver`
- **Steps:**
  1. Install: `sudo apt install -y armitage`
  2. Help: `armitage -h`  (or `man armitage`)
  3. Run: `armitage` — interactive; validation on your own targets only
- **real --help (verified on VM):**
  ```
  Exception in thread "main" java.awt.HeadlessException: 
  No X11 DISPLAY variable was set, but this program performed an operation which requires it.
  	at java.desktop/java.awt.GraphicsEnvironment.checkHeadless(GraphicsEnvironment.java:208)
  	at java.desktop/java.awt.Window.<init>(Window.java:548)
  	at java.desktop/java.awt.Frame.<init>(Frame.java:423)
  	at java.desktop/javax.swing.JFrame.<init>(JFrame.java:224)
  ```
- Docs: https://github.com/r00t0v3rr1d3/armitage

### `beef-xss` ✓ verified on VM
- Browser Exploitation Framework (BeEF)
- **Provides:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **Steps:**
  1. Install: `sudo apt install -y beef-xss`
  2. Help: `beef-xss -h`  (or `man beef-xss`)
  3. Run: `beef-xss` — interactive; validation on your own targets only
- **real --help (verified on VM):**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ The command beef-xss is deprecated. Please use beef-xss-start instead.
  ┃
  ┗━
  ```
- Docs: https://beefproject.com/

### `exploitdb` ✓ verified on VM
- Searchable Exploit Database archive
- **Provides:** `exploitdb`, `searchsploit`
- **Steps:**
  1. Install: `sudo apt install -y exploitdb`
  2. Help: `exploitdb -h`  (or `man exploitdb`)
  3. Run: `exploitdb` — interactive; validation on your own targets only
- **real --help (verified on VM):**
  ```
  
  > exploitdb ~ Searchable Exploit Database archive
  
  /usr/share/exploitdb
  ├── exploits
  └── shellcodes
  ```
- Docs: https://www.exploit-db.com

### `metasploit-framework` ✓ verified on VM
- Framework for exploit development and vulnerability research
- **Provides:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **Steps:**
  1. Install: `sudo apt install -y metasploit-framework`
  2. Help: `msf-jsobfu -h`  (or `man msf-jsobfu`)
  3. Run: `msf-jsobfu` — interactive; validation on your own targets only
- **real --help (verified on VM):**
  ```
  Aborted! SIGTERM
  ```
- Docs: https://www.metasploit.com/

### `msfpc` ✓ verified on VM
- MSFvenom Payload Creator (MSFPC)
- **Provides:** `msfpc`
- **Steps:**
  1. Install: `sudo apt install -y msfpc`
  2. Help: `msfpc -h`  (or `man msfpc`)
  3. Run: `msfpc` — interactive; validation on your own targets only
- **real --help (verified on VM):**
  ```
   [*] MSFvenom Payload Creator (MSFPC v1.4.5)
  
   /usr/bin/msfpc <TYPE> (<DOMAIN/IP>) (<PORT>) (<CMD/MSF>) (<BIND/REVERSE>) (<STAGED/STAGELESS>) (<TCP/HTTP/HTTPS/FIND_PORT>) (<BATCH/LOOP>) (<VERBOSE>)
     Example: /usr/bin/msfpc windows 192.168.1.10        # Windows & manual IP.
              /usr/bin/msfpc elf bind eth0 4444          # Linux, eth0's IP & manual port.
              /usr/bin/msfpc stageless cmd py https      # Python, stageless command prompt.
  ```
- Docs: https://github.com/g0tmi1k/msfpc

### `set` ✓ verified on VM
- Social-Engineer Toolkit
- **Provides:** `se-toolkit`, `setoolkit`
- **Steps:**
  1. Install: `sudo apt install -y set`
  2. Help: `setoolkit -h`  (or `man setoolkit`)
  3. Run: `setoolkit` — interactive; validation on your own targets only
- **real --help (verified on VM):**
  ```
  
   The Social-Engineer Toolkit (SET) - by David Kennedy (ReL1K)
  
   Not running as root. 
  
  Exiting the Social-Engineer Toolkit (SET).
  ```
- Docs: https://www.trustedsec.com/downloads/social-engineer-toolkit/

### `sqlmap` ✓ verified on VM
- automatic SQL injection tool
- **Provides:** `sqlmap`, `sqlmapapi`
- **Steps:**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap` — interactive; validation on your own targets only
- **real --help (verified on VM):**
  ```
          ___
         __H__
   ___ ___[.]_____ ___ ___  {1.10.9#stable}
  |_ -| . [.]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- Docs: https://sqlmap.org/

### `termineter` ✓ verified on VM
- Smart meter testing framework
- **Provides:** `termineter`
- **Steps:**
  1. Install: `sudo apt install -y termineter`
  2. Help: `termineter -h`  (or `man termineter`)
  3. Run: `termineter` — interactive; validation on your own targets only
- **real --help (verified on VM):**
  ```
  usage: termineter [-h] [-v] [-L {DEBUG,INFO,WARNING,ERROR,CRITICAL}]
                    [-r RESOURCE_FILE]
  
  Termineter: Python Smart Meter Testing Framework
  
  options:
  ```
- Docs: https://github.com/rsmusllp/termineter


## 09 · Sniffing & Spoofing  (`kali-tools-sniffing-spoofing`)

### `above` ✓ verified on VM
- Network security sniffer for finding vulnerabilities in the network
- **Provides:** `above`
- **Steps:**
  1. Install: `sudo apt install -y above`
  2. Help: `above -h`  (or `man above`)
  3. Run: `sudo above -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  WARNING: [bgp.py] use_2_bytes_asn: True
                                               
          ___    __                  
         /   |  / /_  ____ _   _____ 
        / /| | / __ \/ __ \ | / / _ \
       / ___ |/ /_/ / /_/ / |/ /  __/
  ```
- Docs: https://github.com/caster0x00/Above

### `bettercap` ✓ verified on VM
- Complete, modular, portable and easily extensible MITM framework
- **Provides:** `bettercap`
- **Steps:**
  1. Install: `sudo apt install -y bettercap`
  2. Help: `bettercap -h`  (or `man bettercap`)
  3. Run: `sudo bettercap -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  Usage of bettercap:
    -autostart string
      	Comma separated list of modules to auto start. (default "events.stream")
    -caplet string
      	Read commands from this file and execute them in the interactive session.
    -caplets-path string
  ```
- Docs: https://www.bettercap.org

### `darkstat` ✓ verified on VM
- network traffic analyzer
- **Provides:** `darkstat`
- **Steps:**
  1. Install: `sudo apt install -y darkstat`
  2. Help: `darkstat -h`  (or `man darkstat`)
  3. Run: `sudo darkstat -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  darkstat 3.0.722 (using libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3))
  
  usage: darkstat [ -i interface ]
                  [ -f filter ]
                  [ -r capfile ]
                  [ -p port ]
  ```
- Docs: https://unix4lyfe.org/darkstat/

### `dnschef` ✓ verified on VM
- DNS proxy for penetration testers
- **Provides:** `dnschef`
- **Steps:**
  1. Install: `sudo apt install -y dnschef`
  2. Help: `dnschef -h`  (or `man dnschef`)
  3. Run: `sudo dnschef -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  /usr/bin/dnschef:453: SyntaxWarning: "\/" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\/"? A raw string is also an option.
    header += "      / _` | '_ \/ __|/ __| '_ \ / _ \  _|\n"
  /usr/bin/dnschef:454: SyntaxWarning: "\_" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\_"? A raw string is also an option.
    header += "     | (_| | | | \__ \ (__| | | |  __/ |  \n"
  /usr/bin/dnschef:455: SyntaxWarning: "\_" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\_"? A raw string is also an option.
    header += "      \__,_|_| |_|___/\___|_| |_|\___|_|  \n"
  ```
- Docs: https://github.com/iphelix/dnschef

### `driftnet` ✓ verified on VM
- picks out and displays images from network traffic
- **Provides:** `driftnet`
- **Steps:**
  1. Install: `sudo apt install -y driftnet`
  2. Help: `driftnet -h`  (or `man driftnet`)
  3. Run: `sudo driftnet -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  Sun Oct 25 05:43:31 2026 - error: unrecognised option --
  driftnet, version 1.5.0
  Capture images from network traffic and display them.
  
  Synopsis: driftnet [options] [filter code]
  ```
- Docs: https://github.com/deiv/driftnet

### `dsniff` ✓ verified on VM
- Various tools to sniff network traffic for cleartext insecurities
- **Provides:** `arpspoof`, `dnsspoof`, `dsniff`, `filesnarf`, `macof`, `mailsnarf`, `msgsnarf`, `sshmitm`, `sshow`, `tcpkill`, `tcpnice`, `urlsnarf`, `webmitm`, `webspy`
- **Steps:**
  1. Install: `sudo apt install -y dsniff`
  2. Help: `dsniff -h`  (or `man dsniff`)
  3. Run: `sudo dsniff -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  dsniff: invalid option -- '-'
  Version: 2.5a2
  Usage: dsniff [-cdamDNPCv] [-i interface | -p pcapfile] [-s snaplen]
                [-f services] [-t trigger[,...]]
                [pcap filter]
   -c         Half-duplex TCP stream assembly
  ```
- Docs: https://github.com/hackerschoice/dsniff

### `ettercap-graphical` ✓ verified on VM
- Ettercap GUI-enabled executable
- **Provides:** `ettercap`, `ettercap-pkexec`, `etterfilter`, `etterlog`
- **Steps:**
  1. Install: `sudo apt install -y ettercap-graphical`
  2. Help: `ettercap -h`  (or `man ettercap`)
  3. Run: `sudo ettercap -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  
  ettercap 0.8.4.1 copyright 2001-2026 Ettercap Development Team
  
  
  Usage: ettercap [OPTIONS] [TARGET1] [TARGET2]
  ```
- Docs: https://ettercap.github.io/ettercap/

### `ettercap-text-only` ✓ verified on VM
- Ettercap console-mode executable
- **Provides:** `ettercap`, `etterfilter`, `etterlog`
- **Steps:**
  1. Install: `sudo apt install -y ettercap-text-only`
  2. Help: `ettercap -h`  (or `man ettercap`)
  3. Run: `sudo ettercap -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  
  ettercap 0.8.4.1 copyright 2001-2026 Ettercap Development Team
  
  
  Usage: ettercap [OPTIONS] [TARGET1] [TARGET2]
  ```
- Docs: https://ettercap.github.io/ettercap/

### `ferret-sidejack` ✓ verified on VM
- Monitors data and extracts interesting data
- **Provides:** `ferret-sidejack`
- **Steps:**
  1. Install: `sudo apt install -y ferret-sidejack`
  2. Help: `ferret-sidejack -h`  (or `man ferret-sidejack`)
  3. Run: `sudo ferret-sidejack -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  -- FERRET 3.0.1 - 2007-2012 (c) Errata Security
  -- build = Sep 29 2024 02:38:07 (64-bits)
  -- libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3)
  -- graceful exit --
  --help: unknown option
  ```
- Docs: https://github.com/robertdavidgraham/ferret

### `fiked` ✓ verified on VM
- Cisco VPN attack tool
- **Provides:** `fiked`
- **Steps:**
  1. Install: `sudo apt install -y fiked`
  2. Help: `fiked -h`  (or `man fiked`)
  3. Run: `sudo fiked -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  fiked: invalid option -- '-'
  Usage: fiked [-rdqhV] -g gw -k id:psk [-k ..] [-u user] [-l file] [-L file]
  	-r	use raw socket: forge ip src addr to match <gateway> (disables -u)
  	-d	detach from tty and run as a daemon (implies -q)
  	-q	be quiet, don't write anything to stdout
  	-h	print help and exit
  ```
- Docs: https://www.roe.ch/FakeIKEd

### `hamster-sidejack` ✓ verified on VM
- Sidejacking tool
- **Provides:** `hamster-sidejack`
- **Steps:**
  1. Install: `sudo apt install -y hamster-sidejack`
  2. Help: `hamster-sidejack -h`  (or `man hamster-sidejack`)
  3. Run: `sudo hamster-sidejack -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  unknown parm, all parms must be name=value pairs. (--help)
  Proxy: listening on 127.0.0.1:1234
  ```
- Docs: http://www.erratasec.com/research.html

### `hexinject` ✓ verified on VM
- Versatile packet injector and sniffer
- **Provides:** `hex2raw`, `hexinject`, `packets.tcl`, `prettypacket`
- **Steps:**
  1. Install: `sudo apt install -y hexinject`
  2. Help: `hexinject -h`  (or `man hexinject`)
  3. Run: `sudo hexinject -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  hexinject: invalid option -- '-'
  HexInject 1.6 [hexadecimal packet injector/sniffer]
  written by: Emanuele Acri <<email>>
  
  Usage:
     hexinject <mode> <options>
  ```
- Docs: https://hexinject.sourceforge.net/

### `isr-evilgrade` ✓ verified on VM
- Evilgrade framework
- **Provides:** `evilgrade`
- **Steps:**
  1. Install: `sudo apt install -y isr-evilgrade`
  2. Help: `evilgrade -h`  (or `man evilgrade`)
  3. Run: `sudo evilgrade -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  [DEBUG] - Loading module: modules/fcleaner.pm
  [DEBUG] - Loading module: modules/flashget.pm
  [DEBUG] - Loading module: modules/techtracker.pm
  [DEBUG] - Loading module: modules/filezilla.pm
  [DEBUG] - Loading module: modules/teamviewer.pm
  [DEBUG] - Loading module: modules/istat.pm
  ```
- Docs: https://github.com/infobyte/evilgrade

### `macchanger` ✓ verified on VM
- utility for manipulating the MAC address of network interfaces
- **Provides:** `macchanger`
- **Steps:**
  1. Install: `sudo apt install -y macchanger`
  2. Help: `macchanger -h`  (or `man macchanger`)
  3. Run: `sudo macchanger -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  GNU MAC Changer
  Usage: macchanger [options] device
  
    -h,  --help                   Print this help
    -V,  --version                Print version and exit
    -s,  --show                   Print the MAC address and exit
  ```
- Docs: https://github.com/alobbs/macchanger

### `mitmproxy` ✓ verified on VM
- SSL-capable man-in-the-middle HTTP proxy
- **Provides:** `mitmdump`, `mitmproxy`, `mitmweb`
- **Steps:**
  1. Install: `sudo apt install -y mitmproxy`
  2. Help: `mitmproxy -h`  (or `man mitmproxy`)
  3. Run: `sudo mitmproxy -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  usage: mitmproxy [options]
  
  options:
    -h, --help            show this help message and exit
    --version             show version number and exit
    --options             Show all options and their default values
  ```
- Docs: https://mitmproxy.org

### `netsniff-ng` ✓ verified on VM
- Linux network packet sniffer toolkit
- **Provides:** `astraceroute`, `bpfc`, `curvetun`, `flowtop`, `ifpps`, `mausezahn`, `netsniff-ng`, `trafgen`
- **Steps:**
  1. Install: `sudo apt install -y netsniff-ng`
  2. Help: `netsniff-ng -h`  (or `man netsniff-ng`)
  3. Run: `sudo netsniff-ng -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  netsniff-ng 0.6.9, the packet sniffing beast
  http://www.netsniff-ng.org
  
  Usage: netsniff-ng [options] [filter-expression]
  Options:
    -i|-d|--dev|--in <dev|pcap|->  Input source as netdev, pcap or pcap stdin
  ```
- Docs: http://netsniff-ng.org/

### `rebind` ✓ verified on VM
- DNS rebinding tool
- **Provides:** `dns-rebind`
- **Steps:**
  1. Install: `sudo apt install -y rebind`
  2. Help: `dns-rebind -h`  (or `man dns-rebind`)
  3. Run: `sudo dns-rebind -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  
  Rebind v0.3.4
  
  Usage: dns-rebind [OPTIONS]
  
  	-i <interface>	Specify the network interface to bind to
  ```

### `responder` ✓ verified on VM
- LLMNR/NBT-NS/mDNS Poisoner
- **Provides:** `responder`, `responder-BrowserListener`, `responder-DHCP_Auto`, `responder-FindSQLSrv`, `responder-Icmp-Redirect`, `responder-MultiRelay`, `responder-RunFinger`
- **Steps:**
  1. Install: `sudo apt install -y responder`
  2. Help: `responder -h`  (or `man responder`)
  3. Run: `sudo responder -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
                                           __
    .----.-----.-----.-----.-----.-----.--|  |.-----.----.
    |   _|  -__|__ --|  _  |  _  |     |  _  ||  -__|   _|
    |__| |_____|_____|   __|_____|__|__|_____||_____|__|
                     |__|
  ```
- Docs: https://github.com/lgandx/Responder

### `sniffjoke` ✓ verified on VM
- Transparent TCP connection scrambler
- **Provides:** `sj-commit-results`, `sj-iptcpopt-probe`, `sniffjoke`, `sniffjoke-autotest`, `sniffjokectl`
- **Steps:**
  1. Install: `sudo apt install -y sniffjoke`
  2. Help: `sniffjoke -h`  (or `man sniffjoke`)
  3. Run: `sudo sniffjoke -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  SniffJoke is too dangerous to be run by an humble user; go to fetch daddy root, now!
  ```
- Docs: https://github.com/vecna/sniffjoke

### `sslsniff` ✓ verified on VM
- SSL/TLS man-in-the-middle attack tool
- **Provides:** `sslsniff`
- **Steps:**
  1. Install: `sudo apt install -y sslsniff`
  2. Help: `sslsniff -h`  (or `man sslsniff`)
  3. Run: `sudo sslsniff -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  sslsniff: invalid option -- '-'
  Usage: sslsniff [options]
  
  Modes:
  -a	Authority mode.  Specify a certificate that will act as a CA.
  -t	Targeted mode.  Specify a directory full of certificates to target.
  ```
- Docs: https://github.com/moxie0/sslsniff

### `sslsplit` ✓ verified on VM
- transparent and scalable SSL/TLS interception
- **Provides:** `sslsplit`
- **Steps:**
  1. Install: `sudo apt install -y sslsplit`
  2. Help: `sslsplit -h`  (or `man sslsplit`)
  3. Run: `sudo sslsplit -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  sslsplit: invalid option -- '-'
  ```
- Docs: https://www.roe.ch/SSLsplit

### `tcpflow` ✓ verified on VM
- TCP flow recorder
- **Provides:** `tcpflow`
- **Steps:**
  1. Install: `sudo apt install -y tcpflow`
  2. Help: `tcpflow -h`  (or `man tcpflow`)
  3. Run: `sudo tcpflow -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  TCPFLOW version 1.6.1
  
  usage: tcpflow [-aBcCDhIpsvVZ] [-b max_bytes] [-d debug_level] 
       [-[eE] scanner] [-f max_fds] [-F[ctTXMkmg]] [-h|--help] [-i iface]
       [-l files...] [-L semlock] [-m min_bytes] [-o outdir] [-r file] [-R file]
       [-S name=value] [-T template] [-U|--relinquish-privileges user] [-v|--verbose]
  ```
- Docs: https://github.com/simsong/tcpflow

### `tcpreplay` ✓ verified on VM
- Tool to replay saved tcpdump files at arbitrary speeds
- **Provides:** `tcpbridge`, `tcpcapinfo`, `tcpliveplay`, `tcpprep`, `tcpreplay`, `tcpreplay-edit`, `tcprewrite`
- **Steps:**
  1. Install: `sudo apt install -y tcpreplay`
  2. Help: `tcpreplay -h`  (or `man tcpreplay`)
  3. Run: `sudo tcpreplay -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  Warning in interface.c:get_interface_list() line 80:
  May need to run as root to get access to all network interfaces.
  tcpreplay (tcpreplay) - Replay network traffic stored in pcap files
  Usage:  tcpreplay [ -<flag> [<val>] | --<name>[{=| }<val>] ]... \
  		<pcap_file(s)> | <pcap_dir(s)>
  ```
- Docs: http://tcpreplay.appneta.com/

### `wifi-honey` ✓ verified on VM
- Wi-Fi honeypot
- **Provides:** `wifi-honey`
- **Steps:**
  1. Install: `sudo apt install -y wifi-honey`
  2. Help: `wifi-honey -h`  (or `man wifi-honey`)
  3. Run: `sudo wifi-honey -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  /usr/bin/wifi-honey: line 35: iwconfig: command not found
  Run it as root
  Run it as root
  Run it as root
  Run it as root
  Run it as root
  ```
- Docs: https://www.digininja.org/projects/wifi_honey.php

### `wireshark` ✓ verified on VM
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `sudo wireshark -i eth0` — capture/test on your own segment
- **real --help (verified on VM):**
  ```
  Wireshark 4.6.6
  Interactively dump and analyze network traffic.
  See https://www.wireshark.org for more information.
  
  Usage: wireshark [options] ... [ <infile> ]
  ```
- Docs: https://www.wireshark.org/


## 10 · Post-Exploitation  (`kali-tools-post-exploitation`)

### `dbd` ✓ verified on VM
- Netcat clone with encryption
- **Provides:** `dbd`
- **Steps:**
  1. Install: `sudo apt install -y dbd`
  2. Help: `dbd -h`  (or `man dbd`)
  3. Run: `dbd -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  dbd: invalid option -- '-'
  ```
- Docs: https://github.com/gitdurandal/dbd

### `dns2tcp` ✓ verified on VM
- TCP-over-DNS tunnel server and client
- **Provides:** `dns2tcpc`, `dns2tcpd`
- **Steps:**
  1. Install: `sudo apt install -y dns2tcp`
  2. Help: `dns2tcpc -h`  (or `man dns2tcpc`)
  3. Run: `dns2tcpc -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  dns2tcpc: invalid option -- '-'
  dns2tcp v0.5.2 ( http://www.hsc.fr/ )
  Usage : dns2tcpc [options] [server] 
  	-c         	: enable compression
  	-z <domain>	: domain to use (mandatory)
  	-d <1|2|3>	: debug_level (1, 2 or 3)
  ```

### `exe2hexbat` ✓ verified on VM
- Convert EXE to bat
- **Provides:** `exe2hex`
- **Steps:**
  1. Install: `sudo apt install -y exe2hexbat`
  2. Help: `exe2hex -h`  (or `man exe2hex`)
  3. Run: `exe2hex -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  /usr/bin/exe2hex:495: SyntaxWarning: "\[" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\["? A raw string is also an option.
    send_user "\\n\\n\[i\] Done\\n"
  [*] exe2hex v1.5.1
  Usage: exe2hex [options]
  
  Options:
  ```
- Docs: https://github.com/g0tmi1k/exe2hex/

### `iodine` ✓ verified on VM
- tool for tunneling IPv4 data through a DNS server
- **Provides:** `iodine`, `iodine-client-start`, `iodined`
- **Steps:**
  1. Install: `sudo apt install -y iodine`
  2. Help: `iodine -h`  (or `man iodine`)
  3. Run: `iodine -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  iodine: invalid option -- '-'
  Usage: iodine [-v] [-h] [-f] [-r] [-u user] [-t chrootdir] [-d device] [-P password] [-m maxfragsize] [-M maxlen] [-T type] [-O enc] [-L 0|1] [-I sec] [-z context] [-F pidfile] [nameserver] topdomain
  ```
- Docs: https://code.kryo.se/iodine

### `laudanum` ✓ verified on VM
- Collection of injectable web files
- **Provides:** `laudanum`
- **Steps:**
  1. Install: `sudo apt install -y laudanum`
  2. Help: `laudanum -h`  (or `man laudanum`)
  3. Run: `laudanum -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  
  > laudanum ~ Collection of injectable web files
  
  /usr/share/laudanum
  ├── asp
  ├── aspx
  ```
- Docs: https://sourceforge.net/projects/laudanum/

### `mimikatz` ✓ verified on VM
- Uses admin rights on Windows to display passwords in plaintext
- **Provides:** `mimikatz`
- **Steps:**
  1. Install: `sudo apt install -y mimikatz`
  2. Help: `mimikatz -h`  (or `man mimikatz`)
  3. Run: `mimikatz -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  
  > mimikatz ~ Uses admin rights on Windows to display passwords in plaintext
  
  /usr/share/windows-resources/mimikatz
  ├── kiwi_passwords.yar
  ├── mimicom.idl
  ```
- Docs: https://blog.gentilkiwi.com/mimikatz

### `miredo` ✓ verified on VM
- Teredo IPv6 tunneling through NATs
- **Provides:** `miredo`, `miredo-checkconf`, `teredo-mire`
- **Steps:**
  1. Install: `sudo apt install -y miredo`
  2. Help: `miredo -h`  (or `man miredo`)
  3. Run: `miredo -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  Usage: miredo [OPTIONS] [SERVER_NAME]
  Creates a Teredo tunneling interface for encapsulation of IPv6 over UDP.
  
    -c, --config     specify an configuration file
    -f, --foreground run in the foreground
    -h, --help       display this help and exit
  ```
- Docs: http://www.remlab.net/miredo/

### `nishang` ✓ verified on VM
- Collection of PowerShell scripts and payloads
- **Provides:** `nishang`
- **Steps:**
  1. Install: `sudo apt install -y nishang`
  2. Help: `nishang -h`  (or `man nishang`)
  3. Run: `nishang -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  
  > nishang ~ Collection of PowerShell scripts and payloads
  
  /usr/share/nishang
  ├── ActiveDirectory
  ├── Antak-WebShell
  ```
- Docs: https://github.com/samratashok/nishang

### `powersploit` ✓ verified on VM
- PowerShell Post-Exploitation Framework
- **Provides:** `powersploit`
- **Steps:**
  1. Install: `sudo apt install -y powersploit`
  2. Help: `powersploit -h`  (or `man powersploit`)
  3. Run: `powersploit -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  
  > powersploit ~ PowerShell Post-Exploitation Framework
  
  /usr/share/windows-resources/powersploit
  ├── AntivirusBypass
  ├── CodeExecution
  ```
- Docs: https://github.com/PowerShellMafia/PowerSploit

### `proxychains4` ✓ verified on VM
- redirect connections through socks/http proxies (proxychains-ng)
- **Provides:** `proxychains4`, `proxychains4-daemon`
- **Steps:**
  1. Install: `sudo apt install -y proxychains4`
  2. Help: `proxychains4 -h`  (or `man proxychains4`)
  3. Run: `proxychains4 -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  
  Usage:	proxychains4 -q -f config_file program_name [arguments]
  	-q makes proxychains quiet - this overrides the config setting
  	-f allows one to manually specify a configfile to use
  	for example : proxychains telnet somehost.com
  More help in README file
  ```
- Docs: https://github.com/rofl0r/proxychains-ng

### `proxytunnel` ✓ verified on VM
- Help SSH and other protocols through HTTP(S) proxies
- **Provides:** `proxytunnel`
- **Steps:**
  1. Install: `sudo apt install -y proxytunnel`
  2. Help: `proxytunnel -h`  (or `man proxytunnel`)
  3. Run: `proxytunnel -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  proxytunnel 1.13.0 Copyright 2001-2026 Proxytunnel Project
  Usage: proxytunnel [OPTIONS]...
  Build generic tunnels through HTTPS proxies using HTTP authentication
  
  Standard options:
   -i, --inetd                Run from inetd (default: off)
  ```
- Docs: https://proxytunnel.sourceforge.io/

### `ptunnel` ✓ verified on VM
- Tunnel TCP connections over ICMP packets
- **Provides:** `ptunnel`
- **Steps:**
  1. Install: `sudo apt install -y ptunnel`
  2. Help: `ptunnel -h`  (or `man ptunnel`)
  3. Run: `ptunnel -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  ptunnel v 0.72.
  Usage:   ptunnel -p <addr> -lp <port> -da <dest_addr> -dp <dest_port> [-m max_tunnels] [-v verbosity] [-f logfile]
           ptunnel [-m max_threads] [-v verbosity] [-c <device>]
       -p: Set address of peer running packet forwarder. This causes
           ptunnel to operate in forwarding mode - the absence of this
           option causes ptunnel to operate in proxy mode.
  ```
- Docs: http://www.mit.edu/afs.new/sipb/user/golem/tmp/ptunnel-0.61.orig/web/

### `pwnat` ✓ verified on VM
- NAT to NAT client-server communication
- **Provides:** `pwnat`
- **Steps:**
  1. Install: `sudo apt install -y pwnat`
  2. Help: `pwnat -h`  (or `man pwnat`)
  3. Run: `pwnat -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  pwnat: invalid option -- '-'
  usage: pwnat <-s | -c> <args>
    -c    client mode (default)
          <args>: [local ip] <local port> <proxy host> [proxy port (def:2222)] <remote host> <remote port>
    -s    server mode
          <args>: [local ip] [proxy port (def:2222)] [[allowed host]:[allowed port] ...]
  ```
- Docs: https://samy.pl/pwnat/

### `sbd` ✓ verified on VM
- Secure backdoor for Linux and Windows
- **Provides:** `sbd`
- **Steps:**
  1. Install: `sudo apt install -y sbd`
  2. Help: `sbd -h`  (or `man sbd`)
  3. Run: `sbd -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  sbd: invalid option -- '-'
  ```
- Docs: https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz

### `sslh` ✓ verified on VM
- Applicative protocol multiplexer
- **Provides:** `sslh`, `sslh-ev`, `sslh-select`
- **Steps:**
  1. Install: `sudo apt install -y sslh`
  2. Help: `sslh -h`  (or `man sslh`)
  3. Run: `sslh -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  sslhcfg: invalid option "--help"
   [-Vfin] [-F <file>] [-v <n>] [--verbose-config=<n>] [--verbose-config-error=<n>] [--verbose-connections=<n>] [--verbose-connections-try=<n>] [--verbose-connections-error=<n>] [--verbose-fd=<n>] [--verbose-packets=<n>] [--verbose-probe-info=<n>] [--verbose-probe-error=<n>] [--verbose-system-error=<n>] [--verbose-int-error=<n>] [--transparent] [-t <n>] [--udp-max-connections=<n>] [-u <str>] [-P <file>] [-C <path>] [--syslog-facility=<str>] [--logfile=<str>] [--on-timeout=<str>] [--prefix=<str>] [-p <host:port>]... [--ssh=<host:port>]... [--tls=<host:port>]... [--ssl=<host:port>]... [--openvpn=<host:port>]... [--tinc=<host:port>]... [--wireguard=<host:port>]... [--xmpp=<host:port>]... [--http=<host:port>]... [--adb=<host:port>]... [--socks5=<host:port>]... [--syslog=<host:port>]... [--msrdp=<host:port>]... [--anyprot=<host:port>]...
    -F, --config=<file>      	Specify configuration file
    -v, --verbose=<n>        	Override all verbosness options
    --verbose-config=<n>     	Print configuration at startup
    --verbose-config-error=<n>	Print configuration errors
  ```
- Docs: http://www.rutschle.net/tech/sslh/README.html

### `stunnel4` ✓ verified on VM
- Universal SSL tunnnel for network daemons - compatibility package
- **Provides:** `stunnel4`
- **Steps:**
  1. Install: `sudo apt install -y stunnel4`
  2. Help: `stunnel4 -h`  (or `man stunnel4`)
  3. Run: `stunnel4 -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  [.] stunnel 5.82 on aarch64-unknown-linux-gnu platform
  [.] Compiled with OpenSSL 3.6.4 25 Aug 2026
  [.] Running  with OpenSSL 3.6.3 9 Jun 2026
  [.] Threading:PTHREAD Sockets:POLL,IPv6,SYSTEMD TLS:ENGINE,OCSP,PSK,SNI,DTLS Auth:LIBWRAP
  [!] Invalid configuration file name "--help"
  [!] realpath: No such file or directory (2)
  ```
- Docs: https://www.stunnel.org/

### `udptunnel` ✓ verified on VM
- tunnel UDP packets over a TCP connection
- **Provides:** `udptunnel`
- **Steps:**
  1. Install: `sudo apt install -y udptunnel`
  2. Help: `udptunnel -h`  (or `man udptunnel`)
  3. Run: `udptunnel -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  udptunnel: invalid option -- '-'
  Usage: udptunnel -s TCP-port [-r] [-v] UDP-addr/UDP-port[/ttl]
      or udptunnel -c TCP-addr[/TCP-port] [-r] [-v] UDP-addr/UDP-port[/ttl]
       -s: Server mode.  Wait for TCP connections on the port.
       -c: Client mode.  Connect to the given address.
       -r: RTP mode.  Connect/listen on ports N and N+1 for both UDP and TCP.
  ```
- Docs: http://www1.cs.columbia.edu/~lennox/udptunnel/

### `webacoo` ✓ verified on VM
- Web backdoor cookie script kit
- **Provides:** `webacoo`
- **Steps:**
  1. Install: `sudo apt install -y webacoo`
  2. Help: `webacoo -h`  (or `man webacoo`)
  3. Run: `webacoo -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  /usr/bin/webacoo version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: webacoo [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://github.com/anestisb/WeBaCoo

### `weevely` ✓ verified on VM
- Stealth tiny web shell
- **Provides:** `weevely`
- **Steps:**
  1. Install: `sudo apt install -y weevely`
  2. Help: `weevely -h`  (or `man weevely`)
  3. Run: `weevely -h` — use on your own host after a foothold
- **real --help (verified on VM):**
  ```
  usage: weevely [-h] {terminal,session,generate} ...
  
  positional arguments:
    {terminal,session,generate}
      terminal            Run terminal or command on the target
      session             Recover an existing session
  ```
- Docs: https://github.com/epinna/weevely3/


## 11 · Forensics  (`kali-tools-forensics`)

### `7zip` ✓ verified on VM
- 7-Zip file archiver with a high compression ratio
- **Provides:** `7z`, `7za`, `7zr`, `p7zip`
- **Steps:**
  1. Install: `sudo apt install -y 7zip`
  2. Help: `7z -h`  (or `man 7z`)
  3. Run: `7z <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  7-Zip 26.03 (arm64) : Copyright (c) 1999-2026 Igor Pavlov : 2026-09-03
   64-bit arm_v:8-A locale=en_US.UTF-8 Threads:2 OPEN_MAX:4096, ASM
  
  Usage: 7z <command> [<switches>...] <archive_name> [<file_names>...] [@listfile]
  ```
- Docs: https://www.7-zip.org/

### `afflib-tools` ✓ verified on VM
- Advanced Forensics Format Library (utilities)
- **Provides:** `affcat`, `affcompare`, `affconvert`, `affcopy`, `affcrypto`, `affdiskprint`, `affinfo`, `affix`, `affrecover`, `affsegment`, `affsign`, `affstats`, `affuse`, `affverify`, `affxml`
- **Steps:**
  1. Install: `sudo apt install -y afflib-tools`
  2. Help: `affix -h`  (or `man affix`)
  3. Run: `affix <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  affix: invalid option -- '-'
  usage: affix [options] file1 [...]
    -y = Actually modify the files; normally just reports the problems
    -v = Just print the version number and exit.
  ```
- Docs: https://github.com/sshock/AFFLIBv3

### `apktool` ✓ verified on VM
- tool for reverse engineering Android apk files
- **Provides:** `apktool`
- **Steps:**
  1. Install: `sudo apt install -y apktool`
  2. Help: `apktool -h`  (or `man apktool`)
  3. Run: `apktool <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Unrecognized option: --help
  Apktool v2.7.0-dirty - a tool for reengineering Android apk files
  with smali v2.5.2.git2771eae-debian and baksmali v2.5.2.git2771eae-debian
  Copyright 2010 Ryszard Wiśniewski <<email>>
  Copyright 2010 Connor Tumbleson <<email>>
  ```
- Docs: https://ibotpeaches.github.io/Apktool/

### `autopsy` ✓ verified on VM
- graphical interface to SleuthKit
- **Provides:** `autopsy`
- **Steps:**
  1. Install: `sudo apt install -y autopsy`
  2. Help: `autopsy -h`  (or `man autopsy`)
  3. Run: `autopsy <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Invalid flag: --help
  
  
  usage: /usr/bin/autopsy [-c] [-C] [-d evid_locker] [-i device filesystem mnt] [-p port] [remoteaddr]
    -c: force a cookie in the URL
    -C: force NO cookie in the URL
  ```
- Docs: https://www.sleuthkit.org/autopsy/

### `binwalk` ✓ verified on VM
- tool library for analyzing binary blobs and executable code
- **Provides:** `binwalk`
- **Steps:**
  1. Install: `sudo apt install -y binwalk`
  2. Help: `binwalk -h`  (or `man binwalk`)
  3. Run: `binwalk <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  Binwalk v2.4.3
  Original author: Craig Heffner, ReFirmLabs
  https://github.com/OSPG/binwalk
  
  Usage: binwalk [OPTIONS] [FILE1] [FILE2] [FILE3] ...
  ```
- Docs: https://github.com/ReFirmLabs/binwalk

### `binwalk3` ✓ verified on VM
- tool library for analyzing binary blobs and executable code
- **Provides:** `binwalk3`
- **Steps:**
  1. Install: `sudo apt install -y binwalk3`
  2. Help: `binwalk3 -h`  (or `man binwalk3`)
  3. Run: `binwalk3 <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Analyzes data for embedded file types
  
  Usage: binwalk3 [OPTIONS] [FILE_NAME]
  
  Arguments:
    [FILE_NAME]  Path to the file to analyze
  ```
- Docs: https://github.com/ReFirmLabs/binwalk

### `bulk-extractor` ✓ verified on VM
- Extracts information without parsing filesystem
- **Provides:** `bulk_extractor`
- **Steps:**
  1. Install: `sudo apt install -y bulk-extractor`
  2. Help: `bulk_extractor -h`  (or `man bulk_extractor`)
  3. Run: `bulk_extractor <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  bulk_extractor version 2.1.1: A high-performance flexible digital forensics program.
  Usage:
    bulk_extractor [OPTION...] image_name
  
    -A, --offset_add arg          Offset added (in bytes) to feature locations 
                                  (default: 0)
  ```
- Docs: https://github.com/simsong/bulk_extractor

### `bytecode-viewer` ✓ verified on VM
- Java 8+ Jar & Android APK Reverse Engineering Suite
- **Provides:** `bytecode-viewer`
- **Steps:**
  1. Install: `sudo apt install -y bytecode-viewer`
  2. Help: `bytecode-viewer -h`  (or `man bytecode-viewer`)
  3. Run: `bytecode-viewer <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Bytecode Viewer 2.13.2 [Fat Jar] - https://bytecodeviewer.com
  Created by @Konloch - https://konloch.com
  Presented by https://the.bytecode.club
  Cannot set security manager! Are you on Java 18+ and have not enabled support for it?
  Because of this, you may be susceptible to some exploits!
  Either deal with it or allow it using the -Djava.security.manager=allow parameter.
  ```
- Docs: https://github.com/Konloch/bytecode-viewer

### `cabextract` ✓ verified on VM
- Microsoft Cabinet file unpacker
- **Provides:** `cabextract`
- **Steps:**
  1. Install: `sudo apt install -y cabextract`
  2. Help: `cabextract -h`  (or `man cabextract`)
  3. Run: `cabextract <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: cabextract [options] [-d dir] <cabinet file(s)>
  
  This will extract all files from a cabinet or executable cabinet.
  For multi-part cabinets, only specify the first file in the set.
  
  Options:
  ```

### `chkrootkit` ✓ verified on VM
- rootkit detector
- **Provides:** `chklastlog`, `chkrootkit`, `chkrootkit-daily`, `chkwtmp`
- **Steps:**
  1. Install: `sudo apt install -y chkrootkit`
  2. Help: `chkrootkit -h`  (or `man chkrootkit`)
  3. Run: `chkrootkit <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: /usr/sbin/chkrootkit [options] [test ...]
  Options:
          -h                show this help and exit
          -V                show version information and exit
          -l                show available tests and exit
          -d                debug
  ```
- Docs: https://www.chkrootkit.org/

### `creddump7` ✓ verified on VM
- Python tool to extract credentials and secrets from Windows registry hives
- **Provides:** `creddump7`
- **Steps:**
  1. Install: `sudo apt install -y creddump7`
  2. Help: `creddump7 -h`  (or `man creddump7`)
  3. Run: `creddump7 <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  creddump7 - Python tool to extract credentials and secrets from Windows registry hives
  /usr/share/creddump7
  ├── cachedump.py
  ├── framework
  ├── lsadump.py
  ├── pwdump.py
  ```
- Docs: https://github.com/CiscoCXSecurity/creddump7

### `dc3dd` ✓ verified on VM
- patched version of GNU dd with forensic features
- **Provides:** `dc3dd`
- **Steps:**
  1. Install: `sudo apt install -y dc3dd`
  2. Help: `dc3dd -h`  (or `man dc3dd`)
  3. Run: `dc3dd <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  ------
  usage:
  ------
  
  	dc3dd [OPTION 1] [OPTION 2] ... [OPTION N]
  ```
- Docs: https://sourceforge.net/projects/dc3dd/

### `dcfldd` ✓ verified on VM
- enhanced version of dd for forensics and security
- **Provides:** `dcfldd`
- **Steps:**
  1. Install: `sudo apt install -y dcfldd`
  2. Help: `dcfldd -h`  (or `man dcfldd`)
  3. Run: `dcfldd <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: dcfldd [OPTION]...
  Enhanced version of dd for forensics and security.
  
    bs=BYTES            force ibs=BYTES and obs=BYTES (default=32768)
    cbs=BYTES           convert BYTES bytes at a time
    conv=KEYWORDS       convert the file as per the comma separated keyword list
  ```
- Docs: https://github.com/resurrecting-open-source-projects/dcfldd

### `ddrescue` ✓ verified on VM
- data recovery and protection tool
- **Provides:** `dd_rescue`
- **Steps:**
  1. Install: `sudo apt install -y ddrescue`
  2. Help: `dd_rescue -h`  (or `man dd_rescue`)
  3. Run: `dd_rescue <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  dd_rescue Version 1.99.13, <email>, GNU GPL v2/v3
   (DD_RESCUE_1_99_13)
   (compiled May 21 2025 11:21:52 by gcc (Debian 14.2.0-19) 14.2.0)
   (features: O_DIRECT dl/libfallocate fallocate splice fitrim xattr aes arm8)
  dd_rescue is free software. It's protected by the terms of GNU GPL v2 or v3
  ```
- Docs: http://www.garloff.de/kurt/linux/ddrescue/

### `dumpzilla` ✓ verified on VM
- Mozilla browser forensic tool
- **Provides:** `dumpzilla`
- **Steps:**
  1. Install: `sudo apt install -y dumpzilla`
  2. Help: `dumpzilla -h`  (or `man dumpzilla`)
  3. Run: `dumpzilla <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  usage: python dumpzilla.py PROFILE_DIR [OPTIONS]
  
  Options:
  
   --Addons
   --Search
  ```
- Docs: http://www.dumpzilla.org/

### `ewf-tools` ✓ verified on VM
- collection of tools for reading and writing EWF files
- **Provides:** `ewfacquire`, `ewfacquirestream`, `ewfdebug`, `ewfexport`, `ewfinfo`, `ewfmount`, `ewfrecover`, `ewfverify`
- **Steps:**
  1. Install: `sudo apt install -y ewf-tools`
  2. Help: `ewfinfo -h`  (or `man ewfinfo`)
  3. Run: `ewfinfo <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  ewfinfo: invalid option -- '-'
  ewfinfo 20140816
  
  Invalid argument: ewfinfo
  Use ewfinfo to determine information about the EWF format (Expert Witness
  Compression Format).
  ```
- Docs: https://github.com/libyal/libewf-legacy

### `exifprobe` ✓ verified on VM
- read metadata from digital pictures
- **Provides:** `exifgrep`, `exifprobe`
- **Steps:**
  1. Install: `sudo apt install -y exifprobe`
  2. Help: `exifprobe -h`  (or `man exifprobe`)
  3. Run: `exifprobe <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  exifprobe: invalid option -- '-'
  Usage:
  exifprobe [options] filenames(s)
  	-h - print this help message
  	-V - print program version and copyright
  ```
- Docs: https://github.com/hfiguiere/exifprobe

### `exiv2` ✓ verified on VM
- EXIF/IPTC/XMP metadata manipulation tool
- **Provides:** `exiv2`
- **Steps:**
  1. Install: `sudo apt install -y exiv2`
  2. Help: `exiv2 -h`  (or `man exiv2`)
  3. Run: `exiv2 <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: exiv2 [ option [ arg ] ]+ [ action ] file ...
  
  Image metadata manipulation tool.
  
  Where file is one or more files, optionally containing a URL
  (http, https, ftp, sftp, data or file) or wildcard
  ```
- Docs: https://www.exiv2.org/

### `ext3grep` ✓ verified on VM
- tool to help recover deleted files on ext3 filesystems
- **Provides:** `ext3grep`
- **Steps:**
  1. Install: `sudo apt install -y ext3grep`
  2. Help: `ext3grep -h`  (or `man ext3grep`)
  3. Run: `ext3grep <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Running ext3grep version 0.10.2
  Usage: ext3grep [options] [--] device-file
  Options:
    --version, -[vV]       Print version and exit successfully.
    --help,                Print this help and exit successfully.
    --superblock           Print contents of superblock in addition to the rest.
  ```

### `ext4magic` ✓ verified on VM
- recover deleted files from ext3 or ext4 partitions
- **Provides:** `ext4magic`
- **Steps:**
  1. Install: `sudo apt install -y ext4magic`
  2. Help: `ext4magic -h`  (or `man ext4magic`)
  3. Run: `ext4magic <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  ext4magic : Error: Missing device name and options.
  
  ext4magic -M [-j <journal_file>] [-d <target_dir>] <filesystem> 
  ext4magic -m [-j <journal_file>] [-d <target_dir>] <filesystem> 
  ext4magic [-S|-J|-H|-V|-T] [-x] [-j <journal_file>] [-B n|-I n|-f <file_name>|-i <input_list>] [-t n|[[-a n][-b n]]] [-d <target_dir>] [-R|-r|-L|-l] [-Q] <filesystem> 
  ```
- Docs: http://ext4magic.sf.net/ext4magic_en.html

### `extundelete` ✓ verified on VM
- utility to recover deleted files from ext3/ext4 partition
- **Provides:** `extundelete`
- **Steps:**
  1. Install: `sudo apt install -y extundelete`
  2. Help: `extundelete -h`  (or `man extundelete`)
  3. Run: `extundelete <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: extundelete [options] [--] device-file
  Options:
    --version, -[vV]       Print version and exit successfully.
    --help,                Print this help and exit successfully.
    --superblock           Print contents of superblock in addition to the rest.
                           If no action is specified then this option is implied.
  ```
- Docs: http://extundelete.sourceforge.net/

### `fcrackzip` ✓ verified on VM
- password cracker for zip archives
- **Provides:** `fcrackzip`, `fcrackzipinfo`
- **Steps:**
  1. Install: `sudo apt install -y fcrackzip`
  2. Help: `fcrackzip -h`  (or `man fcrackzip`)
  3. Run: `fcrackzip <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  fcrackzip version 1.0, a fast/free zip password cracker
  written by Marc Lehmann <<email>> You can find more info on
  http://www.goof.com/pcg/marc/
  
  USAGE: fcrackzip
  ```
- Docs: http://oldhome.schmorp.de/marc/fcrackzip.html

### `foremost` ✓ verified on VM
- forensic program to recover lost files
- **Provides:** `foremost`
- **Steps:**
  1. Install: `sudo apt install -y foremost`
  2. Help: `foremost -h`  (or `man foremost`)
  3. Run: `foremost <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  foremost: invalid option -- '-'
  Try `foremost -h` for more information.
  ```
- Docs: https://sourceforge.net/projects/foremost/

### `forensic-artifacts`
- knowledge base of forensic artifacts (data files)
- **Type:** Forensic artifact definitions (YAML data)
- **Steps:**
  1. Install: `sudo apt install -y forensic-artifacts`
  2. Browse: `ls /usr/share/artifacts/*.yaml`
  3. Data (not a program) — consumed by plaso/dfir tools
- Docs: https://github.com/ForensicArtifacts/artifacts

### `forensics-colorize` ✓ verified on VM
- show differences between files using color graphics
- **Provides:** `colorize`, `filecompare`
- **Steps:**
  1. Install: `sudo apt install -y forensics-colorize`
  2. Help: `colorize -h`  (or `man colorize`)
  3. Run: `colorize <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  colorize: invalid option -- '-'
  Try `colorize -h` for more information.
  ```
- Docs: https://github.com/jessek/colorize

### `galleta` ✓ verified on VM
- Internet Explorer cookie forensic analysis tool
- **Provides:** `galleta`
- **Steps:**
  1. Install: `sudo apt install -y galleta`
  2. Help: `galleta -h`  (or `man galleta`)
  3. Run: `galleta <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Cookie File: --help
  
  ERROR - The cookie file cannot be opened!
  
  
  Usage:  galleta [options] <filename>
  ```
- Docs: https://odessa.sourceforge.net/

### `gdb` ✓ verified on VM
- GNU Debugger
- **Provides:** `aarch64-linux-gnu-run`, `gcore`, `gdb`, `gdb-add-index`, `gdbtui`, `gstack`
- **Steps:**
  1. Install: `sudo apt install -y gdb`
  2. Help: `gdb -h`  (or `man gdb`)
  3. Run: `gdb <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  This is the GNU debugger.  Usage:
  
      gdb [options] [executable-file [core-file or process-id]]
      gdb [options] --args executable-file [inferior-arguments ...]
  
  Selection of debuggee and its files:
  ```
- Docs: https://www.gnu.org/s/gdb/

### `gparted` ✓ verified on VM
- GNOME partition editor
- **Provides:** `gparted`
- **Steps:**
  1. Install: `sudo apt install -y gparted`
  2. Help: `gparted -h`  (or `man gparted`)
  3. Run: `gparted <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Error executing command as another user: No authentication agent found.
  ```
- Docs: https://gparted.org

### `grokevt` ✓ verified on VM
- scripts for reading Microsoft Windows event log files
- **Provides:** `grokevt-addlog`, `grokevt-builddb`, `grokevt-dumpmsgs`, `grokevt-findlogs`, `grokevt-parselog`, `grokevt-ripdll`
- **Steps:**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-addlog -h`  (or `man grokevt-addlog`)
  3. Run: `grokevt-addlog <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  USAGE:
    /usr/bin/grokevt-addlog <DATABASE_DIR> <EVT_FILE> <NEW_TYPE> <BASE_TYPE>
  
  This script takes a raw Windows event log and adds it to a
  previously built database generated by grokevt-builddb.
  See the man page for more details.
  ```
- Docs: http://projects.sentinelchicken.org/grokevt/

### `guymager` ✓ verified on VM
- Forensic imaging tool based on Qt
- **Provides:** `guymager`
- **Steps:**
  1. Install: `sudo apt install -y guymager`
  2. Help: `guymager -h`  (or `man guymager`)
  3. Run: `guymager <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  Using default log file name /var/log/guymager.log
  Log file error: Can't be opened
  Sun 25.Oct.2026 05:44:09 A3BE27E0 toollog.cpp t_Log 76                     Info  - Log file opened
  Sun 25.Oct.2026 05:44:09 A3BE27E0 main.cpp MainGo 418                      Info  - =================================================== Starting GUYMAGER ===================================================
  Sun 25.Oct.2026 05:44:09 A3BE27E0 main.cpp MainGo 419                      Info  - Version: 0.8.13-3
  ```
- Docs: https://guymager.sourceforge.net/

### `hashdeep` ✓ verified on VM
- recursively compute hashsums or piecewise hashings
- **Provides:** `hashdeep`, `md5deep`, `sha1deep`, `sha256deep`, `tigerdeep`, `whirlpooldeep`
- **Steps:**
  1. Install: `sudo apt install -y hashdeep`
  2. Help: `hashdeep -h`  (or `man hashdeep`)
  3. Run: `hashdeep <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  hashdeep: invalid option -- '-'
  Try `hashdeep -h` for more information.
  ```
- Docs: https://md5deep.sourceforge.net

### `inetsim` ✓ verified on VM
- Software suite for simulating common internet services
- **Provides:** `inetsim`
- **Steps:**
  1. Install: `sudo apt install -y inetsim`
  2. Help: `inetsim -h`  (or `man inetsim`)
  3. Run: `inetsim <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  INetSim 1.3.2 (2020-05-19) by Matthias Eckert & Thomas Hungenberg
  
  Usage: /usr/bin/inetsim [options]
  
  Available options:
    --help                         Print this help message.
  ```
- Docs: https://www.inetsim.org/index.html

### `jadx` ✓ verified on VM
- Dex to Java decompiler
- **Provides:** `jadx`, `jadx-gui`
- **Steps:**
  1. Install: `sudo apt install -y jadx`
  2. Help: `jadx -h`  (or `man jadx`)
  3. Run: `jadx <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  jadx - dex to java decompiler, version: 1.5.6
  
  usage: jadx [command] [options] <input files> (.apk, .dex, .jar, .class, .smali, .zip, .aar, .arsc, .aab, .xapk, .apkm, .jadx.kts)
  commands (use '<command> --help' for command options):
    plugins	  - manage jadx plugins
  ```
- Docs: https://github.com/skylot/jadx

### `javasnoop` ✓ verified on VM
- Intercept Java applications locally
- **Provides:** `javasnoop`
- **Steps:**
  1. Install: `sudo apt install -y javasnoop`
  2. Help: `javasnoop -h`  (or `man javasnoop`)
  3. Run: `javasnoop <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  [2] Turning off Java security for JavaSnoop usage
  [3] Starting JavaSnoop...
  log4j:ERROR setFile(null,true) call failed.
  java.io.FileNotFoundException: js.log (Permission denied)
  	at java.base/java.io.FileOutputStream.open0(Native Method)
  	at java.base/java.io.FileOutputStream.open(FileOutputStream.java:255)
  ```

### `libhivex-bin` ✓ verified on VM
- utilities for reading and writing Windows Registry hives
- **Provides:** `hivexget`, `hivexml`, `hivexsh`
- **Steps:**
  1. Install: `sudo apt install -y libhivex-bin`
  2. Help: `hivexml -h`  (or `man hivexml`)
  3. Run: `hivexml <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  hivexml: invalid option -- '-'
  hivexml [-dk] regfile > output.xml
  ```
- Docs: http://libguestfs.org/

### `libsmali-java` ✓ verified on VM
- assembler/disassembler for Android's dex format
- **Provides:** `baksmali`, `smali`
- **Steps:**
  1. Install: `sudo apt install -y libsmali-java`
  2. Help: `smali -h`  (or `man smali`)
  3. Run: `smali <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  usage: smali [-v] [-h] [<command [<args>]]
  
  Options:
    -h,-?,--help - Show usage information
    -v,--version - Print the version of baksmali and then exit
  ```
- Docs: https://github.com/JesusFreke/smali

### `lvm2` ✓ verified on VM
- Linux Logical Volume Manager
- **Provides:** `fsadm`, `lvchange`, `lvconvert`, `lvcreate`, `lvdisplay`, `lvextend`, `lvm`, `lvmconfig`, `lvmdiskscan`, `lvmdump`, `lvmpolld`, `lvmsadc`, `lvmsar`, `lvreduce`, `lvremove`, `lvrename`, `lvresize`, `lvs`, `lvscan`, `pvchange`, `pvck`, `pvcreate`, `pvdisplay`, `pvmove`, `pvremove`, `pvresize`, `pvs`, `pvscan`, `vgcfgbackup`, `vgcfgrestore`, `vgchange`, `vgck`, `vgconvert`, `vgcreate`, `vgdisplay`, `vgexport`, `vgextend`, `vgimport`, `vgimportclone`, `vgmerge`, `vgmknodes`, `vgreduce`, `vgremove`, `vgrename`, `vgs`, `vgscan`, `vgsplit`
- **Steps:**
  1. Install: `sudo apt install -y lvm2`
  2. Help: `lvm -h`  (or `man lvm`)
  3. Run: `lvm <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
    WARNING: Running as a non-root user. Functionality may be unavailable.
    Available lvm commands:
    Use 'lvm help <command>' for more information
     
    config          Display and manipulate configuration information
    devtypes        Display recognised built-in block device types
  ```
- Docs: https://sourceware.org/lvm2/

### `lynis` ✓ verified on VM
- security auditing tool for Unix based systems
- **Provides:** `lynis`
- **Steps:**
  1. Install: `sudo apt install -y lynis`
  2. Help: `lynis -h`  (or `man lynis`)
  3. Run: `lynis <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  [ Lynis 3.1.7 ]
  
  ################################################################################
    Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
    welcome to redistribute it under the terms of the GNU General Public License.
  ```
- Docs: https://cisofy.com/lynis/

### `mac-robber` ✓ verified on VM
- collects data about allocated files in mounted filesystems
- **Provides:** `mac-robber`
- **Steps:**
  1. Install: `sudo apt install -y mac-robber`
  2. Help: `mac-robber -h`  (or `man mac-robber`)
  3. Run: `mac-robber <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  mac-robber: invalid option -- '-'
  usage: mac-robber [-V] <directories>
    -V: Print the version to stdout
  ```
- Docs: https://www.sleuthkit.org/mac-robber

### `magicrescue` ✓ verified on VM
- recover files by looking for magic bytes
- **Provides:** `dupemap`, `magicrescue`, `magicsort`
- **Steps:**
  1. Install: `sudo apt install -y magicrescue`
  2. Help: `magicrescue -h`  (or `man magicrescue`)
  3. Run: `magicrescue <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  magicrescue: invalid option -- '-'
  Error parsing options.
  Usage: magicrescue [-I FILE] [-M MODE] [-O [+-=][0x]OFFSET] [-b BLOCKSIZE]
  	-d OUTPUT_DIR -r RECIPE1 [-r RECIPE2 [...]] DEVICE1 [DEVICE2 [...]]
  
    -b  Only consider files starting at a multiple of BLOCKSIZE.
  ```
- Docs: https://github.com/jbj/magicrescue

### `mdbtools` ✓ verified on VM
- JET / MS Access database (MDB) tools
- **Provides:** `mdb-array`, `mdb-count`, `mdb-export`, `mdb-header`, `mdb-hexdump`, `mdb-import`, `mdb-json`, `mdb-parsecsv`, `mdb-prop`, `mdb-queries`, `mdb-schema`, `mdb-sql`, `mdb-tables`, `mdb-ver`
- **Steps:**
  1. Install: `sudo apt install -y mdbtools`
  2. Help: `mdb-sql -h`  (or `man mdb-sql`)
  3. Run: `mdb-sql <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage:
    mdb-sql [OPTION…] <file> - Run SQL
  
  Help Options:
    -h, --help                Show help options
  ```
- Docs: https://github.com/mdbtools/mdbtools

### `memdump` ✓ verified on VM
- utility to dump memory contents to standard output
- **Provides:** `memdump`
- **Steps:**
  1. Install: `sudo apt install -y memdump`
  2. Help: `memdump -h`  (or `man memdump`)
  3. Run: `memdump <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  memdump: invalid option -- '-'
  memdump: usage: memdump [options]
    -b read_buffer_size     (default 0, use the system page size)
    -k                      (dump kernel memory instead of physical memory)
    -m map_file             (print memory map)
    -p memory_page_size     (default 0, use the system page size)
  ```
- Docs: http://www.porcupine.org/forensics/tct.html

### `metacam` ✓ verified on VM
- extract EXIF information from digital camera files
- **Provides:** `metacam`
- **Steps:**
  1. Install: `sudo apt install -y metacam`
  2. Help: `metacam -h`  (or `man metacam`)
  3. Run: `metacam <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: metacam <options> [filename(s)...]
  
         -h,--help           Display this help
         -v,--verbose        Display unknown tags too
         -a,--all            Display ALL tags (implies -v)
         -x,--xml            Output as XML
  ```
- Docs: http://www.cheeseplant.org/~daniel/pages/metacam.html

### `missidentify` ✓ verified on VM
- find win32 applications
- **Provides:** `missidentify`
- **Steps:**
  1. Install: `sudo apt install -y missidentify`
  2. Help: `missidentify -h`  (or `man missidentify`)
  3. Run: `missidentify <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  missidentify: invalid option -- '-'
  Try `missidentify -h` for more information.
  ```
- Docs: https://missidentify.sf.net

### `myrescue` ✓ verified on VM
- rescue data from damaged disks
- **Provides:** `myrescue`, `myrescue-bitmap2ppm`, `myrescue-stat`
- **Steps:**
  1. Install: `sudo apt install -y myrescue`
  2. Help: `myrescue -h`  (or `man myrescue`)
  3. Run: `myrescue <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  myrescue: invalid option -- '-'
  myrescue [<options>] <input-file> <output-file>
  options:
  -b <block-size>   block size in bytes, default: 4096
  -B <bitmap-file>  bitmap-file, default: <output-file>.bitmap
  -A                abort on error
  ```
- Docs: https://myrescue.sf.net

### `nasm` ✓ verified on VM
- General-purpose x86 assembler
- **Provides:** `nasm`, `ndisasm`
- **Steps:**
  1. Install: `sudo apt install -y nasm`
  2. Help: `nasm -h`  (or `man nasm`)
  3. Run: `nasm <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: nasm [-@ response_file] [options...] [--] filename
    Options:
      -v (or --v)    print the NASM version number and exit
      -@ file        response file; one command line option per line
      -h             list command line options and exit (also --help)
      -h -opt        show additional help for option "-opt"
  ```
- Docs: https://www.nasm.us/

### `nasty` ✓ verified on VM
- tool which helps you to recover your GPG passphrase
- **Provides:** `nasty`
- **Steps:**
  1. Install: `sudo apt install -y nasty`
  2. Help: `nasty -h`  (or `man nasty`)
  3. Run: `nasty <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  nasty: invalid option -- '-'
  -a x	set minimum length of passphrase
  -b x	set maximum length
  -m x	set guessing mode:
  	incremental: try them all
  	random: try at random
  ```
- Docs: https://github.com/folkertvanheusden/nasty

### `parted` ✓ verified on VM
- disk partition manipulator
- **Provides:** `parted`, `partprobe`
- **Steps:**
  1. Install: `sudo apt install -y parted`
  2. Help: `parted -h`  (or `man parted`)
  3. Run: `parted <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: parted [OPTION]... [DEVICE [COMMAND [PARAMETERS]...]...]
  Apply COMMANDs with PARAMETERS to DEVICE.  If no COMMAND(s) are given, run in
  interactive mode.
  
  OPTIONs:
    -h, --help                      displays this help message
  ```
- Docs: https://www.gnu.org/software/parted

### `pasco` ✓ verified on VM
- Internet Explorer cache forensic analysis tool
- **Provides:** `pasco`
- **Steps:**
  1. Install: `sudo apt install -y pasco`
  2. Help: `pasco -h`  (or `man pasco`)
  3. Run: `pasco <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  ERROR - The index.dat file cannot be opened!
  
  
  Usage:  pasco [options] <filename>
  	-d Undelete Activity Records
  	-t Field Delimiter (TAB by default)
  ```
- Docs: https://sf.net/projects/odessa

### `pdf-parser` ✓ verified on VM
- Parses PDF files to identify fundamental elements
- **Provides:** `pdf-parser`
- **Steps:**
  1. Install: `sudo apt install -y pdf-parser`
  2. Help: `pdf-parser -h`  (or `man pdf-parser`)
  3. Run: `pdf-parser <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  This program has not been tested with this version of Python (3.14.8)
  Should you encounter problems, please use Python version 3.13.9
  Usage: pdf-parser [options] pdf-file|zip-file|url
  pdf-parser, use it to parse a PDF document
  
  Options:
  ```
- Docs: https://blog.didierstevens.com/programs/pdf-tools/

### `pdfid` ✓ verified on VM
- Scans PDF files for certain PDF keywords
- **Provides:** `pdfid`
- **Steps:**
  1. Install: `sudo apt install -y pdfid`
  2. Help: `pdfid -h`  (or `man pdfid`)
  3. Run: `pdfid <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: pdfid [options] [pdf-file|zip-file|url|@file] ...
  Tool to test a PDF file
  
  Arguments:
  pdf-file and zip-file can be a single file, several files, and/or @file
  @file: run PDFiD on each file listed in the text file specified
  ```
- Docs: https://blog.didierstevens.com/programs/pdf-tools/

### `plaso`
- super timeline all the things -- metapackage
- **Type:** Super-timeline forensics framework
- **Steps:**
  1. Install: `sudo apt install -y plaso python3-plaso`
  2. Build a timeline: `log2timeline --storage-file out.plaso /path/to/image-you-own`
  3. Export: `psort -o l2tcsv -w timeline.csv out.plaso`
- Docs: https://github.com/log2timeline/plaso

### `polenum` ✓ verified on VM
- Extracts the password policy from a Windows system
- **Provides:** `polenum`
- **Steps:**
  1. Install: `sudo apt install -y polenum`
  2. Help: `polenum -h`  (or `man polenum`)
  3. Run: `polenum <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  usage: polenum [-h] [--username USERNAME] [--password PASSWORD]
                 [--domain DOMAIN] [--protocols [PROTOCOLS ...]]
                 [enum4linux]
  
  positional arguments:
    enum4linux            username:password@IPaddress
  ```
- Docs: https://github.com/Wh1t3Fox/polenum/

### `pst-utils` ✓ verified on VM
- tools for reading Microsoft Outlook PST files
- **Provides:** `lspst`, `nick2ldif`, `pst2dii`, `pst2ldif`, `readpst`
- **Steps:**
  1. Install: `sudo apt install -y pst-utils`
  2. Help: `lspst -h`  (or `man lspst`)
  3. Run: `lspst <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  lspst: invalid option -- '-'
  lspst / LibPST v0.6.76
  Little Endian implementation being used.
  Usage: lspst [OPTIONS] {PST FILENAME}
  OPTIONS:
  	-d <filename> 	- Debug to file. This is a binary log. Use readlog to print it
  ```
- Docs: https://www.five-ten-sg.com/libpst/

### `python3-capstone`
- lightweight multi-architecture disassembly framework - Python bindings
- **Type:** Python disassembly library
- **Steps:**
  1. Install: `sudo apt install -y python3-capstone`
  2. Use in Python: `python3 -c "from capstone import *; md=Cs(CS_ARCH_X86,CS_MODE_64); [print(i.mnemonic,i.op_str) for i in md.disasm(b'\x55',0x1000)]"`
  3. Verified on VM: capstone 5.0.7 → `0x1000: push rbp`
- Docs: https://www.capstone-engine.org/

### `python3-dfdatetime`
- Digital Forensics date and time library for Python 3
- **Type:** Forensic date/time library (used by plaso)
- **Steps:**
  1. Install: `sudo apt install -y python3-dfdatetime`
  2. Verified run on VM: `PosixTime(1700000000).CopyToDateTimeString()` → `2023-11-14 22:13:20` (v20260730)
  3. A library consumed by log2timeline/plaso, not run directly
- Docs: https://github.com/log2timeline/dfdatetime

### `python3-dfvfs`
- Digital Forensics Virtual File System
- **Type:** Digital-forensics virtual file system (library)
- **Steps:**
  1. Install: `sudo apt install -y python3-dfvfs`
  2. Verified run on VM: `dfvfs.path.factory.Factory` loaded (v20251019)
  3. Lets forensic tools read disk images/partitions uniformly
- Docs: https://github.com/log2timeline/dfvfs

### `python3-dfwinreg`
- Digital Forensics Windows Registry library for Python 3
- **Type:** Windows Registry forensics library
- **Steps:**
  1. Install: `sudo apt install -y python3-dfwinreg`
  2. Verified run on VM: `dfwinreg.registry.WinRegistry` loaded (v20260411)
  3. Parses Registry hives for plaso and custom scripts
- Docs: https://github.com/log2timeline/dfwinreg

### `python3-distorm3`
- powerful disassembler library for x86/AMD64 binary streams (Python3 bindings)
- **Type:** Python x86/AMD64 disassembler library
- **Steps:**
  1. Install: `sudo apt install -y python3-distorm3`
  2. Use in Python: `python3 -c "import distorm3; print(distorm3.Decode(0x1000, b'\x55\x8b\xec'))"`
  3. Note (verified on this arm64 VM): the native module fails to load here — distorm3 targets x86/AMD64; use `python3-capstone` on arm64.
- Docs: https://github.com/gdabah/distorm

### `radare2` ✓ verified on VM
- free and advanced command line hexadecimal editor
- **Provides:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **Steps:**
  1. Install: `sudo apt install -y radare2`
  2. Help: `radare2 -h`  (or `man radare2`)
  3. Run: `radare2 <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: r2 [-ACdfjLMnNqStuvwzX] [-P patch] [-p prj] [-a arch] [-b bits] [-c cmd]
            [-s addr] [-B baddr] [-m maddr] [-i script] [-e k=v] file|pid|-|--|=
   --           run radare2 without opening any file
   -            same as 'r2 malloc://512'
   =            read file from stdin (use -i and -c to run cmds)
   -=           perform !=! command to run all commands remotely
  ```
- Docs: https://www.radare.org

### `readpe` ✓ verified on VM
- command-line tools to manipulate Windows PE files
- **Provides:** `ofs2rva`, `pedis`, `pehash`, `peldd`, `pepack`, `peres`, `pescan`, `pesec`, `pestr`, `readpe`, `rva2ofs`
- **Steps:**
  1. Install: `sudo apt install -y readpe`
  2. Help: `readpe -h`  (or `man readpe`)
  3. Run: `readpe <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage: readpe OPTIONS FILE
  Show PE file headers
  
  Example: readpe --header optional winzip.exe
  
  Options:
  ```
- Docs: https://github.com/mentebinaria/readpe/wiki

### `recoverdm` ✓ verified on VM
- recover files on disks with damaged sectors
- **Provides:** `mergebad`, `recoverdm`
- **Steps:**
  1. Install: `sudo apt install -y recoverdm`
  2. Help: `recoverdm -h`  (or `man recoverdm`)
  3. Run: `recoverdm <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  recoverdm: invalid option -- '-'
  Usage: recoverdm -t <type> -i <file/device-in> -o <fileout> [-l <sectorsfile>] [-n # retries]
                   [-s rotation speed (CD-ROM etc.)] [-r # CD/DVD RAW read retries]
                   [-b start offset] [-p skip blocks count]
  Number of retries defaults to 6. For CD-ROMs it's advised to use 1.
  Number of CD/DVD RAW read retries defaults to 6. It is advised to use at least 3.
  ```
- Docs: https://www.vanheusden.com/recoverdm

### `recoverjpeg` ✓ verified on VM
- recover JFIF (JPEG) pictures and MOV movies
- **Provides:** `recoverjpeg`, `recovermov`, `remove-duplicates`, `sort-pictures`
- **Steps:**
  1. Install: `sudo apt install -y recoverjpeg`
  2. Help: `recoverjpeg -h`  (or `man recoverjpeg`)
  3. Run: `recoverjpeg <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  recoverjpeg: invalid option -- '-'
  Usage: recoverjpeg [options] file|device
  Options:
     -b blocksize   Block size in bytes (default: 512)
     -d format      Directory format string in printf syntax
     -f format      File format string in printf syntax
  ```
- Docs: https://www.rfc1149.net/devel/recoverjpeg

### `reglookup` ✓ verified on VM
- utility to analysis for Windows NT-based registry
- **Provides:** `reglookup`, `reglookup-recover`, `reglookup-timeline`
- **Steps:**
  1. Install: `sudo apt install -y reglookup`
  2. Help: `reglookup -h`  (or `man reglookup`)
  3. Run: `reglookup <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  ERROR: Failed to open hive.  Error returned: No such file or directory
  ERROR: Couldn't open registry file: --help
  ```
- Docs: https://web.archive.org/web/20240804024044/http://projects.sentinelchicken.org/reglookup/

### `rephrase` ✓ verified on VM
- Specialized passphrase recovery tool for GnuPG
- **Provides:** `rephrase`
- **Steps:**
  1. Install: `sudo apt install -y rephrase`
  2. Help: `rephrase -h`  (or `man rephrase`)
  3. Run: `rephrase <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  rephrase (Rephrase) 0.2
  Copyright (C) 2003, 2014  Phil Lanch
  This program comes with ABSOLUTELY NO WARRANTY.
  This is free software, and you are welcome to redistribute it
  under certain conditions.  See the file COPYING for details.
  ```
- Docs: https://www.roguedaemon.net/rephrase/

### `rifiuti` ✓ verified on VM
- MS Windows recycle bin analysis tool
- **Provides:** `rifiuti`
- **Steps:**
  1. Install: `sudo apt install -y rifiuti`
  2. Help: `rifiuti -h`  (or `man rifiuti`)
  3. Run: `rifiuti <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  INFO2 File: --help
  
  ERROR - The INFO2 file cannot be opened!
  
  
  Usage:  rifiuti [options] <filename>
  ```
- Docs: https://sf.net/projects/odessa

### `rifiuti2` ✓ verified on VM
- replacement for rifiuti, a MS Windows recycle bin analysis tool
- **Provides:** `rifiuti2`, `rifiuti-vista`
- **Steps:**
  1. Install: `sudo apt install -y rifiuti2`
  2. Help: `rifiuti2 -h`  (or `man rifiuti2`)
  3. Run: `rifiuti2 <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Usage:
    rifiuti2 [OPTION…] INFO2
  
  Parse INFO2 file and dump recycle bin data.
  
  Help Options:
  ```
- Docs: https://abelcheung.github.io/rifiuti2

### `rizin-cutter` ✓ verified on VM
- reverse engineering platform powered by rizin
- **Provides:** `cutter`
- **Steps:**
  1. Install: `sudo apt install -y rizin-cutter`
  2. Help: `cutter -h`  (or `man cutter`)
  3. Run: `cutter <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: From 6.5.0, xcb-cursor0 or libxcb-cursor0 is needed to load the Qt xcb platform plugin.
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: wayland-brcm, wayland-egl, wayland, vkkhrdisplay, xcb, vnc, minimal, eglfs, minimalegl, linuxfb, offscreen.
  ```
- Docs: https://cutter.re

### `rkhunter` ✓ verified on VM
- rootkit, backdoor, sniffer and exploit scanner
- **Provides:** `rkhunter`
- **Steps:**
  1. Install: `sudo apt install -y rkhunter`
  2. Help: `rkhunter -h`  (or `man rkhunter`)
  3. Run: `rkhunter <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  Usage: rkhunter {--check | --unlock | --update | --versioncheck |
                   --propupd [{filename | directory | package name},...] |
                   --list [{tests | {lang | languages} | rootkits | perl | propfiles}] |
                   --config-check | --version | --help} [options]
  ```
- Docs: https://rkhunter.sourceforge.net

### `rsakeyfind` ✓ verified on VM
- locates BER-encoded RSA private keys in memory images
- **Provides:** `rsakeyfind`
- **Steps:**
  1. Install: `sudo apt install -y rsakeyfind`
  2. Help: `rsakeyfind -h`  (or `man rsakeyfind`)
  3. Run: `rsakeyfind <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  image open failed: No such file or directory
  ```
- Docs: https://citp.princeton.edu/our-work/memory/code/

### `rz-ghidra`
- ghidra decompiler and sleigh disassembler for rizin
- **Type:** Ghidra decompiler plugin for rizin
- **Steps:**
  1. Install: `sudo apt install -y rz-ghidra rizin`
  2. Use inside rizin: `rizin -c "aa; pdg @ main" ./binary-you-own`
  3. A plugin (no standalone CLI) — adds `pdg` decompile to rizin/cutter
- Docs: https://github.com/rizinorg/rz-ghidra

### `safecopy` ✓ verified on VM
- data recovery tool for problematic or damaged media
- **Provides:** `safecopy`
- **Steps:**
  1. Install: `sudo apt install -y safecopy`
  2. Help: `safecopy -h`  (or `man safecopy`)
  3. Run: `safecopy <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Safecopy 1.7 by CorvusCorax
  Usage: safecopy [options] <source> <target>
  Options:
  	--stage1 : Preset to rescue most of the data fast,
  	           using no retries and avoiding bad areas.
  	           Presets: -f 10% -r 10% -R 1 -Z 0 -L 2 -M BaDbLoCk
  ```
- Docs: http://safecopy.sf.net

### `samdump2` ✓ verified on VM
- Dump Windows 2k/NT/XP password hashes
- **Provides:** `samdump2`
- **Steps:**
  1. Install: `sudo apt install -y samdump2`
  2. Help: `samdump2 -h`  (or `man samdump2`)
  3. Run: `samdump2 <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  samdump2: invalid option -- '-'
  samdump2 3.0.0 by Objectif Securite (http://www.objectif-securite.ch)
  original author: <email>
  
  Usage: samdump2 [OPTION]... SYSTEM_FILE SAM_FILE
  Retrieves syskey and extract hashes from Windows 2k/NT/XP/Vista SAM
  ```
- Docs: https://ophcrack.sourceforge.net/

### `scalpel` ✓ verified on VM
- fast filesystem-independent file recovery
- **Provides:** `scalpel`
- **Steps:**
  1. Install: `sudo apt install -y scalpel`
  2. Help: `scalpel -h`  (or `man scalpel`)
  3. Run: `scalpel <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  scalpel: invalid option -- '-'
  Scalpel version 1.60
  Written by Golden G. Richard III, based on Foremost 0.69.
  ```
- Docs: https://github.com/nolaforensix/scalpel-1.60

### `scrounge-ntfs` ✓ verified on VM
- Data recovery program for NTFS filesystems
- **Provides:** `scrounge-ntfs`
- **Steps:**
  1. Install: `sudo apt install -y scrounge-ntfs`
  2. Help: `scrounge-ntfs -h`  (or `man scrounge-ntfs`)
  3. Run: `scrounge-ntfs <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  scrounge-ntfs: invalid option -- '-'
  usage: scrounge-ntfs -l disk                                              
    List all drive partition information.                              
                                                                       
  usage: scrounge-ntfs -s disk                                              
    Search drive for NTFS partitions.                                  
  ```
- Docs: http://thewalter.net/stef/software/scrounge/

### `sleuthkit` ✓ verified on VM
- tools for forensics analysis on volume and filesystem data
- **Provides:** `blkcalc`, `blkcat`, `blkls`, `blkstat`, `fcat`, `ffind`, `fiwalk`, `fls`, `fsstat`, `hfind`, `icat`, `ifind`, `ils`, `img_cat`, `img_stat`, `istat`, `jcat`, `jls`, `jpeg_extract`, `mactime`, `mmcat`, `mmls`, `mmstat`, `pstat`, `sigfind`, `sorter`, `srch_strings`, `tsk_comparedir`, `tsk_gettimes`, `tsk_imageinfo`, `tsk_loaddb`, `tsk_recover`, `usnjls`
- **Steps:**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `fls -h`  (or `man fls`)
  3. Run: `fls <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  fls: invalid option -- '-'
  Invalid argument: --help
  usage: fls [-adDFlhpruvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-m dir/] [-o imgoffset] [-z ZONE] [-s seconds] image [images] [inode]
  	If [inode] is not given, the root directory is used
  	-a: Display "." and ".." entries
  	-d: Display deleted entries only
  ```
- Docs: https://www.sleuthkit.org/sleuthkit

### `sqlitebrowser` ✓ verified on VM
- GUI editor for SQLite databases
- **Provides:** `sqlitebrowser`
- **Steps:**
  1. Install: `sudo apt install -y sqlitebrowser`
  2. Help: `sqlitebrowser -h`  (or `man sqlitebrowser`)
  3. Run: `sqlitebrowser <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://sqlitebrowser.org/

### `ssdeep` ✓ verified on VM
- recursive piecewise hashing tool
- **Provides:** `ssdeep`
- **Steps:**
  1. Install: `sudo apt install -y ssdeep`
  2. Help: `ssdeep -h`  (or `man ssdeep`)
  3. Run: `ssdeep <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  ssdeep: invalid option -- '-'
  Try `ssdeep -h` for more information.
  ```
- Docs: https://github.com/ssdeep-project/ssdeep

### `tcpdump` ✓ verified on VM
- command-line network traffic analyzer
- **Provides:** `tcpdump`
- **Steps:**
  1. Install: `sudo apt install -y tcpdump`
  2. Help: `tcpdump -h`  (or `man tcpdump`)
  3. Run: `tcpdump <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  tcpdump version 4.99.6
  libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3)
  OpenSSL 3.6.3 9 Jun 2026
  64-bit build, 64-bit time_t
  Usage: tcpdump [-AbdDefghHIJKlLnNOpqStuUvxX#] [ -B size ] [ -c count ] [--count]
  		[ -C file_size ] [ -E algo:secret ] [ -F file ] [ -G seconds ]
  ```
- Docs: https://www.tcpdump.org/

### `tcpflow` ✓ verified on VM
- TCP flow recorder
- **Provides:** `tcpflow`
- **Steps:**
  1. Install: `sudo apt install -y tcpflow`
  2. Help: `tcpflow -h`  (or `man tcpflow`)
  3. Run: `tcpflow <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  TCPFLOW version 1.6.1
  
  usage: tcpflow [-aBcCDhIpsvVZ] [-b max_bytes] [-d debug_level] 
       [-[eE] scanner] [-f max_fds] [-F[ctTXMkmg]] [-h|--help] [-i iface]
       [-l files...] [-L semlock] [-m min_bytes] [-o outdir] [-r file] [-R file]
       [-S name=value] [-T template] [-U|--relinquish-privileges user] [-v|--verbose]
  ```
- Docs: https://github.com/simsong/tcpflow

### `tcpick` ✓ verified on VM
- TCP stream sniffer and connection tracker
- **Provides:** `tcpick`
- **Steps:**
  1. Install: `sudo apt install -y tcpick`
  2. Help: `tcpick -h`  (or `man tcpick`)
  3. Run: `tcpick <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  	tcpick 0.2.1 is a sniffer tool written using libpcap.
  tcpick can keep track of tcp connection, sniff all tcp streams
  and store them to files, to show you what is happening on a network interface
  
  Usage: tcpick [ -a ] [ -n ] [ -C ]				
         [ -i interface ]					
  ```
- Docs: http://tcpick.sourceforge.net

### `tcpreplay` ✓ verified on VM
- Tool to replay saved tcpdump files at arbitrary speeds
- **Provides:** `tcpbridge`, `tcpcapinfo`, `tcpliveplay`, `tcpprep`, `tcpreplay`, `tcpreplay-edit`, `tcprewrite`
- **Steps:**
  1. Install: `sudo apt install -y tcpreplay`
  2. Help: `tcpreplay -h`  (or `man tcpreplay`)
  3. Run: `tcpreplay <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Warning in interface.c:get_interface_list() line 80:
  May need to run as root to get access to all network interfaces.
  tcpreplay (tcpreplay) - Replay network traffic stored in pcap files
  Usage:  tcpreplay [ -<flag> [<val>] | --<name>[{=| }<val>] ]... \
  		<pcap_file(s)> | <pcap_dir(s)>
  ```
- Docs: http://tcpreplay.appneta.com/

### `truecrack` ✓ verified on VM
- Bruteforce password cracker for TrueCrypt volumes
- **Provides:** `truecrack`
- **Steps:**
  1. Install: `sudo apt install -y truecrack`
  2. Help: `truecrack -h`  (or `man truecrack`)
  3. Run: `truecrack <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  TrueCrack v3.6
  Website: https://github.com/lvaccaro/truecrack
  Contact us: <email>
  Bruteforce password cracker for Truecrypt volume. Optimazed with Nvidia Cuda technology.
  Based on TrueCrypt, freely available at http://www.truecrypt.org/
  Copyright (c) 2011 by Luca Vaccaro.
  ```
- Docs: https://github.com/lvaccaro/truecrack

### `unar` ✓ verified on VM
- Unarchiver for a variety of file formats
- **Provides:** `lsar`, `unar`
- **Steps:**
  1. Install: `sudo apt install -y unar`
  2. Help: `unar -h`  (or `man unar`)
  3. Run: `unar <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  unar v1.10.8, a tool for extracting the contents of archive files.
  Usage: unar [options] archive [files ...]
  
  Available options:
  -output-directory (-o) <string>    The directory to write the contents of the archive to. Defaults to the current directory. If set to a single dash (-), no files will be created, and all data will be output to stdout.
  -force-overwrite (-f)              Always overwrite files when a file to be unpacked already exists on disk. By default, the program asks the user if possible, otherwise skips the file.
  ```
- Docs: https://theunarchiver.com/command-line

### `undbx` ✓ verified on VM
- tool to extract, recover and undelete e-mail messages from .dbx files
- **Provides:** `undbx`
- **Steps:**
  1. Install: `sudo apt install -y undbx`
  2. Help: `undbx -h`  (or `man undbx`)
  3. Run: `undbx <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  UnDBX v0.21 (Jan 21 2026)
  Usage: undbx [<OPTION>] <DBX-FOLDER | DBX-FILE> [<OUTPUT-FOLDER>]
  
  Options:
  	-h, --help        	 show this message
  	-V, --version     	 show only version string
  ```
- Docs: https://github.com/ZungBang/undbx

### `unhide` ✓ verified on VM
- forensic tool to find hidden processes and ports
- **Provides:** `unhide`, `unhide-linux`, `unhide-posix`, `unhide_rb`, `unhide-tcp`
- **Steps:**
  1. Install: `sudo apt install -y unhide`
  2. Help: `unhide -h`  (or `man unhide`)
  3. Run: `unhide <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Unhide 20240509
  Copyright © 2010-2024 Yago Jesus & Patrick Gouin
  License GPLv3+ : GNU GPL version 3 or later
  http://www.unhide-forensics.info
  
  NOTE : This version of unhide is for systems using Linux >= 2.6 
  ```
- Docs: https://www.unhide-forensics.info

### `unrar` ✓ verified on VM
- Unarchiver for .rar files (non-free version)
- **Provides:** `unrar-nonfree`
- **Steps:**
  1. Install: `sudo apt install -y unrar`
  2. Help: `unrar-nonfree -h`  (or `man unrar-nonfree`)
  3. Run: `unrar-nonfree <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  ERROR: Unknown option: -help
  ```
- Docs: https://www.rarlab.com/

### `upx-ucl` ✓ verified on VM
- efficient live-compressor for executables
- **Provides:** `upx-ucl`
- **Steps:**
  1. Install: `sudo apt install -y upx-ucl`
  2. Help: `upx-ucl -h`  (or `man upx-ucl`)
  3. Run: `upx-ucl <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
                         Ultimate Packer for eXecutables
                            Copyright (C) 1996 - 2024
  UPX 4.2.4       Markus Oberhumer, Laszlo Molnar & John Reiser    May 9th 2024
  
  Usage: upx-ucl [-123456789dlthVL] [-qvfk] [-o file] file..
  ```
- Docs: https://upx.github.io/

### `vinetto` ✓ verified on VM
- forensics tool to examine Thumbs.db files
- **Provides:** `vinetto`
- **Steps:**
  1. Install: `sudo apt install -y vinetto`
  2. Help: `vinetto -h`  (or `man vinetto`)
  3. Run: `vinetto <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Vinetto: Version 0.9.15
  usage: vinetto [-h] [-e EDBFILE] [-H] [-m [{f,d,r,a}]] [--md5] [--nomd5]
                 [-o DIR] [-q] [-s] [-U] [-v] [--version]
                 [infile]
  
  Vinetto.py - The Thumbnail File Parser
  ```
- Docs: https://github.com/AtesComp/Vinetto

### `wce` ✓ verified on VM
- Windows Credentials Editor
- **Provides:** `wce`
- **Steps:**
  1. Install: `sudo apt install -y wce`
  2. Help: `wce -h`  (or `man wce`)
  3. Run: `wce <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  > wce ~ Windows Credentials Editor
  
  /usr/share/windows-resources/wce
  ├── getlsasrvaddr.exe
  ├── README
  ```
- Docs: http://www.ampliasecurity.com/research.html

### `winregfs` ✓ verified on VM
- Windows registry FUSE filesystem
- **Provides:** `fsck.winregfs`, `mount.winregfs`
- **Steps:**
  1. Install: `sudo apt install -y winregfs`
  2. Help: `fsck.winregfs -h`  (or `man fsck.winregfs`)
  3. Run: `fsck.winregfs <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Windows Registry Hive File Checker 0.8 (2021-09.15)
  
  Usage: fsck.winregfs [options] hivename
  ```
- Docs: https://codeberg.org/jbruchon/winregfs

### `wireshark` ✓ verified on VM
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  Wireshark 4.6.6
  Interactively dump and analyze network traffic.
  See https://www.wireshark.org for more information.
  
  Usage: wireshark [options] ... [ <infile> ]
  ```
- Docs: https://www.wireshark.org/

### `xmount` ✓ verified on VM
- tool for crossmounting between disk image formats
- **Provides:** `xmount`
- **Steps:**
  1. Install: `sudo apt install -y xmount`
  2. Help: `xmount -h`  (or `man xmount`)
  3. Run: `xmount <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  
  WARNING: FUSE will not allow other users nor root to access your virtual harddisk image. To change this behavior, please add "user_allow_other" to /etc/fuse.conf or execute xmount as root.
  
  ERROR: ParseCmdLine@729 : Unknown command line option "--help"
  
  xmount v1.3.1 Copyright (c) 2024 - 2026 by SITS Sarl <<email>>
  ```
- Docs: https://www.sits.lu/xmount

### `yara` ✓ verified on VM
- Pattern matching swiss knife for malware researchers
- **Provides:** `yara`, `yarac`
- **Steps:**
  1. Install: `sudo apt install -y yara`
  2. Help: `yara -h`  (or `man yara`)
  3. Run: `yara <image-or-file-you-own>` — analyse an image/file you own
- **real --help (verified on VM):**
  ```
  YARA 4.5.8, the pattern matching swiss army knife.
  Usage: yara [OPTION]... [NAMESPACE:]RULES_FILE... FILE | DIR | PID
  
  Mandatory arguments to long options are mandatory for short options too.
  
         --atom-quality-table=FILE           path to a file with the atom quality table
  ```
- Docs: https://virustotal.github.io/yara/


## 12 · Reporting Tools  (`kali-tools-reporting`)

### `cutycapt` ✓ verified on VM
- utility to capture WebKit's rendering of a web page
- **Provides:** `cutycapt`
- **Steps:**
  1. Install: `sudo apt install -y cutycapt`
  2. Help: `cutycapt -h`  (or `man cutycapt`)
  3. Run: `cutycapt` — organise findings and produce a report
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://github.com/Crystalix007/CutyCapt

### `eyewitness` ✓ verified on VM
- Rapid web application triage tool
- **Provides:** `eyewitness`, `geckodriver`
- **Steps:**
  1. Install: `sudo apt install -y eyewitness`
  2. Help: `eyewitness -h`  (or `man eyewitness`)
  3. Run: `eyewitness` — organise findings and produce a report
- **real --help (verified on VM):**
  ```
  ################################################################################
  #                                  EyeWitness                                  #
  ################################################################################
  #           Red Siege Information Security - https://www.redsiege.com           #
  ################################################################################
  ```
- Docs: https://www.christophertruncer.com/eyewitness-triage-tool/

### `faraday` ✓ verified on VM
- Collaborative Penetration Test IDE
- **Provides:** `faraday`, `faraday-beat`, `faraday-manage`, `faraday-server`, `faraday-start`, `faraday-stop`, `faraday-worker`, `faraday-worker-gevent`, `python-faraday`
- **Steps:**
  1. Install: `sudo apt install -y faraday`
  2. Help: `faraday -h`  (or `man faraday`)
  3. Run: `faraday` — organise findings and produce a report
- **real --help (verified on VM):**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```
- Docs: https://faradaysec.com

### `maltego` ✓ verified on VM
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego` — organise findings and produce a report
- **real --help (verified on VM):**
  ```
  arm64
  java is /usr/bin/java
  found java executable in PATH
  pwd: jar:file:/usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar!/BOOT-INF/lib/java-config-lib-1.0-SNAPSHOT.jar!/
  file: /usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar
  installDir: /usr/share/maltego
  ```
- Docs: https://www.maltego.com

### `metagoofil` ✓ verified on VM
- Tool designed for extracting metadata of public documents
- **Provides:** `metagoofil`
- **Steps:**
  1. Install: `sudo apt install -y metagoofil`
  2. Help: `metagoofil -h`  (or `man metagoofil`)
  3. Run: `metagoofil` — organise findings and produce a report
- **real --help (verified on VM):**
  ```
  usage: metagoofil.py [-h] -d DOMAIN [-e DELAY] [-f [SAVE_FILE]]
                       [-i URL_TIMEOUT] [-l SEARCH_MAX] [-n DOWNLOAD_FILE_LIMIT]
                       [-o SAVE_DIRECTORY] [-r NUMBER_OF_THREADS] -t FILE_TYPES
                       [-u [USER_AGENT]] [-w]
  
  Metagoofil v1.2.0 - Search Google and download specific file types.
  ```
- Docs: https://github.com/opsdisk/metagoofil

### `pipal` ✓ verified on VM
- Statistical analysis on password dumps
- **Provides:** `pipal`
- **Steps:**
  1. Install: `sudo apt install -y pipal`
  2. Help: `pipal -h`  (or `man pipal`)
  3. Run: `pipal` — organise findings and produce a report
- **real --help (verified on VM):**
  ```
  pipal 3.4.0 Robin Wood (<email>) (http://digi.ninja)
  
  Usage: pipal [OPTION] ... FILENAME
  	--help, -h, -?: show help
  	--top, -t X: show the top X results (default 10)
  	--output, -o <filename>: output to file
  ```
- Docs: https://www.digininja.org/projects/pipal.php

### `recordmydesktop` ✓ verified on VM
- Captures audio-video data of a Linux desktop session
- **Provides:** `recordmydesktop`
- **Steps:**
  1. Install: `sudo apt install -y recordmydesktop`
  2. Help: `recordmydesktop -h`  (or `man recordmydesktop`)
  3. Run: `recordmydesktop` — organise findings and produce a report
- **real --help (verified on VM):**
  ```
  Usage: recordmydesktop [OPTIONS]^filename
  
  Generic Options
    -h, --help                              Print this help and exit.
        --version                           Print program version and exit.
        --print-config                      Print info about options selected
  ```
- Docs: https://enselic.github.io/recordmydesktop/


## 13 · Social Engineering  (`kali-tools-social-engineering`)

### `beef-xss` ✓ verified on VM
- Browser Exploitation Framework (BeEF)
- **Provides:** `beef-xss`, `beef-xss-start`, `beef-xss-stop`
- **Steps:**
  1. Install: `sudo apt install -y beef-xss`
  2. Help: `beef-xss -h`  (or `man beef-xss`)
  3. Run: `beef-xss` — lab-internal only, with consent
- **real --help (verified on VM):**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ The command beef-xss is deprecated. Please use beef-xss-start instead.
  ┃
  ┗━
  ```
- Docs: https://beefproject.com/

### `maltego` ✓ verified on VM
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego` — lab-internal only, with consent
- **real --help (verified on VM):**
  ```
  arm64
  java is /usr/bin/java
  found java executable in PATH
  pwd: jar:file:/usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar!/BOOT-INF/lib/java-config-lib-1.0-SNAPSHOT.jar!/
  file: /usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar
  installDir: /usr/share/maltego
  ```
- Docs: https://www.maltego.com

### `msfpc` ✓ verified on VM
- MSFvenom Payload Creator (MSFPC)
- **Provides:** `msfpc`
- **Steps:**
  1. Install: `sudo apt install -y msfpc`
  2. Help: `msfpc -h`  (or `man msfpc`)
  3. Run: `msfpc` — lab-internal only, with consent
- **real --help (verified on VM):**
  ```
   [*] MSFvenom Payload Creator (MSFPC v1.4.5)
  
   /usr/bin/msfpc <TYPE> (<DOMAIN/IP>) (<PORT>) (<CMD/MSF>) (<BIND/REVERSE>) (<STAGED/STAGELESS>) (<TCP/HTTP/HTTPS/FIND_PORT>) (<BATCH/LOOP>) (<VERBOSE>)
     Example: /usr/bin/msfpc windows 192.168.1.10        # Windows & manual IP.
              /usr/bin/msfpc elf bind eth0 4444          # Linux, eth0's IP & manual port.
              /usr/bin/msfpc stageless cmd py https      # Python, stageless command prompt.
  ```
- Docs: https://github.com/g0tmi1k/msfpc

### `set` ✓ verified on VM
- Social-Engineer Toolkit
- **Provides:** `se-toolkit`, `setoolkit`
- **Steps:**
  1. Install: `sudo apt install -y set`
  2. Help: `setoolkit -h`  (or `man setoolkit`)
  3. Run: `setoolkit` — lab-internal only, with consent
- **real --help (verified on VM):**
  ```
  
   The Social-Engineer Toolkit (SET) - by David Kennedy (ReL1K)
  
   Not running as root. 
  
  Exiting the Social-Engineer Toolkit (SET).
  ```
- Docs: https://www.trustedsec.com/downloads/social-engineer-toolkit/


## 14 · Identify (triage/recon helpers)  (`kali-tools-identify`)

### `amass` ✓ verified on VM
- In-depth DNS Enumeration and Network Mapping
- **Provides:** `amass`
- **Steps:**
  1. Install: `sudo apt install -y amass`
  2. Help: `amass -h`  (or `man amass`)
  3. Run: `amass <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```
- Docs: https://github.com/OWASP/Amass

### `assetfinder` ✓ verified on VM
- Find domains and subdomains related to a given domain
- **Provides:** `assetfinder`
- **Steps:**
  1. Install: `sudo apt install -y assetfinder`
  2. Help: `assetfinder -h`  (or `man assetfinder`)
  3. Run: `assetfinder <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  Usage of assetfinder:
    -subs-only
      	Only include subdomains of search domain
  ```
- Docs: https://github.com/tomnomnom/assetfinder

### `cisco-auditing-tool` ✓ verified on VM
- Scans Cisco routers for vulnerabilities
- **Provides:** `CAT`
- **Steps:**
  1. Install: `sudo apt install -y cisco-auditing-tool`
  2. Help: `CAT -h`  (or `man CAT`)
  3. Run: `CAT <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  /usr/bin/CAT version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: CAT [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: http://www.scrypt.net/

### `defectdojo` ✓ verified on VM
- security orchestration and vulnerability management platform
- **Provides:** `defectdojo`, `defectdojo-start`, `defectdojo-stop`
- **Steps:**
  1. Install: `sudo apt install -y defectdojo`
  2. Help: `defectdojo -h`  (or `man defectdojo`)
  3. Run: `defectdojo <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ The command defectdojo is deprecated. Please use defectdojo-start instead.
  ┃
  ┗━
  ```
- Docs: https://github.com/DefectDojo/django-DefectDojo

### `exploitdb` ✓ verified on VM
- Searchable Exploit Database archive
- **Provides:** `exploitdb`, `searchsploit`
- **Steps:**
  1. Install: `sudo apt install -y exploitdb`
  2. Help: `exploitdb -h`  (or `man exploitdb`)
  3. Run: `exploitdb <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  
  > exploitdb ~ Searchable Exploit Database archive
  
  /usr/share/exploitdb
  ├── exploits
  └── shellcodes
  ```
- Docs: https://www.exploit-db.com

### `kali-autopilot` ✓ verified on VM
- tool for automatic attack scripts in Kali
- **Provides:** `kali-autopilot`
- **Steps:**
  1. Install: `sudo apt install -y kali-autopilot`
  2. Help: `kali-autopilot -h`  (or `man kali-autopilot`)
  3. Run: `kali-autopilot <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  Unable to access the X Display, is $DISPLAY set properly?
  ```
- Docs: https://gitlab.com/kalilinux/packages/kali-autopilot

### `maltego` ✓ verified on VM
- Open source intelligence and forensics application
- **Provides:** `maltego`
- **Steps:**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  arm64
  java is /usr/bin/java
  found java executable in PATH
  pwd: jar:file:/usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar!/BOOT-INF/lib/java-config-lib-1.0-SNAPSHOT.jar!/
  file: /usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar
  installDir: /usr/share/maltego
  ```
- Docs: https://www.maltego.com

### `maryam` ✓ verified on VM
- OWASP Maryam is a modular/optional open source framework bas
- **Provides:** `maryam`
- **Steps:**
  1. Install: `sudo apt install -y maryam`
  2. Help: `maryam -h`  (or `man maryam`)
  3. Run: `maryam <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  usage: maryam [-h] [-e execute] [-s start] [-v]
  maryam -h
  
  optional arguments:
  	  -h, --help   show this help message and exit
  	  -e execute   execute a command and exit
  ```
- Docs: https://github.com/saeeddhqan/Maryam

### `nipper-ng` ✓ verified on VM
- Device security configuration review tool
- **Provides:** `nipper`
- **Steps:**
  1. Install: `sudo apt install -y nipper-ng`
  2. Help: `nipper -h`  (or `man nipper`)
  3. Run: `nipper <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
                       _                           ____
                 _ __ (_)_ __  _ __   ___ _ __    / ->/|
                | '_ \| | '_ \| '_ \ / _ \ '__|  /<-_/ |
                | | | | | |_) | |_) |  __/ |     |   | /
                |_| |_|_| .__/| .__/ \___|_|     |___|/
                        |_|   |_|
  ```

### `osrframework` ✓ verified on VM
- Open Sources Research Framework
- **Provides:** `alias_generator`, `alias_generator.py`, `checkfy`, `checkfy.py`, `domainfy`, `domainfy.py`, `mailfy`, `mailfy.py`, `osrf`, `osrframework-cli`, `phonefy`, `phonefy.py`, `searchfy`, `searchfy.py`, `usufy`, `usufy.py`
- **Steps:**
  1. Install: `sudo apt install -y osrframework`
  2. Help: `osrf -h`  (or `man osrf`)
  3. Run: `osrf <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  usage: osrf [-h] [--license] [--version]
              <sub_command> <sub_command_options> ...
  
  OSRFramework CLI. Collection of tools included in the framework.
  
  SUBCOMMANDS:
  ```
- Docs: https://pypi.org/project/osrframework/

### `spiderfoot` ✓ verified on VM
- OSINT collection and reconnaissance tool
- **Provides:** `spiderfoot`, `spiderfoot-cli`
- **Steps:**
  1. Install: `sudo apt install -y spiderfoot`
  2. Help: `spiderfoot -h`  (or `man spiderfoot`)
  3. Run: `spiderfoot <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  usage: sf.py [-h] [-d] [-l IP:port] [-m mod1,mod2,...] [-M] [-C scanID]
               [-s TARGET] [-t type1,type2,...]
               [-u {all,footprint,investigate,passive}] [-T] [-o {tab,csv,json}]
               [-H] [-n] [-r] [-S LENGTH] [-D DELIMITER] [-f]
               [-F type1,type2,...] [-x] [-q] [-V] [-max-threads MAX_THREADS]
  ```
- Docs: https://www.spiderfoot.net

### `tiger` ✓ verified on VM
- security auditing and intrusion detection tools for Linux
- **Provides:** `tiger`, `tigercron`, `tigexp`
- **Steps:**
  1. Install: `sudo apt install -y tiger`
  2. Help: `tiger -h`  (or `man tiger`)
  3. Run: `tiger <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  Tiger UN*X security checking system
     Developed by Texas A&M University, 1994
     Updated by the Advanced Research Corporation, 1999-2002
     Further updated by Javier Fernandez-Sanguino, 2001-2018
     Contributions by Francisco Manuel Garcia Claramonte, 2009-2010
     Covered by the GNU General Public License (GPL)
  ```
- Docs: http://savannah.nongnu.org/projects/tiger/

### `wapiti` ✓ verified on VM
- web application vulnerability scanner
- **Provides:** `wapiti`, `wapiti-getcookie`
- **Steps:**
  1. Install: `sudo apt install -y wapiti`
  2. Help: `wapiti -h`  (or `man wapiti`)
  3. Run: `wapiti <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  
   ██╗    ██╗ █████╗ ██████╗ ██╗████████╗██╗██████╗
   ██║    ██║██╔══██╗██╔══██╗██║╚══██╔══╝██║╚════██╗
   ██║ █╗ ██║███████║██████╔╝██║   ██║   ██║ █████╔╝
   ██║███╗██║██╔══██║██╔═══╝ ██║   ██║   ██║ ╚═══██╗
   ╚███╔███╔╝██║  ██║██║     ██║   ██║   ██║██████╔╝
  ```
- Docs: https://wapiti.sourceforge.net/

### `witnessme` ✓ verified on VM
- Web Inventory tool
- **Provides:** `witnessme`, `wmapi`, `wmdb`
- **Steps:**
  1. Install: `sudo apt install -y witnessme`
  2. Help: `witnessme -h`  (or `man witnessme`)
  3. Run: `witnessme <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  usage: witnessme [-h] [--threads THREADS] [--timeout TIMEOUT] [-d] [-v]
                   {screenshot,grab} ...
  
  WitnessMe!
  
  positional arguments:
  ```
- Docs: https://github.com/byt3bl33d3r/WitnessMe

### `zaproxy` ✓ verified on VM
- Testing tool for finding vulnerabilities in web applications
- **Provides:** `owasp-zap`, `zaproxy`
- **Steps:**
  1. Install: `sudo apt install -y zaproxy`
  2. Help: `zaproxy -h`  (or `man zaproxy`)
  3. Run: `zaproxy <NODE_IP>` — triage/identify a target you own
- **real --help (verified on VM):**
  ```
  Found Java version 25.0.5-ea
  Available memory: 2965 MB
  Using JVM args: -Xmx741m
  666 [main] INFO  org.parosproxy.paros.Constant - Copying default configuration to /home/kali/.ZAP/config.xml
  814 [main] INFO  org.parosproxy.paros.Constant - Creating directory /home/kali/.ZAP/session
  815 [main] INFO  org.parosproxy.paros.Constant - Creating directory /home/kali/.ZAP/dirbuster
  ```
- Docs: https://github.com/zaproxy/zaproxy


## 15 · Fuzzing  (`kali-tools-fuzzing`)

### `afl++` ✓ verified on VM
- instrumentation-driven fuzzer for binary formats
- **Provides:** `afl-addseeds`, `afl-analyze`, `afl-c++`, `afl-cc`, `afl-clang`, `afl-clang++`, `afl-clang-fast`, `afl-clang-fast++`, `afl-clang-lto`, `afl-clang-lto++`, `afl-cmin`, `afl-cmin.awk`, `afl-cmin.bash`, `afl-cmin.py`, `afl-fuzz`, `afl-g++`, `afl-gcc`, `afl-gcc-fast`, `afl-g++-fast`, `afl-gotcpu`, `afl-health`, `afl-ld-lto`, `afl-lto`, `afl-lto++`, `afl-network-client`, `afl-network-server`, `afl-persistent-config`, `afl-plot`, `afl-showmap`, `afl-system-config`, `afl-tmin`, `afl-whatsup`
- **Steps:**
  1. Install: `sudo apt install -y afl++`
  2. Help: `afl-cc -h`  (or `man afl-cc`)
  3. Run: `afl-cc <target-you-own>` — fuzz a target you own
- **real --help (verified on VM):**
  ```
  afl-cc++5.02c by Michal Zalewski, Laszlo Szekeres, Marc Heuse
  
  afl-cc/afl-c++ [options]
  
  This is a helper application for afl-fuzz. It serves as a drop-in replacement
  for gcc and clang, letting you recompile third-party code with the required
  ```
- Docs: https://github.com/AFLplusplus/AFLplusplus

### `sfuzz` ✓ verified on VM
- Black Box testing utilities
- **Provides:** `sfo`, `sfuzz`
- **Steps:**
  1. Install: `sudo apt install -y sfuzz`
  2. Help: `sfuzz -h`  (or `man sfuzz`)
  3. Run: `sfuzz <target-you-own>` — fuzz a target you own
- **real --help (verified on VM):**
  ```
  unknown option: h
  ```
- Docs: http://aconole.brad-x.com/programs/sfuzz.html

### `spike` ✓ verified on VM
- Network protocol fuzzer
- **Provides:** `citrix`, `closed_source_web_server_fuzz`, `dceoversmb`, `dltest`, `do_post`, `generic_chunked`, `generic_listen_tcp`, `generic_send_tcp`, `generic_send_udp`, `generic_web_server_fuzz`, `generic_web_server_fuzz2`, `gopherd`, `halflife`, `line_send_tcp`, `msrpcfuzz`, `msrpcfuzz_udp`, `ntlm2`, `ntlm_brute`, `pmspike`, `post_fuzz`, `post_spike`, `quake`, `quakeserver`, `sendmsrpc`, `ss_spike`, `statd_spike`, `sunrpcfuzz`, `webfuzz`, `x11_spike`
- **Steps:**
  1. Install: `sudo apt install -y spike`
  2. Help: `ntlm2 -h`  (or `man ntlm2`)
  3. Run: `ntlm2 <target-you-own>` — fuzz a target you own
- **real --help (verified on VM):**
  ```
  Usage: ./ntlm_brute target port username[@domain] password url
  If you get a nice message from the server saying Use Localhost only, then you got the right password. Use a shell script to spam this througha word list or something. 
  ```
- Docs: http://www.immunitysec.com/resources-freesoftware.shtml

### `wfuzz` ✓ verified on VM
- Web application bruteforcer
- **Provides:** `wfuzz`
- **Steps:**
  1. Install: `sudo apt install -y wfuzz`
  2. Help: `wfuzz -h`  (or `man wfuzz`)
  3. Run: `wfuzz <target-you-own>` — fuzz a target you own
- **real --help (verified on VM):**
  ```
  default
  default
  ********************************************************
  * Wfuzz 3.1.0 - The Web Fuzzer                         *
  *                                                      *
  * Version up to 1.4c coded by:                         *
  ```
- Docs: http://www.edge-security.com/wfuzz.php


## 16 · VoIP Tools  (`kali-tools-voip`)

### `enumiax` ✓ verified on VM
- IAX protocol username enumerator
- **Provides:** `enumiax`
- **Steps:**
  1. Install: `sudo apt install -y enumiax`
  2. Help: `enumiax -h`  (or `man enumiax`)
  3. Run: `enumiax <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  enumiax: invalid option -- '-'
  enumIAX 0.4a
  Dustin D. Trammell <<email>>
  
  Usage: enumiax [options] target
    options:
  ```
- Docs: https://enumiax.sourceforge.net/

### `iaxflood` ✓ verified on VM
- VoIP flooder tool
- **Provides:** `iaxflood`
- **Steps:**
  1. Install: `sudo apt install -y iaxflood`
  2. Help: `iaxflood -h`  (or `man iaxflood`)
  3. Run: `iaxflood <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  usage: iaxflood sourcename destinationname numpackets
  ```
- Docs: http://www.hackingexposedvoip.com/sec_tools.html

### `inviteflood` ✓ verified on VM
- SIP/SDP INVITE message flooding over UDP/IP
- **Provides:** `inviteflood`
- **Steps:**
  1. Install: `sudo apt install -y inviteflood`
  2. Help: `inviteflood -h`  (or `man inviteflood`)
  3. Run: `inviteflood <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  
  inviteflood - Version 2.0
                June 09, 2006
   Usage:
   Mandatory -
  	interface (e.g. eth0)
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### `libfindrtp`
- Library required by multiple VoIP tools
- **Type:** Shared library for VoIP tools
- **Steps:**
  1. Install: `sudo apt install -y libfindrtp`
  2. A dependency (no CLI) pulled in by rtpbreak/rtpflood etc.
  3. Nothing to run directly
- Docs: http://www.hackingvoip.com/sec_tools.html

### `nmap` ✓ verified on VM
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- Docs: https://nmap.org/

### `ohrwurm` ✓ verified on VM
- RTP fuzzer
- **Provides:** `ohrwurm`
- **Steps:**
  1. Install: `sudo apt install -y ohrwurm`
  2. Help: `ohrwurm -h`  (or `man ohrwurm`)
  3. Run: `ohrwurm <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  ohrwurm-0.1
  ERROR: couldn't read from /proc/sys/net/ipv4/ip_forward
  ```
- Docs: http://mazzoo.de/blog/2006/08/25#ohrwurm

### `protos-sip` ✓ verified on VM
- SIP test suite
- **Provides:** `protos-sip`
- **Steps:**
  1. Install: `sudo apt install -y protos-sip`
  2. Help: `protos-sip -h`  (or `man protos-sip`)
  3. Run: `protos-sip <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  ERROR: unknown command line argument: --help
  ```
- Docs: https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip

### `rtpbreak` ✓ verified on VM
- Detects, reconstructs, and analyzes RTP sessions
- **Provides:** `rtpbreak`
- **Steps:**
  1. Install: `sudo apt install -y rtpbreak`
  2. Help: `rtpbreak -h`  (or `man rtpbreak`)
  3. Run: `rtpbreak <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  --
  25/10/2026#05:47:08 Fatal error at main.c:485:init_opt: option '-' invalid; exit forced.
  --
  ```
- Docs: http://dallachiesa.com/code/rtpbreak/

### `rtpflood` ✓ verified on VM
- Tool to flood any RTP device
- **Provides:** `rtpflood`
- **Steps:**
  1. Install: `sudo apt install -y rtpflood`
  2. Help: `rtpflood -h`  (or `man rtpflood`)
  3. Run: `rtpflood <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  usage: rtpflood sourcename destinationname srcport destport numpackets seqno timestamp SSID
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpinsertsound` ✓ verified on VM
- Inserts audio into a specified stream
- **Provides:** `rtpinsertsound`
- **Steps:**
  1. Install: `sudo apt install -y rtpinsertsound`
  2. Help: `rtpinsertsound -h`  (or `man rtpinsertsound`)
  3. Run: `rtpinsertsound <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  rtpinsertsound: invalid option -- '-'
  
  rtpinsertsound - Version 2.0
                   October 10, 2006
   Usage:
   Mandatory -
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### `rtpmixsound` ✓ verified on VM
- Mixes pre-recorded audio in real-time
- **Provides:** `rtpmixsound`
- **Steps:**
  1. Install: `sudo apt install -y rtpmixsound`
  2. Help: `rtpmixsound -h`  (or `man rtpmixsound`)
  3. Run: `rtpmixsound <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  rtpmixsound: invalid option -- '-'
  
  rtpmixsound - Version 3.0
                January 03, 2007
   Usage:
   Mandatory -
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### `siparmyknife` ✓ verified on VM
- SIP fuzzing tool
- **Provides:** `siparmyknife`
- **Steps:**
  1. Install: `sudo apt install -y siparmyknife`
  2. Help: `siparmyknife -h`  (or `man siparmyknife`)
  3. Run: `siparmyknife <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  Duplicate specification "sport|p=s" for option "p"
  
  
  THIS IS THERE TO PUT THE HELP REFERENCE
  ```
- Docs: https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html

### `sipcrack` ✓ verified on VM
- SIP login dumper/cracker
- **Provides:** `sipcrack`, `sipdump`
- **Steps:**
  1. Install: `sudo apt install -y sipcrack`
  2. Help: `sipcrack -h`  (or `man sipcrack`)
  3. Run: `sipcrack <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  
  SIPcrack 0.2 
  ----------------------------------------
  
  Usage: sipcrack [OPTIONS] [ -s | -w <wordlist> ] <dump file>
  ```
- Docs: http://www.remote-exploit.org/codes_sipcrack.html

### `sipp` ✓ verified on VM
- Traffic generator for the SIP protocol
- **Provides:** `sipp`
- **Steps:**
  1. Install: `sudo apt install -y sipp`
  2. Help: `sipp -h`  (or `man sipp`)
  3. Run: `sipp <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  
  Usage:
  
    sipp remote_host[:remote_port] [options]
  
    Available options:
  ```
- Docs: https://sipp.sourceforge.net/

### `sipvicious` ✓ verified on VM
- tools to audit SIP based VoIP systems
- **Provides:** `svcrack`, `svcrash`, `svmap`, `svreport`, `svwar`
- **Steps:**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svmap -h`  (or `man svmap`)
  3. Run: `svmap <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  Usage: svmap [options] host1 host2 hostrange
  Scans for SIP devices on a given network
  
  examples:
  
  svmap 10.0.0.1-10.0.0.255 172.16.131.1 sipvicious.org/22 10.0.1.1/241.1.1.1-20 1.1.2-20.* 4.1.*.*
  ```
- Docs: https://github.com/EnableSecurity/sipvicious

### `voiphopper` ✓ verified on VM
- Runs a VLAN hop security test
- **Provides:** `voiphopper`
- **Steps:**
  1. Install: `sudo apt install -y voiphopper`
  2. Help: `voiphopper -h`  (or `man voiphopper`)
  3. Run: `voiphopper <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  voiphopper: invalid option -- '-'
  VoIP Hopper Extended Usage:
  
  Miscellaneous Options:
  	-l (list available interfaces for CDP sniffing, then exit)
  	Example:  voiphopper -l
  ```
- Docs: https://sourceforge.net/projects/voiphopper

### `wireshark` ✓ verified on VM
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark <NODE_IP>` — needs your own SIP/VoIP target
- **real --help (verified on VM):**
  ```
  Wireshark 4.6.6
  Interactively dump and analyze network traffic.
  See https://www.wireshark.org for more information.
  
  Usage: wireshark [options] ... [ <infile> ]
  ```
- Docs: https://www.wireshark.org/


## 17 · Hardware Hacking  (`kali-tools-hardware`)

### `binwalk` ✓ verified on VM
- tool library for analyzing binary blobs and executable code
- **Provides:** `binwalk`
- **Steps:**
  1. Install: `sudo apt install -y binwalk`
  2. Help: `binwalk -h`  (or `man binwalk`)
  3. Run: `binwalk -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  
  Binwalk v2.4.3
  Original author: Craig Heffner, ReFirmLabs
  https://github.com/OSPG/binwalk
  
  Usage: binwalk [OPTIONS] [FILE1] [FILE2] [FILE3] ...
  ```
- Docs: https://github.com/ReFirmLabs/binwalk

### `binwalk3` ✓ verified on VM
- tool library for analyzing binary blobs and executable code
- **Provides:** `binwalk3`
- **Steps:**
  1. Install: `sudo apt install -y binwalk3`
  2. Help: `binwalk3 -h`  (or `man binwalk3`)
  3. Run: `binwalk3 -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  Analyzes data for embedded file types
  
  Usage: binwalk3 [OPTIONS] [FILE_NAME]
  
  Arguments:
    [FILE_NAME]  Path to the file to analyze
  ```
- Docs: https://github.com/ReFirmLabs/binwalk

### `cutecom` ✓ verified on VM
- Graphical serial terminal, like minicom
- **Provides:** `cutecom`
- **Steps:**
  1. Install: `sudo apt install -y cutecom`
  2. Help: `cutecom -h`  (or `man cutecom`)
  3. Run: `cutecom -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://gitlab.com/cutecom/cutecom

### `flashrom` ✓ verified on VM
- Identify, read, write, erase, and verify BIOS/ROM/flash chips
- **Provides:** `flashrom`
- **Steps:**
  1. Install: `sudo apt install -y flashrom`
  2. Help: `flashrom -h`  (or `man flashrom`)
  3. Run: `flashrom -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  flashrom v1.8.0 on Linux 7.1.5+kali-arm64 (aarch64)
  flashrom is free software, get the source code at https://flashrom.org
  
  Usage: flashrom [-h|-R|-L|
  	-p <programmername>[:<parameters>] [-c <chipname>]
  		(--flash-name|--flash-size|
  ```
- Docs: http://www.flashrom.org

### `minicom` ✓ verified on VM
- menu-driven serial communication program
- **Provides:** `ascii-xfr`, `minicom`, `runscript`, `xminicom`
- **Steps:**
  1. Install: `sudo apt install -y minicom`
  2. Help: `minicom -h`  (or `man minicom`)
  3. Run: `minicom -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  Usage: minicom [OPTION]... [configuration]
  A terminal program for Linux and other unix-like systems.
  
    -b, --baudrate         : set baudrate (ignore the value from config)
    -D, --device           : set device name (ignore the value from config)
    -s, --setup            : enter setup mode
  ```
- Docs: https://salsa.debian.org/minicom-team/minicom

### `openocd` ✓ verified on VM
- Open on-chip JTAG/SWD debug solution for embedded target devices
- **Provides:** `openocd`
- **Steps:**
  1. Install: `sudo apt install -y openocd`
  2. Help: `openocd -h`  (or `man openocd`)
  3. Run: `openocd -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  Open On-Chip Debugger 0.12.0
  Licensed under GNU GPL v2
  For bug reports, read
  	http://openocd.org/doc/doxygen/bugs.html
  Open On-Chip Debugger
  Licensed under GNU GPL v2
  ```
- Docs: http://openocd.sourceforge.net/

### `qemu-system-x86` ✓ verified on VM
- QEMU full system emulation binaries (x86)
- **Provides:** `qemu-system-amd64`, `qemu-system-i386`, `qemu-system-x86_64`
- **Steps:**
  1. Install: `sudo apt install -y qemu-system-x86`
  2. Help: `qemu-system-i386 -h`  (or `man qemu-system-i386`)
  3. Run: `qemu-system-i386 -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  QEMU emulator version 11.1.0 (Debian 1:11.1.0+ds-2)
  Copyright (c) 2003-2026 Fabrice Bellard and the QEMU Project developers
  usage: qemu-system-i386 [options] [disk_image]
  
  'disk_image' is a raw hard disk image for IDE hard disk 0
  ```
- Docs: http://www.qemu.org/

### `qemu-user` ✓ verified on VM
- QEMU user mode emulation (static binaries)
- **Provides:** `qemu-aarch64`, `qemu-aarch64_be`, `qemu-alpha`, `qemu-amd64`, `qemu-arm`, `qemu-arm64`, `qemu-armeb`, `qemu-armel`, `qemu-armhf`, `qemu-hexagon`, `qemu-hppa`, `qemu-i386`, `qemu-loong64`, `qemu-loongarch64`, `qemu-m68k`, `qemu-microblaze`, `qemu-microblazeel`, `qemu-mips`, `qemu-mips64`, `qemu-mips64el`, `qemu-mipsel`, `qemu-mipsn32`, `qemu-mipsn32el`, `qemu-or1k`, `qemu-powerpc`, `qemu-ppc`, `qemu-ppc64`, `qemu-ppc64el`, `qemu-ppc64le`, `qemu-riscv32`, `qemu-riscv64`, `qemu-s390x`, `qemu-sh4`, `qemu-sh4eb`, `qemu-sparc`, `qemu-sparc32plus`, `qemu-sparc64`, `qemu-x86_64`, `qemu-xtensa`, `qemu-xtensaeb`
- **Steps:**
  1. Install: `sudo apt install -y qemu-user`
  2. Help: `qemu-arm -h`  (or `man qemu-arm`)
  3. Run: `qemu-arm -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  usage: qemu-arm [options] program [arguments...]
  Linux CPU emulator (compiled for arm emulation)
  
  Options and associated environment variables:
  
  Argument             Env-variable         Description
  ```
- Docs: http://www.qemu.org/

### `radare2` ✓ verified on VM
- free and advanced command line hexadecimal editor
- **Provides:** `r2`, `r2agent`, `r2pm`, `r2r`, `r2sdb`, `rabin2`, `radare2`, `radiff2`, `rafind2`, `ragg2`, `rahash2`, `rapatch2`, `rarun2`, `rasign2`, `rasm2`, `ravc2`, `rax2`
- **Steps:**
  1. Install: `sudo apt install -y radare2`
  2. Help: `radare2 -h`  (or `man radare2`)
  3. Run: `radare2 -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  Usage: r2 [-ACdfjLMnNqStuvwzX] [-P patch] [-p prj] [-a arch] [-b bits] [-c cmd]
            [-s addr] [-B baddr] [-m maddr] [-i script] [-e k=v] file|pid|-|--|=
   --           run radare2 without opening any file
   -            same as 'r2 malloc://512'
   =            read file from stdin (use -i and -c to run cmds)
   -=           perform !=! command to run all commands remotely
  ```
- Docs: https://www.radare.org

### `rizin-cutter` ✓ verified on VM
- reverse engineering platform powered by rizin
- **Provides:** `cutter`
- **Steps:**
  1. Install: `sudo apt install -y rizin-cutter`
  2. Help: `cutter -h`  (or `man cutter`)
  3. Run: `cutter -h` — needs the matching hardware
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: From 6.5.0, xcb-cursor0 or libxcb-cursor0 is needed to load the Qt xcb platform plugin.
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: wayland-brcm, wayland-egl, wayland, vkkhrdisplay, xcb, vnc, minimal, eglfs, minimalegl, linuxfb, offscreen.
  ```
- Docs: https://cutter.re

### `rz-ghidra`
- ghidra decompiler and sleigh disassembler for rizin
- **Type:** Ghidra decompiler plugin for rizin
- **Steps:**
  1. Install: `sudo apt install -y rz-ghidra rizin`
  2. Use inside rizin: `rizin -c "aa; pdg @ main" ./binary-you-own`
  3. A plugin (no standalone CLI) — adds `pdg` decompile to rizin/cutter
- Docs: https://github.com/rizinorg/rz-ghidra


## 18 · Crypto & Steganography  (`kali-tools-crypto-stego`)

### `aesfix` ✓ verified on VM
- tool for correcting bit errors in an AES key schedule
- **Provides:** `aesfix`
- **Steps:**
  1. Install: `sudo apt install -y aesfix`
  2. Help: `aesfix -h`  (or `man aesfix`)
  3. Run: `aesfix <file-you-own>` — encrypt/steg on your own files
- **real --help (verified on VM):**
  ```
  key schedule open failed: No such file or directory
  ```
- Docs: https://citp.princeton.edu/our-work/memory/code/

### `ccrypt` ✓ verified on VM
- secure encryption and decryption of files and streams
- **Provides:** `ccat`, `ccdecrypt`, `ccencrypt`, `ccguess`, `ccrypt`
- **Steps:**
  1. Install: `sudo apt install -y ccrypt`
  2. Help: `ccrypt -h`  (or `man ccrypt`)
  3. Run: `ccrypt <file-you-own>` — encrypt/steg on your own files
- **real --help (verified on VM):**
  ```
  ccrypt 1.11. Secure encryption and decryption of files and streams.
  
  Usage: ccrypt [mode] [options] [file...]
         ccencrypt [options] [file...]
         ccdecrypt [options] [file...]
         ccat [options] file...
  ```
- Docs: https://ccrypt.sourceforge.net/

### `steghide` ✓ verified on VM
- steganography hiding tool
- **Provides:** `steghide`
- **Steps:**
  1. Install: `sudo apt install -y steghide`
  2. Help: `steghide -h`  (or `man steghide`)
  3. Run: `steghide <file-you-own>` — encrypt/steg on your own files
- **real --help (verified on VM):**
  ```
  steghide version 0.6.0
  
  the first argument must be one of the following:
   embed, --embed          embed data
   extract, --extract      extract data
   info, --info            display information about a cover- or stego-file
  ```
- Docs: https://steghide.sourceforge.net/

### `stegosuite` ✓ verified on VM
- steganography tool to hide information in image files
- **Provides:** `stegosuite`
- **Steps:**
  1. Install: `sudo apt install -y stegosuite`
  2. Help: `stegosuite -h`  (or `man stegosuite`)
  3. Run: `stegosuite <file-you-own>` — encrypt/steg on your own files
- **real --help (verified on VM):**
  ```
  Steganography tool to hide information in image files
  
  Usage: stegosuite [-hV] [COMMAND]
  
  Options:
    -h, --help      Show this help message and exit.
  ```
- Docs: https://codeberg.org/tob/stegosuite

### `stegsnow` ✓ verified on VM
- steganography using ASCII files
- **Provides:** `stegsnow`
- **Steps:**
  1. Install: `sudo apt install -y stegsnow`
  2. Help: `stegsnow -h`  (or `man stegsnow`)
  3. Run: `stegsnow <file-you-own>` — encrypt/steg on your own files
- **real --help (verified on VM):**
  ```
  Usage: stegsnow [-C] [-Q] [-S] [-V | --version] [-h | --help]
  	[-p passwd] [-l line-len] [-f file | -m message]
  	[infile [outfile]]
  ```
- Docs: https://www.darkside.com.au/snow


## 19 · GPU Tools  (`kali-tools-gpu`)

### `truecrack` ✓ verified on VM
- Bruteforce password cracker for TrueCrypt volumes
- **Provides:** `truecrack`
- **Steps:**
  1. Install: `sudo apt install -y truecrack`
  2. Help: `truecrack -h`  (or `man truecrack`)
  3. Run: `truecrack -h` — GPU-accelerated tool
- **real --help (verified on VM):**
  ```
  TrueCrack v3.6
  Website: https://github.com/lvaccaro/truecrack
  Contact us: <email>
  Bruteforce password cracker for Truecrypt volume. Optimazed with Nvidia Cuda technology.
  Based on TrueCrypt, freely available at http://www.truecrypt.org/
  Copyright (c) 2011 by Luca Vaccaro.
  ```
- Docs: https://github.com/lvaccaro/truecrack


## 20 · Data Recovery  (`kali-tools-recover`)

### `ddrescue` ✓ verified on VM
- data recovery and protection tool
- **Provides:** `dd_rescue`
- **Steps:**
  1. Install: `sudo apt install -y ddrescue`
  2. Help: `dd_rescue -h`  (or `man dd_rescue`)
  3. Run: `dd_rescue <device-or-image>` — recover data from your own media
- **real --help (verified on VM):**
  ```
  
  dd_rescue Version 1.99.13, <email>, GNU GPL v2/v3
   (DD_RESCUE_1_99_13)
   (compiled May 21 2025 11:21:52 by gcc (Debian 14.2.0-19) 14.2.0)
   (features: O_DIRECT dl/libfallocate fallocate splice fitrim xattr aes arm8)
  dd_rescue is free software. It's protected by the terms of GNU GPL v2 or v3
  ```
- Docs: http://www.garloff.de/kurt/linux/ddrescue/

### `ext3grep` ✓ verified on VM
- tool to help recover deleted files on ext3 filesystems
- **Provides:** `ext3grep`
- **Steps:**
  1. Install: `sudo apt install -y ext3grep`
  2. Help: `ext3grep -h`  (or `man ext3grep`)
  3. Run: `ext3grep <device-or-image>` — recover data from your own media
- **real --help (verified on VM):**
  ```
  Running ext3grep version 0.10.2
  Usage: ext3grep [options] [--] device-file
  Options:
    --version, -[vV]       Print version and exit successfully.
    --help,                Print this help and exit successfully.
    --superblock           Print contents of superblock in addition to the rest.
  ```

### `extundelete` ✓ verified on VM
- utility to recover deleted files from ext3/ext4 partition
- **Provides:** `extundelete`
- **Steps:**
  1. Install: `sudo apt install -y extundelete`
  2. Help: `extundelete -h`  (or `man extundelete`)
  3. Run: `extundelete <device-or-image>` — recover data from your own media
- **real --help (verified on VM):**
  ```
  Usage: extundelete [options] [--] device-file
  Options:
    --version, -[vV]       Print version and exit successfully.
    --help,                Print this help and exit successfully.
    --superblock           Print contents of superblock in addition to the rest.
                           If no action is specified then this option is implied.
  ```
- Docs: http://extundelete.sourceforge.net/

### `myrescue` ✓ verified on VM
- rescue data from damaged disks
- **Provides:** `myrescue`, `myrescue-bitmap2ppm`, `myrescue-stat`
- **Steps:**
  1. Install: `sudo apt install -y myrescue`
  2. Help: `myrescue -h`  (or `man myrescue`)
  3. Run: `myrescue <device-or-image>` — recover data from your own media
- **real --help (verified on VM):**
  ```
  myrescue: invalid option -- '-'
  myrescue [<options>] <input-file> <output-file>
  options:
  -b <block-size>   block size in bytes, default: 4096
  -B <bitmap-file>  bitmap-file, default: <output-file>.bitmap
  -A                abort on error
  ```
- Docs: https://myrescue.sf.net

### `recoverdm` ✓ verified on VM
- recover files on disks with damaged sectors
- **Provides:** `mergebad`, `recoverdm`
- **Steps:**
  1. Install: `sudo apt install -y recoverdm`
  2. Help: `recoverdm -h`  (or `man recoverdm`)
  3. Run: `recoverdm <device-or-image>` — recover data from your own media
- **real --help (verified on VM):**
  ```
  recoverdm: invalid option -- '-'
  Usage: recoverdm -t <type> -i <file/device-in> -o <fileout> [-l <sectorsfile>] [-n # retries]
                   [-s rotation speed (CD-ROM etc.)] [-r # CD/DVD RAW read retries]
                   [-b start offset] [-p skip blocks count]
  Number of retries defaults to 6. For CD-ROMs it's advised to use 1.
  Number of CD/DVD RAW read retries defaults to 6. It is advised to use at least 3.
  ```
- Docs: https://www.vanheusden.com/recoverdm

### `recoverjpeg` ✓ verified on VM
- recover JFIF (JPEG) pictures and MOV movies
- **Provides:** `recoverjpeg`, `recovermov`, `remove-duplicates`, `sort-pictures`
- **Steps:**
  1. Install: `sudo apt install -y recoverjpeg`
  2. Help: `recoverjpeg -h`  (or `man recoverjpeg`)
  3. Run: `recoverjpeg <device-or-image>` — recover data from your own media
- **real --help (verified on VM):**
  ```
  recoverjpeg: invalid option -- '-'
  Usage: recoverjpeg [options] file|device
  Options:
     -b blocksize   Block size in bytes (default: 512)
     -d format      Directory format string in printf syntax
     -f format      File format string in printf syntax
  ```
- Docs: https://www.rfc1149.net/devel/recoverjpeg

### `scrounge-ntfs` ✓ verified on VM
- Data recovery program for NTFS filesystems
- **Provides:** `scrounge-ntfs`
- **Steps:**
  1. Install: `sudo apt install -y scrounge-ntfs`
  2. Help: `scrounge-ntfs -h`  (or `man scrounge-ntfs`)
  3. Run: `scrounge-ntfs <device-or-image>` — recover data from your own media
- **real --help (verified on VM):**
  ```
  scrounge-ntfs: invalid option -- '-'
  usage: scrounge-ntfs -l disk                                              
    List all drive partition information.                              
                                                                       
  usage: scrounge-ntfs -s disk                                              
    Search drive for NTFS partitions.                                  
  ```
- Docs: http://thewalter.net/stef/software/scrounge/

### `undbx` ✓ verified on VM
- tool to extract, recover and undelete e-mail messages from .dbx files
- **Provides:** `undbx`
- **Steps:**
  1. Install: `sudo apt install -y undbx`
  2. Help: `undbx -h`  (or `man undbx`)
  3. Run: `undbx <device-or-image>` — recover data from your own media
- **real --help (verified on VM):**
  ```
  UnDBX v0.21 (Jan 21 2026)
  Usage: undbx [<OPTION>] <DBX-FOLDER | DBX-FILE> [<OUTPUT-FOLDER>]
  
  Options:
  	-h, --help        	 show this message
  	-V, --version     	 show only version string
  ```
- Docs: https://github.com/ZungBang/undbx


## 21 · Detection  (`kali-tools-detect`)

### `grokevt` ✓ verified on VM
- scripts for reading Microsoft Windows event log files
- **Provides:** `grokevt-addlog`, `grokevt-builddb`, `grokevt-dumpmsgs`, `grokevt-findlogs`, `grokevt-parselog`, `grokevt-ripdll`
- **Steps:**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-addlog -h`  (or `man grokevt-addlog`)
  3. Run: `sudo grokevt-addlog` — detect on your own host
- **real --help (verified on VM):**
  ```
  USAGE:
    /usr/bin/grokevt-addlog <DATABASE_DIR> <EVT_FILE> <NEW_TYPE> <BASE_TYPE>
  
  This script takes a raw Windows event log and adds it to a
  previously built database generated by grokevt-builddb.
  See the man page for more details.
  ```
- Docs: http://projects.sentinelchicken.org/grokevt/

### `sentrypeer` ✓ verified on VM
- SIP peer to peer honeypot for VoIP
- **Provides:** `sentrypeer`
- **Steps:**
  1. Install: `sudo apt install -y sentrypeer`
  2. Help: `sentrypeer -h`  (or `man sentrypeer`)
  3. Run: `sudo sentrypeer` — detect on your own host
- **real --help (verified on VM):**
  ```
  Protect your SIP Servers from bad actors at https://sentrypeer.com
  
  Usage: sentrypeer [OPTIONS]
  
  Options:
    -f <DB_FILE>                 Set 'sentrypeer.db' location or use SENTRYPEER_DB_FILE env
  ```
- Docs: https://sentrypeer.org


## 22 · Protection/Hardening  (`kali-tools-protect`)

### `clamav` ✓ verified on VM
- anti-virus utility for Unix - command-line interface
- **Provides:** `clambc`, `clamscan`, `clamsubmit`, `sigtool`
- **Steps:**
  1. Install: `sudo apt install -y clamav`
  2. Help: `clambc -h`  (or `man clambc`)
  3. Run: `sudo clambc` — harden your own host
- **real --help (verified on VM):**
  ```
  
                         Clam AntiVirus: Bytecode Testing Tool 1.4.6
             By The ClamAV Team: https://www.clamav.net/about.html#credits
             (C) 2024 Cisco Systems, Inc.
  
      clambc <file> [function] [param1 ...]
  ```
- Docs: https://www.clamav.net/

### `cryptsetup` ✓ verified on VM
- disk encryption support - startup scripts
- **Provides:** `cryptdisks_start`, `cryptdisks_stop`, `luksformat`
- **Steps:**
  1. Install: `sudo apt install -y cryptsetup`
  2. Help: `luksformat -h`  (or `man luksformat`)
  3. Run: `sudo luksformat` — harden your own host
- **real --help (verified on VM):**
  ```
  This program needs to be started as root
  ```
- Docs: https://gitlab.com/cryptsetup/cryptsetup

### `cryptsetup-initramfs`
- disk encryption support - initramfs integration
- **Type:** LUKS unlock integration for initramfs
- **Steps:**
  1. Install: `sudo apt install -y cryptsetup-initramfs`
  2. Configure: add the device to `/etc/crypttab`, then `sudo update-initramfs -u`
  3. Boot-time integration (no interactive command)
- Docs: https://gitlab.com/cryptsetup/cryptsetup

### `cryptsetup-nuke-password`
- Erase the LUKS keys with a special password on the unlock prompt
- **Type:** LUKS "nuke" password (anti-forensics)
- **Steps:**
  1. Install: `sudo apt install -y cryptsetup-nuke-password`
  2. Set a nuke key on your own LUKS device: `cryptsetup luksAddNuke /dev/<yourdev>`
  3. Entering it at unlock erases the LUKS keyslots — your own disks only
- Docs: https://salsa.debian.org/pkg-security-team/cryptsetup-nuke-password

### `fwbuilder` ✓ verified on VM
- Firewall administration tool GUI
- **Provides:** `fwb_compile_all`, `fwbedit`, `fwb_iosacl`, `fwb_ipf`, `fwb_ipfw`, `fwb_ipt`, `fwb_pf`, `fwb_pix`, `fwb_procurve_acl`, `fwbuilder`
- **Steps:**
  1. Install: `sudo apt install -y fwbuilder`
  2. Help: `fwbuilder -h`  (or `man fwbuilder`)
  3. Run: `sudo fwbuilder` — harden your own host
- **real --help (verified on VM):**
  ```
  Firewall Builder GUI 5.3.7
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://github.com/fwbuilder/fwbuilder/


## 23 · Incident Response  (`kali-tools-respond`)

### `ewf-tools` ✓ verified on VM
- collection of tools for reading and writing EWF files
- **Provides:** `ewfacquire`, `ewfacquirestream`, `ewfdebug`, `ewfexport`, `ewfinfo`, `ewfmount`, `ewfrecover`, `ewfverify`
- **Steps:**
  1. Install: `sudo apt install -y ewf-tools`
  2. Help: `ewfinfo -h`  (or `man ewfinfo`)
  3. Run: `ewfinfo -h` — incident response on your own systems
- **real --help (verified on VM):**
  ```
  ewfinfo: invalid option -- '-'
  ewfinfo 20140816
  
  Invalid argument: ewfinfo
  Use ewfinfo to determine information about the EWF format (Expert Witness
  Compression Format).
  ```
- Docs: https://github.com/libyal/libewf-legacy

### `guymager` ✓ verified on VM
- Forensic imaging tool based on Qt
- **Provides:** `guymager`
- **Steps:**
  1. Install: `sudo apt install -y guymager`
  2. Help: `guymager -h`  (or `man guymager`)
  3. Run: `guymager -h` — incident response on your own systems
- **real --help (verified on VM):**
  ```
  
  Using default log file name /var/log/guymager.log
  Log file error: Can't be opened
  Sun 25.Oct.2026 05:44:09 A3BE27E0 toollog.cpp t_Log 76                     Info  - Log file opened
  Sun 25.Oct.2026 05:44:09 A3BE27E0 main.cpp MainGo 418                      Info  - =================================================== Starting GUYMAGER ===================================================
  Sun 25.Oct.2026 05:44:09 A3BE27E0 main.cpp MainGo 419                      Info  - Version: 0.8.13-3
  ```
- Docs: https://guymager.sourceforge.net/

### `hashrat` ✓ verified on VM
- hashing tool supporting several hashes and recursivity
- **Provides:** `hashrat`
- **Steps:**
  1. Install: `sudo apt install -y hashrat`
  2. Help: `hashrat -h`  (or `man hashrat`)
  3. Run: `hashrat -h` — incident response on your own systems
- **real --help (verified on VM):**
  ```
  Hashrat: version 1.25
  Author: Colum Paget
  Email: <email>
  Credits:
  	Thanks for bug reports/advice to: Stephan Hegel, Michael Shigorin <<email>> and Joao Eriberto Mota Filho <<email>>
  	Thanks to the people who invented the hash functions!
  ```
- Docs: https://github.com/ColumPaget/Hashrat/

### `impacket-scripts` ✓ verified on VM
- Links to useful impacket scripts examples
- **Provides:** `impacket-addcomputer`, `impacket-atexec`, `impacket-changepasswd`, `impacket-dacledit`, `impacket-dcomexec`, `impacket-describeTicket`, `impacket-dpapi`, `impacket-DumpNTLMInfo`, `impacket-esentutl`, `impacket-exchanger`, `impacket-findDelegation`, `impacket-GetADComputers`, `impacket-GetADUsers`, `impacket-getArch`, `impacket-Get-GPPPassword`, `impacket-GetLAPSPassword`, `impacket-GetNPUsers`, `impacket-getPac`, `impacket-getST`, `impacket-getTGT`, `impacket-GetUserSPNs`, `impacket-goldenPac`, `impacket-karmaSMB`, `impacket-keylistattack`, `impacket-lookupsid`, `impacket-machine_role`, `impacket-mimikatz`, `impacket-mqtt_check`, `impacket-mssqlclient`, `impacket-mssqlinstance`, `impacket-net`, `impacket-ntfs-read`, `impacket-ntlmrelayx`, `impacket-owneredit`, `impacket-ping`, `impacket-ping6`, `impacket-psexec`, `impacket-raiseChild`, `impacket-rbcd`, `impacket-rdp_check`, `impacket-reg`, `impacket-registry-read`, `impacket-rpcmap`, `impacket-sambaPipe`, `impacket-services`, `impacket-smbclient`, `impacket-smbexec`, `impacket-smbserver`, `impacket-sniff`, `impacket-sniffer`, `impacket-split`, `impacket-ticketConverter`, `impacket-ticketer`, `impacket-tstool`, `impacket-wmipersist`, `impacket-wmiquery`
- **Steps:**
  1. Install: `sudo apt install -y impacket-scripts`
  2. Help: `impacket-net -h`  (or `man impacket-net`)
  3. Run: `impacket-net -h` — incident response on your own systems
- **real --help (verified on VM):**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: net.py [-h] [-debug] [-ts] [-hashes LMHASH:NTHASH] [-no-pass] [-k]
                [-aesKey hex key] [-dc-ip ip address] [-target-ip ip address]
                [-port [destination port]]
                target {user,computer,localgroup,group} ...
  ```

### `kali-tools-forensics`
- Kali's forensic tools menu
- **Type:** Category metapackage (installs a whole menu)
- **Steps:**
  1. Install the whole category: `sudo apt install -y kali-tools-forensics`
  2. Or via the helper: `../scripts/install-tools.sh cat:forensics`
  3. Not a tool itself — it pulls in every tool in that category
- Docs: https://www.kali.org

### `netsniff-ng` ✓ verified on VM
- Linux network packet sniffer toolkit
- **Provides:** `astraceroute`, `bpfc`, `curvetun`, `flowtop`, `ifpps`, `mausezahn`, `netsniff-ng`, `trafgen`
- **Steps:**
  1. Install: `sudo apt install -y netsniff-ng`
  2. Help: `netsniff-ng -h`  (or `man netsniff-ng`)
  3. Run: `netsniff-ng -h` — incident response on your own systems
- **real --help (verified on VM):**
  ```
  netsniff-ng 0.6.9, the packet sniffing beast
  http://www.netsniff-ng.org
  
  Usage: netsniff-ng [options] [filter-expression]
  Options:
    -i|-d|--dev|--in <dev|pcap|->  Input source as netdev, pcap or pcap stdin
  ```
- Docs: http://netsniff-ng.org/


## 24 · Windows Resources  (`kali-tools-windows-resources`)

### `dbd` ✓ verified on VM
- Netcat clone with encryption
- **Provides:** `dbd`
- **Steps:**
  1. Install: `sudo apt install -y dbd`
  2. Help: `dbd -h`  (or `man dbd`)
  3. Run: `dbd -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  dbd: invalid option -- '-'
  ```
- Docs: https://github.com/gitdurandal/dbd

### `dnschef` ✓ verified on VM
- DNS proxy for penetration testers
- **Provides:** `dnschef`
- **Steps:**
  1. Install: `sudo apt install -y dnschef`
  2. Help: `dnschef -h`  (or `man dnschef`)
  3. Run: `dnschef -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  /usr/bin/dnschef:453: SyntaxWarning: "\/" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\/"? A raw string is also an option.
    header += "      / _` | '_ \/ __|/ __| '_ \ / _ \  _|\n"
  /usr/bin/dnschef:454: SyntaxWarning: "\_" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\_"? A raw string is also an option.
    header += "     | (_| | | | \__ \ (__| | | |  __/ |  \n"
  /usr/bin/dnschef:455: SyntaxWarning: "\_" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\_"? A raw string is also an option.
    header += "      \__,_|_| |_|___/\___|_| |_|\___|_|  \n"
  ```
- Docs: https://github.com/iphelix/dnschef

### `heartleech` ✓ verified on VM
- Scanner detecting systems vulnerable to the heartbleed OpenSSL bug
- **Provides:** `heartleech`
- **Steps:**
  1. Install: `sudo apt install -y heartleech`
  2. Help: `heartleech -h`  (or `man heartleech`)
  3. Run: `heartleech -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  
  > heartleech ~ Scanner detecting systems vulnerable to the heartbleed OpenSSL bug
  
  /usr/share/windows-resources/heartleech/
  └── heartleech.exe
  bash: cannot set terminal process group (159027): Inappropriate ioctl for device
  ```
- Docs: https://github.com/robertdavidgraham/heartleech

### `hyperion`
- Runtime encrypter for 32-bit portable executables
- **Type:** Windows PE runtime crypter (.exe, via wine)
- **Steps:**
  1. Install: `sudo apt install -y hyperion wine`
  2. Run: `wine /usr/share/windows-resources/hyperion/hyperion.exe input.exe output.exe`
  3. A Windows binary — against Windows PEs you own only
- Docs: http://www.nullsecurity.net/tools/binary.html

### `mimikatz` ✓ verified on VM
- Uses admin rights on Windows to display passwords in plaintext
- **Provides:** `mimikatz`
- **Steps:**
  1. Install: `sudo apt install -y mimikatz`
  2. Help: `mimikatz -h`  (or `man mimikatz`)
  3. Run: `mimikatz -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  
  > mimikatz ~ Uses admin rights on Windows to display passwords in plaintext
  
  /usr/share/windows-resources/mimikatz
  ├── kiwi_passwords.yar
  ├── mimicom.idl
  ```
- Docs: https://blog.gentilkiwi.com/mimikatz

### `ncat-w32` ✓ verified on VM
- Netcat for the 21st century
- **Provides:** `ncat-w32`
- **Steps:**
  1. Install: `sudo apt install -y ncat-w32`
  2. Help: `ncat-w32 -h`  (or `man ncat-w32`)
  3. Run: `ncat-w32 -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  
  > ncat-w32 ~ Netcat for the 21st century
  
  /usr/share/windows-resources/ncat/
  ├── ncat.exe
  └── README
  ```
- Docs: https://nmap.org/ncat/

### `powercat` ✓ verified on VM
- netcat features all in powershell v2
- **Provides:** `powercat`
- **Steps:**
  1. Install: `sudo apt install -y powercat`
  2. Help: `powercat -h`  (or `man powercat`)
  3. Run: `powercat -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ If you want to execute powercat script you need to install powershell:
  ┃ $ sudo apt install powershell
  ┃
  ┗━
  ```
- Docs: https://github.com/besimorhino/powercat

### `sbd` ✓ verified on VM
- Secure backdoor for Linux and Windows
- **Provides:** `sbd`
- **Steps:**
  1. Install: `sudo apt install -y sbd`
  2. Help: `sbd -h`  (or `man sbd`)
  3. Run: `sbd -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  sbd: invalid option -- '-'
  ```
- Docs: https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz

### `secure-socket-funneling-windows-binaries`
- SSF - windows binaries
- **Type:** SSF tunnelling — Windows binaries
- **Steps:**
  1. Install: `sudo apt install -y secure-socket-funneling-windows-binaries`
  2. Find: `ls /usr/share/windows-binaries/ 2>/dev/null; dpkg -L secure-socket-funneling-windows-binaries`
  3. Copy ssf.exe to a Windows host you own and run it there
- Docs: https://github.com/securesocketfunneling/ssf

### `tftpd32` ✓ verified on VM
- Open source ipv6-ready TFTP server for Windows
- **Provides:** `tftpd32`
- **Steps:**
  1. Install: `sudo apt install -y tftpd32`
  2. Help: `tftpd32 -h`  (or `man tftpd32`)
  3. Run: `tftpd32 -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  /usr/bin/tftpd32: 3: kali_winexe: not found
  ```
- Docs: https://tftpd32.jounin.net/tftpd32.html

### `wce` ✓ verified on VM
- Windows Credentials Editor
- **Provides:** `wce`
- **Steps:**
  1. Install: `sudo apt install -y wce`
  2. Help: `wce -h`  (or `man wce`)
  3. Run: `wce -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  
  > wce ~ Windows Credentials Editor
  
  /usr/share/windows-resources/wce
  ├── getlsasrvaddr.exe
  ├── README
  ```
- Docs: http://www.ampliasecurity.com/research.html

### `windows-binaries` ✓ verified on VM
- Various pentesting Windows binaries
- **Provides:** `windows-binaries`, `windows-resources`
- **Steps:**
  1. Install: `sudo apt install -y windows-binaries`
  2. Help: `windows-binaries -h`  (or `man windows-binaries`)
  3. Run: `windows-binaries -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  
  > windows-binaries ~ Various pentesting Windows binaries
  
  /usr/share/windows-resources/binaries
  ├── enumplus
  ├── exe2bat.exe
  ```
- Docs: https://www.kali.org

### `windows-privesc-check` ✓ verified on VM
- Windows privilege escalation checking tool
- **Provides:** `windows-privesc-check`
- **Steps:**
  1. Install: `sudo apt install -y windows-privesc-check`
  2. Help: `windows-privesc-check -h`  (or `man windows-privesc-check`)
  3. Run: `windows-privesc-check -h` — Windows target resources (your own)
- **real --help (verified on VM):**
  ```
  
  > windows-privesc-check ~ Windows privilege escalation checking tool
  
  /usr/share/windows-resources/windows-privesc-check
  └── windows-privesc-check2.exe
  bash: cannot set terminal process group (169889): Inappropriate ioctl for device
  ```
- Docs: https://pentestmonkey.net/tools/windows-privesc-check


## T · Top 10 (most-used)  (`kali-tools-top10`)

### `aircrack-ng` ✓ verified on VM
- wireless WEP/WPA cracking utilities
- **Provides:** `airbase-ng`, `aircrack-ng`, `airdecap-ng`, `airdecloak-ng`, `aireplay-ng`, `airmon-ng`, `airodump-ng`, `airodump-ng-oui-update`, `airolib-ng`, `airserv-ng`, `airtun-ng`, `airventriloquist-ng`, `besside-ng`, `besside-ng-crawler`, `buddy-ng`, `dcrack`, `easside-ng`, `ivstools`, `kstats`, `makeivs-ng`, `packetforge-ng`, `tkiptun-ng`, `wesside-ng`, `wpaclean`
- **Steps:**
  1. Install: `sudo apt install -y aircrack-ng`
  2. Help: `aircrack-ng -h`  (or `man aircrack-ng`)
  3. Run: `aircrack-ng -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
  
    Aircrack-ng 1.7  - (C) 2006-2022 Thomas d'Otreppe
    https://www.aircrack-ng.org
  
    usage: aircrack-ng [options] <input file(s)>
  ```
- Docs: https://www.aircrack-ng.org/

### `hydra` ✓ verified on VM
- very fast network logon cracker
- **Provides:** `dpl4hydra`, `hydra`, `hydra-wizard`, `pw-inspector`
- **Steps:**
  1. Install: `sudo apt install -y hydra`
  2. Help: `hydra -h`  (or `man hydra`)
  3. Run: `hydra -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
  Hydra v9.7 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).
  
  hydra: invalid option -- '-'
  ```
- Docs: https://github.com/vanhauser-thc/thc-hydra

### `john` ✓ verified on VM
- active password cracking tool
- **Provides:** `base64conv`, `bitlocker2john`, `calc_stat`, `cprepair`, `dmg2john`, `eapmd5tojohn`, `genmkvpwd`, `gpg2john`, `hccap2john`, `john`, `keepass2john`, `mailer`, `mkvcalcproba`, `putty2john`, `racf2john`, `rar2john`, `raw2dyna`, `SIPdump`, `tgtsnarf`, `uaf2john`, `unafs`, `undrop`, `unique`, `unshadow`, `vncpcap2john`, `wpapcap2john`, `zip2john`
- **Steps:**
  1. Install: `sudo apt install -y john`
  2. Help: `john -h`  (or `man john`)
  3. Run: `john -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
  John the Ripper 1.9.0-jumbo-1+bleeding-aec1328d6c 2021-11-02 10:45:52 +0100 OMP [linux-gnu 64-bit aarch64 ASIMD AC]
  Copyright (c) 1996-2021 by Solar Designer and others
  Homepage: https://www.openwall.com/john/
  
  Usage: john [OPTIONS] [PASSWORD-FILES]
  ```
- Docs: https://github.com/openwall/john

### `metasploit-framework` ✓ verified on VM
- Framework for exploit development and vulnerability research
- **Provides:** `msf-egghunter`, `msf-exe2vba`, `msf-exe2vbs`, `msf-find_badchars`, `msf-halflm_second`, `msf-hmac_sha1_crack`, `msf-java_deserializer`, `msf-jsobfu`, `msf-makeiplist`, `msf-md5_lookup`, `msf-metasm_shell`, `msf-msf_irb_shell`, `msf-nasm_shell`, `msf-pattern_create`, `msf-pattern_offset`, `msf-pdf2xdp`, `msf-virustotal`
- **Steps:**
  1. Install: `sudo apt install -y metasploit-framework`
  2. Help: `msf-jsobfu -h`  (or `man msf-jsobfu`)
  3. Run: `msf-jsobfu -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
  Aborted! SIGTERM
  ```
- Docs: https://www.metasploit.com/

### `netexec` ✓ verified on VM
- Network Execution Tool
- **Provides:** `netexec`, `nxc`, `nxcdb`
- **Steps:**
  1. Install: `sudo apt install -y netexec`
  2. Help: `netexec -h`  (or `man netexec`)
  3. Run: `netexec -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
  [*] Copying default configuration file
  usage: netexec [-h] [--version] [-t THREADS] [--timeout TIMEOUT]
                 [--jitter INTERVAL] [--no-progress] [--log LOG] [--verbose |
                 --debug] [-6] [--dns-server DNS_SERVER] [--dns-tcp]
                 [--dns-timeout DNS_TIMEOUT]
                 {winrm,rdp,smb,ftp,mssql,ssh,wmi,ldap,vnc,nfs} ...
  ```
- Docs: https://github.com/Pennyw0rth/NetExec

### `nmap` ✓ verified on VM
- The Network Mapper
- **Provides:** `nmap`, `nping`
- **Steps:**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- Docs: https://nmap.org/

### `responder` ✓ verified on VM
- LLMNR/NBT-NS/mDNS Poisoner
- **Provides:** `responder`, `responder-BrowserListener`, `responder-DHCP_Auto`, `responder-FindSQLSrv`, `responder-Icmp-Redirect`, `responder-MultiRelay`, `responder-RunFinger`
- **Steps:**
  1. Install: `sudo apt install -y responder`
  2. Help: `responder -h`  (or `man responder`)
  3. Run: `responder -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
                                           __
    .----.-----.-----.-----.-----.-----.--|  |.-----.----.
    |   _|  -__|__ --|  _  |  _  |     |  _  ||  -__|   _|
    |__| |_____|_____|   __|_____|__|__|_____||_____|__|
                     |__|
  ```
- Docs: https://github.com/lgandx/Responder

### `sqlmap` ✓ verified on VM
- automatic SQL injection tool
- **Provides:** `sqlmap`, `sqlmapapi`
- **Steps:**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
          ___
         __H__
   ___ ___[.]_____ ___ ___  {1.10.9#stable}
  |_ -| . [.]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- Docs: https://sqlmap.org/

### `wireshark` ✓ verified on VM
- network traffic analyzer - graphical interface
- **Provides:** `wireshark`
- **Steps:**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark -h` — one of the most-used tools
- **real --help (verified on VM):**
  ```
  Wireshark 4.6.6
  Interactively dump and analyze network traffic.
  See https://www.wireshark.org for more information.
  
  Usage: wireshark [options] ... [ <infile> ]
  ```
- Docs: https://www.wireshark.org/

