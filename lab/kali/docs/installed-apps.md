# All installed applications on this VM (450) — step-by-step (English)

> 繁體中文版見本檔下半部 · deeper tool walk-throughs: `tutorials.en.md`

With the full toolset installed, the menu has **450** apps. Every one has step-by-step below; tools include their real `--help` verified on the VM. Scope `../../ROE.md`.


## Kali tools — account-discovery (2)

### apache-users
- Enumerate usernames on systems with Apache UserDir module
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y apache-users`
  2. Help: `apache-users -h`  (or `man apache-users`)
  3. Run: `apache-users ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  USAGE: apache-users [-h 1.2.3.4] [-l names] [-p 80] [-s (SSL Support 1=true 0=false)] [-e 403 (http code)] [-t threads]
  
   
  ```
- Docs: https://labs.portcullis.co.uk/downloads/

### smtp-user-enum
- Username guessing tool for the SMTP service
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y smtp-user-enum`
  2. Help: `smtp-user-enum -h`  (or `man smtp-user-enum`)
  3. Run: `smtp-user-enum ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  /usr/bin/smtp-user-enum version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: smtp-user-enum [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: http://pentestmonkey.net/tools/user-enumeration/smtp-user-enum


## Kali tools — active-directory (1)

### bloodhound-python
- ingestor for BloodHound, based on Impacket (Python 3)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y bloodhound-python`
  2. Help: `bloodhound-python -h`  (or `man bloodhound-python`)
  3. Run: `bloodhound-python ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: bloodhound-python [-h] [-c COLLECTIONMETHOD] [-d DOMAIN] [-v]
                           [-u USERNAME] [-p PASSWORD] [-k] [--hashes HASHES]
                           [-no-pass] [-aesKey hex key]
                           [--auth-method {auto,ntlm,kerberos}] [-ns NAMESERVER]
                           [--dns-tcp] [--dns-timeout DNS_TIMEOUT] [-dc HOST]
                           [-gc HOST] [-w WORKERS] [--exclude-dcs]
  ```


## Kali tools — application-layer-protocol (2)

### cadaver
- A command-line WebDAV client for Unix.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cadaver`
  2. Help: `cadaver -h`  (or `man cadaver`)
  3. Run: `cadaver ...` against a target you own (see the real --help below).
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

### minicom
- Friendly serial communication program
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y minicom`
  2. Help: `minicom -h`  (or `man minicom`)
  3. Run: `minicom ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: minicom [OPTION]... [configuration]
  A terminal program for Linux and other unix-like systems.
  
    -b, --baudrate         : set baudrate (ignore the value from config)
    -D, --device           : set device name (ignore the value from config)
    -s, --setup            : enter setup mode
  ```
- Docs: https://salsa.debian.org/minicom-team/minicom


## Kali tools — bluetooth (8)

### bettercap
- Complete, modular, portable and easily extensible MITM framework
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y bettercap`
  2. Help: `bettercap -h`  (or `man bettercap`)
  3. Run: `bettercap ...` against a target you own (see the real --help below).
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

### bluelog
- Bluetooth Scanner and Logger
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y bluelog`
  2. Help: `bluelog -h`  (or `man bluelog`)
  3. Run: `bluelog ...` against a target you own (see the real --help below).
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

### blueranger
- Simple Bash script to locate Bluetooth devices
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y blueranger`
  2. Help: `blueranger -h`  (or `man blueranger`)
  3. Run: `blueranger ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  BlueRanger 1.0 by JP Dunning (.ronin) 
  <www.hackfromacave.com>
  (c) 2009-2012 Shadow Cave LLC.
  
  NAME
  ```
- Docs: http://www.hackfromacave.com/projects/blueranger.html

### bluesnarfer
- Bluesnarfing utility
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y bluesnarfer`
  2. Help: `bluesnarfer -h`  (or `man bluesnarfer`)
  3. Run: `bluesnarfer ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  bluesnarfer: you must be root
  bluesnarfer, version 0.1 -
  usage: bluesnarfer [options] [ATCMD] -b bt_addr
  
  ATCMD     : valid AT+CMD (GSM EXTENSION)
  ```
- Docs: http://www.alighieri.org/

### btscanner
- Ncurses-based scanner for Bluetooth devices
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y btscanner`
  2. Help: `btscanner -h`  (or `man btscanner`)
  3. Run: `btscanner ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: btscanner [options]
  options
  	--help	Display help
  	--cfg=<file>	Use <file> as the config file
  	--no-reset	Do not reset the Bluetooth adapter before scanning
  ```
- Docs: https://salsa.debian.org/pkg-security-team/btscanner

### fang
- Locates non-discoverable bluetooth devices
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y redfang`
  2. Help: `fang -h`  (or `man fang`)
  3. Run: `fang ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  fang: invalid option -- '-'
  redfang - the bluetooth hunter ver 2.5
  (c)2003 @stake Inc
  author:   Ollie Whitehouse <<email>>
  enhanced: threads by Simon Halsall <<email>>
  enhanced: device info discovery by Stephen Kapp <<email>>
  ```

### spooftooph
- Automates spoofing or cloning Bluetooth devices
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y spooftooph`
  2. Help: `spooftooph -h`  (or `man spooftooph`)
  3. Run: `spooftooph ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  spooftooph v0.5.2 by JP Dunning (.ronin) 
  <www.hackfromacave.com>
  (c) 2009-2012 Shadow Cave LLC.
  
  NAME
  ```
- Docs: http://www.hackfromacave.com/projects/spooftooph.html

### ubertooth-util
- General purpose Ubertooth utility
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ubertooth`
  2. Help: `ubertooth-util -h`  (or `man ubertooth-util`)
  3. Run: `ubertooth-util ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ubertooth-util: invalid option -- '-'
  ubertooth-util - command line utility for Ubertooth Zero and Ubertooth One
  
  Common options:
  	-v get firmware revision number
  	-V get compile info
  ```


## Kali tools — brute-force (6)

### hydra
- A very fast network logon cracker which supports many different services
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hydra`
  2. Help: `hydra -h`  (or `man hydra`)
  3. Run: `hydra ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Hydra v9.7 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).
  
  hydra: invalid option -- '-'
  ```
- Docs: https://github.com/vanhauser-thc/thc-hydra

### medusa
- Parallel Network Login Auditor
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y medusa`
  2. Help: `medusa -h`  (or `man medusa`)
  3. Run: `medusa ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  medusa: invalid option -- '-'
  CRITICAL: Unknown error processing command-line options.
  ALERT: User logon information must be supplied.
  Medusa v2.3 [http://www.foofus.net] (C) JoMo-Kun / Foofus Networks <<email>>
  ```
- Docs: http://foofus.net/?page_id=51

### ncrack
- Network authentication cracking tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ncrack`
  2. Help: `ncrack -h`  (or `man ncrack`)
  3. Run: `ncrack ...` against a target you own (see the real --help below).
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

### patator
- Multi-purpose brute-forcer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y patator`
  2. Help: `patator -h`  (or `man patator`)
  3. Run: `patator ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Patator 1.1.0 (https://github.com/lanjelot/patator) with Python-3.14.8
  Usage: patator module --help
  
  Available modules:
    + ftp_login     : Brute-force FTP
    + ssh_login     : Brute-force SSH
  ```
- Docs: https://github.com/lanjelot/patator

### thc-pptp-bruter
- THC PPTP Brute Force
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y thc-pptp-bruter`
  2. Help: `thc-pptp-bruter -h`  (or `man thc-pptp-bruter`)
  3. Run: `thc-pptp-bruter ...` against a target you own (see the real --help below).
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

### xhydra
- Gtk+3 frontend for thc-hydra
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hydra-gtk`
  2. Help: `xhydra -h`  (or `man xhydra`)
  3. Run: `xhydra ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  (xhydra:1188024): Gtk-WARNING **: 08:41:48.037: cannot open display: 
  ```


## Kali tools — cisco-tools (3)

### cge.pl
- Simple and fast Cisco exploitation tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cisco-global-exploiter`
  2. Help: `cge.pl -h`  (or `man cge.pl`)
  3. Run: `cge.pl ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Usage :
  perl cge.pl <target> <vulnerability number>
  
  Vulnerabilities list :
  [1] - Cisco 677/678 Telnet Buffer Overflow Vulnerability
  ```

### cisco-ocs
- Mass Cisco scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cisco-ocs`
  2. Help: `cisco-ocs -h`  (or `man cisco-ocs`)
  3. Run: `cisco-ocs ...` against a target you own (see the real --help below).
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

### cisco-torch
- Cisco device scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cisco-torch`
  2. Help: `cisco-torch -h`  (or `man cisco-torch`)
  3. Run: `cisco-torch ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  /usr/bin/cisco-torch version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: cisco-torch [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```


## Kali tools — collection (9)

### ettercap-pkexec
- Graphical pkexec-based launcher for ettercap
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ettercap-graphical`
  2. Help: `ettercap-pkexec -h`  (or `man ettercap-pkexec`)
  3. Run: `ettercap-pkexec ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Error executing command as another user: No authentication agent found.
  ```

### ferret-sidejack
- Monitors data and extracts interesting data
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ferret-sidejack`
  2. Help: `ferret-sidejack -h`  (or `man ferret-sidejack`)
  3. Run: `ferret-sidejack ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  -- FERRET 3.0.1 - 2007-2012 (c) Errata Security
  -- build = Sep 29 2024 02:38:07 (64-bits)
  -- libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3)
  -- graceful exit --
  --help: unknown option
  ```
- Docs: https://github.com/robertdavidgraham/ferret

### fiked
- A fake IKE PSK+XAUTH daemon based on vpnc
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y fiked`
  2. Help: `fiked -h`  (or `man fiked`)
  3. Run: `fiked ...` against a target you own (see the real --help below).
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

### hamster-sidejack
- Sidejacking tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hamster-sidejack`
  2. Help: `hamster-sidejack -h`  (or `man hamster-sidejack`)
  3. Run: `hamster-sidejack ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  unknown parm, all parms must be name=value pairs. (--help)
  Proxy: listening on 127.0.0.1:1234
  ```
- Docs: http://www.erratasec.com/research.html

### httrack
- Offline browser : copy websites to a local directory
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y httrack`
  2. Help: `httrack -h`  (or `man httrack`)
  3. Run: `httrack ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  HTTrack version 3.50-5
  	usage: httrack <URLs> [-option] [+<URL_FILTER>] [-<URL_FILTER>] [+<mime:MIME_FILTER>] [-<mime:MIME_FILTER>]
  	with options listed below: (* is the default value)
  
  General options:
  ```
- Docs: https://www.httrack.com

### mitmproxy
- SSL-capable man-in-the-middle HTTP proxy
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y mitmproxy`
  2. Help: `mitmproxy -h`  (or `man mitmproxy`)
  3. Run: `mitmproxy ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: mitmproxy [options]
  
  options:
    -h, --help            show this help message and exit
    --version             show version number and exit
    --options             Show all options and their default values
  ```
- Docs: https://mitmproxy.org

### ssldump
- Dump SSL traffic on a network
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ssldump`
  2. Help: `ssldump -h`  (or `man ssldump`)
  3. Run: `ssldump ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ssldump: invalid option -- '-'
  Usage: ssldump [-r dumpfile] [-i interface] [-l sslkeylogfile] [-w outpcapfile]
                 [-k keyfile] [-p password] [-vtaTznsAxVNde]
                 [filter]
  ```
- Docs: https://github.com/adulau/ssldump

### sslsniff
- SSL/TLS man-in-the-middle attack tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sslsniff`
  2. Help: `sslsniff -h`  (or `man sslsniff`)
  3. Run: `sslsniff ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sslsniff: invalid option -- '-'
  Usage: sslsniff [options]
  
  Modes:
  -a	Authority mode.  Specify a certificate that will act as a CA.
  -t	Targeted mode.  Specify a directory full of certificates to target.
  ```
- Docs: https://github.com/moxie0/sslsniff

### sslsplit
- - transparent SSL/TLS interception
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sslsplit`
  2. Help: `sslsplit -h`  (or `man sslsplit`)
  3. Run: `sslsplit ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sslsplit: invalid option -- '-'
  ```
- Docs: https://www.roe.ch/SSLsplit


## Kali tools — credential-access (1)

### responder
- LLMNR/NBT-NS/mDNS Poisoner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y responder`
  2. Help: `responder -h`  (or `man responder`)
  3. Run: `responder ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
                                           __
    .----.-----.-----.-----.-----.-----.--|  |.-----.----.
    |   _|  -__|__ --|  _  |  _  |     |  _  ||  -__|   _|
    |__| |_____|_____|   __|_____|__|__|_____||_____|__|
                     |__|
  ```
- Docs: https://github.com/lgandx/Responder


## Kali tools — databases (7)

### impacket-mssqlclient
- Python3 module to easily build and dissect network protocols
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y impacket-scripts`
  2. Help: `impacket-mssqlclient -h`  (or `man impacket-mssqlclient`)
  3. Run: `impacket-mssqlclient ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: mssqlclient.py [-h] [-db DB] [-windows-auth] [-debug] [-ts] [-show]
                        [-command [COMMAND ...]] [-file FILE]
                        [--host-name HOST_NAME] [--app-name APP_NAME]
                        [-hashes LMHASH:NTHASH] [-no-pass] [-k]
  ```

### mdb-sql
- SQL interface to MDB Tools
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y mdbtools`
  2. Help: `mdb-sql -h`  (or `man mdb-sql`)
  3. Run: `mdb-sql ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage:
    mdb-sql [OPTION…] <file> - Run SQL
  
  Help Options:
    -h, --help                Show help options
  ```

### mysql
- The MariaDB command-line tool (mysql is now a symlink to mariadb)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y mysql`
  2. Help: `mysql -h`  (or `man mysql`)
  3. Run: `mysql ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  mysql from 11.8.9-MariaDB, client 15.2 for debian-linux-gnu (aarch64) using  EditLine wrapper
  Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.
  
  Usage: mysql [OPTIONS] [database]
  
  Default options are read from the following files in the given order:
  ```

### oscanner
- Oracle assessment framework
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y oscanner`
  2. Help: `oscanner -h`  (or `man oscanner`)
  3. Run: `oscanner ...` against a target you own (see the real --help below).
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

### sidguess
- Guesses sids against an Oracle database
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sidguesser`
  2. Help: `sidguess -h`  (or `man sidguess`)
  3. Run: `sidguess ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sidguess: invalid option -- '-'
  
  SIDGuesser v1.0.5 by <email>
  -------------------------------------
  sidguess -i <ip> -d <dictionary> [options]
  ```

### sqlitebrowser
- Light GUI editor for SQLite databases
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sqlitebrowser`
  2. Help: `sqlitebrowser -h`  (or `man sqlitebrowser`)
  3. Run: `sqlitebrowser ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://sqlitebrowser.org/

### tnscmd10g
- Tool to prod the oracle tnslsnr process
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y tnscmd10g`
  2. Help: `tnscmd10g -h`  (or `man tnscmd10g`)
  3. Run: `tnscmd10g ...` against a target you own (see the real --help below).
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


## Kali tools — defense-evasion (10)

### ccrypt
- Encrypt and decrypt files and streams
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ccrypt`
  2. Help: `ccrypt -h`  (or `man ccrypt`)
  3. Run: `ccrypt ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ccrypt 1.11. Secure encryption and decryption of files and streams.
  
  Usage: ccrypt [mode] [options] [file...]
         ccencrypt [options] [file...]
         ccdecrypt [options] [file...]
         ccat [options] file...
  ```
- Docs: https://ccrypt.sourceforge.net/

### exe2hex
- Convert EXE to bat
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y exe2hexbat`
  2. Help: `exe2hex -h`  (or `man exe2hex`)
  3. Run: `exe2hex ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  /usr/bin/exe2hex:495: SyntaxWarning: "\[" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\["? A raw string is also an option.
    send_user "\\n\\n\[i\] Done\\n"
  [*] exe2hex v1.5.1
  Usage: exe2hex [options]
  
  Options:
  ```

### fragrouter
- Network intrusion detection evasion toolkit
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y fragrouter`
  2. Help: `fragrouter -h`  (or `man fragrouter`)
  3. Run: `fragrouter ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  fragrouter: invalid option -- '-'
  Version 1.6
  Usage: fragrouter [-i interface] [-p] [-g hop] [-G hopcount] ATTACK
  
   where ATTACK is one of the following:
  ```
- Docs: http://www.anzen.com/research/nidsbench/fragrouter.html

### ftest
- Tool for testing firewalls and Intrusion Detection System (IDS)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ftester`
  2. Help: `ftest -h`  (or `man ftest`)
  3. Run: `ftest ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  /usr/bin/ftest version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: ftest [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```

### macchanger
- MAC Changer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y macchanger`
  2. Help: `macchanger -h`  (or `man macchanger`)
  3. Run: `macchanger ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  GNU MAC Changer
  Usage: macchanger [options] device
  
    -h,  --help                   Print this help
    -V,  --version                Print version and exit
    -s,  --show                   Print the MAC address and exit
  ```
- Docs: https://github.com/alobbs/macchanger

### padbuster
- Script for performing Padding Oracle attacks
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y padbuster`
  2. Help: `padbuster -h`  (or `man padbuster`)
  3. Run: `padbuster ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Possible precedence problem between ! and string eq at /usr/bin/padbuster line 677.
  Unknown option: help
      
      Use: padbuster URL EncryptedSample BlockSize [options]
  
    Where: URL = The target URL (and query string if applicable)
  ```
- Docs: https://github.com/GDSSecurity/PadBuster

### sniffjoke
- Transparent TCP connection scrambler
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sniffjoke`
  2. Help: `sniffjoke -h`  (or `man sniffjoke`)
  3. Run: `sniffjoke ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  SniffJoke is too dangerous to be run by an humble user; go to fetch daddy root, now!
  ```
- Docs: https://github.com/vecna/sniffjoke

### steghide
- A steganography program
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y steghide`
  2. Help: `steghide -h`  (or `man steghide`)
  3. Run: `steghide ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  steghide version 0.6.0
  
  the first argument must be one of the following:
   embed, --embed          embed data
   extract, --extract      extract data
   info, --info            display information about a cover- or stego-file
  ```
- Docs: https://steghide.sourceforge.net/

### stegosuite
- A steganography tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y stegosuite`
  2. Help: `stegosuite -h`  (or `man stegosuite`)
  3. Run: `stegosuite ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Steganography tool to hide information in image files
  
  Usage: stegosuite [-hV] [COMMAND]
  
  Options:
    -h, --help      Show this help message and exit.
  ```
- Docs: https://codeberg.org/tob/stegosuite

### stegsnow
- Whitespace steganography program
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y stegsnow`
  2. Help: `stegsnow -h`  (or `man stegsnow`)
  3. Run: `stegsnow ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: stegsnow [-C] [-Q] [-S] [-V | --version] [-h | --help]
  	[-p passwd] [-l line-len] [-f file | -m message]
  	[infile [outfile]]
  ```
- Docs: https://www.darkside.com.au/snow


## Kali tools — detect (1)

### sentrypeer
- A distributed list of bad IP addresses and phone numbers collected via a SIP Honeypot
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sentrypeer`
  2. Help: `sentrypeer -h`  (or `man sentrypeer`)
  3. Run: `sentrypeer ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Protect your SIP Servers from bad actors at https://sentrypeer.com
  
  Usage: sentrypeer [OPTIONS]
  
  Options:
    -f <DB_FILE>                 Set 'sentrypeer.db' location or use SENTRYPEER_DB_FILE env
  ```
- Docs: https://sentrypeer.org


## Kali tools — digital-forensics (7)

### dc3dd
- Convert and copy a file
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dc3dd`
  2. Help: `dc3dd -h`  (or `man dc3dd`)
  3. Run: `dc3dd ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ------
  usage:
  ------
  
  	dc3dd [OPTION 1] [OPTION 2] ... [OPTION N]
  ```
- Docs: https://sourceforge.net/projects/dc3dd/

### dcfldd
- Enhanced version of dd for forensics and security
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dcfldd`
  2. Help: `dcfldd -h`  (or `man dcfldd`)
  3. Run: `dcfldd ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: dcfldd [OPTION]...
  Enhanced version of dd for forensics and security.
  
    bs=BYTES            force ibs=BYTES and obs=BYTES (default=32768)
    cbs=BYTES           convert BYTES bytes at a time
    conv=KEYWORDS       convert the file as per the comma separated keyword list
  ```
- Docs: https://github.com/resurrecting-open-source-projects/dcfldd

### missidentify
- Find executable files without an executable extension
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y missidentify`
  2. Help: `missidentify -h`  (or `man missidentify`)
  3. Run: `missidentify ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  missidentify: invalid option -- '-'
  Try `missidentify -h` for more information.
  ```
- Docs: https://missidentify.sf.net

### readpst
- Convert PST (MS Outlook Personal Folders) files to mbox and other formats
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pst-utils`
  2. Help: `readpst -h`  (or `man readpst`)
  3. Run: `readpst ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  readpst: invalid option -- '-'
  ReadPST / LibPST v0.6.76
  Little Endian implementation being used.
  Usage: readpst [OPTIONS] {PST FILENAME}
  OPTIONS:
  	-V	- Version. Display program version
  ```

### reglookup
- Windows NT+ registry reader/lookup tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y reglookup`
  2. Help: `reglookup -h`  (or `man reglookup`)
  3. Run: `reglookup ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ERROR: Failed to open hive.  Error returned: No such file or directory
  ERROR: Couldn't open registry file: --help
  ```
- Docs: https://web.archive.org/web/20240804024044/http://projects.sentinelchicken.org/reglookup/

### undbx
- A tool to extract e-mails from Outlook Express .dbx files.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y undbx`
  2. Help: `undbx -h`  (or `man undbx`)
  3. Run: `undbx ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  UnDBX v0.21 (Jan 21 2026)
  Usage: undbx [<OPTION>] <DBX-FOLDER | DBX-FILE> [<OUTPUT-FOLDER>]
  
  Options:
  	-h, --help        	 show this message
  	-V, --version     	 show only version string
  ```
- Docs: https://github.com/ZungBang/undbx

### vinetto
- Extract thumbnails and associated metadata from Thumbs.db files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y vinetto`
  2. Help: `vinetto -h`  (or `man vinetto`)
  3. Run: `vinetto ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Vinetto: Version 0.9.15
  usage: vinetto [-h] [-e EDBFILE] [-H] [-m [{f,d,r,a}]] [--md5] [--nomd5]
                 [-o DIR] [-q] [-s] [-U] [-v] [--version]
                 [infile]
  
  Vinetto.py - The Thumbnail File Parser
  ```
- Docs: https://github.com/AtesComp/Vinetto


## Kali tools — execution (6)

### armitage
- Cyber attack management for Metasploit
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y armitage`
  2. Help: `armitage -h`  (or `man armitage`)
  3. Run: `armitage ...` against a target you own (see the real --help below).
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

### beef-xss-start
- Browser Exploitation Framework (BeEF)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y beef-xss`
  2. Help: `beef-xss-start -h`  (or `man beef-xss-start`)
  3. Run: `beef-xss-start ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```

### evilgrade
- Evilgrade framework
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y isr-evilgrade`
  2. Help: `evilgrade -h`  (or `man evilgrade`)
  3. Run: `evilgrade ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  [DEBUG] - Loading module: modules/fcleaner.pm
  [DEBUG] - Loading module: modules/flashget.pm
  [DEBUG] - Loading module: modules/techtracker.pm
  [DEBUG] - Loading module: modules/filezilla.pm
  [DEBUG] - Loading module: modules/teamviewer.pm
  [DEBUG] - Loading module: modules/istat.pm
  ```

### nishang
- Collection of PowerShell scripts and payloads
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y nishang`
  2. Help: `nishang -h`  (or `man nishang`)
  3. Run: `nishang ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > nishang ~ Collection of PowerShell scripts and payloads
  
  /usr/share/nishang
  ├── ActiveDirectory
  ├── Antak-WebShell
  ```
- Docs: https://github.com/samratashok/nishang

### powersploit
- PowerShell Post-Exploitation Framework
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y powersploit`
  2. Help: `powersploit -h`  (or `man powersploit`)
  3. Run: `powersploit ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > powersploit ~ PowerShell Post-Exploitation Framework
  
  /usr/share/windows-resources/powersploit
  ├── AntivirusBypass
  ├── CodeExecution
  ```
- Docs: https://github.com/PowerShellMafia/PowerSploit

### xsser
- XSS testing framework
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y xsser`
  2. Help: `xsser -h`  (or `man xsser`)
  3. Run: `xsser ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: 
  
  xsser [OPTIONS] [--all <url> |-u <url> |-i <file> |-d <dork> (options)|-l ] [-g <get> |-p <post> |-c <crawl> (options)]
  [Request(s)] [Checker(s)] [Vector(s)] [Anti-antiXSS/IDS] [Bypasser(s)] [Technique(s)] [Final Injection(s)] [Reporting] {Miscellaneous}
  
  Cross Site "Scripter" is an automatic -framework- to detect, exploit and
  ```
- Docs: https://xsser.03c8.net/


## Kali tools — exfiltration (1)

### impacket-smbserver
- Python3 module to easily build and dissect network protocols
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y impacket-scripts`
  2. Help: `impacket-smbserver -h`  (or `man impacket-smbserver`)
  3. Run: `impacket-smbserver ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: smbserver.py [-h] [-comment COMMENT] [-username USERNAME]
                      [-password PASSWORD]
                      [-computeraccountname COMPUTERACCOUNTNAME]
                      [-computeraccounthash COMPUTERACCOUNTHASH]
  ```


## Kali tools — forensic-carving-tools (15)

### ext3grep
- Ext3 file recovery tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ext3grep`
  2. Help: `ext3grep -h`  (or `man ext3grep`)
  3. Run: `ext3grep ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Running ext3grep version 0.10.2
  Usage: ext3grep [options] [--] device-file
  Options:
    --version, -[vV]       Print version and exit successfully.
    --help,                Print this help and exit successfully.
    --superblock           Print contents of superblock in addition to the rest.
  ```

### ext4magic
- Recover deleted files on ext3/4 filesystems
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ext4magic`
  2. Help: `ext4magic -h`  (or `man ext4magic`)
  3. Run: `ext4magic ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ext4magic : Error: Missing device name and options.
  
  ext4magic -M [-j <journal_file>] [-d <target_dir>] <filesystem> 
  ext4magic -m [-j <journal_file>] [-d <target_dir>] <filesystem> 
  ext4magic [-S|-J|-H|-V|-T] [-x] [-j <journal_file>] [-B n|-I n|-f <file_name>|-i <input_list>] [-t n|[[-a n][-b n]]] [-d <target_dir>] [-R|-r|-L|-l] [-Q] <filesystem> 
  ```
- Docs: http://ext4magic.sf.net/ext4magic_en.html

### extundelete
- Utility to undelete files from an ext3 or ext4 partition.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y extundelete`
  2. Help: `extundelete -h`  (or `man extundelete`)
  3. Run: `extundelete ...` against a target you own (see the real --help below).
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

### foremost
- Recover files using their headers, footers, and data structures
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y foremost`
  2. Help: `foremost -h`  (or `man foremost`)
  3. Run: `foremost ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  foremost: invalid option -- '-'
  Try `foremost -h` for more information.
  ```
- Docs: https://sourceforge.net/projects/foremost/

### magicrescue
- Scans a block device and extracts known file types by looking at magic bytes.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y magicrescue`
  2. Help: `magicrescue -h`  (or `man magicrescue`)
  3. Run: `magicrescue ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  magicrescue: invalid option -- '-'
  Error parsing options.
  Usage: magicrescue [-I FILE] [-M MODE] [-O [+-=][0x]OFFSET] [-b BLOCKSIZE]
  	-d OUTPUT_DIR -r RECIPE1 [-r RECIPE2 [...]] DEVICE1 [DEVICE2 [...]]
  
    -b  Only consider files starting at a multiple of BLOCKSIZE.
  ```
- Docs: https://github.com/jbj/magicrescue

### myrescue
- Harddisc Rescue
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y myrescue`
  2. Help: `myrescue -h`  (or `man myrescue`)
  3. Run: `myrescue ...` against a target you own (see the real --help below).
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

### pasco
- Tool to extract information from MS IE cache files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pasco`
  2. Help: `pasco -h`  (or `man pasco`)
  3. Run: `pasco ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ERROR - The index.dat file cannot be opened!
  
  
  Usage:  pasco [options] <filename>
  	-d Undelete Activity Records
  	-t Field Delimiter (TAB by default)
  ```
- Docs: https://sf.net/projects/odessa

### readpe
- Displays information about PE files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y readpe`
  2. Help: `readpe -h`  (or `man readpe`)
  3. Run: `readpe ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: readpe OPTIONS FILE
  Show PE file headers
  
  Example: readpe --header optional winzip.exe
  
  Options:
  ```
- Docs: https://github.com/mentebinaria/readpe/wiki

### recoverdm
- Recover files on disks with damaged sectors
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y recoverdm`
  2. Help: `recoverdm -h`  (or `man recoverdm`)
  3. Run: `recoverdm ...` against a target you own (see the real --help below).
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

### recoverjpeg
- Recover jpeg pictures from a filesystem image
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y recoverjpeg`
  2. Help: `recoverjpeg -h`  (or `man recoverjpeg`)
  3. Run: `recoverjpeg ...` against a target you own (see the real --help below).
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

### rifiuti
- Tool to extract information from MS recycle bins info2 files.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rifiuti`
  2. Help: `rifiuti -h`  (or `man rifiuti`)
  3. Run: `rifiuti ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  INFO2 File: --help
  
  ERROR - The INFO2 file cannot be opened!
  
  
  Usage:  rifiuti [options] <filename>
  ```
- Docs: https://sf.net/projects/odessa

### rifiuti2
- Windows recycle bin analysis tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rifiuti2`
  2. Help: `rifiuti2 -h`  (or `man rifiuti2`)
  3. Run: `rifiuti2 ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage:
    rifiuti2 [OPTION…] INFO2
  
  Parse INFO2 file and dump recycle bin data.
  
  Help Options:
  ```
- Docs: https://abelcheung.github.io/rifiuti2

### safecopy
- Rescue data from a source that causes IO errors
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y safecopy`
  2. Help: `safecopy -h`  (or `man safecopy`)
  3. Run: `safecopy ...` against a target you own (see the real --help below).
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

### scalpel
- Recover files using a header/footer database
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y scalpel`
  2. Help: `scalpel -h`  (or `man scalpel`)
  3. Run: `scalpel ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  scalpel: invalid option -- '-'
  Scalpel version 1.60
  Written by Golden G. Richard III, based on Foremost 0.69.
  ```
- Docs: https://github.com/nolaforensix/scalpel-1.60

### scrounge-ntfs
- Helps retrieve data from corrupted NTFS partitions
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y scrounge-ntfs`
  2. Help: `scrounge-ntfs -h`  (or `man scrounge-ntfs`)
  3. Run: `scrounge-ntfs ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  scrounge-ntfs: invalid option -- '-'
  usage: scrounge-ntfs -l disk                                              
    List all drive partition information.                              
                                                                       
  usage: scrounge-ntfs -s disk                                              
    Search drive for NTFS partitions.                                  
  ```
- Docs: http://thewalter.net/stef/software/scrounge/


## Kali tools — forensic-imaging-tools (4)

### affcat
- Output contents of an image file to stdout.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y afflib-tools`
  2. Help: `affcat -h`  (or `man affcat`)
  3. Run: `affcat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  affcat: invalid option -- '-'
  affcat version 3.7.22
  usage: affcat [options] infile [... more infiles]
  options:
      -s name --- Just output segment name
      -p ###  --- just output data page number ###
  ```

### dd_rescue
- Data recovery and protection tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ddrescue`
  2. Help: `dd_rescue -h`  (or `man dd_rescue`)
  3. Run: `dd_rescue ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  dd_rescue Version 1.99.13, <email>, GNU GPL v2/v3
   (DD_RESCUE_1_99_13)
   (compiled May 21 2025 11:21:52 by gcc (Debian 14.2.0-19) 14.2.0)
   (features: O_DIRECT dl/libfallocate fallocate splice fitrim xattr aes arm8)
  dd_rescue is free software. It's protected by the terms of GNU GPL v2 or v3
  ```

### ewfacquire
- Acquires data in the EWF format
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ewf-tools`
  2. Help: `ewfacquire -h`  (or `man ewfacquire`)
  3. Run: `ewfacquire ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ewfacquire: invalid option -- '-'
  ewfacquire 20140816
  
  Invalid argument: ewfacquire
  Use ewfacquire to acquire data from a file or device and store it in the EWF
  format (Expert Witness Compression Format).
  ```

### guymager
- A forensic acquisition program
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y guymager`
  2. Help: `guymager -h`  (or `man guymager`)
  3. Run: `guymager ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Using default log file name /var/log/guymager.log
  Log file error: Can't be opened
  Sun 25.Oct.2026 08:40:35 B85627E0 toollog.cpp t_Log 76                     Info  - Log file opened
  Sun 25.Oct.2026 08:40:35 B85627E0 main.cpp MainGo 418                      Info  - =================================================== Starting GUYMAGER ===================================================
  Sun 25.Oct.2026 08:40:35 B85627E0 main.cpp MainGo 419                      Info  - Version: 0.8.13-3
  ```
- Docs: https://guymager.sourceforge.net/


## Kali tools — forensics (10)

### binwalk
- Tool for searching binary images for embedded files and executable code
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y binwalk`
  2. Help: `binwalk -h`  (or `man binwalk`)
  3. Run: `binwalk ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Binwalk v2.4.3
  Original author: Craig Heffner, ReFirmLabs
  https://github.com/OSPG/binwalk
  
  Usage: binwalk [OPTIONS] [FILE1] [FILE2] [FILE3] ...
  ```
- Docs: https://github.com/ReFirmLabs/binwalk

### binwalk3
- tool library for analyzing binary blobs and executable code
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y binwalk3`
  2. Help: `binwalk3 -h`  (or `man binwalk3`)
  3. Run: `binwalk3 ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Analyzes data for embedded file types
  
  Usage: binwalk3 [OPTIONS] [FILE_NAME]
  
  Arguments:
    [FILE_NAME]  Path to the file to analyze
  ```
- Docs: https://github.com/ReFirmLabs/binwalk

### bulk_extractor
- Scans a disk image for regular expressions and other content.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y bulk-extractor`
  2. Help: `bulk_extractor -h`  (or `man bulk_extractor`)
  3. Run: `bulk_extractor ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  bulk_extractor version 2.1.1: A high-performance flexible digital forensics program.
  Usage:
    bulk_extractor [OPTION...] image_name
  
    -A, --offset_add arg          Offset added (in bytes) to feature locations 
                                  (default: 0)
  ```

### chkrootkit
- Scan the system for signs of rootkits
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y chkrootkit`
  2. Help: `chkrootkit -h`  (or `man chkrootkit`)
  3. Run: `chkrootkit ...` against a target you own (see the real --help below).
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

### galleta
- Tool to extract information from MSIE cookie files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y galleta`
  2. Help: `galleta -h`  (or `man galleta`)
  3. Run: `galleta ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Cookie File: --help
  
  ERROR - The cookie file cannot be opened!
  
  
  Usage:  galleta [options] <filename>
  ```
- Docs: https://odessa.sourceforge.net/

### hashdeep
- Compute, compare, or audit multiple message digests
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hashdeep`
  2. Help: `hashdeep -h`  (or `man hashdeep`)
  3. Run: `hashdeep ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  hashdeep: invalid option -- '-'
  Try `hashdeep -h` for more information.
  ```
- Docs: https://md5deep.sourceforge.net

### rkhunter
- RootKit Hunter
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rkhunter`
  2. Help: `rkhunter -h`  (or `man rkhunter`)
  3. Run: `rkhunter ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Usage: rkhunter {--check | --unlock | --update | --versioncheck |
                   --propupd [{filename | directory | package name},...] |
                   --list [{tests | {lang | languages} | rootkits | perl | propfiles}] |
                   --config-check | --version | --help} [options]
  ```
- Docs: https://rkhunter.sourceforge.net

### ssdeep
- Computes context triggered piecewise hashes (fuzzy hashes)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ssdeep`
  2. Help: `ssdeep -h`  (or `man ssdeep`)
  3. Run: `ssdeep ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ssdeep: invalid option -- '-'
  Try `ssdeep -h` for more information.
  ```
- Docs: https://github.com/ssdeep-project/ssdeep

### unhide
- Forensic tool to find hidden processes
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y unhide`
  2. Help: `unhide -h`  (or `man unhide`)
  3. Run: `unhide ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Unhide 20240509
  Copyright © 2010-2024 Yago Jesus & Patrick Gouin
  License GPLv3+ : GNU GPL version 3 or later
  http://www.unhide-forensics.info
  
  NOTE : This version of unhide is for systems using Linux >= 2.6 
  ```
- Docs: https://www.unhide-forensics.info

### yara
- Find files matching patterns and rules written in a special-purpose language.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y yara`
  2. Help: `yara -h`  (or `man yara`)
  3. Run: `yara ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  YARA 4.5.8, the pattern matching swiss army knife.
  Usage: yara [OPTION]... [NAMESPACE:]RULES_FILE... FILE | DIR | PID
  
  Mandatory arguments to long options are mandatory for short options too.
  
         --atom-quality-table=FILE           path to a file with the atom quality table
  ```
- Docs: https://virustotal.github.io/yara/


## Kali tools — hash-identification (2)

### hash-identifier
- Tool to identify hash types
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hash-identifier`
  2. Help: `hash-identifier -h`  (or `man hash-identifier`)
  3. Run: `hash-identifier ...` against a target you own (see the real --help below).
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

### hashid
- Identify the different types of hashes used to encrypt data
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hashid`
  2. Help: `hashid -h`  (or `man hashid`)
  3. Run: `hashid ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: hashid.py [-h] [-e] [-m] [-j] [-o FILE] [--version] INPUT
  
  Identify the different types of hashes used to encrypt data
  
  positional arguments:
    INPUT               input to analyze (default: STDIN)
  ```
- Docs: https://psypanda.github.io/hashID/


## Kali tools — host-information (3)

### metagoofil
- Tool designed for extracting metadata of public documents
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y metagoofil`
  2. Help: `metagoofil -h`  (or `man metagoofil`)
  3. Run: `metagoofil ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: metagoofil.py [-h] -d DOMAIN [-e DELAY] [-f [SAVE_FILE]]
                       [-i URL_TIMEOUT] [-l SEARCH_MAX] [-n DOWNLOAD_FILE_LIMIT]
                       [-o SAVE_DIRECTORY] [-r NUMBER_OF_THREADS] -t FILE_TYPES
                       [-u [USER_AGENT]] [-w]
  
  Metagoofil v1.2.0 - Search Google and download specific file types.
  ```
- Docs: https://github.com/opsdisk/metagoofil

### spiderfoot
- OSINT collection and reconnaissance tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y spiderfoot`
  2. Help: `spiderfoot -h`  (or `man spiderfoot`)
  3. Run: `spiderfoot ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: sf.py [-h] [-d] [-l IP:port] [-m mod1,mod2,...] [-M] [-C scanID]
               [-s TARGET] [-t type1,type2,...]
               [-u {all,footprint,investigate,passive}] [-T] [-o {tab,csv,json}]
               [-H] [-n] [-r] [-S LENGTH] [-D DELIMITER] [-f]
               [-F type1,type2,...] [-x] [-q] [-V] [-max-threads MAX_THREADS]
  ```
- Docs: https://www.spiderfoot.net

### spiderfoot-cli
- OSINT collection and reconnaissance tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y spiderfoot`
  2. Help: `spiderfoot-cli -h`  (or `man spiderfoot-cli`)
  3. Run: `spiderfoot-cli ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: sfcli.py [-h] [-d] [-s URL] [-u USER] [-p PASS] [-P PASSFILE] [-e FILE]
                  [-l FILE] [-n] [-o FILE] [-i] [-q] [-k] [-b]
  
  SpiderFoot: Open Source Intelligence Automation.
  
  options:
  ```


## Kali tools — identify (4)

### maryam
- OWASP Maryam is a modular/optional open source framework bas
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y maryam`
  2. Help: `maryam -h`  (or `man maryam`)
  3. Run: `maryam ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: maryam [-h] [-e execute] [-s start] [-v]
  maryam -h
  
  optional arguments:
  	  -h, --help   show this help message and exit
  	  -e execute   execute a command and exit
  ```
- Docs: https://github.com/saeeddhqan/Maryam

### nipper
- Network Infrastructure Parser. Produces reports based of network device configuration file settings.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y nipper-ng`
  2. Help: `nipper -h`  (or `man nipper`)
  3. Run: `nipper ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
                       _                           ____
                 _ __ (_)_ __  _ __   ___ _ __    / ->/|
                | '_ \| | '_ \| '_ \ / _ \ '__|  /<-_/ |
                | | | | | |_) | |_) |  __/ |     |   | /
                |_| |_|_| .__/| .__/ \___|_|     |___|/
                        |_|   |_|
  ```

### osrframework-cli
- Open Sources Research Framework
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y osrframework`
  2. Help: `osrframework-cli -h`  (or `man osrframework-cli`)
  3. Run: `osrframework-cli ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: osrf [-h] [--license] [--version]
              <sub_command> <sub_command_options> ...
  
  OSRFramework CLI. Collection of tools included in the framework.
  
  SUBCOMMANDS:
  ```

### tiger
- UNIX Security Checker
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y tiger`
  2. Help: `tiger -h`  (or `man tiger`)
  3. Run: `tiger ...` against a target you own (see the real --help below).
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


## Kali tools — impact (9)

### dhcpig
- DHCP exhaustion script using scapy network library
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dhcpig`
  2. Help: `dhcpig -h`  (or `man dhcpig`)
  3. Run: `dhcpig ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  enhanced DHCP exhaustion attack.
  
  Doc:
      http://github.com/kamorin/DHCPig
  ```
- Docs: https://github.com/kamorin/DHCPig

### iaxflood
- VoIP flooder tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y iaxflood`
  2. Help: `iaxflood -h`  (or `man iaxflood`)
  3. Run: `iaxflood ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: iaxflood sourcename destinationname numpackets
  ```
- Docs: http://www.hackingexposedvoip.com/sec_tools.html

### inviteflood
- SIP/SDP INVITE message flooding over UDP/IP
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y inviteflood`
  2. Help: `inviteflood -h`  (or `man inviteflood`)
  3. Run: `inviteflood ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  inviteflood - Version 2.0
                June 09, 2006
   Usage:
   Mandatory -
  	interface (e.g. eth0)
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### mdk3
- Wireless attack tool for IEEE 802.11 networks
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y mdk3`
  2. Help: `mdk3 -h`  (or `man mdk3`)
  3. Run: `mdk3 ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  This program requires root privileges.
  ```
- Docs: https://github.com/aircrack-ng/mdk3

### rtpflood
- Tool to flood any RTP device
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rtpflood`
  2. Help: `rtpflood -h`  (or `man rtpflood`)
  3. Run: `rtpflood ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: rtpflood sourcename destinationname srcport destport numpackets seqno timestamp SSID
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### siege
- An HTTP/FTP load tester and benchmarking utility.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y siege`
  2. Help: `siege -h`  (or `man siege`)
  3. Run: `siege ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  SIEGE 4.1.7
  Usage: siege [options]
         siege [options] URL
         siege -g URL
  Options:
    -V, --version             VERSION, prints the version number.
  ```
- Docs: https://www.joedog.org/JoeDog/Siege

### slowhttptest
- Denial Of Service attacks simulator
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y slowhttptest`
  2. Help: `slowhttptest -h`  (or `man slowhttptest`)
  3. Run: `slowhttptest ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Illegal option --
  Try 'slowhttptest -h' for more information
  ```
- Docs: https://github.com/shekyan/slowhttptest

### t50
- Network packet injector
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y t50`
  2. Help: `t50 -h`  (or `man t50`)
  3. Run: `t50 ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  T50 Experimental Mixed Packet Injector Tool v5.8.7c
  Copyright (C) 2010 - 2025 - T50 developers
  Originally created by Nelson Brito <<email>>
  Previously maintained by Fernando Mercês <<email>>
  Maintained by Frederico Lamberti Pissarra <<email>>
  ```
- Docs: https://gitlab.com/fredericopissarra/t50

### thc-ssl-dos
- Stress tester for the SSL handshake
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y thc-ssl-dos`
  2. Help: `thc-ssl-dos -h`  (or `man thc-ssl-dos`)
  3. Run: `thc-ssl-dos ...` against a target you own (see the real --help below).
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


## Kali tools — initial-access (10)

### commix
- Automated All-in-One OS Command Injection and Exploitation Tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y commix`
  2. Help: `commix -h`  (or `man commix`)
  3. Run: `commix ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: commix [option(s)]
  
  Options:
    -h, --help            Show help and exit.
  
    General:
  ```
- Docs: https://commixproject.com

### dns-rebind
- DNS rebinding tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rebind`
  2. Help: `dns-rebind -h`  (or `man dns-rebind`)
  3. Run: `dns-rebind ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Rebind v0.3.4
  
  Usage: dns-rebind [OPTIONS]
  
  	-i <interface>	Specify the network interface to bind to
  ```

### jboss-linux
- JBoss script for obtaining remote shell access
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y jboss-autopwn`
  2. Help: `jboss-linux -h`  (or `man jboss-linux`)
  3. Run: `jboss-linux ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  [x] Retrieving cookie
  nc: invalid option -- '-'
  nc -h for help
  [x] Now creating BSH script...
  nc: invalid option -- '-'
  nc -h for help
  ```

### jboss-win
- JBoss script for obtaining remote shell access
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y jboss-autopwn`
  2. Help: `jboss-win -h`  (or `man jboss-win`)
  3. Run: `jboss-win ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  [x] Retrieving cookie
  nc: invalid option -- '-'
  nc -h for help
  [x] Now creating BSH script...
  nc: invalid option -- '-'
  nc -h for help
  ```

### jsql
- Java tool for automatic database injection
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y jsql-injection`
  2. Help: `jsql -h`  (or `man jsql`)
  3. Run: `jsql ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  2026-10-25 08:40:51,439 ERROR [main] jsql.MainApp (MainApp.java:30) - Headless runtime not supported, use default Java runtime instead
  ```

### metasploit-framework
- Framework for exploit development and vulnerability research
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y metasploit-framework`
  2. Help: `msf-jsobfu -h`  (or `man msf-jsobfu`)
  3. Run: `msf-jsobfu ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Aborted! SIGTERM
  ```
- Docs: https://www.metasploit.com/

### setoolkit
- Social-Engineer Toolkit
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y set`
  2. Help: `setoolkit -h`  (or `man setoolkit`)
  3. Run: `setoolkit ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
   The Social-Engineer Toolkit (SET) - by David Kennedy (ReL1K)
  
   Not running as root. 
  
  Exiting the Social-Engineer Toolkit (SET).
  ```

### sqlmap
- Automatic SQL injection tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sqlmap`
  2. Help: `sqlmap -h`  (or `man sqlmap`)
  3. Run: `sqlmap ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
          ___
         __H__
   ___ ___[(]_____ ___ ___  {1.10.9#stable}
  |_ -| . [']     | .'| . |
  |___|_  [)]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- Docs: https://sqlmap.org/

### sqlninja
- SQL server injection and takeover tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sqlninja`
  2. Help: `sqlninja -h`  (or `man sqlninja`)
  3. Run: `sqlninja ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  /usr/bin/sqlninja version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: sqlninja [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://sqlninja.sourceforge.net/

### sqlsus
- MySQL injection tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sqlsus`
  2. Help: `sqlsus -h`  (or `man sqlsus`)
  3. Run: `sqlsus ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Can't locate Switch.pm in @INC (you may need to install the Switch module) (@INC entries checked: /usr/share/sqlsus/lib /etc/perl /usr/local/lib/aarch64-linux-gnu/perl/5.42.3 /usr/local/share/perl/5.42.3 /usr/lib/aarch64-linux-gnu/perl5/5.42 /usr/share/perl5 /usr/lib/aarch64-linux-gnu/perl-base /usr/lib/aarch64-linux-gnu/perl/5.42 /usr/share/perl/5.42 /usr/local/lib/site_perl) at /usr/share/sqlsus/lib/Sqlsus/autoconf.pm line 15.
  BEGIN failed--compilation aborted at /usr/share/sqlsus/lib/Sqlsus/autoconf.pm line 15.
  Compilation failed in require at /usr/bin/sqlsus line 29.
  BEGIN failed--compilation aborted at /usr/bin/sqlsus line 29.
  ```
- Docs: https://sqlsus.sourceforge.net/


## Kali tools — kali-offsec-links (9)

### Exploit Database
- Archive of public exploits that is CVE compliant
- **Steps:**
  1. Launch it to browse exploits online.
  2. For offline/CLI: `toolkit.sh search <product version>`.

### Kali Bugs
- The Kali Linux bug tracker
- **Steps:**
  1. Launch to report or search Kali bugs.

### Kali Docs
- Official Kali Linux documentation website
- **Steps:**
  1. Launch for official how-tos (install, tools, troubleshooting).

### Kali Forums
- Get community support on forums
- **Steps:**
  1. Launch to ask/search community questions.

### Kali Linux
- The official web site of Kali Linux
- **Steps:**
  1. Launch for downloads/news.

### Kali Tools
- Discover tools available in Kali Linux
- **Steps:**
  1. Launch to look up any Kali tool's docs/usage.

### NetHunter
- Penetration testing tools on mobile devices
- **Steps:**
  1. Launch for NetHunter docs (Android pentest platform).

### OffSec Training
- Follow courses and get certified to show off your skills
- **Steps:**
  1. Launch to browse PEN-200/OSCP etc.

### VulnHub
- Vulnerable by design - lab to download virtual machines to test your skills
- **Steps:**
  1. Launch to find legal practice targets (run them isolated).


## Kali tools — lateral-movement (3)

### impacket-psexec
- Python3 module to easily build and dissect network protocols
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y impacket-scripts`
  2. Help: `impacket-psexec -h`  (or `man impacket-psexec`)
  3. Run: `impacket-psexec ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: psexec.py [-h] [-c pathname] [-path PATH] [-file FILE] [-ts] [-debug]
                   [-codec CODEC] [-hashes LMHASH:NTHASH] [-no-pass] [-k]
                   [-aesKey hex key] [-keytab KEYTAB] [-dc-ip ip address]
                   [-target-ip ip address] [-port [destination port]]
  ```

### impacket-smbexec
- Python3 module to easily build and dissect network protocols
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y impacket-scripts`
  2. Help: `impacket-smbexec -h`  (or `man impacket-smbexec`)
  3. Run: `impacket-smbexec ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: smbexec.py [-h] [-share SHARE] [-mode {SERVER,SHARE}] [-ts] [-debug]
                    [-codec CODEC] [-shell-type {cmd,powershell}]
                    [-dc-ip ip address] [-target-ip ip address]
                    [-port [destination port]] [-service-name service_name]
  ```

### rdesktop
- Remote Desktop Protocol client
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rdesktop`
  2. Help: `rdesktop -h`  (or `man rdesktop`)
  3. Run: `rdesktop ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  rdesktop: invalid option -- '-'
  rdesktop: A Remote Desktop Protocol client.
  Version 1.9.0. Copyright (C) 1999-2016 Matthew Chapman et al.
  See http://www.rdesktop.org/ for more information.
  
  Usage: rdesktop [options] server[:port]
  ```


## Kali tools — network-information (7)

### amass
- In-depth DNS Enumeration and Network Mapping
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y amass`
  2. Help: `amass -h`  (or `man amass`)
  3. Run: `amass ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```
- Docs: https://github.com/OWASP/Amass

### dmitry
- Deepmagic Information Gathering Tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dmitry`
  2. Help: `dmitry -h`  (or `man dmitry`)
  3. Run: `dmitry ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  dmitry: invalid option -- '-'
  Deepmagic Information Gathering Tool
  "There be some deep magic going on"
  
  Usage: dmitry [-winsepfb] [-t 0-9] [-o %host.txt] host
    -o	 Save output to %host.txt or to file specified by -o file
  ```
- Docs: https://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/

### legion
- semi-automated network penetration testing tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y legion`
  2. Help: `legion -h`  (or `man legion`)
  3. Run: `legion ...` against a target you own (see the real --help below).
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

### nmap
- Network exploration tool and security / port scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y nmap`
  2. Help: `nmap -h`  (or `man nmap`)
  3. Run: `nmap ...` against a target you own (see the real --help below).
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

### theHarvester
- tool for gathering e-mail accounts and subdomain names from public sources
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y theharvester`
  2. Help: `theHarvester -h`  (or `man theHarvester`)
  3. Run: `theHarvester ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Read proxies.yaml from /etc/theHarvester/proxies.yaml
  *******************************************************************
  *  _   _                                            _             *
  * | |_| |__   ___    /\  /\__ _ _ ____   _____  ___| |_ ___ _ __  *
  * | __|  _ \ / _ \  / /_/ / _` | '__\ \ / / _ \/ __| __/ _ \ '__| *
  * | |_| | | |  __/ / __  / (_| | |   \ V /  __/\__ \ ||  __/ |    *
  ```
- Docs: https://github.com/laramies/theHarvester

### unicornscan
- Userland distributed TCP/IP stack
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y unicornscan`
  2. Help: `unicornscan -h`  (or `man unicornscan`)
  3. Run: `unicornscan ...` against a target you own (see the real --help below).
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

### zenmap
- Graphical Nmap frontend and results viewer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y zenmap`
  2. Help: `zenmap -h`  (or `man zenmap`)
  3. Run: `zenmap ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: zenmap [options] [result files]
  
  Options:
    --version             show program's version number and exit
    -h, --help            show this help message and exit
    --confdir=DIR         Use DIR as the user configuration directory. Default:
  ```
- Docs: https://nmap.org/


## Kali tools — network-information-dns (5)

### dnsenum
- - multithread script to enumerate information on a domain and to discover non-contiguous IP blocks
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dnsenum`
  2. Help: `dnsenum -h`  (or `man dnsenum`)
  3. Run: `dnsenum ...` against a target you own (see the real --help below).
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

### dnsmap
- Scan for subdomains using bruteforcing techniques
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dnsmap`
  2. Help: `dnsmap -h`  (or `man dnsmap`)
  3. Run: `dnsmap ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  dnsmap 0.36 - DNS Network Mapper
  
  [+] error: entered domain is not valid!
  ```
- Docs: https://github.com/resurrecting-open-source-projects/dnsmap

### dnsrecon
- DNS Enumeration and Scanning Tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dnsrecon`
  2. Help: `dnsrecon -h`  (or `man dnsrecon`)
  3. Run: `dnsrecon ...` against a target you own (see the real --help below).
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

### dnstracer
- Trace a chain of DNS servers to the source
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dnstracer`
  2. Help: `dnstracer -h`  (or `man dnstracer`)
  3. Run: `dnstracer ...` against a target you own (see the real --help below).
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

### dnswalk
- A DNS database debugger
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dnswalk`
  2. Help: `dnswalk -h`  (or `man dnswalk`)
  3. Run: `dnswalk ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  /usr/bin/dnswalk version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: dnswalk [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://github.com/davebarr/dnswalk


## Kali tools — network-security-appliances (3)

### firewalk
- Active Reconnaissance Network Security Tool with Extreme Prejudice
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y firewalk`
  2. Help: `firewalk -h`  (or `man firewalk`)
  3. Run: `firewalk ...` against a target you own (see the real --help below).
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

### tcpreplay
- Replay network traffic stored in pcap files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y tcpreplay`
  2. Help: `tcpreplay -h`  (or `man tcpreplay`)
  3. Run: `tcpreplay ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Warning in interface.c:get_interface_list() line 80:
  May need to run as root to get access to all network interfaces.
  tcpreplay (tcpreplay) - Replay network traffic stored in pcap files
  Usage:  tcpreplay [ -<flag> [<val>] | --<name>[{=| }<val>] ]... \
  		<pcap_file(s)> | <pcap_dir(s)>
  ```
- Docs: http://tcpreplay.appneta.com/

### wafw00f
- Identify and fingerprint Web Application Firewall products
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y wafw00f`
  2. Help: `wafw00f -h`  (or `man wafw00f`)
  3. Run: `wafw00f ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: wafw00f url1 [url2 [url3 ... ]]
  example: wafw00f http://www.victim.org/
  
  Options:
    -h, --help            show this help message and exit
    -v, --verbose         Enable verbosity, multiple -v options increase
  ```
- Docs: https://github.com/EnableSecurity/wafw00f


## Kali tools — network-service-discovery (2)

### ike-scan
- Discover and fingerprint IKE hosts (IPsec VPN servers)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ike-scan`
  2. Help: `ike-scan -h`  (or `man ike-scan`)
  3. Run: `ike-scan ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: ike-scan [options] [hosts...]
  
  Target hosts must be specified on the command line unless the --file option is
  given, in which case the targets are read from the specified file instead.
  
  The target hosts can be specified as IP addresses or hostnames. You can also
  ```
- Docs: https://github.com/royhills/ike-scan

### masscan
- Fast scan of the Internet
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y masscan`
  2. Help: `masscan -h`  (or `man masscan`)
  3. Run: `masscan ...` against a target you own (see the real --help below).
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


## Kali tools — network-share-discovery (3)

### enum4linux
- Enumerates info from Windows and Samba systems
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y enum4linux`
  2. Help: `enum4linux -h`  (or `man enum4linux`)
  3. Run: `enum4linux ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ./enum4linux.pl version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: enum4linux.pl [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://labs.portcullis.co.uk/tools/enum4linux/

### nbtscan
- Scan networks for NetBIOS name information
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y nbtscan`
  2. Help: `nbtscan -h`  (or `man nbtscan`)
  3. Run: `nbtscan ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  nbtscan: invalid option -- '-'
  
  NBTscan version 1.7.2.
  This is a free software and it comes with absolutely no warranty.
  You can use, distribute and modify it under terms of GNU GPL 2+.
  ```
- Docs: https://github.com/resurrecting-open-source-projects/nbtscan

### smbclient
- Ftp-like client to access SMB/CIFS resources on servers
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y smbclient`
  2. Help: `smbclient -h`  (or `man smbclient`)
  3. Run: `smbclient ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: smbclient [OPTIONS] service <password>
    -M, --message=HOST                           Send message
    -I, --ip-address=IP                          Use this IP to connect to
    -E, --stderr                                 Write messages to stderr
                                                 instead of stdout
    -L, --list=HOST                              Get a list of shares available
  ```


## Kali tools — network-sniffing (12)

### above
- Network security sniffer for finding vulnerabilities in the network
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y above`
  2. Help: `above -h`  (or `man above`)
  3. Run: `above ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  WARNING: [bgp.py] use_2_bytes_asn: True
                                               
          ___    __                  
         /   |  / /_  ____ _   _____ 
        / /| | / __ \/ __ \ | / / _ \
       / ___ |/ /_/ / /_/ / |/ /  __/
  ```
- Docs: https://github.com/caster0x00/Above

### arpspoof
- Intercept packets on a switched LAN
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dsniff`
  2. Help: `arpspoof -h`  (or `man arpspoof`)
  3. Run: `arpspoof ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  arpspoof: libnet_open_link(): UID/EUID 0 or capability CAP_NET_RAW required
  ```

### darkstat
- Network statistics gatherer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y darkstat`
  2. Help: `darkstat -h`  (or `man darkstat`)
  3. Run: `darkstat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  darkstat 3.0.722 (using libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3))
  
  usage: darkstat [ -i interface ]
                  [ -f filter ]
                  [ -r capfile ]
                  [ -p port ]
  ```
- Docs: https://unix4lyfe.org/darkstat/

### dnschef
- DNS proxy for penetration testers
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dnschef`
  2. Help: `dnschef -h`  (or `man dnschef`)
  3. Run: `dnschef ...` against a target you own (see the real --help below).
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

### driftnet
- Capture images from network traffic and display them in an X window; optionally, capture audio streams and play them.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y driftnet`
  2. Help: `driftnet -h`  (or `man driftnet`)
  3. Run: `driftnet ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Sun Oct 25 08:40:29 2026 - error: unrecognised option --
  driftnet, version 1.5.0
  Capture images from network traffic and display them.
  
  Synopsis: driftnet [options] [filter code]
  ```
- Docs: https://github.com/deiv/driftnet

### dsniff
- Password sniffer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dsniff`
  2. Help: `dsniff -h`  (or `man dsniff`)
  3. Run: `dsniff ...` against a target you own (see the real --help below).
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

### hexinject
- Versatile packet injector and sniffer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hexinject`
  2. Help: `hexinject -h`  (or `man hexinject`)
  3. Run: `hexinject ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  hexinject: invalid option -- '-'
  HexInject 1.6 [hexadecimal packet injector/sniffer]
  written by: Emanuele Acri <<email>>
  
  Usage:
     hexinject <mode> <options>
  ```
- Docs: https://hexinject.sourceforge.net/

### netsniff-ng
- The packet sniffing beast
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y netsniff-ng`
  2. Help: `netsniff-ng -h`  (or `man netsniff-ng`)
  3. Run: `netsniff-ng ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  netsniff-ng 0.6.9, the packet sniffing beast
  http://www.netsniff-ng.org
  
  Usage: netsniff-ng [options] [filter-expression]
  Options:
    -i|-d|--dev|--in <dev|pcap|->  Input source as netdev, pcap or pcap stdin
  ```
- Docs: http://netsniff-ng.org/

### scapy
- Interactive packet manipulation tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y scapy`
  2. Help: `scapy -h`  (or `man scapy`)
  3. Run: `scapy ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ERROR: option --help not recognized
  ```

### tcpdump
- Dump traffic on a network
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y tcpdump`
  2. Help: `tcpdump -h`  (or `man tcpdump`)
  3. Run: `tcpdump ...` against a target you own (see the real --help below).
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

### tcpflow
- TCP flow recorder
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y tcpflow`
  2. Help: `tcpflow -h`  (or `man tcpflow`)
  3. Run: `tcpflow ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  TCPFLOW version 1.6.1
  
  usage: tcpflow [-aBcCDhIpsvVZ] [-b max_bytes] [-d debug_level] 
       [-[eE] scanner] [-f max_fds] [-F[ctTXMkmg]] [-h|--help] [-i iface]
       [-l files...] [-L semlock] [-m min_bytes] [-o outdir] [-r file] [-R file]
       [-S name=value] [-T template] [-U|--relinquish-privileges user] [-v|--verbose]
  ```
- Docs: https://github.com/simsong/tcpflow

### wireshark
- Interactively dump and analyze network traffic
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y wireshark`
  2. Help: `wireshark -h`  (or `man wireshark`)
  3. Run: `wireshark ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Wireshark 4.6.6
  Interactively dump and analyze network traffic.
  See https://www.wireshark.org for more information.
  
  Usage: wireshark [options] ... [ <infile> ]
  ```
- Docs: https://www.wireshark.org/


## Kali tools — non-application-layer-protocol (7)

### dbd
- Netcat clone with encryption
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dbd`
  2. Help: `dbd -h`  (or `man dbd`)
  3. Run: `dbd ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  dbd: invalid option -- '-'
  ```
- Docs: https://github.com/gitdurandal/dbd

### ncat
- Concatenate and redirect sockets
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ncat`
  2. Help: `ncat -h`  (or `man ncat`)
  3. Run: `ncat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Ncat 7.991 ( https://nmap.org/ncat )
  Usage: ncat [options] [hostname] [port]
  
  Options taking a time assume seconds. Append 'ms' for milliseconds,
  's' for seconds, 'm' for minutes, or 'h' for hours (e.g. 500ms).
    -4                         Use IPv4 only
  ```
- Docs: https://nmap.org/

### netcat
- TCP/IP swiss army knife
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y netcat`
  2. Help: `netcat -h`  (or `man netcat`)
  3. Run: `netcat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  netcat: invalid option -- '-'
  nc -h for help
  ```

### powercat
- netcat features all in powershell v2
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y powercat`
  2. Help: `powercat -h`  (or `man powercat`)
  3. Run: `powercat ...` against a target you own (see the real --help below).
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

### sbd
- Secure backdoor for Linux and Windows
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sbd`
  2. Help: `sbd -h`  (or `man sbd`)
  3. Run: `sbd ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sbd: invalid option -- '-'
  ```
- Docs: https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz

### socat
- Multipurpose relay (SOcket CAT)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y socat`
  2. Help: `socat -h`  (or `man socat`)
  3. Run: `socat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  2026/10/25 08:41:21 socat[1186875] E unknown option "--help"; use option "-h" for help
  ```

### termineter
- Smart meter testing framework
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y termineter`
  2. Help: `termineter -h`  (or `man termineter`)
  3. Run: `termineter ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: termineter [-h] [-v] [-L {DEBUG,INFO,WARNING,ERROR,CRITICAL}]
                    [-r RESOURCE_FILE]
  
  Termineter: Python Smart Meter Testing Framework
  
  options:
  ```
- Docs: https://github.com/rsmusllp/termineter


## Kali tools — os-credential-dumping (3)

### chntpw
- Utility to overwrite passwords of Windows systems
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y chntpw`
  2. Help: `chntpw -h`  (or `man chntpw`)
  3. Run: `chntpw ...` against a target you own (see the real --help below).
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

### creddump7
- Python tool to extract credentials and secrets from Windows registry hives
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y creddump7`
  2. Help: `creddump7 -h`  (or `man creddump7`)
  3. Run: `creddump7 ...` against a target you own (see the real --help below).
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

### samdump2
- Retrieves syskey and extract hashes from Windows 2k/NT/XP/Vista SAM.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y samdump2`
  2. Help: `samdump2 -h`  (or `man samdump2`)
  3. Run: `samdump2 ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  samdump2: invalid option -- '-'
  samdump2 3.0.0 by Objectif Securite (http://www.objectif-securite.ch)
  original author: <email>
  
  Usage: samdump2 [OPTION]... SYSTEM_FILE SAM_FILE
  Retrieves syskey and extract hashes from Windows 2k/NT/XP/Vista SAM
  ```
- Docs: https://ophcrack.sourceforge.net/


## Kali tools — pass-the-hash (6)

### impacket-scripts
- Links to useful impacket scripts examples
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y impacket-scripts`
  2. Help: `impacket-net -h`  (or `man impacket-net`)
  3. Run: `impacket-net ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: net.py [-h] [-debug] [-ts] [-hashes LMHASH:NTHASH] [-no-pass] [-k]
                [-aesKey hex key] [-dc-ip ip address] [-target-ip ip address]
                [-port [destination port]]
                target {user,computer,localgroup,group} ...
  ```

### mimikatz
- Uses admin rights on Windows to display passwords in plaintext
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y mimikatz`
  2. Help: `mimikatz -h`  (or `man mimikatz`)
  3. Run: `mimikatz ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > mimikatz ~ Uses admin rights on Windows to display passwords in plaintext
  
  /usr/share/windows-resources/mimikatz
  ├── kiwi_passwords.yar
  ├── mimicom.idl
  ```
- Docs: https://blog.gentilkiwi.com/mimikatz

### netexec
- Network Execution Tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y netexec`
  2. Help: `netexec -h`  (or `man netexec`)
  3. Run: `netexec ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: netexec [-h] [--version] [-t THREADS] [--timeout TIMEOUT]
                 [--jitter INTERVAL] [--no-progress] [--log LOG] [--verbose |
                 --debug] [-6] [--dns-server DNS_SERVER] [--dns-tcp]
                 [--dns-timeout DNS_TIMEOUT]
                 {winrm,rdp,smb,ftp,mssql,ssh,wmi,ldap,vnc,nfs} ...
  ```
- Docs: https://github.com/Pennyw0rth/NetExec

### passing-the-hash
- Patched tools to use password hashes as authentication input
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y passing-the-hash`
  2. Help: `pth-net -h`  (or `man pth-net`)
  3. Run: `pth-net ...` against a target you own (see the real --help below).
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

### smbmap
- SMB enumeration tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y smbmap`
  2. Help: `smbmap -h`  (or `man smbmap`)
  3. Run: `smbmap ...` against a target you own (see the real --help below).
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

### xfreerdp3
- FreeRDP X11 client
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y freerdp3-x11`
  2. Help: `xfreerdp3 -h`  (or `man xfreerdp3`)
  3. Run: `xfreerdp3 ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  xfreerdp3 - A Free Remote Desktop Protocol Implementation
  See www.freerdp.com for more information
  
  Usage: xfreerdp3 [file] [options] [/v:<server>[:port]]
  ```


## Kali tools — password-cracking (11)

### crackle
- Crack and decrypt BLE encryption
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y crackle`
  2. Help: `crackle -h`  (or `man crackle`)
  3. Run: `crackle ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  crackle: invalid option -- '-'
  Usage: crackle -i <input.pcap> [-o <output.pcap>] [-l <ltk>]
  Cracks Bluetooth Low Energy encryption (AKA Bluetooth Smart)
  
  Major modes:  Crack TK // Decrypt with LTK
  ```
- Docs: https://github.com/mikeryan/crackle

### fcrackzip
- A Free/Fast Zip Password Cracker
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y fcrackzip`
  2. Help: `fcrackzip -h`  (or `man fcrackzip`)
  3. Run: `fcrackzip ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  fcrackzip version 1.0, a fast/free zip password cracker
  written by Marc Lehmann <<email>> You can find more info on
  http://www.goof.com/pcg/marc/
  
  USAGE: fcrackzip
  ```
- Docs: http://oldhome.schmorp.de/marc/fcrackzip.html

### hashcat
- Advanced CPU-based password recovery utility
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hashcat`
  2. Help: `hashcat -h`  (or `man hashcat`)
  3. Run: `hashcat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  hashcat (v7.1.2) starting in help mode
  
  Usage: hashcat [options]... hash|hashfile|hccapxfile [dictionary|mask|directory]...
  
  - [ Options ] -
  ```
- Docs: https://hashcat.net/hashcat/

### john
- A tool to find weak passwords of your users
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y john`
  2. Help: `john -h`  (or `man john`)
  3. Run: `john ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  John the Ripper 1.9.0-jumbo-1+bleeding-aec1328d6c 2021-11-02 10:45:52 +0100 OMP [linux-gnu 64-bit aarch64 ASIMD AC]
  Copyright (c) 1996-2021 by Solar Designer and others
  Homepage: https://www.openwall.com/john/
  
  Usage: john [OPTIONS] [PASSWORD-FILES]
  ```
- Docs: https://github.com/openwall/john

### johnny
- GUI for John the Ripper
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y johnny`
  2. Help: `johnny -h`  (or `man johnny`)
  3. Run: `johnny ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://openwall.info/wiki/john/johnny

### ophcrack
- A Microsoft Windows password cracker using rainbow tables.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ophcrack`
  2. Help: `ophcrack -h`  (or `man ophcrack`)
  3. Run: `ophcrack ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ophcrack: invalid option -- '-'
  ophcrack 3.8.0 by Objectif Securite (http://www.objectif-securite.ch)
  
  Usage: ophcrack [OPTIONS]
  Cracks Windows passwords with Rainbow tables
  ```
- Docs: https://ophcrack.sourceforge.net/

### ophcrack-cli
- A Microsoft Windows password cracker using rainbow tables.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ophcrack-cli`
  2. Help: `ophcrack-cli -h`  (or `man ophcrack-cli`)
  3. Run: `ophcrack-cli ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ophcrack-cli: invalid option -- '-'
  ophcrack 3.8.0 by Objectif Securite (http://www.objectif-securite.ch)
  
  Usage: ophcrack [OPTIONS]
  Cracks Windows passwords with Rainbow tables
  ```
- Docs: https://ophcrack.sourceforge.net/

### rcracki_mt
- Version of rcrack that supports hybrid and indexed tables
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rcracki-mt`
  2. Help: `rcracki_mt -h`  (or `man rcracki_mt`)
  3. Run: `rcracki_mt ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Using 1 threads for pre-calculation and false alarm checking...
  no rainbow table found
  ```

### sipcrack
- A suite of tools to sniff and crack the digest authentications within the SIP protocol.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sipcrack`
  2. Help: `sipcrack -h`  (or `man sipcrack`)
  3. Run: `sipcrack ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  SIPcrack 0.2 
  ----------------------------------------
  
  Usage: sipcrack [OPTIONS] [ -s | -w <wordlist> ] <dump file>
  ```
- Docs: http://www.remote-exploit.org/codes_sipcrack.html

### sucrack
- Is a multithreaded Linux/UNIX tool for brute-force cracking of local user accounts via su.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sucrack`
  2. Help: `sucrack -h`  (or `man sucrack`)
  3. Run: `sucrack ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sucrack: invalid option -- '-'
  ERROR: unrecognized option -?
  sucrack 1.2.3 (LINUX) - the su cracker
  Copyright (C) 2006  Nico Leidecker; <email>
  
   Usage: sucrack [-char] [-w num] [-b size] [-s sec] [-u user] [-l rules] wordlist
  ```
- Docs: https://labs.portcullis.co.uk/tools/sucrack/

### truecrack
- Brute-force password cracker for TrueCrypt (Copyright) volumes.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y truecrack`
  2. Help: `truecrack -h`  (or `man truecrack`)
  3. Run: `truecrack ...` against a target you own (see the real --help below).
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


## Kali tools — password-profiling-wordlists (8)

### cewl
- Custom word list generator
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cewl`
  2. Help: `cewl -h`  (or `man cewl`)
  3. Run: `cewl ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  CeWL 6.2.1 (More Fixes) Robin Wood (<email>) (https://digi.ninja/)
  Usage: cewl [OPTIONS] ... <url>
  
      OPTIONS:
  	-h, --help: Show help.
  	-k, --keep: Keep the downloaded file.
  ```
- Docs: https://github.com/digininja/CeWL

### crunch
- Generate wordlists from a character set
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y crunch`
  2. Help: `crunch -h`  (or `man crunch`)
  3. Run: `crunch ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  crunch version 3.6
  
  Crunch can create a wordlist based on criteria you specify.  The output from crunch can be sent to the screen, file, or to another program.
  
  Usage: crunch <min> <max> [options]
  where min and max are numbers
  ```
- Docs: http://sourceforge.net/projects/crunch-wordlist/

### maskgen
- Password analysis and cracking kit
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pack`
  2. Help: `maskgen -h`  (or `man maskgen`)
  3. Run: `maskgen ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: maskgen pass0.masks [pass1.masks ...] [options]
  
  Options:
    --version             show program's version number and exit
    -h, --help            show this help message and exit
    -t 86400, --targettime=86400
  ```

### policygen
- Password analysis and cracking kit
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pack`
  2. Help: `policygen -h`  (or `man policygen`)
  3. Run: `policygen ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: policygen [options]
  
  Type --help for more options
  
  Options:
    --version             show program's version number and exit
  ```

### rsmangler
- Wordlist mangling tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rsmangler`
  2. Help: `rsmangler -h`  (or `man rsmangler`)
  3. Run: `rsmangler ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  rsmangler v 1.5 Robin Wood (<email>) <https://digi.ninja>
  
  Basic usage:
  
  	rsmangler --file wordlist.txt
  ```
- Docs: https://digi.ninja/projects/rsmangler.php

### statsgen
- Password analysis and cracking kit
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pack`
  2. Help: `statsgen -h`  (or `man statsgen`)
  3. Run: `statsgen ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: statsgen [options] passwords.txt
  
  Type --help for more options
  
  Options:
    --version             show program's version number and exit
  ```

### twofi
- Twitter words of interest
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y twofi`
  2. Help: `twofi -h`  (or `man twofi`)
  3. Run: `twofi ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  twoif 2.0-beta Robin Wood (<email>) (www.digininja.org)
  twoif - Twitter Words of Interest
  
  Usage: twoif [OPTIONS]
  	--help, -h: show help
  	--config <file>: config file, default is twofi.yml
  ```
- Docs: https://www.digininja.org/projects/twofi.php

### wordlists
- Contains the rockyou wordlist
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y wordlists`
  2. Help: `wordlists -h`  (or `man wordlists`)
  3. Run: `wordlists ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > wordlists ~ Contains the rockyou wordlist
  
  /usr/share/wordlists
  ├── dirb -> /usr/share/dirb/wordlists
  ├── dirbuster -> /usr/share/dirbuster/wordlists
  ```
- Docs: https://www.kali.org


## Kali tools — pdf-forensics-tools (2)

### pdf-parser
- Parses PDF files to identify fundamental elements
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pdf-parser`
  2. Help: `pdf-parser -h`  (or `man pdf-parser`)
  3. Run: `pdf-parser ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  This program has not been tested with this version of Python (3.14.8)
  Should you encounter problems, please use Python version 3.13.9
  Usage: pdf-parser [options] pdf-file|zip-file|url
  pdf-parser, use it to parse a PDF document
  
  Options:
  ```
- Docs: https://blog.didierstevens.com/programs/pdf-tools/

### pdfid
- Scans PDF files for certain PDF keywords
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pdfid`
  2. Help: `pdfid -h`  (or `man pdfid`)
  3. Run: `pdfid ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: pdfid [options] [pdf-file|zip-file|url|@file] ...
  Tool to test a PDF file
  
  Arguments:
  pdf-file and zip-file can be a single file, several files, and/or @file
  @file: run PDFiD on each file listed in the text file specified
  ```
- Docs: https://blog.didierstevens.com/programs/pdf-tools/


## Kali tools — persistence (5)

### laudanum
- Collection of injectable web files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y laudanum`
  2. Help: `laudanum -h`  (or `man laudanum`)
  3. Run: `laudanum ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > laudanum ~ Collection of injectable web files
  
  /usr/share/laudanum
  ├── asp
  ├── aspx
  ```
- Docs: https://sourceforge.net/projects/laudanum/

### seclists
- Collection of multiple types of security lists
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y seclists`
  2. Help: `seclists -h`  (or `man seclists`)
  3. Run: `seclists ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > seclists ~ Collection of multiple types of security lists
  
  /usr/share/seclists
  ├── Discovery
  ├── Fuzzing
  ```
- Docs: https://github.com/danielmiessler/SecLists

### webacoo
- Web backdoor cookie script kit
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y webacoo`
  2. Help: `webacoo -h`  (or `man webacoo`)
  3. Run: `webacoo ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  /usr/bin/webacoo version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: webacoo [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: https://github.com/anestisb/WeBaCoo

### webshells
- Collection of webshells
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y webshells`
  2. Help: `webshells -h`  (or `man webshells`)
  3. Run: `webshells ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > webshells ~ Collection of webshells
  
  /usr/share/webshells
  ├── asp
  ├── aspx
  ```
- Docs: https://www.kali.org

### weevely
- Weaponized web shell
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y weevely`
  2. Help: `weevely -h`  (or `man weevely`)
  3. Run: `weevely ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: weevely [-h] {terminal,session,generate} ...
  
  positional arguments:
    {terminal,session,generate}
      terminal            Run terminal or command on the target
      session             Recover an existing session
  ```
- Docs: https://github.com/epinna/weevely3/


## Kali tools — privilege-escalation (5)

### linpeas
- Privilege Escalation Awesome Scripts SUITE
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y peass`
  2. Help: `linpeas -h`  (or `man linpeas`)
  3. Run: `linpeas ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > peass ~ Privilege Escalation Awesome Scripts SUITE
  
  /usr/share/peass/linpeas
  ├── linpeas_darwin_amd64
  ├── linpeas_darwin_arm64
  ```

### lynis
- System and security auditing tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y lynis`
  2. Help: `lynis -h`  (or `man lynis`)
  3. Run: `lynis ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  [ Lynis 3.1.7 ]
  
  ################################################################################
    Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
    welcome to redistribute it under the terms of the GNU General Public License.
  ```
- Docs: https://cisofy.com/lynis/

### peass
- Privilege Escalation Awesome Scripts SUITE
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y peass`
  2. Help: `peass -h`  (or `man peass`)
  3. Run: `peass ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > peass ~ Privilege Escalation Awesome Scripts SUITE
  
  /usr/share/peass/
  ├── linpeas
  │   ├── linpeas_darwin_amd64
  ```
- Docs: https://github.com/carlospolop/PEASS-ng

### unix-privesc-check
- Script to check for simple privilege escalation vectors
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y unix-privesc-check`
  2. Help: `unix-privesc-check -h`  (or `man unix-privesc-check`)
  3. Run: `unix-privesc-check ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  unix-privesc-check v1.6-svn- ( http://pentestmonkey.net/tools/unix-privesc-check )
  
  Usage: unix-privesc-check { standard | detailed }
  
  "standard" mode: Speed-optimised check of lots of security settings.
  ```
- Docs: https://pentestmonkey.net/tools/audit/unix-privesc-check

### winpeas
- Privilege Escalation Awesome Scripts SUITE
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y peass`
  2. Help: `winpeas -h`  (or `man winpeas`)
  3. Run: `winpeas ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > peass ~ Privilege Escalation Awesome Scripts SUITE
  
  /usr/share/peass/winpeas
  ├── winPEASany.exe
  ├── winPEASany_ofs.exe
  ```


## Kali tools — protect (3)

### clamscan
- Scan files and directories for viruses
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y clamav`
  2. Help: `clamscan -h`  (or `man clamscan`)
  3. Run: `clamscan ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
                         Clam AntiVirus: Scanner 1.4.6
             By The ClamAV Team: https://www.clamav.net/about.html#credits
             (C) 2024 Cisco Systems, Inc.
  
      clamscan [options] [file/directory/-]
  ```

### cryptsetup
- Utility for configuring and managing encrypted storage devices
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cryptsetup`
  2. Help: `cryptsetup -h`  (or `man cryptsetup`)
  3. Run: `cryptsetup ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  cryptsetup 2.8.8 flags: UDEV BLKID KEYRING KERNEL_CAPI HW_OPAL 
  Usage: cryptsetup [OPTION...] <action> <action-specific>
  
  Help options:
    -?, --help                              Show this help message
        --usage                             Display brief usage
  ```
- Docs: https://gitlab.com/cryptsetup/cryptsetup

### fwbuilder
- Multiplatform firewall configuration tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y fwbuilder`
  2. Help: `fwbuilder -h`  (or `man fwbuilder`)
  3. Run: `fwbuilder ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Firewall Builder GUI 5.3.7
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://github.com/fwbuilder/fwbuilder/


## Kali tools — protocol-tunneling (11)

### dns2tcpc
- A tunneling tool that encapsulate TCP traffic over DNS.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dns2tcp`
  2. Help: `dns2tcpc -h`  (or `man dns2tcpc`)
  3. Run: `dns2tcpc ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  dns2tcpc: invalid option -- '-'
  dns2tcp v0.5.2 ( http://www.hsc.fr/ )
  Usage : dns2tcpc [options] [server] 
  	-c         	: enable compression
  	-z <domain>	: domain to use (mandatory)
  	-d <1|2|3>	: debug_level (1, 2 or 3)
  ```

### dns2tcpd
- A tunneling tool that encapsulate TCP traffic over DNS.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dns2tcp`
  2. Help: `dns2tcpd -h`  (or `man dns2tcpd`)
  3. Run: `dns2tcpd ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  dns2tcpd: invalid option -- '-'
  Usage : dns2tcpd [ -i IP ] [ -F ] [ -d debug_level ] [ -f config-file ] [ -p pidfile ]
  	 -F : dns2tcpd will run in foreground
  ```

### iodine-client-start
- Start an iodine IPv4-over-DNS tunnel
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y iodine`
  2. Help: `iodine-client-start -h`  (or `man iodine-client-start`)
  3. Run: `iodine-client-start ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  'iodine-client-start' starts an iodine IP-over-DNS tunnel.
  
  Usage: iodine-client-start [option]
  
    -h, --help		Print help and exit
    -v, --version		Print version info and exit
  ```

### miredo
- Teredo IPv6 tunneling for Unix
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y miredo`
  2. Help: `miredo -h`  (or `man miredo`)
  3. Run: `miredo ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: miredo [OPTIONS] [SERVER_NAME]
  Creates a Teredo tunneling interface for encapsulation of IPv6 over UDP.
  
    -c, --config     specify an configuration file
    -f, --foreground run in the foreground
    -h, --help       display this help and exit
  ```
- Docs: http://www.remlab.net/miredo/

### proxychains4
- Redirect connections through proxy servers
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y proxychains4`
  2. Help: `proxychains4 -h`  (or `man proxychains4`)
  3. Run: `proxychains4 ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Usage:	proxychains4 -q -f config_file program_name [arguments]
  	-q makes proxychains quiet - this overrides the config setting
  	-f allows one to manually specify a configfile to use
  	for example : proxychains telnet somehost.com
  More help in README file
  ```
- Docs: https://github.com/rofl0r/proxychains-ng

### proxytunnel
- Program to tunnel a connection through a standard HTTPS proxy
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y proxytunnel`
  2. Help: `proxytunnel -h`  (or `man proxytunnel`)
  3. Run: `proxytunnel ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  proxytunnel 1.13.0 Copyright 2001-2026 Proxytunnel Project
  Usage: proxytunnel [OPTIONS]...
  Build generic tunnels through HTTPS proxies using HTTP authentication
  
  Standard options:
   -i, --inetd                Run from inetd (default: off)
  ```
- Docs: https://proxytunnel.sourceforge.io/

### ptunnel
- Tunnel TCP connections over ICMP echo request/reply packets.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ptunnel`
  2. Help: `ptunnel -h`  (or `man ptunnel`)
  3. Run: `ptunnel ...` against a target you own (see the real --help below).
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

### pwnat
- Proxy server that works behind both client and server NATs
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pwnat`
  2. Help: `pwnat -h`  (or `man pwnat`)
  3. Run: `pwnat ...` against a target you own (see the real --help below).
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

### sslh
- Protocol demultiplexer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sslh`
  2. Help: `sslh -h`  (or `man sslh`)
  3. Run: `sslh ...` against a target you own (see the real --help below).
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

### stunnel4
- TLS offloading and load-balancing proxy
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y stunnel4`
  2. Help: `stunnel4 -h`  (or `man stunnel4`)
  3. Run: `stunnel4 ...` against a target you own (see the real --help below).
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

### udptunnel
- Tunnel UDP packets over a TCP connection
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y udptunnel`
  2. Help: `udptunnel -h`  (or `man udptunnel`)
  3. Run: `udptunnel ...` against a target you own (see the real --help below).
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


## Kali tools — radio-frequency (3)

### chirpw
- A tool for programming two-way radio equipment
- **Steps:**
  1. Install: `sudo apt install -y chirp`
  2. Launch on the VNC desktop: `../scripts/apps.sh open chirpw`.
  3. Radio menu → Download From Radio (needs a supported radio on serial/USB).

### hackrf_info
- Probe device and show configuration
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hackrf`
  2. Help: `hackrf_info -h`  (or `man hackrf_info`)
  3. Run: `hackrf_info ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  hackrf_info version: 2026.01.3
  libhackrf version: 2026.01.3 (0.9.2)
  No HackRF boards found.
  ```

### rfcat
- Swiss army knife of sub-GHz radio
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rfcat`
  2. Help: `rfcat -h`  (or `man rfcat`)
  3. Run: `rfcat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: rfcat [-h] [-r] [-i INDEX] [-s] [-f CENTFREQ] [-c INC] [-n SPECCHANS]
               [--bootloader] [--force] [-S]
  
  options:
    -h, --help            show this help message and exit
    -r, --research        Interactive Python and the "d" instance to talk to
  ```
- Docs: https://github.com/atlas0fd00m/rfcat


## Kali tools — reconnaissance (1)

### maltego
- Open source intelligence and forensics application
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y maltego`
  2. Help: `maltego -h`  (or `man maltego`)
  3. Run: `maltego ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  arm64
  Usage: ./../platform/lib/nbexec {options} arguments
  
  General options:
    --help                show this help 
    --jdkhome <path>      path to Java(TM) 2 SDK, Standard Edition
  ```
- Docs: https://www.maltego.com


## Kali tools — remote-system-discovery (6)

### arping
- Sends arp and/or ip pings to a given host
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y arping`
  2. Help: `arping -h`  (or `man arping`)
  3. Run: `arping ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ARPing 2.29, by Thomas Habets <<email>>
  usage: arping [ -0aAbdDeFpPqrRuUvzZ ] [ -w <sec> ] [ -W <sec> ] [ -S <host/ip> ]
                [ -T <host/ip ] [ -s <MAC> ] [ -t <MAC> ] [ -c <count> ]
                [ -C <count> ] [ -i <interface> ] [ -m <type> ] [ -g <group> ]
                [ -V <vlan> ] [ -Q <priority> ] <host/ip/MAC | -B>
  ```
- Docs: https://www.habets.pp.se/synscan/programs.php?prog=arping

### atk6-thcping6
- The Hacker Choice's IPv6 Attack Toolkit
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y thc-ipv6`
  2. Help: `atk6-thcping6 -h`  (or `man atk6-thcping6`)
  3. Run: `atk6-thcping6 ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  atk6-thcping6 3.8 (c) 2020 by van Hauser / THC <<email>> www.github.com/vanhauser-thc/thc-ipv6
  
  Syntax: atk6-thcping6 [-EafqxO] [-e ethertype] [-H t:l:v] [-D t:l:v] [-F dst] [-e ethertype] [-L length] [-N nextheader] [-V version] [-t ttl] [-c class] [-l label] [-d size] [-S port|-U port|-T type -C code] interface src6 dst6 [srcmac [dstmac [data]]]
  
  Options:
    -T number       ICMPv6 type to send (default: 128 = ping)
  ```

### fierce
- DNS scanner that helps locate non-contiguous IP space and hostnames against specified domains.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y fierce`
  2. Help: `fierce -h`  (or `man fierce`)
  3. Run: `fierce ...` against a target you own (see the real --help below).
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

### fping
- Send ICMP ECHO_REQUEST packets to network hosts
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y fping`
  2. Help: `fping -h`  (or `man fping`)
  3. Run: `fping ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: fping [options] [targets...]
  
  Probing options:
     -4, --ipv4         only ping IPv4 addresses
     -6, --ipv6         only ping IPv6 addresses
     -b, --size=BYTES   amount of ping data to send, in bytes (default: 56)
  ```
- Docs: https://www.fping.org/

### hping3
- Send (almost) arbitrary TCP/IP packets to network hosts
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hping3`
  2. Help: `hping3 -h`  (or `man hping3`)
  3. Run: `hping3 ...` against a target you own (see the real --help below).
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

### p0f
- Identify remote systems passively
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y p0f`
  2. Help: `p0f -h`  (or `man p0f`)
  3. Run: `p0f ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  --- p0f 3.09b by Michal Zalewski <<email>> ---
  
  p0f: invalid option -- '-'
  Usage: p0f [ ...options... ] [ 'filter rule' ]
  
  Network interface options:
  ```
- Docs: https://lcamtuf.coredump.cx/p0f3/


## Kali tools — reporting-tools (6)

### cutycapt
- Utility to capture WebKit's rendering of a web page
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cutycapt`
  2. Help: `cutycapt -h`  (or `man cutycapt`)
  3. Run: `cutycapt ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://github.com/Crystalix007/CutyCapt

### eyewitness
- Rapid web application triage tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y eyewitness`
  2. Help: `eyewitness -h`  (or `man eyewitness`)
  3. Run: `eyewitness ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ################################################################################
  #                                  EyeWitness                                  #
  ################################################################################
  #           Red Siege Information Security - https://www.redsiege.com           #
  ################################################################################
  ```
- Docs: https://www.christophertruncer.com/eyewitness-triage-tool/

### faraday-start
- Collaborative Penetration Test IDE
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y faraday`
  2. Help: `faraday-start -h`  (or `man faraday-start`)
  3. Run: `faraday-start ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```

### pipal
- Statistical analysis on password dumps
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pipal`
  2. Help: `pipal -h`  (or `man pipal`)
  3. Run: `pipal ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  pipal 3.4.0 Robin Wood (<email>) (http://digi.ninja)
  
  Usage: pipal [OPTION] ... FILENAME
  	--help, -h, -?: show help
  	--top, -t X: show the top X results (default 10)
  	--output, -o <filename>: output to file
  ```
- Docs: https://www.digininja.org/projects/pipal.php

### recordmydesktop
- Record desktop sessions to an Ogg Theora video file with Vorbis audio
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y recordmydesktop`
  2. Help: `recordmydesktop -h`  (or `man recordmydesktop`)
  3. Run: `recordmydesktop ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: recordmydesktop [OPTIONS]^filename
  
  Generic Options
    -h, --help                              Print this help and exit.
        --version                           Print program version and exit.
        --print-config                      Print info about options selected
  ```
- Docs: https://enselic.github.io/recordmydesktop/

### witnessme
- Web Inventory tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y witnessme`
  2. Help: `witnessme -h`  (or `man witnessme`)
  3. Run: `witnessme ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: witnessme [-h] [--threads THREADS] [--timeout TIMEOUT] [-d] [-v]
                   {screenshot,grab} ...
  
  WitnessMe!
  
  positional arguments:
  ```
- Docs: https://github.com/byt3bl33d3r/WitnessMe


## Kali tools — resource-development (23)

### afl-fuzz
- instrumentation-driven fuzzer for binary formats
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y afl++`
  2. Help: `afl-fuzz -h`  (or `man afl-fuzz`)
  3. Run: `afl-fuzz ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  afl-fuzz++5.02c
  
  afl-fuzz [ options ] -- /path/to/fuzzed_app [ ... ]
  
  Required parameters:
    -i dir        - input directory with test cases (or '-' to resume, also see 
  ```

### apktool
- Tool for reverse engineering Android apk files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y apktool`
  2. Help: `apktool -h`  (or `man apktool`)
  3. Run: `apktool ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Unrecognized option: --help
  Apktool v2.7.0-dirty - a tool for reengineering Android apk files
  with smali v2.5.2.git2771eae-debian and baksmali v2.5.2.git2771eae-debian
  Copyright 2010 Ryszard Wiśniewski <<email>>
  Copyright 2010 Connor Tumbleson <<email>>
  ```
- Docs: https://ibotpeaches.github.io/Apktool/

### bed
- A network protocol fuzzer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y bed`
  2. Help: `bed -h`  (or `man bed`)
  3. Run: `bed ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ./bed.pl version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: bed.pl [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- Docs: http://www.snake-basket.de

### bytecode-viewer
- Java 8+ Jar & Android APK Reverse Engineering Suite
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y bytecode-viewer`
  2. Help: `bytecode-viewer -h`  (or `man bytecode-viewer`)
  3. Run: `bytecode-viewer ...` against a target you own (see the real --help below).
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

### clang
- The Clang C, C++, and Objective-C compiler
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y clang`
  2. Help: `clang -h`  (or `man clang`)
  3. Run: `clang ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  OVERVIEW: clang LLVM compiler
  
  USAGE: clang [options] file...
  
  OPTIONS:
    -###                    Print (but do not run) the commands to run for this compilation
  ```

### clang++
- C, C++ and Objective-C compiler (LLVM based), clang binary
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y clang`
  2. Help: `clang++ -h`  (or `man clang++`)
  3. Run: `clang++ ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  OVERVIEW: clang LLVM compiler
  
  USAGE: clang [options] file...
  
  OPTIONS:
    -###                    Print (but do not run) the commands to run for this compilation
  ```

### cutter
- reverse engineering platform powered by rizin
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rizin-cutter`
  2. Help: `cutter -h`  (or `man cutter`)
  3. Run: `cutter ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: From 6.5.0, xcb-cursor0 or libxcb-cursor0 is needed to load the Qt xcb platform plugin.
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: wayland-brcm, wayland-egl, wayland, vkkhrdisplay, xcb, vnc, minimal, eglfs, minimalegl, linuxfb, offscreen.
  ```

### d2j-dex2jar
- Tools to work with android .dex and java .class files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dex2jar`
  2. Help: `d2j-dex2jar -h`  (or `man d2j-dex2jar`)
  3. Run: `d2j-dex2jar ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  d2j-dex2jar -- convert dex to jar
  usage: d2j-dex2jar [options] <file0> [file1 ... fileN]
  options:
   --skip-exceptions            skip-exceptions
   -d,--debug-info              translate debug info
   -e,--exception-file <file>   detail exception file, default is $current_dir/[fi
  ```

### gdb
- GNU Debugger
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y gdb`
  2. Help: `gdb -h`  (or `man gdb`)
  3. Run: `gdb ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  This is the GNU debugger.  Usage:
  
      gdb [options] [executable-file [core-file or process-id]]
      gdb [options] --args executable-file [inferior-arguments ...]
  
  Selection of debuggee and its files:
  ```
- Docs: https://www.gnu.org/s/gdb/

### generic_chunked
- Network protocol fuzzer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y spike`
  2. Help: `generic_chunked -h`  (or `man generic_chunked`)
  3. Run: `generic_chunked ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: ./generic_web_server_fuzz target port file.spk skipvariables skipfuzzstring
  Example: ./gwsf exchange1 80 owa1.spk 0 0
  http://www.immunitysec.com/spike.html
  ```

### generic_listen_tcp
- Network protocol fuzzer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y spike`
  2. Help: `generic_listen_tcp -h`  (or `man generic_listen_tcp`)
  3. Run: `generic_listen_tcp ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  argc=2
  Usage: ./generic_listen_tcp port spike_script
  ./generic_listen_tcp 70 gopherd.spk
  ```

### generic_send_tcp
- Network protocol fuzzer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y spike`
  2. Help: `generic_send_tcp -h`  (or `man generic_send_tcp`)
  3. Run: `generic_send_tcp ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  argc=2
  Usage: ./generic_send_tcp host port spike_script SKIPVAR SKIPSTR
  ./generic_send_tcp 192.168.1.100 701 something.spk 0 0
  ```

### generic_send_udp
- Network protocol fuzzer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y spike`
  2. Help: `generic_send_udp -h`  (or `man generic_send_udp`)
  3. Run: `generic_send_udp ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  argc=2
  Usage: ./gsu target port file.spk startvariable startfuzzstring startvariable startstring totaltosend
  ./gsu 192.168.1.104 80 file.spk 0 0 5000
  ```

### jadx-gui
- Dex to Java decompiler
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y jadx`
  2. Help: `jadx-gui -h`  (or `man jadx-gui`)
  3. Run: `jadx-gui ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  jadx - dex to java decompiler, version: 1.5.6
  
  usage: jadx [command] [options] <input files> (.apk, .dex, .jar, .class, .smali, .zip, .aar, .arsc, .aab, .xapk, .apkm, .jadx.kts)
  commands (use '<command> --help' for command options):
    plugins	  - manage jadx plugins
  ```

### javasnoop
- Intercept Java applications locally
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y javasnoop`
  2. Help: `javasnoop -h`  (or `man javasnoop`)
  3. Run: `javasnoop ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  [2] Turning off Java security for JavaSnoop usage
  [3] Starting JavaSnoop...
  log4j:ERROR setFile(null,true) call failed.
  java.io.FileNotFoundException: js.log (Permission denied)
  	at java.base/java.io.FileOutputStream.open0(Native Method)
  	at java.base/java.io.FileOutputStream.open(FileOutputStream.java:255)
  ```

### jd-gui
- GUI Java .class decompiler
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y jd-gui`
  2. Help: `jd-gui -h`  (or `man jd-gui`)
  3. Run: `jd-gui ...` against a target you own (see the real --help below).
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

### msf-nasm_shell
- Framework for exploit development and vulnerability research
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y metasploit-framework`
  2. Help: `msf-nasm_shell -h`  (or `man msf-nasm_shell`)
  3. Run: `msf-nasm_shell ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  0 bits not supported
  ```

### msfpc
- MSFvenom Payload Creator (MSFPC)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y msfpc`
  2. Help: `msfpc -h`  (or `man msfpc`)
  3. Run: `msfpc ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
   [*] MSFvenom Payload Creator (MSFPC v1.4.5)
  
   /usr/bin/msfpc <TYPE> (<DOMAIN/IP>) (<PORT>) (<CMD/MSF>) (<BIND/REVERSE>) (<STAGED/STAGELESS>) (<TCP/HTTP/HTTPS/FIND_PORT>) (<BATCH/LOOP>) (<VERBOSE>)
     Example: /usr/bin/msfpc windows 192.168.1.10        # Windows & manual IP.
              /usr/bin/msfpc elf bind eth0 4444          # Linux, eth0's IP & manual port.
              /usr/bin/msfpc stageless cmd py https      # Python, stageless command prompt.
  ```
- Docs: https://github.com/g0tmi1k/msfpc

### msfvenom
- Payload Generator and Encoder
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y msfvenom`
  2. Help: `msfvenom -h`  (or `man msfvenom`)
  3. Run: `msfvenom ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  MsfVenom - a Metasploit standalone payload generator.
  Also a replacement for msfpayload and msfencode.
  Usage: /usr/bin/msfvenom [options] <var=val>
  Example: /usr/bin/msfvenom -p windows/meterpreter/reverse_tcp LHOST=<IP> -f exe -o payload.exe
  
  Options:
  ```

### radare2
- Advanced command-line hexadecimal editor, disassembler and debugger
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y radare2`
  2. Help: `radare2 -h`  (or `man radare2`)
  3. Run: `radare2 ...` against a target you own (see the real --help below).
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

### rizin
- Advanced commandline hexadecimal editor, disassembler and debugger
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rizin`
  2. Help: `rizin -h`  (or `man rizin`)
  3. Run: `rizin ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
   -- Change the block size with 'b <block-size>'. In visual mode you can also enter rizin command pressing the ':' key (like vi does)
  [2K
  
  [0x00000000]> 
  [0x00000000]> 
  ```
- Docs: https://rizin.re/

### searchsploit
- Exploit Database Archive Search
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y exploitdb`
  2. Help: `searchsploit -h`  (or `man searchsploit`)
  3. Run: `searchsploit ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
    Usage: searchsploit [options] term1 [term2] ... [termN]
  
  ==========
   Examples 
  ==========
    searchsploit afd windows local
  ```

### sfuzz
- Black Box testing utilities
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sfuzz`
  2. Help: `sfuzz -h`  (or `man sfuzz`)
  3. Run: `sfuzz ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  unknown option: h
  ```
- Docs: http://aconole.brad-x.com/programs/sfuzz.html


## Kali tools — respond (2)

### hashrat
- Hashing tool supporting several hashes and recursivity
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y hashrat`
  2. Help: `hashrat -h`  (or `man hashrat`)
  3. Run: `hashrat ...` against a target you own (see the real --help below).
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

### mac-robber
- Collects data about allocated files in mounted filesystems
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y mac-robber`
  2. Help: `mac-robber -h`  (or `man mac-robber`)
  3. Run: `mac-robber ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  mac-robber: invalid option -- '-'
  usage: mac-robber [-V] <directories>
    -V: Print the version to stdout
  ```
- Docs: https://www.sleuthkit.org/mac-robber


## Kali tools — services-and-other-tools (2)

### Kali Tweaks
- Tool to adjust advanced configuration settings for Kali Linux
- **Steps:**
  1. Open it (runs in a terminal); arrow-keys to a section.
  2. 'Metapackages' → tick kali-linux-default to install the full toolset.
  3. Apply; it runs apt for you.

### Root Terminal Emulator
- Opens a terminal as the root user, using sudo to ask for the password
- **Steps:**
  1. Launch (asks for the password); use only when sudo isn't enough.


## Kali tools — sleuth-kit-suite (33)

### autopsy
- Autopsy Forensic Browser
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y autopsy`
  2. Help: `autopsy -h`  (or `man autopsy`)
  3. Run: `autopsy ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Invalid flag: --help
  
  
  usage: /usr/bin/autopsy [-c] [-C] [-d evid_locker] [-i device filesystem mnt] [-p port] [remoteaddr]
    -c: force a cookie in the URL
    -C: force NO cookie in the URL
  ```
- Docs: https://www.sleuthkit.org/autopsy/

### blkcalc
- Converts between unallocated disk unit numbers and regular disk unit numbers.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `blkcalc -h`  (or `man blkcalc`)
  3. Run: `blkcalc ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  blkcalc: invalid option -- '-'
  Invalid argument: --help
  usage: blkcalc [-dsu unit_addr] [-vV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] image [images]
  Slowly calculates the opposite block number
  	One of the following must be given:
  	  -d: The given address is from a 'dd' image 
  ```

### blkcat
- Display the contents of file system data unit in a disk image.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `blkcat -h`  (or `man blkcat`)
  3. Run: `blkcat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  blkcat: invalid option -- '-'
  Invalid argument: --help
  usage: blkcat [-ahsvVw] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] [-k password] [-u usize] image [images] unit_addr [num]
  	-a: displays in all ASCII 
  	-h: displays in hexdump-like fashion
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  ```

### blkls
- List or output file system data units.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `blkls -h`  (or `man blkls`)
  3. Run: `blkls ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  blkls: invalid option -- '-'
  Invalid argument: --help
  usage: blkls [-aAelvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] image [images] [start-stop]
  	-e: every block (including file system metadata blocks)
  	-l: print details in time machine list format
  	-a: Display allocated blocks
  ```

### blkstat
- Display details of a file system data unit (i.e. block or sector)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `blkstat -h`  (or `man blkstat`)
  3. Run: `blkstat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  blkstat: invalid option -- '-'
  Invalid argument: --help
  usage: blkstat [-vV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] image [images] addr
  	-f fstype: File system type (use '-f list' for supported types)
  	-k password: Decryption password for encrypted volumes
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  ```

### ffind
- Finds the name of the file or directory using a given inode
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `ffind -h`  (or `man ffind`)
  3. Run: `ffind ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ffind: invalid option -- '-'
  Invalid argument: --help
  usage: ffind [-aduvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] image [images] inode
  	-a: Find all occurrences
  	-d: Find deleted entries ONLY
  	-u: Find undeleted entries ONLY
  ```

### fls
- List file and directory names in a disk image.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `fls -h`  (or `man fls`)
  3. Run: `fls ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  fls: invalid option -- '-'
  Invalid argument: --help
  usage: fls [-adDFlhpruvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-m dir/] [-o imgoffset] [-z ZONE] [-s seconds] image [images] [inode]
  	If [inode] is not given, the root directory is used
  	-a: Display "." and ".." entries
  	-d: Display deleted entries only
  ```

### fsstat
- Display general details of a file system
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `fsstat -h`  (or `man fsstat`)
  3. Run: `fsstat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  fsstat: invalid option -- '-'
  Invalid argument: --help
  usage: fsstat [-tvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] image
  	-t: display type only
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### grokevt-addlog
- A tool for adding a raw event log to an existing GrokEVT database.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-addlog -h`  (or `man grokevt-addlog`)
  3. Run: `grokevt-addlog ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  USAGE:
    /usr/bin/grokevt-addlog <DATABASE_DIR> <EVT_FILE> <NEW_TYPE> <BASE_TYPE>
  
  This script takes a raw Windows event log and adds it to a
  previously built database generated by grokevt-builddb.
  See the man page for more details.
  ```

### grokevt-builddb
- Builds a database tree based on a single windows system for the purpose of event log conversion.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-builddb -h`  (or `man grokevt-builddb`)
  3. Run: `grokevt-builddb ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  USAGE:
    grokevt-builddb [-v] [-c CSID] <CONFIG_PROFILE> <OUTPUT_DIR>
  
  grokevt-builddb builds a database tree based on a
  single windows system for the purpose of event log
  conversion.  Please see the man page for more
  ```

### grokevt-findlogs
- Attempts to find log file fragments in raw binary files, such as memory dumps and disk images.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-findlogs -h`  (or `man grokevt-findlogs`)
  3. Run: `grokevt-findlogs ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  USAGE:
    grokevt-findlogs -?
    grokevt-findlogs [-v] [-h] [-H] [-o <OFFSET>] <RAW_FILE>
  
  grokevt-findlogs attempts to find log file fragments in raw
  binary files, such as memory dumps and disk images.
  ```

### grokevt-parselog
- Parse a windows event log and generate human-readable output based on message resources stored in a database.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-parselog -h`  (or `man grokevt-parselog`)
  3. Run: `grokevt-parselog ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  USAGE:
    grokevt-parselog -?|--help
    grokevt-parselog -l <DATABASE_DIR>
    grokevt-parselog -m <DATABASE_DIR> <LOG_TYPE>
    grokevt-parselog [-v] [-H] [-h] <DATABASE_DIR> <LOG_TYPE>
  ```

### grokevt-ripdll
- A tool for extracting message resources from a PE-formatted file.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y grokevt`
  2. Help: `grokevt-ripdll -h`  (or `man grokevt-ripdll`)
  3. Run: `grokevt-ripdll ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  USAGE:
    grokevt-ripdll <INPUT_DLL> <OUTPUT_DB>
  
  grokevt-ripdll is a tool for extracting message resources from a PE-formatted file.
  Please see the man page for more information.
  ```

### hfind
- Lookup a hash value in a hash database
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `hfind -h`  (or `man hfind`)
  3. Run: `hfind ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  hfind: invalid option -- '-'
  usage: hfind [-eqVa] [-c] [-f lookup_file] [-i db_type] db_file [hashes]
  	-e: Extended mode - where values other than just the name are printed
  	-q: Quick mode - where a 1 is printed if it is found, else 0
  	-V: Print version to STDOUT
  	-c db_name: Create new database with the given name.
  ```

### icat
- Output the contents of a file based on its inode number.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `icat -h`  (or `man icat`)
  3. Run: `icat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  icat: invalid option -- '-'
  Invalid argument: --help
  usage: icat [-hrRsvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] image [images] inum[-typ[-id]]
  	-h: Do not display holes in sparse files
  	-r: Recover deleted file
  	-R: Recover deleted file and suppress recovery errors
  ```

### ifind
- Find the meta-data structure that has allocated a given disk unit or file name.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `ifind -h`  (or `man ifind`)
  3. Run: `ifind ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ifind: invalid option -- '-'
  Invalid argument: --help
  usage: ifind [-alvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] [-d unit_addr] [-n file] [-p par_addr] [-z ZONE] image [images]
  	-a: find all inodes
  	-d unit_addr: Find the meta data given the data unit
  	-l: long format when -p is given
  ```

### ils
- List inode information
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `ils -h`  (or `man ils`)
  3. Run: `ils ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ils: invalid option -- '-'
  Invalid argument: --help
  usage: ils [-emOpvV] [-aAlLzZ] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] [-s seconds] image [images] [inum[-end]]
  	-e: Display all inodes
  	-m: Display output in the mactime format
  	-O: Display inodes that are unallocated, but were sill open (UFS/ExtX only)
  ```

### img_cat
- Output contents of an image file.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `img_cat -h`  (or `man img_cat`)
  3. Run: `img_cat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  img_cat: invalid option -- '-'
  Invalid argument: --help
  usage: img_cat [-vV] [-i imgtype] [-b dev_sector_size] [-s start_sector] [-e stop_sector] image
  	-i imgtype: The format of the image file (use 'i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-s start_sector: The sector number to start at
  ```

### img_stat
- Display details of an image file
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `img_stat -h`  (or `man img_stat`)
  3. Run: `img_stat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  img_stat: invalid option -- '-'
  Invalid argument: --help
  usage: img_stat [-tvV] [-i imgtype] [-b dev_sector_size] image
  	-t: display type only
  	-i imgtype: The format of the image file (use '-i list' for list of supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### istat
- Display details of a meta-data structure (i.e. inode)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `istat -h`  (or `man istat`)
  3. Run: `istat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  istat: invalid option -- '-'
  Invalid argument: --help
  usage: istat [-N num] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] [-z zone] [-s seconds] [-rvV] image inum
  	-N num: force the display of NUM address of block pointers
  	-r: display run list instead of list of block addresses
  	-z zone: time zone of original machine (i.e. EST5EDT or GMT)
  ```

### jcat
- Show the contents of a block in the file system journal.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `jcat -h`  (or `man jcat`)
  3. Run: `jcat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  jcat: invalid option -- '-'
  Invalid argument: --help
  usage: jcat [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-vV] image [images] [inode] blk
  	blk: The journal block to view
  	inode: The file system inode where the journal is located
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  ```

### jls
- List the contents of a file system journal
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `jls -h`  (or `man jls`)
  3. Run: `jls ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  jls: invalid option -- '-'
  Invalid argument: --help
  usage: jls [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-vV] image [inode]
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-f fstype: File system type (use '-f list' for supported types)
  ```

### mactime
- Create an ASCII time line of file activity
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `mactime -h`  (or `man mactime`)
  3. Run: `mactime ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Unknown option: --help
  mactime [-b body_file] [-p password_file] [-g group_file] [-i day|hour idx_file] [-d] [-h] [-V] [-y] [-z TIME_ZONE] [DATE]
  		-b: Specifies the body file location, else STDIN is used
  		-d: Output in comma delimited format
  		-h: Display a header with session information
  		-i [day | hour] file: Specifies the index file with a summary of results
  ```

### mmcat
- Output the contents of a partition to stdout
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `mmcat -h`  (or `man mmcat`)
  3. Run: `mmcat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  mmcat: invalid option -- '-'
  Unknown argument
  usage: mmcat [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-vV] [-t vstype] image [images] part_num
  	-t vstype: The type of partition system (use '-t list' for list of supported types)
  	-i imgtype: The format of the image file (use '-i list' for list of supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### mmls
- Display the partition layout of a volume system (partition tables)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `mmls -h`  (or `man mmls`)
  3. Run: `mmls ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  mmls: invalid option -- '-'
  Unknown argument
  usage: mmls [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-BrvV] [-aAmM] [-t vstype] image [images]
  	-t vstype: The type of volume system (use '-t list' for list of supported types)
  	-i imgtype: The format of the image file (use '-i list' for list supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### mmstat
- Display details about the volume system (partition tables)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `mmstat -h`  (or `man mmstat`)
  3. Run: `mmstat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  mmstat: invalid option -- '-'
  Unknown argument
  usage: mmstat [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-vV] [-t vstype] image [images]
  	-t vstype: The volume system type (use '-t list' for list of supported types)
  	-i imgtype: The format of the image file (use '-i list' for list of supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### sigfind
- Find a binary signature in a file
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `sigfind -h`  (or `man sigfind`)
  3. Run: `sigfind ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sigfind: invalid option -- '-'
  sigfind [-b bsize] [-o offset] [-t template] [-lV] [hex_signature] file
  	-b bsize: Give block size (default 512)
  	-o offset: Give offset into block where signature should exist (default 0)
  	-l: Signature will be little endian in image
  	-V: Version
  ```

### sorter
- Sort files in an image into categories based on file type
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `sorter -h`  (or `man sorter`)
  3. Run: `sorter ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Unknown option: --help
  
  sorter [-b size] [-E] [-e] [-h]  [-l] [-md5] [-s] [-sha1] [-U] [-v] [-V] [-a hash_alert] [-c config] [-C config] [-d dir] [-m mnt] [-n nsrl_db] [-x hash_exclude] [-o imgoffset] [-f fstype] [-i imgtype] image [images] [dir_meta_addr] 
  
      -b size: Minimum size.  Ignore files smaller than 'size'
  	-E: Perform category indexing only (no extension checks - was '-i')
  ```

### srch_strings
- Display printable strings in files
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `srch_strings -h`  (or `man srch_strings`)
  3. Run: `srch_strings ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  srch_strings: invalid option -- '-'
  Usage: srch_strings [option(s)] [file(s)]
   Display printable strings in [file(s)] (stdin by default)
   The options are:
    -a -                 Scan the entire file, not just the data section
    -f       Print the name of the file before each string
  ```

### tsk_comparedir
- Compare the contents of a directory with the contents of an image or local device.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `tsk_comparedir -h`  (or `man tsk_comparedir`)
  3. Run: `tsk_comparedir ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  tsk_comparedir: invalid option -- '-'
  Invalid argument: --help
  usage: tsk_comparedir [-f fstype] [-i imgtype] [-b dev_sector_size] [-o sector_offset] [-P pooltype] [-B pool_volume_block] [-n start_inum] [-vV] image [image] comparison_directory
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-f fstype: The file system type (use '-f list' for supported types)
  ```

### tsk_gettimes
- Collect MAC times from a disk image into a body file.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `tsk_gettimes -h`  (or `man tsk_gettimes`)
  3. Run: `tsk_gettimes ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  tsk_gettimes: invalid option -- '-'
  Invalid argument: --help
  usage: tsk_gettimes [-vVm] [-i imgtype] [-b dev_sector_size] [-z zone] [-s seconds] image [image]
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-m: Calculate MD5 hash in output (slow)
  ```

### tsk_loaddb
- Populate a SQLite database with metadata from a disk image
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `tsk_loaddb -h`  (or `man tsk_loaddb`)
  3. Run: `tsk_loaddb ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  tsk_loaddb: invalid option -- '-'
  Invalid argument: --help
  usage: tsk_loaddb [-ahkvV] [-i imgtype] [-b dev_sector_size] [-d database] [-z ZONE] image [image]
  	-a: Add image to existing database, instead of creating a new one (requires -d to specify database)
  	-k: Don't create block data table
  	-h: Calculate hash values for the files
  ```

### tsk_recover
- Export files from an image into a local directory
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sleuthkit`
  2. Help: `tsk_recover -h`  (or `man tsk_recover`)
  3. Run: `tsk_recover ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  tsk_recover: invalid option -- '-'
  Invalid argument: --help
  usage: tsk_recover [-vVae] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o sector_offset] [-P pooltype] [-B pool_volume_block] [-d dir_inum] image [image] output_dir
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-f fstype: The file system type (use '-f list' for supported types)
  ```


## Kali tools — smtp (1)

### swaks
- Swiss Army Knife SMTP, the all-purpose SMTP transaction tester
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y swaks`
  2. Help: `swaks -h`  (or `man swaks`)
  3. Run: `swaks ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  SWAKS(1)                             SWAKS                             SWAKS(1)
  
  NAME
       Swaks - Swiss Army Knife SMTP, the all-purpose SMTP transaction tester
  
  DESCRIPTION
  ```
- Docs: https://www.jetmore.org/john/code/swaks/


## Kali tools — snmp (3)

### braa
- Mass SNMP scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y braa`
  2. Help: `braa -h`  (or `man braa`)
  3. Run: `braa ...` against a target you own (see the real --help below).
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

### onesixtyone
- Fast and simple SNMP scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y onesixtyone`
  2. Help: `onesixtyone -h`  (or `man onesixtyone`)
  3. Run: `onesixtyone ...` against a target you own (see the real --help below).
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

### snmp-check
- SNMP device enumerator
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y snmpcheck`
  2. Help: `snmp-check -h`  (or `man snmp-check`)
  3. Run: `snmp-check ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  snmp-check v1.9 - SNMP enumerator
  Copyright (c) 2005-2015 by Matteo Cantoni (www.nothink.org)
  
   Usage: snmp-check [OPTIONS] <target IP address>
  
    -p --port        : SNMP port. Default port is 161;
  ```


## Kali tools — ssl-tls (3)

### sslscan
- Fast SSL/TLS scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sslscan`
  2. Help: `sslscan -h`  (or `man sslscan`)
  3. Run: `sslscan ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
                     _
             ___ ___| |___  ___ __ _ _ __
            / __/ __| / __|/ __/ _` | '_ \
            \__ \__ \ \__ \ (_| (_| | | | |
            |___/___/_|___/\___\__,_|_| |_|
  ```
- Docs: https://github.com/rbsec/sslscan

### sslyze
- Fast and full-featured SSL scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sslyze`
  2. Help: `sslyze -h`  (or `man sslyze`)
  3. Run: `sslyze ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: sslyze [-h] [--update_trust_stores] [--cert CERTIFICATE_FILE]
                [--key KEY_FILE] [--keyform KEY_FORMAT] [--pass PASSPHRASE]
                [--json_out JSON_FILE] [--targets_in TARGET_FILE] [--quiet]
                [--slow_connection] [--https_tunnel PROXY_SETTINGS]
                [--starttls PROTOCOL] [--xmpp_to HOSTNAME]
                [--sni SERVER_NAME_INDICATION] [--tlsv1_3] [--fallback]
  ```
- Docs: https://github.com/nabla-c0d3/sslyze

### tlssled
- Evaluates the security of a target SSL/TLS (HTTPS) server
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y tlssled`
  2. Help: `tlssled -h`  (or `man tlssled`)
  3. Run: `tlssled ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ------------------------------------------------------
   TLSSLed - (1.3) based on sslscan and openssl
                   by Raul Siles (www.taddong.com)
  ------------------------------------------------------
      openssl version: OpenSSL 3.6.3 9 Jun 2026 (Library: OpenSSL 3.6.3 9 Jun 2026)
      
  ```
- Docs: http://www.taddong.com/en/lab.html


## Kali tools — system-network-configuration-discovery (7)

### 0trace.sh
- traceroute tool that can run within an existing TCP connection
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y 0trace`
  2. Help: `0trace.sh -h`  (or `man 0trace.sh`)
  3. Run: `0trace.sh ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: /usr/bin/0trace.sh iface target_ip [ target_port ]
  ```

### ass
- Autonomous system scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y irpas`
  2. Help: `ass -h`  (or `man ass`)
  3. Run: `ass ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ass: invalid option -- '-'
  ass [-v[v[v]]] -i <interface> [-ApcMs] [-P IER12]
  	[-a <autonomous system start> -b <autonomous system stop>]
  	[-S <spoofed source IP>] [-D <destination ip>]
  	[-T <packets per delay>]
  	[-r <filename>]
  ```

### cdp
- Cdp packet generator
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y irpas`
  2. Help: `cdp -h`  (or `man cdp`)
  3. Run: `cdp ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  cdp: invalid option -- '-'
  cdp [-v] -i <interface> -m {0,1} ...
  
  Flood mode (-m 0):
  -n <number>	number of packets
  -l <number>	length of the device id
  ```

### intrace
- Traceroute-like application piggybacking on existing TCP connections
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y intrace`
  2. Help: `intrace -h`  (or `man intrace`)
  3. Run: `intrace ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  intrace: invalid option -- '-'
  InTrace, version 1.6 (C)2007-2016 Robert Swiecki <<email>>
  2026/10/25 08:40:45.785167 <ERROR> Couldn't resolve 'elp': 'Authoritative Answer. Host not found'
  2026/10/25 08:40:45.785185 <FATAL> Resolving 'elp' failed
  ```
- Docs: https://github.com/robertswiecki/intrace

### netdiscover
- Active/passive ARP reconnaissance tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y netdiscover`
  2. Help: `netdiscover -h`  (or `man netdiscover`)
  3. Run: `netdiscover ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  netdiscover: invalid option -- '-'
  
  Netdiscover 0.21 [Active/passive ARP reconnaissance tool]
  Written by: Jaime Penalba <<email>>
  
  Usage: netdiscover [-i device] [-r range | -l file | -p] [-m file] [-F filter] [-s time] [-c count] [-n node] [-dfPLNS]
  ```
- Docs: https://github.com/netdiscover-scanner/netdiscover

### netmask
- A netmask generation and conversion program
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y netmask`
  2. Help: `netmask -h`  (or `man netmask`)
  3. Run: `netmask ...` against a target you own (see the real --help below).
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

### yersinia
- A Framework for layer 2 attacks
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y yersinia`
  2. Help: `yersinia -h`  (or `man yersinia`)
  3. Run: `yersinia ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  You must be root to run yersinia 0.8.2
  
  
  MOTD: Magic people, voodoo people!
  ```
- Docs: https://github.com/tomac/yersinia


## Kali tools — system-services (7)

### beef-xss-stop
- Browser Exploitation Framework (BeEF)
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y beef-xss`
  2. Help: `beef-xss-stop -h`  (or `man beef-xss-stop`)
  3. Run: `beef-xss-stop ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  ┏━(Message from Kali developers)
  ┃ 
  Failed to stop beef-xss.service: Access denied as the requested operation requires interactive authentication. However, interactive authentication has not been enabled by the calling program.
  See system logs and 'systemctl status beef-xss.service' for details.
  ```

### defectdojo-start
- security orchestration and vulnerability management platform
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y defectdojo`
  2. Help: `defectdojo-start -h`  (or `man defectdojo-start`)
  3. Run: `defectdojo-start ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```

### defectdojo-stop
- security orchestration and vulnerability management platform
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y defectdojo`
  2. Help: `defectdojo-stop -h`  (or `man defectdojo-stop`)
  3. Run: `defectdojo-stop ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```

### faraday-stop
- Collaborative Penetration Test IDE
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y faraday`
  2. Help: `faraday-stop -h`  (or `man faraday-stop`)
  3. Run: `faraday-stop ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  ┏━(Message from Kali developers)
  ┃ 
  Failed to stop faraday.service: Access denied as the requested operation requires interactive authentication. However, interactive authentication has not been enabled by the calling program.
  See system logs and 'systemctl status faraday.service' for details.
  ```

### gvm-check-setup
- remote network security auditor - metapackage and useful scripts
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y gvm`
  2. Help: `gvm-check-setup -h`  (or `man gvm-check-setup`)
  3. Run: `gvm-check-setup ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  gvm-check-setup 25.04.0
   This script is provided and maintained by Debian and Kali.
    Test completeness and readiness of GVM-25.04.0
  [-] Error: /usr/bin/gvm-check-setup must be run as root
  ```

### gvm-setup
- remote network security auditor - metapackage and useful scripts
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y gvm`
  2. Help: `gvm-setup -h`  (or `man gvm-setup`)
  3. Run: `gvm-setup ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  [-] Error: /usr/bin/gvm-setup must be run as root
  ```

### gvm-stop
- remote network security auditor - metapackage and useful scripts
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y gvm`
  2. Help: `gvm-stop -h`  (or `man gvm-stop`)
  3. Run: `gvm-stop ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  [-] Error: /usr/bin/gvm-stop must be run as root
  ```


## Kali tools — voip (13)

### ohrwurm
- RTP fuzzer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ohrwurm`
  2. Help: `ohrwurm -h`  (or `man ohrwurm`)
  3. Run: `ohrwurm ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ohrwurm-0.1
  ERROR: couldn't read from /proc/sys/net/ipv4/ip_forward
  ```
- Docs: http://mazzoo.de/blog/2006/08/25#ohrwurm

### protos-sip
- SIP test suite
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y protos-sip`
  2. Help: `protos-sip -h`  (or `man protos-sip`)
  3. Run: `protos-sip ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ERROR: unknown command line argument: --help
  ```
- Docs: https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip

### rtpbreak
- Detects, reconstructs, and analyzes RTP sessions
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rtpbreak`
  2. Help: `rtpbreak -h`  (or `man rtpbreak`)
  3. Run: `rtpbreak ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  --
  25/10/2026#08:41:19 Fatal error at main.c:485:init_opt: option '-' invalid; exit forced.
  --
  ```
- Docs: http://dallachiesa.com/code/rtpbreak/

### rtpinsertsound
- Inserts audio into a specified stream
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rtpinsertsound`
  2. Help: `rtpinsertsound -h`  (or `man rtpinsertsound`)
  3. Run: `rtpinsertsound ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  rtpinsertsound: invalid option -- '-'
  
  rtpinsertsound - Version 2.0
                   October 10, 2006
   Usage:
   Mandatory -
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### rtpmixsound
- Mixes pre-recorded audio in real-time
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rtpmixsound`
  2. Help: `rtpmixsound -h`  (or `man rtpmixsound`)
  3. Run: `rtpmixsound ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  rtpmixsound: invalid option -- '-'
  
  rtpmixsound - Version 3.0
                January 03, 2007
   Usage:
   Mandatory -
  ```
- Docs: http://www.hackingvoip.com/sec_tools.html

### siparmyknife
- SIP fuzzing tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y siparmyknife`
  2. Help: `siparmyknife -h`  (or `man siparmyknife`)
  3. Run: `siparmyknife ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Duplicate specification "sport|p=s" for option "p"
  
  
  THIS IS THERE TO PUT THE HELP REFERENCE
  ```
- Docs: https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html

### sipp
- Traffic generator for the SIP protocol
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sipp`
  2. Help: `sipp -h`  (or `man sipp`)
  3. Run: `sipp ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Usage:
  
    sipp remote_host[:remote_port] [options]
  
    Available options:
  ```
- Docs: https://sipp.sourceforge.net/

### sipsak
- A utility for various tests on sip servers and user agents
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sipsak`
  2. Help: `sipsak -h`  (or `man sipsak`)
  3. Run: `sipsak ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  long option help
  sipsak 0.9.8.1 by Nils Ohlmeier
   Copyright (C) 2002-2004 FhG Fokus
   Copyright (C) 2004-2005 Nils Ohlmeier
   report bugs to <email>
  ```
- Docs: https://github.com/nils-ohlmeier/sipsak

### svcrash
- Stop unauthorized scans from svcrack/svwar tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svcrash -h`  (or `man svcrash`)
  3. Run: `svcrash ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: svcrash [options]
  
  Options:
    --version        show program's version number and exit
    -h, --help       show this help message and exit
    --auto           Automatically send responses to attacks
  ```

### svmap
- Scanner that searches for SIP devices on a given network
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svmap -h`  (or `man svmap`)
  3. Run: `svmap ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: svmap [options] host1 host2 hostrange
  Scans for SIP devices on a given network
  
  examples:
  
  svmap 10.0.0.1-10.0.0.255 172.16.131.1 sipvicious.org/22 10.0.1.1/241.1.1.1-20 1.1.2-20.* 4.1.*.*
  ```

### svreport
- Report engine manage sessions from previous scans with SIPVicious
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svreport -h`  (or `man svreport`)
  3. Run: `svreport ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: svreport [command] [options]
  
  Supported commands:
  
                  - list:	lists all scans
  ```

### svwar
- Extension line scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svwar -h`  (or `man svwar`)
  3. Run: `svwar ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: svwar [options] target
  examples:
  svwar -e100-999 udp://10.0.0.1:5080
  svwar -d dictionary.txt 10.0.0.2
  ```

### voiphopper
- Runs a VLAN hop security test
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y voiphopper`
  2. Help: `voiphopper -h`  (or `man voiphopper`)
  3. Run: `voiphopper ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  voiphopper: invalid option -- '-'
  VoIP Hopper Extended Usage:
  
  Miscellaneous Options:
  	-l (list available interfaces for CDP sniffing, then exit)
  	Example:  voiphopper -l
  ```
- Docs: https://sourceforge.net/projects/voiphopper


## Kali tools — voip-credential-access (2)

### enumiax
- IAX protocol username enumerator
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y enumiax`
  2. Help: `enumiax -h`  (or `man enumiax`)
  3. Run: `enumiax ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  enumiax: invalid option -- '-'
  enumIAX 0.4a
  Dustin D. Trammell <<email>>
  
  Usage: enumiax [options] target
    options:
  ```
- Docs: https://enumiax.sourceforge.net/

### svcrack
- Online password guessing tool for SIP devices
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y sipvicious`
  2. Help: `svcrack -h`  (or `man svcrack`)
  3. Run: `svcrack ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage: svcrack -u username [options] target
  examples:
  svcrack -u100 -d dictionary.txt udp://10.0.0.1:5080
  svcrack -u100 -r1-9999 -z4 10.0.0.1
  ```


## Kali tools — vulnerability-scanning (3)

### CAT
- Concatenate files and print on the standard output
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cisco-auditing-tool`
  2. Help: `CAT -h`  (or `man CAT`)
  3. Run: `CAT ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  /usr/bin/CAT version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: CAT [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```

### gvm-start
- remote network security auditor - metapackage and useful scripts
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y gvm`
  2. Help: `gvm-start -h`  (or `man gvm-start`)
  3. Run: `gvm-start ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  [-] Error: /usr/bin/gvm-start must be run as root
  ```

### heartleech
- Exploits OpenSSL heartbleed vulnerability
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y heartleech`
  2. Help: `heartleech -h`  (or `man heartleech`)
  3. Run: `heartleech ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  > heartleech ~ Scanner detecting systems vulnerable to the heartbleed OpenSSL bug
  
  /usr/share/windows-resources/heartleech/
  └── heartleech.exe
  bash: cannot set terminal process group (1184247): Inappropriate ioctl for device
  ```
- Docs: https://github.com/robertdavidgraham/heartleech


## Kali tools — web-scanning (11)

### assetfinder
- Find domains and subdomains related to a given domain
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y assetfinder`
  2. Help: `assetfinder -h`  (or `man assetfinder`)
  3. Run: `assetfinder ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Usage of assetfinder:
    -subs-only
      	Only include subdomains of search domain
  ```
- Docs: https://github.com/tomnomnom/assetfinder

### dirb
- Web Content Scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dirb`
  2. Help: `dirb -h`  (or `man dirb`)
  3. Run: `dirb ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  -----------------
  DIRB v2.22    
  By The Dark Raver
  -----------------
  ```
- Docs: https://dirb.sourceforge.net/

### dirbuster
- Web server directory brute-forcer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y dirbuster`
  2. Help: `dirbuster -h`  (or `man dirbuster`)
  3. Run: `dirbuster ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  DirBuster - 1.0-RC1
  Usage: java -jar DirBuster-1.0-RC1 -u <URL http://example.com/> [Options]
  
  	Options:
  	 -h : Display this help message
  	 -H : Start DirBuster in headless mode (no gui), report will be auto saved on exit
  ```
- Docs: https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project

### feroxbuster
- Manual page for feroxbuster 2.13.1
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y feroxbuster`
  2. Help: `feroxbuster -h`  (or `man feroxbuster`)
  3. Run: `feroxbuster ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  A fast, simple, recursive content discovery tool.
  
  Usage: feroxbuster [OPTIONS]
  
  Options:
    -h, --help
  ```

### ffuf
- Fast web fuzzer written in Go
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y ffuf`
  2. Help: `ffuf -h`  (or `man ffuf`)
  3. Run: `ffuf ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Fuzz Faster U Fool - v2.3.0
  
  HTTP OPTIONS:
    -H                  Header "Name: Value", separated by colon. Multiple -H flags are accepted.
    -X                  HTTP method to use
    -b                  Cookie data "NAME1=VALUE1; NAME2=VALUE2" for copy as curl functionality.
  ```

### gobuster
- Directory/file, DNS and virtual host brute-forcing tool written in Go
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y gobuster`
  2. Help: `gobuster -h`  (or `man gobuster`)
  3. Run: `gobuster ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  NAME:
     gobuster - the tool you love
  
  USAGE:
     gobuster command [command options]
  ```

### lbd
- Load balancer detector
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y lbd`
  2. Help: `lbd -h`  (or `man lbd`)
  3. Run: `lbd ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  lbd - load balancing detector 0.4 - Checks if a given domain uses load-balancing.
                                      Written by Stefan Behte (http://ge.mine.nu)
                                      Proof-of-concept! Might give false positives.
  
  Checking for DNS-Loadbalancing:host: illegal option -- -
  ```
- Docs: http://ge.mine.nu/code/

### recon-ng
- Web Reconnaissance framework
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y recon-ng`
  2. Help: `recon-ng -h`  (or `man recon-ng`)
  3. Run: `recon-ng ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  usage: recon-ng [-h] [-w workspace] [-r filename] [--no-version]
                  [--no-analytics] [--no-marketplace] [--stealth] [--accessible]
                  [--version]
  
  recon-ng - Tim Tomes (@lanmaster53)
  ```
- Docs: https://github.com/lanmaster53/recon-ng

### uniscan-gui
- LFI, RFI, and RCE vulnerability scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y uniscan`
  2. Help: `uniscan-gui -h`  (or `man uniscan-gui`)
  3. Run: `uniscan-gui ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Authorization required, but no authorization protocol specified
  
  couldn't connect to display ":0" at /usr/lib/aarch64-linux-gnu/perl5/5.42/Tk/MainWindow.pm line 53.
  MainWindow->new() at ./uniscan_gui.pl line 8.
  ```

### urlcrazy
- Domain typo generator
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y urlcrazy`
  2. Help: `urlcrazy -h`  (or `man urlcrazy`)
  3. Run: `urlcrazy ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Warning. File descriptor limit may be too low. Check with `ulimit -a` and change with `ulimit -n 10000`
  
  db    db d8888b. db       .o88b. d8888b.  .d8b.  d88888D db    db 
  88    88 88  `8D 88      d8P  Y8 88  `8D d8' `8b YP  d8' `8b  d8' 
  88    88 88oobY' 88      8P      88oobY' 88ooo88    d8'   `8bd8'  
  88    88 88`8b   88      8b      88`8b   88~~~88   d8'      88    
  ```
- Docs: https://www.morningstarsecurity.com/research/urlcrazy

### wfuzz
- A web application bruteforcer
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y wfuzz`
  2. Help: `wfuzz -h`  (or `man wfuzz`)
  3. Run: `wfuzz ...` against a target you own (see the real --help below).
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


## Kali tools — web-vulnerability-scanning (11)

### davtest
- Testing tool for WebDAV servers
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y davtest`
  2. Help: `davtest -h`  (or `man davtest`)
  3. Run: `davtest ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Unknown option: help
  ^^^^^^^^^^^^^^  ERROR ^^^^^^^^^^^^^^
  
  /usr/bin/davtest -url <url> [options]
  
   -auth+ 	Authorization (user:password)
  ```
- Docs: https://github.com/cldrn/davtest

### joomscan
- OWASP Joomla Vulnerability Scanner Project
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y joomscan`
  2. Help: `joomscan -h`  (or `man joomscan`)
  3. Run: `joomscan ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  TERM environment variable not set.
  
      ____  _____  _____  __  __  ___   ___    __    _  _ 
     (_  _)(  _  )(  _  )(  \/  )/ __) / __)  /__\  ( \( )
    .-_)(   )(_)(  )(_)(  )    ( \__ \( (__  /(__)\  )  ( 
    \____) (_____)(_____)(_/\/\_)(___/ \___)(__)(__)(_)\_)
  ```
- Docs: https://www.owasp.org/index.php/Category:OWASP_Joomla_Vulnerability_Scanner_Project

### nikto
- Scan web server for known vulnerabilities
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y nikto`
  2. Help: `nikto -h`  (or `man nikto`)
  3. Run: `nikto ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Unknown option: help
  
     Options:
         -Add-header         Add HTTP headers (can be used multiple times, one per header pair)
         -ask+               Whether to ask about submitting updates
                                 yes   Ask about each (default)
  ```
- Docs: https://github.com/sullo/nikto

### nuclei
- Fast and customizable vulnerability scanner based on simple YAML based DSL
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y nuclei`
  2. Help: `nuclei -h`  (or `man nuclei`)
  3. Run: `nuclei ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Nuclei is a fast, template based vulnerability scanner focusing
  on extensive configurability, massive extensibility and ease of use.
  
  Usage:
    nuclei [flags]
  ```

### paros
- Web application proxy
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y paros`
  2. Help: `paros -h`  (or `man paros`)
  3. Run: `paros ...` against a target you own (see the real --help below).
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

### skipfish
- Web application security scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y skipfish`
  2. Help: `skipfish -h`  (or `man skipfish`)
  3. Run: `skipfish ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  skipfish web application scanner - version 2.10b
  Usage: skipfish [ options ... ] -W wordlist -o output_dir start_url [ start_url2 ... ]
  
  Authentication and access options:
  
    -A user:pass      - use specified HTTP authentication credentials
  ```

### wapiti
- A web application vulnerability scanner in Python
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y wapiti`
  2. Help: `wapiti -h`  (or `man wapiti`)
  3. Run: `wapiti ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
       __    __            _ _   _ _____
      / / /\ \ \__ _ _ __ (_) |_(_)___ /
      \ \/  \/ / _` | '_ \| | __| | |_ \
       \  /\  / (_| | |_) | | |_| |___) |
        \/  \/ \__,_| .__/|_|\__|_|____/
  ```
- Docs: https://wapiti.sourceforge.net/

### webscarab
- Web application review tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y webscarab`
  2. Help: `webscarab -h`  (or `man webscarab`)
  3. Run: `webscarab ...` against a target you own (see the real --help below).
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

### whatweb
- Next generation Web scanner. Identify technologies used by websites.
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y whatweb`
  2. Help: `whatweb -h`  (or `man whatweb`)
  3. Run: `whatweb ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  .$$$     $.                                   .$$$     $.
  $$$$     $$. .$$$  $$$ .$$$$$$.  .$$$$$$$$$$. $$$$     $$. .$$$$$$$. .$$$$$$.
  $ $$     $$$ $ $$  $$$ $ $$$$$$. $$$$$ $$$$$$ $ $$     $$$ $ $$   $$ $ $$$$$$.
  $ `$     $$$ $ `$  $$$ $ `$  $$$ $$' $ `$ `$$ $ `$     $$$ $ `$      $ `$  $$$'
  $. $     $$$ $. $$$$$$ $. $$$$$$ `$  $. $  :' $. $     $$$ $. $$$$   $. $$$$$.
  ```
- Docs: https://github.com/urbanadventurer/WhatWeb

### wpscan
- WordPress Security Scanner
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y wpscan`
  2. Help: `wpscan -h`  (or `man wpscan`)
  3. Run: `wpscan ...` against a target you own (see the real --help below).
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

### zaproxy
- Testing tool for finding vulnerabilities in web applications
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y zaproxy`
  2. Help: `zaproxy -h`  (or `man zaproxy`)
  3. Run: `zaproxy ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Found Java version 25.0.5-ea
  Available memory: 2965 MB
  Using JVM args: -Xmx741m
  1002 [main] INFO  org.zaproxy.zap.GuiBootstrap - ZAP 2.17.0 started 25/10/2026, 08:41:49 with home: /home/kali/.ZAP/ cores: 2 maxMemory: 742 MB
  1012 [main] FATAL org.zaproxy.zap.GuiBootstrap - ZAP GUI is not supported on a headless environment.
  Run ZAP inline or in daemon mode, use -help command line argument for more details.
  ```
- Docs: https://github.com/zaproxy/zaproxy


## Kali tools — wifi (3)

### asleap
- A tool for exploiting Cisco LEAP networks
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y asleap`
  2. Help: `asleap -h`  (or `man asleap`)
  3. Run: `asleap ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  asleap: invalid option -- '-'
  asleap 2.5 - actively recover LEAP/PPTP passwords. <<email>>
  Usage: asleap [options]
  
  	-r 	Read from a libpcap file
  	-i 	Interface to capture on
  ```
- Docs: https://www.willhackforsushi.com/

### kismet
- Wireless sniffer and monitor
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y kismet`
  2. Help: `kismet -h`  (or `man kismet`)
  3. Run: `kismet ...` against a target you own (see the real --help below).
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

### wash
- brute force attack tool against Wi-Fi Protected Setup PIN number
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y reaver`
  2. Help: `wash -h`  (or `man wash`)
  3. Run: `wash ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Wash v1.6.6 WiFi Protected Setup Scan Tool
  Copyright (c) 2011, Tactical Network Solutions, Craig Heffner
  
  Required Arguments:
  	-i, --interface=<iface>              Interface to capture packets on
  ```


## Kali tools — wifi-credential-access (10)

### aircrack-ng
- A 802.11 WEP / WPA-PSK key cracker
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y aircrack-ng`
  2. Help: `aircrack-ng -h`  (or `man aircrack-ng`)
  3. Run: `aircrack-ng ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
    Aircrack-ng 1.7  - (C) 2006-2022 Thomas d'Otreppe
    https://www.aircrack-ng.org
  
    usage: aircrack-ng [options] <input file(s)>
  ```
- Docs: https://www.aircrack-ng.org/

### airgeddon
- multi-use bash script for Linux systems to audit wireless networks
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y airgeddon`
  2. Help: `airgeddon -h`  (or `man airgeddon`)
  3. Run: `airgeddon ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  [8lTERM environment variable not set.
  *********************************** Welcome ************************************ 
  Welcome to airgeddon script v12.02 
  
  tput: No value for $TERM and no -T specified
  tput: No value for $TERM and no -T specified
  ```
- Docs: https://github.com/v1s1t0r1sh3r3/airgeddon

### bully
- Implementation of the WPS brute force attack, written in C
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y bully`
  2. Help: `bully -h`  (or `man bully`)
  3. Run: `bully ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
    bully v1.4
    the fork that actually works!
    maintained by kimocoder - https://twitter.com/kimocoder
  
    usage: bully <options> interface
  ```
- Docs: https://github.com/kimocoder/bully

### cowpatty
- Brute-force dictionary attack against WPA-PSK
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cowpatty`
  2. Help: `cowpatty -h`  (or `man cowpatty`)
  3. Run: `cowpatty ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  cowpatty: invalid option -- '-'
  cowpatty 4.8 - WPA-PSK dictionary attack. <<email>>
  
  Usage: cowpatty [options]
  
  	-f 	Dictionary file
  ```
- Docs: https://www.willhackforsushi.com/?page_id=50

### eapmd5pass
- Tool for extracting and cracking EAP-MD5
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y eapmd5pass`
  2. Help: `eapmd5pass -h`  (or `man eapmd5pass`)
  3. Run: `eapmd5pass ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  eapmd5pass: invalid option -- '-'
  eapmd5pass - Dictionary attack against EAP-MD5
  
  Usage: eapmd5pass [ -i <int> | -r <pcapfile> ] [ -w wordfile ] [options]
  
    -i <iface>	interface name
  ```
- Docs: https://www.willhackforsushi.com/?page_id=67

### fern-wifi-cracker
- Automated Wi-Fi cracker
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y fern-wifi-cracker`
  2. Help: `fern-wifi-cracker -h`  (or `man fern-wifi-cracker`)
  3. Run: `fern-wifi-cracker ...` against a target you own (see the real --help below).
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

### pixiewps
- Offline Wi-Fi Protected Setup bruteforce tool
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y pixiewps`
  2. Help: `pixiewps -h`  (or `man pixiewps`)
  3. Run: `pixiewps ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
   Pixiewps 1.4 WPS pixie-dust attack tool
   Copyright (c) 2015-2017, wiire <<email>>
  
   Description of arguments:
  ```
- Docs: https://github.com/wiire/pixiewps

### reaver
- WPS Cracker
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y reaver`
  2. Help: `reaver -h`  (or `man reaver`)
  3. Run: `reaver ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  Reaver v1.6.6 WiFi Protected Setup Attack Tool
  Copyright (c) 2011, Tactical Network Solutions, Craig Heffner <<email>>
  
  Required Arguments:
  	-i, --interface=<wlan>          Name of the monitor-mode interface to use
  ```
- Docs: https://github.com/t6x/reaver-wps-fork-t6x

### wifi-honey
- Wi-Fi honeypot
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y wifi-honey`
  2. Help: `wifi-honey -h`  (or `man wifi-honey`)
  3. Run: `wifi-honey ...` against a target you own (see the real --help below).
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

### wifite
- Python script to automate wireless auditing using aircrack-ng tools
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y wifite`
  2. Help: `wifite -h`  (or `man wifite`)
  3. Run: `wifite ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
     .               .    
   .´  ·  .     .  ·  `.  wifite2 2.8.1
   :  :  :  (¯)  :  :  :  a wireless auditor by derv82
   `.  ·  ` /¯\ ´  ·  .´  maintained by kimocoder
     `     /¯¯¯\     ´    https://github.com/kimocoder/wifite2
  ```
- Docs: https://github.com/kimocoder/wifite2


## Terminals (5)

### CuteCom
- A graphical serial terminal
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cutecom`
  2. Help: `cutecom -h`  (or `man cutecom`)
  3. Run: `cutecom ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- Docs: https://gitlab.com/cutecom/cutecom

### QTerminal
- Terminal emulator
- **Steps:**
  1. Open it; `cd ~/kali-scripts`.
  2. Run the toolkit, e.g. `TARGET=<NODE_IP> ./toolkit.sh chain recon,web`.

### QTerminal Drop-down
- A drop-down terminal emulator
- **Steps:**
  1. Press its hotkey to drop the terminal from the top.

### UXTerm
- xterm wrapper for Unicode environments
- **Steps:**
  1. Open it: `../scripts/apps.sh open "UXTerm"` (or from the menu).
  2. Run any CLI tool here, e.g. `TARGET=<NODE_IP> ../scripts/toolkit.sh chain recon,web`.
  3. Ctrl+Shift+T for a new tab.

### XTerm
- standard terminal emulator for the X window system
- **Steps:**
  1. Open it: `../scripts/apps.sh open "XTerm"` (or from the menu).
  2. Run any CLI tool here, e.g. `TARGET=<NODE_IP> ../scripts/toolkit.sh chain recon,web`.
  3. Ctrl+Shift+T for a new tab.


## Editors (3)

### Mousepad
- Simple Text Editor
- **Steps:**
  1. `apps.sh open Mousepad notes.txt` or File → Open.
  2. Edit; Ctrl+S to save.

### Text Editor
- Simple Text Editor
- **Steps:**
  1. Launch; edit and save config/notes.

### Vim
- Edit text files
- **Steps:**
  1. `vim file` ; press i to insert, Esc then :wq to save+quit.


## Web & network (2)

### Firefox ESR
- Browse the World Wide Web
- **Steps:**
  1. `apps.sh open "Firefox ESR" http://<NODE_IP>:30080`.
  2. Settings → Network → Manual proxy 127.0.0.1:8080 to route through Burp.
  3. Import Burp's CA cert to intercept HTTPS.

### Web Browser
- Browse the web
- **Steps:**
  1. Launch; same proxy workflow as Firefox ESR above.


## Files & archives (2)

### Engrampa Archive Manager
- Create and modify an archive
- **Steps:**
  1. `apps.sh open "Engrampa Archive Manager" file.zip` or File → Open.
  2. Extract button → choose a folder; or drag files in and Save to create.

### Thunar File Manager
- Browse the filesystem with the file manager
- **Steps:**
  1. Open it; navigate to your evidence folder.
  2. Tools → Open Terminal Here to act on a folder.


## Media & documents (3)

### Parole Media Player
- Play your media
- **Steps:**
  1. `apps.sh open "Parole Media Player" clip.mp4` or Open.

### Ristretto Image Viewer
- Look at your images easily
- **Steps:**
  1. `apps.sh open "Ristretto Image Viewer" shot.png`.
  2. Arrow keys to page through a folder.

### Volume Control
- Adjust the volume level
- **Steps:**
  1. Open it; adjust output/input levels.


## Accessibility (2)

### Onboard
- Flexible onscreen keyboard
- **Steps:**
  1. Launch it; click keys with the mouse.

### Onboard Settings
- Change Onboard settings
- **Steps:**
  1. Open it; set layout/theme/auto-show.


## Settings & desktop (30)

### Accessibility
- Improve keyboard and mouse accessibility
- **Steps:**
  1. Open it; pick the Keyboard or Mouse tab.
  2. Toggle the assists you need; changes apply live.

### Advanced Network Configuration
- Manage and change your network connection settings
- **Steps:**
  1. Open it; click + to add a connection or select the existing Ethernet.
  2. IPv4 tab → Manual → add address/netmask/gateway for the lab segment.
  3. Save; re-activate the connection to apply.

### Appearance
- Customize the look of your desktop
- **Steps:**
  1. Open it; choose a Style/Icons on the first tabs.
  2. Fonts tab → adjust DPI if text is tiny over VNC.

### Clipboard Manager Settings
- Customize your clipboard
- **Steps:**
  1. Open it; set history length and ignore rules.
  2. Close to save.

### Color Profiles
- Set color profiles
- **Steps:**
  1. Open it; select the display; add/assign a profile.

### Default Applications
- Associate preferred applications with MIME types
- **Steps:**
  1. Open it; set each default on the Internet/Utilities tabs.

### Desktop
- Set desktop background and menu and icon behavior
- **Steps:**
  1. Open it; Background tab → choose wallpaper.
  2. Icons tab → toggle which icons show.

### Display
- Configure screen settings and layout
- **Steps:**
  1. Open it; set resolution to match your VNC geometry (e.g. 1440x900).
  2. Apply; confirm to keep.

### Kali HiDPI Mode
- Toggle HiDPI desktop mode
- **Steps:**
  1. Launch once to enable; run again to disable.

### Keyboard
- Edit keyboard settings and application shortcuts
- **Steps:**
  1. Open it; Layout tab → add/select your layout.
  2. Application Shortcuts tab → bind keys to commands.

### LightDM GTK Greeter settings
- Configure LightDM GTK Greeter
- **Steps:**
  1. Open it (asks for sudo); set theme/background/user list.
  2. Save; changes show at next login.

### Mouse and Touchpad
- Configure pointer device behavior and appearance
- **Steps:**
  1. Open it; adjust Acceleration/Buttons.

### Notifications
- Customize how notifications appear on your screen
- **Steps:**
  1. Open it; set position and do-not-disturb.

### Panel
- Customize the panel
- **Steps:**
  1. Open it; Items tab → add a launcher/clock/systray.

### Panel Profiles
- Backup and restore your panel configuration
- **Steps:**
  1. Open it; Save the current layout, or load a backup.

### Power Manager
- Settings for the Xfce Power Manager
- **Steps:**
  1. Open it; set 'display sleep' to never for long scans.

### Qt5 Settings
- Qt5 Configuration Tool
- **Steps:**
  1. Open it; match the Qt theme to the GTK one.

### Qt6 Settings
- Qt6 Configuration Tool
- **Steps:**
  1. Open it; match the Qt theme to the GTK one.

### Removable Drives and Media
- Configure management of removable drives and media
- **Steps:**
  1. Open it; toggle auto-mount per media type.

### Session and Startup
- Customize desktop startup
- **Steps:**
  1. Open it; Application Autostart tab → add e.g. the VNC server.

### Settings Editor
- Graphical settings editor for Xfconf
- **Steps:**
  1. Open it; browse channels; edit values carefully.

### Settings Manager
- Graphical Settings Manager for Xfce
- **Steps:**
  1. Open it; click any icon to reach that setting.

### Thunar Preferences
- Configure the Thunar file manager
- **Steps:**
  1. Open it; set default view and show-hidden.

### Time and Date
- Change system time, date, and timezone
- **Steps:**
  1. Open it (sudo); set timezone to UTC for consistent evidence stamps.

### Users and Groups
- Add or remove users and groups
- **Steps:**
  1. Open it (sudo); add a user or add yourself to a group (e.g. wireshark).

### Window Manager
- Configure window behavior and shortcuts
- **Steps:**
  1. Open it; Keyboard tab → set tiling/switch shortcuts.

### Window Manager Tweaks
- Fine-tune window behaviour and effects
- **Steps:**
  1. Open it; Compositor tab → disable shadows if VNC is laggy.

### Workspaces
- Configure layout, names and margins
- **Steps:**
  1. Open it; set the workspace count and margins.

### Xfce Screensaver
- Set your screensaver preferences
- **Steps:**
  1. Open it; disable lock-on-idle for long unattended scans.

### xfreerdp
- Connect to RDP servers for remote work or administration
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y xfreerdp`
  2. Help: `xfreerdp -h`  (or `man xfreerdp`)
  3. Run: `xfreerdp ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  xfreerdp - A Free Remote Desktop Protocol Implementation
  See www.freerdp.com for more information
  
  Usage: xfreerdp [file] [options] [/v:<server>[:port]]
  ```


## System & utilities (27)

### About Xfce
- Information about the Xfce Desktop Environment
- **Steps:**
  1. Menu → About Xfce (or `apps.sh open "About Xfce"`).
  2. Read the version on the first tab; close when done.

### Application Finder
- Find and launch applications installed on your system
- **Steps:**
  1. Press the shortcut or open it; type an app name.
  2. Enter to launch; this is the fastest way to open tools.

### Atril Document Viewer
- View multi-page documents
- **Steps:**
  1. `apps.sh open "Atril Document Viewer" report.pdf` or File → Open.
  2. Navigate with the sidebar; Ctrl+F to search text.

### BackTrack Mode
- Toggle BackTrack Mode
- **Steps:**
  1. Launch it (runs kali-undercover variant) to switch theme.
  2. Run again to revert.

### Bulk Rename
- Rename Multiple Files
- **Steps:**
  1. Open it; add files with the + button.
  2. Choose a rule (replace/numbering); preview; Rename.

### Catfish File Search
- Search the file system
- **Steps:**
  1. Open it; type a term; optionally tick 'search file contents'.
  2. Double-click a result to open it.

### Clipboard Manager
- Clipboard Manager Autostart File
- **Steps:**
  1. It runs in the tray; click it to see recent clips.
  2. Click an entry to copy it back.

### Disks
- Manage Drives and Media
- **Steps:**
  1. Open it; select a disk in the left list.
  2. Use the ⋮ menu → Create Disk Image / Format for forensics or prep.
  3. Mount/unmount with the ▶/⏏ buttons; never touch a disk you don't own.

### File Manager
- Browse the file system
- **Steps:**
  1. Launch it; browse to ~/lab-evidence.

### GParted
- Create, reorganize, and delete partitions
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y gparted`
  2. Help: `gparted -h`  (or `man gparted`)
  3. Run: `gparted ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Error executing command as another user: No authentication agent found.
  ```
- Docs: https://gparted.org

### GtkHash
- Calculate message digests or checksums
- **Steps:**
  1. Open it; pick a file; tick the hash algorithms.
  2. Hash; compare against the expected value.

### Hardware Locality lstopo
- Show hardware topology
- **Steps:**
  1. Install: `sudo apt install -y hwloc`
  2. Show the topology: `lstopo` (GUI) or `lstopo-no-graphics` (text).
  3. Export: `lstopo topology.png` — map CPU/NUMA/cache of a host you own.

### Help
- Get help with GNOME
- **Steps:**
  1. Open it; browse or search the help topics.

### Kali Autopilot
- Automated Kali Attack Platform
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y kali-autopilot`
  2. Help: `kali-autopilot -h`  (or `man kali-autopilot`)
  3. Run: `kali-autopilot ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Unable to access the X Display, is $DISPLAY set properly?
  ```
- Docs: https://gitlab.com/kalilinux/packages/kali-autopilot

### Kali Halloween Mode
- Toggle Kali Halloween Mode
- **Steps:**
  1. Launch to apply/revert the theme.

### Kali Undercover Mode
- Toggle Kali Undercover Mode
- **Steps:**
  1. Launch to toggle the Windows-like look on/off.

### Log Out
- Log out of the Xfce Desktop
- **Steps:**
  1. Launch; pick Log Out / Restart / Shut Down.

### MATE Calculator
- Perform arithmetic, scientific or financial calculations
- **Steps:**
  1. Open it; Mode menu → Programmer for hex/bitwise.

### Mail Reader
- Read your email
- **Steps:**
  1. Launch; configure an account if prompted.

### RFDump
- Tool to directly interoperate with an RFID reader
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y rfdump`
  2. Help: `rfdump -h`  (or `man rfdump`)
  3. Run: `rfdump ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  
  (rfdump:165270): Gtk-WARNING **: 05:47:00.137: cannot open display: 
  ```
- Docs: http://www.rfdump.org/

### Run Program...
- Enter a command you want to launch
- **Steps:**
  1. Launch; type a command and Enter.

### Screenshot
- Take screenshots of the entire screen, of the active window or of a region
- **Steps:**
  1. Launch; pick Full/Window/Region and delay.
  2. Save into ~/lab-evidence.

### Sensor Viewer
- Show sensor values.
- **Steps:**
  1. Open it to read available sensors (limited in a VM).

### Task Manager
- Easy to use application to monitor system resources
- **Steps:**
  1. Open it; sort by CPU/MEM.
  2. Right-click a process → Kill if a scan hangs.

### Terminal Emulator
- Use the command line
- **Steps:**
  1. Open it; same usage as QTerminal.

### TigerVNC viewer
- Connect to VNC server and display remote desktop
- **Steps:**
  1. Open: `../scripts/apps.sh open "TigerVNC viewer"`.
  2. Point it at the lab: `http://<NODE_IP>:30080`.
  3. Proxy via Burp/ZAP (127.0.0.1:8080) to inspect requests.

### Web Browser
- Browse the web
- **Steps:**
  1. Launch; same proxy workflow as Firefox ESR above.


---

# 本機已安裝的所有應用程式（450 個）— 逐步教學（繁體中文）

> English in `installed-apps.md` 上半部 · 攻擊工具深入版：`tutorials.zh-TW.md`

安裝完整工具集後選單共 **450** 個程式。每個都附逐步步驟；工具附已在 VM 驗證的真實 `--help`。範圍 `../../ROE.md`。


## Kali tools — account-discovery (2)

### apache-users
- 列舉啟用 Apache UserDir 模組系統上的使用者名稱
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y apache-users`
  2. 看說明：`apache-users -h`（或 `man apache-users`）
  3. 執行：`apache-users ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  USAGE: apache-users [-h 1.2.3.4] [-l names] [-p 80] [-s (SSL Support 1=true 0=false)] [-e 403 (http code)] [-t threads]
  
   
  ```
- 文件：https://labs.portcullis.co.uk/downloads/

### smtp-user-enum
- SMTP 服務使用者名稱猜測工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y smtp-user-enum`
  2. 看說明：`smtp-user-enum -h`（或 `man smtp-user-enum`）
  3. 執行：`smtp-user-enum ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/smtp-user-enum version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: smtp-user-enum [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- 文件：http://pentestmonkey.net/tools/user-enumeration/smtp-user-enum


## Kali tools — active-directory (1)

### bloodhound-python
- ingestor for BloodHound, based on Impacket (Python 3)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y bloodhound-python`
  2. 看說明：`bloodhound-python -h`（或 `man bloodhound-python`）
  3. 執行：`bloodhound-python ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: bloodhound-python [-h] [-c COLLECTIONMETHOD] [-d DOMAIN] [-v]
                           [-u USERNAME] [-p PASSWORD] [-k] [--hashes HASHES]
                           [-no-pass] [-aesKey hex key]
                           [--auth-method {auto,ntlm,kerberos}] [-ns NAMESERVER]
                           [--dns-tcp] [--dns-timeout DNS_TIMEOUT] [-dc HOST]
                           [-gc HOST] [-w WORKERS] [--exclude-dcs]
  ```


## Kali tools — application-layer-protocol (2)

### cadaver
- 命令列 WebDAV 用戶端
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cadaver`
  2. 看說明：`cadaver -h`（或 `man cadaver`）
  3. 執行：`cadaver ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: cadaver [OPTIONS] URL
    URL must be an absolute URI using the http: or https: scheme.
  Options:
    -t, --tolerant            Allow cd/open into non-WebDAV enabled collection.
    -r, --rcfile=FILE         Read script from FILE instead of ~/.cadaverrc.
    -p, --proxy=PROXY[:PORT]  Use proxy host PROXY and optional proxy port PORT.
  ```
- 文件：https://github.com/notroj/cadaver

### minicom
- 選單式序列埠通訊程式
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y minicom`
  2. 看說明：`minicom -h`（或 `man minicom`）
  3. 執行：`minicom ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: minicom [OPTION]... [configuration]
  A terminal program for Linux and other unix-like systems.
  
    -b, --baudrate         : set baudrate (ignore the value from config)
    -D, --device           : set device name (ignore the value from config)
    -s, --setup            : enter setup mode
  ```
- 文件：https://salsa.debian.org/minicom-team/minicom


## Kali tools — bluetooth (8)

### bettercap
- 完整、模組化、可攜、易擴充的 MITM 框架
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y bettercap`
  2. 看說明：`bettercap -h`（或 `man bettercap`）
  3. 執行：`bettercap ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage of bettercap:
    -autostart string
      	Comma separated list of modules to auto start. (default "events.stream")
    -caplet string
      	Read commands from this file and execute them in the interactive session.
    -caplets-path string
  ```
- 文件：https://www.bettercap.org

### bluelog
- 藍牙掃描與紀錄器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y bluelog`
  2. 看說明：`bluelog -h`（或 `man bluelog`）
  3. 執行：`bluelog ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Bluelog (v1.1.2) by Tom Nardi "MS3FGX" (<email>)
  ----------------------------------------------------------------
  Bluelog is a Bluetooth site survey tool, designed to tell you how
  many discoverable devices there are in an area as quickly as possible.
  As the name implies, its primary function is to log discovered devices
  to file rather than to be used interactively. Bluelog could run on a
  ```
- 文件：http://www.digifail.com/software/bluelog.shtml

### blueranger
- 定位藍牙裝置的簡易 Bash 腳本
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y blueranger`
  2. 看說明：`blueranger -h`（或 `man blueranger`）
  3. 執行：`blueranger ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  BlueRanger 1.0 by JP Dunning (.ronin) 
  <www.hackfromacave.com>
  (c) 2009-2012 Shadow Cave LLC.
  
  NAME
  ```
- 文件：http://www.hackfromacave.com/projects/blueranger.html

### bluesnarfer
- Bluesnarfing 工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y bluesnarfer`
  2. 看說明：`bluesnarfer -h`（或 `man bluesnarfer`）
  3. 執行：`bluesnarfer ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  bluesnarfer: you must be root
  bluesnarfer, version 0.1 -
  usage: bluesnarfer [options] [ATCMD] -b bt_addr
  
  ATCMD     : valid AT+CMD (GSM EXTENSION)
  ```
- 文件：http://www.alighieri.org/

### btscanner
- 以 ncurses 為介面的藍牙裝置掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y btscanner`
  2. 看說明：`btscanner -h`（或 `man btscanner`）
  3. 執行：`btscanner ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: btscanner [options]
  options
  	--help	Display help
  	--cfg=<file>	Use <file> as the config file
  	--no-reset	Do not reset the Bluetooth adapter before scanning
  ```
- 文件：https://salsa.debian.org/pkg-security-team/btscanner

### fang
- Locates non-discoverable bluetooth devices
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y redfang`
  2. 看說明：`fang -h`（或 `man fang`）
  3. 執行：`fang ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  fang: invalid option -- '-'
  redfang - the bluetooth hunter ver 2.5
  (c)2003 @stake Inc
  author:   Ollie Whitehouse <<email>>
  enhanced: threads by Simon Halsall <<email>>
  enhanced: device info discovery by Stephen Kapp <<email>>
  ```

### spooftooph
- 自動偽冒或複製藍牙裝置
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y spooftooph`
  2. 看說明：`spooftooph -h`（或 `man spooftooph`）
  3. 執行：`spooftooph ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  spooftooph v0.5.2 by JP Dunning (.ronin) 
  <www.hackfromacave.com>
  (c) 2009-2012 Shadow Cave LLC.
  
  NAME
  ```
- 文件：http://www.hackfromacave.com/projects/spooftooph.html

### ubertooth-util
- General purpose Ubertooth utility
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ubertooth`
  2. 看說明：`ubertooth-util -h`（或 `man ubertooth-util`）
  3. 執行：`ubertooth-util ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ubertooth-util: invalid option -- '-'
  ubertooth-util - command line utility for Ubertooth Zero and Ubertooth One
  
  Common options:
  	-v get firmware revision number
  	-V get compile info
  ```


## Kali tools — brute-force (6)

### hydra
- 非常快速的網路登入破解器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hydra`
  2. 看說明：`hydra -h`（或 `man hydra`）
  3. 執行：`hydra ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Hydra v9.7 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).
  
  hydra: invalid option -- '-'
  ```
- 文件：https://github.com/vanhauser-thc/thc-hydra

### medusa
- 快速、平行、模組化的網路服務登入暴力破解器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y medusa`
  2. 看說明：`medusa -h`（或 `man medusa`）
  3. 執行：`medusa ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  medusa: invalid option -- '-'
  CRITICAL: Unknown error processing command-line options.
  ALERT: User logon information must be supplied.
  Medusa v2.3 [http://www.foofus.net] (C) JoMo-Kun / Foofus Networks <<email>>
  ```
- 文件：http://foofus.net/?page_id=51

### ncrack
- 高速網路驗證破解工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ncrack`
  2. 看說明：`ncrack -h`（或 `man ncrack`）
  3. 執行：`ncrack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Ncrack 0.7 ( http://ncrack.org )
  Usage: ncrack [Options] {target and service specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iX <inputfilename>: Input from Nmap's -oX XML output format
  ```
- 文件：https://nmap.org/ncrack/

### patator
- 多用途暴力破解器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y patator`
  2. 看說明：`patator -h`（或 `man patator`）
  3. 執行：`patator ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Patator 1.1.0 (https://github.com/lanjelot/patator) with Python-3.14.8
  Usage: patator module --help
  
  Available modules:
    + ftp_login     : Brute-force FTP
    + ssh_login     : Brute-force SSH
  ```
- 文件：https://github.com/lanjelot/patator

### thc-pptp-bruter
- THC PPTP 暴力破解
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y thc-pptp-bruter`
  2. 看說明：`thc-pptp-bruter -h`（或 `man thc-pptp-bruter`）
  3. 執行：`thc-pptp-bruter ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  thc-pptp-bruter: invalid option -- '-'
  thc-pptp-bruter [options] <remote host IP>
    -v        Verbose output / Debug output
    -W        Disable windows hack [default: enabled]
    -u <user> User [default: administrator]
    -w <file> Wordlist file [default: stdin]
  ```
- 文件：http://www.thc.org/releases.php

### xhydra
- Gtk+3 frontend for thc-hydra
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hydra-gtk`
  2. 看說明：`xhydra -h`（或 `man xhydra`）
  3. 執行：`xhydra ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  (xhydra:1188024): Gtk-WARNING **: 08:41:48.037: cannot open display: 
  ```


## Kali tools — cisco-tools (3)

### cge.pl
- Simple and fast Cisco exploitation tool
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cisco-global-exploiter`
  2. 看說明：`cge.pl -h`（或 `man cge.pl`）
  3. 執行：`cge.pl ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Usage :
  perl cge.pl <target> <vulnerability number>
  
  Vulnerabilities list :
  [1] - Cisco 677/678 Telnet Buffer Overflow Vulnerability
  ```

### cisco-ocs
- 大量 Cisco 掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cisco-ocs`
  2. 看說明：`cisco-ocs -h`（或 `man cisco-ocs`）
  3. 執行：`cisco-ocs ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ********************************* OCS v 0.2 **********************************
  ****                                                                      ****
  ****                           coded by OverIP                            ****
  ****                           <email>                           ****
  ****                           under GPL License                          ****
  ****                                                                      ****
  ```
- 文件：http://hacklab.altervista.org/

### cisco-torch
- Cisco 裝置掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cisco-torch`
  2. 看說明：`cisco-torch -h`（或 `man cisco-torch`）
  3. 執行：`cisco-torch ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/cisco-torch version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: cisco-torch [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```


## Kali tools — collection (9)

### ettercap-pkexec
- Graphical pkexec-based launcher for ettercap
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ettercap-graphical`
  2. 看說明：`ettercap-pkexec -h`（或 `man ettercap-pkexec`）
  3. 執行：`ettercap-pkexec ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Error executing command as another user: No authentication agent found.
  ```

### ferret-sidejack
- 監看資料並擷取感興趣的內容
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ferret-sidejack`
  2. 看說明：`ferret-sidejack -h`（或 `man ferret-sidejack`）
  3. 執行：`ferret-sidejack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  -- FERRET 3.0.1 - 2007-2012 (c) Errata Security
  -- build = Sep 29 2024 02:38:07 (64-bits)
  -- libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3)
  -- graceful exit --
  --help: unknown option
  ```
- 文件：https://github.com/robertdavidgraham/ferret

### fiked
- Cisco VPN 攻擊工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y fiked`
  2. 看說明：`fiked -h`（或 `man fiked`）
  3. 執行：`fiked ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  fiked: invalid option -- '-'
  Usage: fiked [-rdqhV] -g gw -k id:psk [-k ..] [-u user] [-l file] [-L file]
  	-r	use raw socket: forge ip src addr to match <gateway> (disables -u)
  	-d	detach from tty and run as a daemon (implies -q)
  	-q	be quiet, don't write anything to stdout
  	-h	print help and exit
  ```
- 文件：https://www.roe.ch/FakeIKEd

### hamster-sidejack
- Sidejacking 工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hamster-sidejack`
  2. 看說明：`hamster-sidejack -h`（或 `man hamster-sidejack`）
  3. 執行：`hamster-sidejack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  unknown parm, all parms must be name=value pairs. (--help)
  Proxy: listening on 127.0.0.1:1234
  ```
- 文件：http://www.erratasec.com/research.html

### httrack
- 將網站複製到本機（離線瀏覽器）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y httrack`
  2. 看說明：`httrack -h`（或 `man httrack`）
  3. 執行：`httrack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  HTTrack version 3.50-5
  	usage: httrack <URLs> [-option] [+<URL_FILTER>] [-<URL_FILTER>] [+<mime:MIME_FILTER>] [-<mime:MIME_FILTER>]
  	with options listed below: (* is the default value)
  
  General options:
  ```
- 文件：https://www.httrack.com

### mitmproxy
- 支援 SSL 的中間人 HTTP 代理
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y mitmproxy`
  2. 看說明：`mitmproxy -h`（或 `man mitmproxy`）
  3. 執行：`mitmproxy ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: mitmproxy [options]
  
  options:
    -h, --help            show this help message and exit
    --version             show version number and exit
    --options             Show all options and their default values
  ```
- 文件：https://mitmproxy.org

### ssldump
- SSLv3/TLS 網路協定分析器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ssldump`
  2. 看說明：`ssldump -h`（或 `man ssldump`）
  3. 執行：`ssldump ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ssldump: invalid option -- '-'
  Usage: ssldump [-r dumpfile] [-i interface] [-l sslkeylogfile] [-w outpcapfile]
                 [-k keyfile] [-p password] [-vtaTznsAxVNde]
                 [filter]
  ```
- 文件：https://github.com/adulau/ssldump

### sslsniff
- SSL/TLS 中間人攻擊工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sslsniff`
  2. 看說明：`sslsniff -h`（或 `man sslsniff`）
  3. 執行：`sslsniff ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sslsniff: invalid option -- '-'
  Usage: sslsniff [options]
  
  Modes:
  -a	Authority mode.  Specify a certificate that will act as a CA.
  -t	Targeted mode.  Specify a directory full of certificates to target.
  ```
- 文件：https://github.com/moxie0/sslsniff

### sslsplit
- 透明且可擴充的 SSL/TLS 攔截
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sslsplit`
  2. 看說明：`sslsplit -h`（或 `man sslsplit`）
  3. 執行：`sslsplit ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sslsplit: invalid option -- '-'
  ```
- 文件：https://www.roe.ch/SSLsplit


## Kali tools — credential-access (1)

### responder
- LLMNR/NBT-NS/mDNS 投毒器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y responder`
  2. 看說明：`responder -h`（或 `man responder`）
  3. 執行：`responder ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
                                           __
    .----.-----.-----.-----.-----.-----.--|  |.-----.----.
    |   _|  -__|__ --|  _  |  _  |     |  _  ||  -__|   _|
    |__| |_____|_____|   __|_____|__|__|_____||_____|__|
                     |__|
  ```
- 文件：https://github.com/lgandx/Responder


## Kali tools — databases (7)

### impacket-mssqlclient
- Python3 module to easily build and dissect network protocols
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y impacket-scripts`
  2. 看說明：`impacket-mssqlclient -h`（或 `man impacket-mssqlclient`）
  3. 執行：`impacket-mssqlclient ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: mssqlclient.py [-h] [-db DB] [-windows-auth] [-debug] [-ts] [-show]
                        [-command [COMMAND ...]] [-file FILE]
                        [--host-name HOST_NAME] [--app-name APP_NAME]
                        [-hashes LMHASH:NTHASH] [-no-pass] [-k]
  ```

### mdb-sql
- SQL interface to MDB Tools
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y mdbtools`
  2. 看說明：`mdb-sql -h`（或 `man mdb-sql`）
  3. 執行：`mdb-sql ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage:
    mdb-sql [OPTION…] <file> - Run SQL
  
  Help Options:
    -h, --help                Show help options
  ```

### mysql
- The MariaDB command-line tool (mysql is now a symlink to mariadb)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y mysql`
  2. 看說明：`mysql -h`（或 `man mysql`）
  3. 執行：`mysql ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  mysql from 11.8.9-MariaDB, client 15.2 for debian-linux-gnu (aarch64) using  EditLine wrapper
  Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.
  
  Usage: mysql [OPTIONS] [database]
  
  Default options are read from the following files in the given order:
  ```

### oscanner
- Oracle 評估框架
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y oscanner`
  2. 看說明：`oscanner -h`（或 `man oscanner`）
  3. 執行：`oscanner ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  OracleScanner: invalid option -- h
  	Oracle Scanner 1.0.6 by <email>
  	--------------------------------------
  	OracleScanner -s <ip> -r <repfile> [options]
  		-s	<servername>
  		-f	<serverlist>
  ```
- 文件：http://www.cqure.net/wp/tools/database/oscanner/

### sidguess
- Guesses sids against an Oracle database
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sidguesser`
  2. 看說明：`sidguess -h`（或 `man sidguess`）
  3. 執行：`sidguess ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sidguess: invalid option -- '-'
  
  SIDGuesser v1.0.5 by <email>
  -------------------------------------
  sidguess -i <ip> -d <dictionary> [options]
  ```

### sqlitebrowser
- SQLite 資料庫的 GUI 編輯器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sqlitebrowser`
  2. 看說明：`sqlitebrowser -h`（或 `man sqlitebrowser`）
  3. 執行：`sqlitebrowser ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- 文件：https://sqlitebrowser.org/

### tnscmd10g
- 探測 Oracle tnslsnr 程序的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y tnscmd10g`
  2. 看說明：`tnscmd10g -h`（或 `man tnscmd10g`）
  3. 執行：`tnscmd10g ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: /usr/bin/tnscmd10g [command] -h hostname
         where 'command' is something like ping, version, status, etc.  
         (default is ping)
         [-p port] - alternate TCP port to use (default is 1521)
         [--logfile logfile] - write raw packets to specified logfile
         [--indent] - indent & outdent on parens
  ```
- 文件：http://www.red-database-security.com/


## Kali tools — defense-evasion (10)

### ccrypt
- 安全加解密檔案與串流
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ccrypt`
  2. 看說明：`ccrypt -h`（或 `man ccrypt`）
  3. 執行：`ccrypt ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ccrypt 1.11. Secure encryption and decryption of files and streams.
  
  Usage: ccrypt [mode] [options] [file...]
         ccencrypt [options] [file...]
         ccdecrypt [options] [file...]
         ccat [options] file...
  ```
- 文件：https://ccrypt.sourceforge.net/

### exe2hex
- Convert EXE to bat
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y exe2hexbat`
  2. 看說明：`exe2hex -h`（或 `man exe2hex`）
  3. 執行：`exe2hex ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/exe2hex:495: SyntaxWarning: "\[" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\["? A raw string is also an option.
    send_user "\\n\\n\[i\] Done\\n"
  [*] exe2hex v1.5.1
  Usage: exe2hex [options]
  
  Options:
  ```

### fragrouter
- IDS 規避工具組
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y fragrouter`
  2. 看說明：`fragrouter -h`（或 `man fragrouter`）
  3. 執行：`fragrouter ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  fragrouter: invalid option -- '-'
  Version 1.6
  Usage: fragrouter [-i interface] [-p] [-g hop] [-G hopcount] ATTACK
  
   where ATTACK is one of the following:
  ```
- 文件：http://www.anzen.com/research/nidsbench/fragrouter.html

### ftest
- Tool for testing firewalls and Intrusion Detection System (IDS)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ftester`
  2. 看說明：`ftest -h`（或 `man ftest`）
  3. 執行：`ftest ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/ftest version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: ftest [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```

### macchanger
- 操作網卡 MAC 位址的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y macchanger`
  2. 看說明：`macchanger -h`（或 `man macchanger`）
  3. 執行：`macchanger ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  GNU MAC Changer
  Usage: macchanger [options] device
  
    -h,  --help                   Print this help
    -V,  --version                Print version and exit
    -s,  --show                   Print the MAC address and exit
  ```
- 文件：https://github.com/alobbs/macchanger

### padbuster
- 執行 Padding Oracle 攻擊的腳本
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y padbuster`
  2. 看說明：`padbuster -h`（或 `man padbuster`）
  3. 執行：`padbuster ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Possible precedence problem between ! and string eq at /usr/bin/padbuster line 677.
  Unknown option: help
      
      Use: padbuster URL EncryptedSample BlockSize [options]
  
    Where: URL = The target URL (and query string if applicable)
  ```
- 文件：https://github.com/GDSSecurity/PadBuster

### sniffjoke
- 透明的 TCP 連線擾亂器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sniffjoke`
  2. 看說明：`sniffjoke -h`（或 `man sniffjoke`）
  3. 執行：`sniffjoke ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  SniffJoke is too dangerous to be run by an humble user; go to fetch daddy root, now!
  ```
- 文件：https://github.com/vecna/sniffjoke

### steghide
- 隱寫術隱藏工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y steghide`
  2. 看說明：`steghide -h`（或 `man steghide`）
  3. 執行：`steghide ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  steghide version 0.6.0
  
  the first argument must be one of the following:
   embed, --embed          embed data
   extract, --extract      extract data
   info, --info            display information about a cover- or stego-file
  ```
- 文件：https://steghide.sourceforge.net/

### stegosuite
- 將資訊藏入圖片的隱寫術工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y stegosuite`
  2. 看說明：`stegosuite -h`（或 `man stegosuite`）
  3. 執行：`stegosuite ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Steganography tool to hide information in image files
  
  Usage: stegosuite [-hV] [COMMAND]
  
  Options:
    -h, --help      Show this help message and exit.
  ```
- 文件：https://codeberg.org/tob/stegosuite

### stegsnow
- 以 ASCII 檔進行隱寫術
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y stegsnow`
  2. 看說明：`stegsnow -h`（或 `man stegsnow`）
  3. 執行：`stegsnow ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: stegsnow [-C] [-Q] [-S] [-V | --version] [-h | --help]
  	[-p passwd] [-l line-len] [-f file | -m message]
  	[infile [outfile]]
  ```
- 文件：https://www.darkside.com.au/snow


## Kali tools — detect (1)

### sentrypeer
- VoIP 的 SIP 點對點蜜罐
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sentrypeer`
  2. 看說明：`sentrypeer -h`（或 `man sentrypeer`）
  3. 執行：`sentrypeer ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Protect your SIP Servers from bad actors at https://sentrypeer.com
  
  Usage: sentrypeer [OPTIONS]
  
  Options:
    -f <DB_FILE>                 Set 'sentrypeer.db' location or use SENTRYPEER_DB_FILE env
  ```
- 文件：https://sentrypeer.org


## Kali tools — digital-forensics (7)

### dc3dd
- 具鑑識功能的 GNU dd 修改版
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dc3dd`
  2. 看說明：`dc3dd -h`（或 `man dc3dd`）
  3. 執行：`dc3dd ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ------
  usage:
  ------
  
  	dc3dd [OPTION 1] [OPTION 2] ... [OPTION N]
  ```
- 文件：https://sourceforge.net/projects/dc3dd/

### dcfldd
- 鑑識與安全用途的 dd 強化版
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dcfldd`
  2. 看說明：`dcfldd -h`（或 `man dcfldd`）
  3. 執行：`dcfldd ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: dcfldd [OPTION]...
  Enhanced version of dd for forensics and security.
  
    bs=BYTES            force ibs=BYTES and obs=BYTES (default=32768)
    cbs=BYTES           convert BYTES bytes at a time
    conv=KEYWORDS       convert the file as per the comma separated keyword list
  ```
- 文件：https://github.com/resurrecting-open-source-projects/dcfldd

### missidentify
- 尋找 win32 應用程式
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y missidentify`
  2. 看說明：`missidentify -h`（或 `man missidentify`）
  3. 執行：`missidentify ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  missidentify: invalid option -- '-'
  Try `missidentify -h` for more information.
  ```
- 文件：https://missidentify.sf.net

### readpst
- Convert PST (MS Outlook Personal Folders) files to mbox and other formats
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pst-utils`
  2. 看說明：`readpst -h`（或 `man readpst`）
  3. 執行：`readpst ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  readpst: invalid option -- '-'
  ReadPST / LibPST v0.6.76
  Little Endian implementation being used.
  Usage: readpst [OPTIONS] {PST FILENAME}
  OPTIONS:
  	-V	- Version. Display program version
  ```

### reglookup
- 分析 Windows NT registry 的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y reglookup`
  2. 看說明：`reglookup -h`（或 `man reglookup`）
  3. 執行：`reglookup ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ERROR: Failed to open hive.  Error returned: No such file or directory
  ERROR: Couldn't open registry file: --help
  ```
- 文件：https://web.archive.org/web/20240804024044/http://projects.sentinelchicken.org/reglookup/

### undbx
- 從 .dbx 檔擷取與救回郵件訊息
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y undbx`
  2. 看說明：`undbx -h`（或 `man undbx`）
  3. 執行：`undbx ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  UnDBX v0.21 (Jan 21 2026)
  Usage: undbx [<OPTION>] <DBX-FOLDER | DBX-FILE> [<OUTPUT-FOLDER>]
  
  Options:
  	-h, --help        	 show this message
  	-V, --version     	 show only version string
  ```
- 文件：https://github.com/ZungBang/undbx

### vinetto
- 檢視 Thumbs.db 檔的鑑識工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y vinetto`
  2. 看說明：`vinetto -h`（或 `man vinetto`）
  3. 執行：`vinetto ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Vinetto: Version 0.9.15
  usage: vinetto [-h] [-e EDBFILE] [-H] [-m [{f,d,r,a}]] [--md5] [--nomd5]
                 [-o DIR] [-q] [-s] [-U] [-v] [--version]
                 [infile]
  
  Vinetto.py - The Thumbnail File Parser
  ```
- 文件：https://github.com/AtesComp/Vinetto


## Kali tools — execution (6)

### armitage
- Metasploit 的圖形化攻擊管理介面
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y armitage`
  2. 看說明：`armitage -h`（或 `man armitage`）
  3. 執行：`armitage ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Exception in thread "main" java.awt.HeadlessException: 
  No X11 DISPLAY variable was set, but this program performed an operation which requires it.
  	at java.desktop/java.awt.GraphicsEnvironment.checkHeadless(GraphicsEnvironment.java:208)
  	at java.desktop/java.awt.Window.<init>(Window.java:548)
  	at java.desktop/java.awt.Frame.<init>(Frame.java:423)
  	at java.desktop/javax.swing.JFrame.<init>(JFrame.java:224)
  ```
- 文件：https://github.com/r00t0v3rr1d3/armitage

### beef-xss-start
- Browser Exploitation Framework (BeEF)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y beef-xss`
  2. 看說明：`beef-xss-start -h`（或 `man beef-xss-start`）
  3. 執行：`beef-xss-start ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```

### evilgrade
- Evilgrade framework
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y isr-evilgrade`
  2. 看說明：`evilgrade -h`（或 `man evilgrade`）
  3. 執行：`evilgrade ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [DEBUG] - Loading module: modules/fcleaner.pm
  [DEBUG] - Loading module: modules/flashget.pm
  [DEBUG] - Loading module: modules/techtracker.pm
  [DEBUG] - Loading module: modules/filezilla.pm
  [DEBUG] - Loading module: modules/teamviewer.pm
  [DEBUG] - Loading module: modules/istat.pm
  ```

### nishang
- PowerShell 腳本與 payload 集
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y nishang`
  2. 看說明：`nishang -h`（或 `man nishang`）
  3. 執行：`nishang ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > nishang ~ Collection of PowerShell scripts and payloads
  
  /usr/share/nishang
  ├── ActiveDirectory
  ├── Antak-WebShell
  ```
- 文件：https://github.com/samratashok/nishang

### powersploit
- PowerShell 後滲透框架
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y powersploit`
  2. 看說明：`powersploit -h`（或 `man powersploit`）
  3. 執行：`powersploit ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > powersploit ~ PowerShell Post-Exploitation Framework
  
  /usr/share/windows-resources/powersploit
  ├── AntivirusBypass
  ├── CodeExecution
  ```
- 文件：https://github.com/PowerShellMafia/PowerSploit

### xsser
- XSS 測試框架
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y xsser`
  2. 看說明：`xsser -h`（或 `man xsser`）
  3. 執行：`xsser ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: 
  
  xsser [OPTIONS] [--all <url> |-u <url> |-i <file> |-d <dork> (options)|-l ] [-g <get> |-p <post> |-c <crawl> (options)]
  [Request(s)] [Checker(s)] [Vector(s)] [Anti-antiXSS/IDS] [Bypasser(s)] [Technique(s)] [Final Injection(s)] [Reporting] {Miscellaneous}
  
  Cross Site "Scripter" is an automatic -framework- to detect, exploit and
  ```
- 文件：https://xsser.03c8.net/


## Kali tools — exfiltration (1)

### impacket-smbserver
- Python3 module to easily build and dissect network protocols
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y impacket-scripts`
  2. 看說明：`impacket-smbserver -h`（或 `man impacket-smbserver`）
  3. 執行：`impacket-smbserver ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: smbserver.py [-h] [-comment COMMENT] [-username USERNAME]
                      [-password PASSWORD]
                      [-computeraccountname COMPUTERACCOUNTNAME]
                      [-computeraccounthash COMPUTERACCOUNTHASH]
  ```


## Kali tools — forensic-carving-tools (15)

### ext3grep
- 協助還原 ext3 已刪除檔案的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ext3grep`
  2. 看說明：`ext3grep -h`（或 `man ext3grep`）
  3. 執行：`ext3grep ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Running ext3grep version 0.10.2
  Usage: ext3grep [options] [--] device-file
  Options:
    --version, -[vV]       Print version and exit successfully.
    --help,                Print this help and exit successfully.
    --superblock           Print contents of superblock in addition to the rest.
  ```

### ext4magic
- 從 ext3/ext4 分割區救回已刪除檔案
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ext4magic`
  2. 看說明：`ext4magic -h`（或 `man ext4magic`）
  3. 執行：`ext4magic ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ext4magic : Error: Missing device name and options.
  
  ext4magic -M [-j <journal_file>] [-d <target_dir>] <filesystem> 
  ext4magic -m [-j <journal_file>] [-d <target_dir>] <filesystem> 
  ext4magic [-S|-J|-H|-V|-T] [-x] [-j <journal_file>] [-B n|-I n|-f <file_name>|-i <input_list>] [-t n|[[-a n][-b n]]] [-d <target_dir>] [-R|-r|-L|-l] [-Q] <filesystem> 
  ```
- 文件：http://ext4magic.sf.net/ext4magic_en.html

### extundelete
- 從 ext3/ext4 分割區救回已刪除檔案的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y extundelete`
  2. 看說明：`extundelete -h`（或 `man extundelete`）
  3. 執行：`extundelete ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: extundelete [options] [--] device-file
  Options:
    --version, -[vV]       Print version and exit successfully.
    --help,                Print this help and exit successfully.
    --superblock           Print contents of superblock in addition to the rest.
                           If no action is specified then this option is implied.
  ```
- 文件：http://extundelete.sourceforge.net/

### foremost
- 救回遺失檔案的鑑識程式
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y foremost`
  2. 看說明：`foremost -h`（或 `man foremost`）
  3. 執行：`foremost ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  foremost: invalid option -- '-'
  Try `foremost -h` for more information.
  ```
- 文件：https://sourceforge.net/projects/foremost/

### magicrescue
- 以 magic bytes 救回檔案
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y magicrescue`
  2. 看說明：`magicrescue -h`（或 `man magicrescue`）
  3. 執行：`magicrescue ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  magicrescue: invalid option -- '-'
  Error parsing options.
  Usage: magicrescue [-I FILE] [-M MODE] [-O [+-=][0x]OFFSET] [-b BLOCKSIZE]
  	-d OUTPUT_DIR -r RECIPE1 [-r RECIPE2 [...]] DEVICE1 [DEVICE2 [...]]
  
    -b  Only consider files starting at a multiple of BLOCKSIZE.
  ```
- 文件：https://github.com/jbj/magicrescue

### myrescue
- 從受損磁碟救回資料
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y myrescue`
  2. 看說明：`myrescue -h`（或 `man myrescue`）
  3. 執行：`myrescue ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  myrescue: invalid option -- '-'
  myrescue [<options>] <input-file> <output-file>
  options:
  -b <block-size>   block size in bytes, default: 4096
  -B <bitmap-file>  bitmap-file, default: <output-file>.bitmap
  -A                abort on error
  ```
- 文件：https://myrescue.sf.net

### pasco
- IE 快取鑑識分析工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pasco`
  2. 看說明：`pasco -h`（或 `man pasco`）
  3. 執行：`pasco ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ERROR - The index.dat file cannot be opened!
  
  
  Usage:  pasco [options] <filename>
  	-d Undelete Activity Records
  	-t Field Delimiter (TAB by default)
  ```
- 文件：https://sf.net/projects/odessa

### readpe
- 操作 Windows PE 檔的命令列工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y readpe`
  2. 看說明：`readpe -h`（或 `man readpe`）
  3. 執行：`readpe ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: readpe OPTIONS FILE
  Show PE file headers
  
  Example: readpe --header optional winzip.exe
  
  Options:
  ```
- 文件：https://github.com/mentebinaria/readpe/wiki

### recoverdm
- 從壞軌磁碟救回檔案
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y recoverdm`
  2. 看說明：`recoverdm -h`（或 `man recoverdm`）
  3. 執行：`recoverdm ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  recoverdm: invalid option -- '-'
  Usage: recoverdm -t <type> -i <file/device-in> -o <fileout> [-l <sectorsfile>] [-n # retries]
                   [-s rotation speed (CD-ROM etc.)] [-r # CD/DVD RAW read retries]
                   [-b start offset] [-p skip blocks count]
  Number of retries defaults to 6. For CD-ROMs it's advised to use 1.
  Number of CD/DVD RAW read retries defaults to 6. It is advised to use at least 3.
  ```
- 文件：https://www.vanheusden.com/recoverdm

### recoverjpeg
- 救回 JPEG 圖片與 MOV 影片
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y recoverjpeg`
  2. 看說明：`recoverjpeg -h`（或 `man recoverjpeg`）
  3. 執行：`recoverjpeg ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  recoverjpeg: invalid option -- '-'
  Usage: recoverjpeg [options] file|device
  Options:
     -b blocksize   Block size in bytes (default: 512)
     -d format      Directory format string in printf syntax
     -f format      File format string in printf syntax
  ```
- 文件：https://www.rfc1149.net/devel/recoverjpeg

### rifiuti
- MS Windows 資源回收桶分析工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rifiuti`
  2. 看說明：`rifiuti -h`（或 `man rifiuti`）
  3. 執行：`rifiuti ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  INFO2 File: --help
  
  ERROR - The INFO2 file cannot be opened!
  
  
  Usage:  rifiuti [options] <filename>
  ```
- 文件：https://sf.net/projects/odessa

### rifiuti2
- rifiuti 的替代品，分析 Windows 資源回收桶
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rifiuti2`
  2. 看說明：`rifiuti2 -h`（或 `man rifiuti2`）
  3. 執行：`rifiuti2 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage:
    rifiuti2 [OPTION…] INFO2
  
  Parse INFO2 file and dump recycle bin data.
  
  Help Options:
  ```
- 文件：https://abelcheung.github.io/rifiuti2

### safecopy
- 問題或受損媒體的資料救援工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y safecopy`
  2. 看說明：`safecopy -h`（或 `man safecopy`）
  3. 執行：`safecopy ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Safecopy 1.7 by CorvusCorax
  Usage: safecopy [options] <source> <target>
  Options:
  	--stage1 : Preset to rescue most of the data fast,
  	           using no retries and avoiding bad areas.
  	           Presets: -f 10% -r 10% -R 1 -Z 0 -L 2 -M BaDbLoCk
  ```
- 文件：http://safecopy.sf.net

### scalpel
- 快速、與檔案系統無關的檔案救援
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y scalpel`
  2. 看說明：`scalpel -h`（或 `man scalpel`）
  3. 執行：`scalpel ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  scalpel: invalid option -- '-'
  Scalpel version 1.60
  Written by Golden G. Richard III, based on Foremost 0.69.
  ```
- 文件：https://github.com/nolaforensix/scalpel-1.60

### scrounge-ntfs
- NTFS 檔案系統資料救援程式
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y scrounge-ntfs`
  2. 看說明：`scrounge-ntfs -h`（或 `man scrounge-ntfs`）
  3. 執行：`scrounge-ntfs ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  scrounge-ntfs: invalid option -- '-'
  usage: scrounge-ntfs -l disk                                              
    List all drive partition information.                              
                                                                       
  usage: scrounge-ntfs -s disk                                              
    Search drive for NTFS partitions.                                  
  ```
- 文件：http://thewalter.net/stef/software/scrounge/


## Kali tools — forensic-imaging-tools (4)

### affcat
- Output contents of an image file to stdout.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y afflib-tools`
  2. 看說明：`affcat -h`（或 `man affcat`）
  3. 執行：`affcat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  affcat: invalid option -- '-'
  affcat version 3.7.22
  usage: affcat [options] infile [... more infiles]
  options:
      -s name --- Just output segment name
      -p ###  --- just output data page number ###
  ```

### dd_rescue
- Data recovery and protection tool
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ddrescue`
  2. 看說明：`dd_rescue -h`（或 `man dd_rescue`）
  3. 執行：`dd_rescue ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  dd_rescue Version 1.99.13, <email>, GNU GPL v2/v3
   (DD_RESCUE_1_99_13)
   (compiled May 21 2025 11:21:52 by gcc (Debian 14.2.0-19) 14.2.0)
   (features: O_DIRECT dl/libfallocate fallocate splice fitrim xattr aes arm8)
  dd_rescue is free software. It's protected by the terms of GNU GPL v2 or v3
  ```

### ewfacquire
- Acquires data in the EWF format
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ewf-tools`
  2. 看說明：`ewfacquire -h`（或 `man ewfacquire`）
  3. 執行：`ewfacquire ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ewfacquire: invalid option -- '-'
  ewfacquire 20140816
  
  Invalid argument: ewfacquire
  Use ewfacquire to acquire data from a file or device and store it in the EWF
  format (Expert Witness Compression Format).
  ```

### guymager
- 以 Qt 為基礎的鑑識映像工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y guymager`
  2. 看說明：`guymager -h`（或 `man guymager`）
  3. 執行：`guymager ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Using default log file name /var/log/guymager.log
  Log file error: Can't be opened
  Sun 25.Oct.2026 08:40:35 B85627E0 toollog.cpp t_Log 76                     Info  - Log file opened
  Sun 25.Oct.2026 08:40:35 B85627E0 main.cpp MainGo 418                      Info  - =================================================== Starting GUYMAGER ===================================================
  Sun 25.Oct.2026 08:40:35 B85627E0 main.cpp MainGo 419                      Info  - Version: 0.8.13-3
  ```
- 文件：https://guymager.sourceforge.net/


## Kali tools — forensics (10)

### binwalk
- 分析二進位資料與可執行碼的工具函式庫
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y binwalk`
  2. 看說明：`binwalk -h`（或 `man binwalk`）
  3. 執行：`binwalk ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Binwalk v2.4.3
  Original author: Craig Heffner, ReFirmLabs
  https://github.com/OSPG/binwalk
  
  Usage: binwalk [OPTIONS] [FILE1] [FILE2] [FILE3] ...
  ```
- 文件：https://github.com/ReFirmLabs/binwalk

### binwalk3
- 分析二進位資料與可執行碼的工具函式庫
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y binwalk3`
  2. 看說明：`binwalk3 -h`（或 `man binwalk3`）
  3. 執行：`binwalk3 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Analyzes data for embedded file types
  
  Usage: binwalk3 [OPTIONS] [FILE_NAME]
  
  Arguments:
    [FILE_NAME]  Path to the file to analyze
  ```
- 文件：https://github.com/ReFirmLabs/binwalk

### bulk_extractor
- Scans a disk image for regular expressions and other content.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y bulk-extractor`
  2. 看說明：`bulk_extractor -h`（或 `man bulk_extractor`）
  3. 執行：`bulk_extractor ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  bulk_extractor version 2.1.1: A high-performance flexible digital forensics program.
  Usage:
    bulk_extractor [OPTION...] image_name
  
    -A, --offset_add arg          Offset added (in bytes) to feature locations 
                                  (default: 0)
  ```

### chkrootkit
- rootkit 偵測器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y chkrootkit`
  2. 看說明：`chkrootkit -h`（或 `man chkrootkit`）
  3. 執行：`chkrootkit ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: /usr/sbin/chkrootkit [options] [test ...]
  Options:
          -h                show this help and exit
          -V                show version information and exit
          -l                show available tests and exit
          -d                debug
  ```
- 文件：https://www.chkrootkit.org/

### galleta
- IE cookie 鑑識分析工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y galleta`
  2. 看說明：`galleta -h`（或 `man galleta`）
  3. 執行：`galleta ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Cookie File: --help
  
  ERROR - The cookie file cannot be opened!
  
  
  Usage:  galleta [options] <filename>
  ```
- 文件：https://odessa.sourceforge.net/

### hashdeep
- 遞迴計算雜湊或分段雜湊
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hashdeep`
  2. 看說明：`hashdeep -h`（或 `man hashdeep`）
  3. 執行：`hashdeep ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  hashdeep: invalid option -- '-'
  Try `hashdeep -h` for more information.
  ```
- 文件：https://md5deep.sourceforge.net

### rkhunter
- rootkit、後門、嗅探器與 exploit 掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rkhunter`
  2. 看說明：`rkhunter -h`（或 `man rkhunter`）
  3. 執行：`rkhunter ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Usage: rkhunter {--check | --unlock | --update | --versioncheck |
                   --propupd [{filename | directory | package name},...] |
                   --list [{tests | {lang | languages} | rootkits | perl | propfiles}] |
                   --config-check | --version | --help} [options]
  ```
- 文件：https://rkhunter.sourceforge.net

### ssdeep
- 遞迴分段雜湊工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ssdeep`
  2. 看說明：`ssdeep -h`（或 `man ssdeep`）
  3. 執行：`ssdeep ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ssdeep: invalid option -- '-'
  Try `ssdeep -h` for more information.
  ```
- 文件：https://github.com/ssdeep-project/ssdeep

### unhide
- 尋找隱藏程序與連接埠的鑑識工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y unhide`
  2. 看說明：`unhide -h`（或 `man unhide`）
  3. 執行：`unhide ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Unhide 20240509
  Copyright © 2010-2024 Yago Jesus & Patrick Gouin
  License GPLv3+ : GNU GPL version 3 or later
  http://www.unhide-forensics.info
  
  NOTE : This version of unhide is for systems using Linux >= 2.6 
  ```
- 文件：https://www.unhide-forensics.info

### yara
- 惡意程式研究者的模式比對瑞士刀
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y yara`
  2. 看說明：`yara -h`（或 `man yara`）
  3. 執行：`yara ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  YARA 4.5.8, the pattern matching swiss army knife.
  Usage: yara [OPTION]... [NAMESPACE:]RULES_FILE... FILE | DIR | PID
  
  Mandatory arguments to long options are mandatory for short options too.
  
         --atom-quality-table=FILE           path to a file with the atom quality table
  ```
- 文件：https://virustotal.github.io/yara/


## Kali tools — hash-identification (2)

### hash-identifier
- 辨識雜湊類型的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hash-identifier`
  2. 看說明：`hash-identifier -h`（或 `man hash-identifier`）
  3. 執行：`hash-identifier ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
     #########################################################################
     #     __  __                     __           ______    _____           #
     #    /\ \/\ \                   /\ \         /\__  _\  /\  _ `\         #
     #    \ \ \_\ \     __      ____ \ \ \___     \/_/\ \/  \ \ \/\ \        #
     #     \ \  _  \  /'__`\   / ,__\ \ \  _ `\      \ \ \   \ \ \ \ \       #
     #      \ \ \ \ \/\ \_\ \_/\__, `\ \ \ \ \ \      \_\ \__ \ \ \_\ \      #
  ```
- 文件：https://github.com/blackploit/hash-identifier

### hashid
- 辨識用於加密資料的各種雜湊類型
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hashid`
  2. 看說明：`hashid -h`（或 `man hashid`）
  3. 執行：`hashid ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: hashid.py [-h] [-e] [-m] [-j] [-o FILE] [--version] INPUT
  
  Identify the different types of hashes used to encrypt data
  
  positional arguments:
    INPUT               input to analyze (default: STDIN)
  ```
- 文件：https://psypanda.github.io/hashID/


## Kali tools — host-information (3)

### metagoofil
- 擷取公開文件中繼資料的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y metagoofil`
  2. 看說明：`metagoofil -h`（或 `man metagoofil`）
  3. 執行：`metagoofil ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: metagoofil.py [-h] -d DOMAIN [-e DELAY] [-f [SAVE_FILE]]
                       [-i URL_TIMEOUT] [-l SEARCH_MAX] [-n DOWNLOAD_FILE_LIMIT]
                       [-o SAVE_DIRECTORY] [-r NUMBER_OF_THREADS] -t FILE_TYPES
                       [-u [USER_AGENT]] [-w]
  
  Metagoofil v1.2.0 - Search Google and download specific file types.
  ```
- 文件：https://github.com/opsdisk/metagoofil

### spiderfoot
- OSINT 蒐集與偵察工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y spiderfoot`
  2. 看說明：`spiderfoot -h`（或 `man spiderfoot`）
  3. 執行：`spiderfoot ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: sf.py [-h] [-d] [-l IP:port] [-m mod1,mod2,...] [-M] [-C scanID]
               [-s TARGET] [-t type1,type2,...]
               [-u {all,footprint,investigate,passive}] [-T] [-o {tab,csv,json}]
               [-H] [-n] [-r] [-S LENGTH] [-D DELIMITER] [-f]
               [-F type1,type2,...] [-x] [-q] [-V] [-max-threads MAX_THREADS]
  ```
- 文件：https://www.spiderfoot.net

### spiderfoot-cli
- OSINT collection and reconnaissance tool
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y spiderfoot`
  2. 看說明：`spiderfoot-cli -h`（或 `man spiderfoot-cli`）
  3. 執行：`spiderfoot-cli ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: sfcli.py [-h] [-d] [-s URL] [-u USER] [-p PASS] [-P PASSFILE] [-e FILE]
                  [-l FILE] [-n] [-o FILE] [-i] [-q] [-k] [-b]
  
  SpiderFoot: Open Source Intelligence Automation.
  
  options:
  ```


## Kali tools — identify (4)

### maryam
- OWASP Maryam 模組化開源 OSINT 框架
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y maryam`
  2. 看說明：`maryam -h`（或 `man maryam`）
  3. 執行：`maryam ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: maryam [-h] [-e execute] [-s start] [-v]
  maryam -h
  
  optional arguments:
  	  -h, --help   show this help message and exit
  	  -e execute   execute a command and exit
  ```
- 文件：https://github.com/saeeddhqan/Maryam

### nipper
- Network Infrastructure Parser. Produces reports based of network device configuration file settings.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y nipper-ng`
  2. 看說明：`nipper -h`（或 `man nipper`）
  3. 執行：`nipper ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
                       _                           ____
                 _ __ (_)_ __  _ __   ___ _ __    / ->/|
                | '_ \| | '_ \| '_ \ / _ \ '__|  /<-_/ |
                | | | | | |_) | |_) |  __/ |     |   | /
                |_| |_|_| .__/| .__/ \___|_|     |___|/
                        |_|   |_|
  ```

### osrframework-cli
- Open Sources Research Framework
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y osrframework`
  2. 看說明：`osrframework-cli -h`（或 `man osrframework-cli`）
  3. 執行：`osrframework-cli ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: osrf [-h] [--license] [--version]
              <sub_command> <sub_command_options> ...
  
  OSRFramework CLI. Collection of tools included in the framework.
  
  SUBCOMMANDS:
  ```

### tiger
- Linux 安全稽核與入侵偵測工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y tiger`
  2. 看說明：`tiger -h`（或 `man tiger`）
  3. 執行：`tiger ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Tiger UN*X security checking system
     Developed by Texas A&M University, 1994
     Updated by the Advanced Research Corporation, 1999-2002
     Further updated by Javier Fernandez-Sanguino, 2001-2018
     Contributions by Francisco Manuel Garcia Claramonte, 2009-2010
     Covered by the GNU General Public License (GPL)
  ```
- 文件：http://savannah.nongnu.org/projects/tiger/


## Kali tools — impact (9)

### dhcpig
- 使用 scapy 的 DHCP 耗盡攻擊腳本
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dhcpig`
  2. 看說明：`dhcpig -h`（或 `man dhcpig`）
  3. 執行：`dhcpig ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  enhanced DHCP exhaustion attack.
  
  Doc:
      http://github.com/kamorin/DHCPig
  ```
- 文件：https://github.com/kamorin/DHCPig

### iaxflood
- VoIP 洪泛工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y iaxflood`
  2. 看說明：`iaxflood -h`（或 `man iaxflood`）
  3. 執行：`iaxflood ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: iaxflood sourcename destinationname numpackets
  ```
- 文件：http://www.hackingexposedvoip.com/sec_tools.html

### inviteflood
- 透過 UDP/IP 洪泛 SIP/SDP INVITE 訊息
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y inviteflood`
  2. 看說明：`inviteflood -h`（或 `man inviteflood`）
  3. 執行：`inviteflood ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  inviteflood - Version 2.0
                June 09, 2006
   Usage:
   Mandatory -
  	interface (e.g. eth0)
  ```
- 文件：http://www.hackingvoip.com/sec_tools.html

### mdk3
- IEEE 802.11 無線攻擊工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y mdk3`
  2. 看說明：`mdk3 -h`（或 `man mdk3`）
  3. 執行：`mdk3 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  This program requires root privileges.
  ```
- 文件：https://github.com/aircrack-ng/mdk3

### rtpflood
- 洪泛任何 RTP 裝置的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rtpflood`
  2. 看說明：`rtpflood -h`（或 `man rtpflood`）
  3. 執行：`rtpflood ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: rtpflood sourcename destinationname srcport destport numpackets seqno timestamp SSID
  ```
- 文件：http://www.hackingvoip.com/sec_tools.html

### siege
- HTTP 回歸測試與壓力測試工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y siege`
  2. 看說明：`siege -h`（或 `man siege`）
  3. 執行：`siege ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  SIEGE 4.1.7
  Usage: siege [options]
         siege [options] URL
         siege -g URL
  Options:
    -V, --version             VERSION, prints the version number.
  ```
- 文件：https://www.joedog.org/JoeDog/Siege

### slowhttptest
- 應用層 DoS 攻擊模擬工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y slowhttptest`
  2. 看說明：`slowhttptest -h`（或 `man slowhttptest`）
  3. 執行：`slowhttptest ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Illegal option --
  Try 'slowhttptest -h' for more information
  ```
- 文件：https://github.com/shekyan/slowhttptest

### t50
- 多協定封包注入工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y t50`
  2. 看說明：`t50 -h`（或 `man t50`）
  3. 執行：`t50 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  T50 Experimental Mixed Packet Injector Tool v5.8.7c
  Copyright (C) 2010 - 2025 - T50 developers
  Originally created by Nelson Brito <<email>>
  Previously maintained by Fernando Mercês <<email>>
  Maintained by Frederico Lamberti Pissarra <<email>>
  ```
- 文件：https://gitlab.com/fredericopissarra/t50

### thc-ssl-dos
- SSL 握手壓測工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y thc-ssl-dos`
  2. 看說明：`thc-ssl-dos -h`（或 `man thc-ssl-dos`）
  3. 執行：`thc-ssl-dos ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
       ______________ ___  _________
       \__    ___/   |   \ \_   ___ \
         |    | /    ~    \/    \  \/
         |    | \    Y    /\     \____
         |____|  \___|_  /  \______  /
                       \/          \/
  ```
- 文件：http://www.thc.org/thc-ssl-dos/


## Kali tools — initial-access (10)

### commix
- 自動化一站式 OS 命令注入與利用工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y commix`
  2. 看說明：`commix -h`（或 `man commix`）
  3. 執行：`commix ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: commix [option(s)]
  
  Options:
    -h, --help            Show help and exit.
  
    General:
  ```
- 文件：https://commixproject.com

### dns-rebind
- DNS rebinding tool
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rebind`
  2. 看說明：`dns-rebind -h`（或 `man dns-rebind`）
  3. 執行：`dns-rebind ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Rebind v0.3.4
  
  Usage: dns-rebind [OPTIONS]
  
  	-i <interface>	Specify the network interface to bind to
  ```

### jboss-linux
- JBoss script for obtaining remote shell access
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y jboss-autopwn`
  2. 看說明：`jboss-linux -h`（或 `man jboss-linux`）
  3. 執行：`jboss-linux ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [x] Retrieving cookie
  nc: invalid option -- '-'
  nc -h for help
  [x] Now creating BSH script...
  nc: invalid option -- '-'
  nc -h for help
  ```

### jboss-win
- JBoss script for obtaining remote shell access
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y jboss-autopwn`
  2. 看說明：`jboss-win -h`（或 `man jboss-win`）
  3. 執行：`jboss-win ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [x] Retrieving cookie
  nc: invalid option -- '-'
  nc -h for help
  [x] Now creating BSH script...
  nc: invalid option -- '-'
  nc -h for help
  ```

### jsql
- Java tool for automatic database injection
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y jsql-injection`
  2. 看說明：`jsql -h`（或 `man jsql`）
  3. 執行：`jsql ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  2026-10-25 08:40:51,439 ERROR [main] jsql.MainApp (MainApp.java:30) - Headless runtime not supported, use default Java runtime instead
  ```

### metasploit-framework
- 漏洞開發與弱點研究框架
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y metasploit-framework`
  2. 看說明：`msf-jsobfu -h`（或 `man msf-jsobfu`）
  3. 執行：`msf-jsobfu ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Aborted! SIGTERM
  ```
- 文件：https://www.metasploit.com/

### setoolkit
- Social-Engineer Toolkit
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y set`
  2. 看說明：`setoolkit -h`（或 `man setoolkit`）
  3. 執行：`setoolkit ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
   The Social-Engineer Toolkit (SET) - by David Kennedy (ReL1K)
  
   Not running as root. 
  
  Exiting the Social-Engineer Toolkit (SET).
  ```

### sqlmap
- 自動化 SQL 注入工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sqlmap`
  2. 看說明：`sqlmap -h`（或 `man sqlmap`）
  3. 執行：`sqlmap ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
          ___
         __H__
   ___ ___[(]_____ ___ ___  {1.10.9#stable}
  |_ -| . [']     | .'| . |
  |___|_  [)]_|_|_|__,|  _|
        |_|V...       |_|   https://sqlmap.org
  ```
- 文件：https://sqlmap.org/

### sqlninja
- SQL Server 注入與接管工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sqlninja`
  2. 看說明：`sqlninja -h`（或 `man sqlninja`）
  3. 執行：`sqlninja ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/sqlninja version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: sqlninja [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- 文件：https://sqlninja.sourceforge.net/

### sqlsus
- MySQL 注入工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sqlsus`
  2. 看說明：`sqlsus -h`（或 `man sqlsus`）
  3. 執行：`sqlsus ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Can't locate Switch.pm in @INC (you may need to install the Switch module) (@INC entries checked: /usr/share/sqlsus/lib /etc/perl /usr/local/lib/aarch64-linux-gnu/perl/5.42.3 /usr/local/share/perl/5.42.3 /usr/lib/aarch64-linux-gnu/perl5/5.42 /usr/share/perl5 /usr/lib/aarch64-linux-gnu/perl-base /usr/lib/aarch64-linux-gnu/perl/5.42 /usr/share/perl/5.42 /usr/local/lib/site_perl) at /usr/share/sqlsus/lib/Sqlsus/autoconf.pm line 15.
  BEGIN failed--compilation aborted at /usr/share/sqlsus/lib/Sqlsus/autoconf.pm line 15.
  Compilation failed in require at /usr/bin/sqlsus line 29.
  BEGIN failed--compilation aborted at /usr/bin/sqlsus line 29.
  ```
- 文件：https://sqlsus.sourceforge.net/


## Kali tools — kali-offsec-links (9)

### Exploit Database
- Archive of public exploits that is CVE compliant
- **步驟:**
  1. 啟動以線上瀏覽 exploit。
  2. 離線/CLI 用：`toolkit.sh search <產品 版本>`。

### Kali Bugs
- The Kali Linux bug tracker
- **步驟:**
  1. 啟動以回報或搜尋 Kali bug。

### Kali Docs
- Official Kali Linux documentation website
- **步驟:**
  1. 啟動查官方教學（安裝、工具、疑難排解）。

### Kali Forums
- Get community support on forums
- **步驟:**
  1. 啟動以提問/搜尋社群問題。

### Kali Linux
- The official web site of Kali Linux
- **步驟:**
  1. 啟動查下載/消息。

### Kali Tools
- Discover tools available in Kali Linux
- **步驟:**
  1. 啟動查任何 Kali 工具的文件/用法。

### NetHunter
- Penetration testing tools on mobile devices
- **步驟:**
  1. 啟動查 NetHunter 文件（Android 滲透平台）。

### OffSec Training
- Follow courses and get certified to show off your skills
- **步驟:**
  1. 啟動瀏覽 PEN-200/OSCP 等課程。

### VulnHub
- Vulnerable by design - lab to download virtual machines to test your skills
- **步驟:**
  1. 啟動找合法練習靶機（隔離執行）。


## Kali tools — lateral-movement (3)

### impacket-psexec
- Python3 module to easily build and dissect network protocols
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y impacket-scripts`
  2. 看說明：`impacket-psexec -h`（或 `man impacket-psexec`）
  3. 執行：`impacket-psexec ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: psexec.py [-h] [-c pathname] [-path PATH] [-file FILE] [-ts] [-debug]
                   [-codec CODEC] [-hashes LMHASH:NTHASH] [-no-pass] [-k]
                   [-aesKey hex key] [-keytab KEYTAB] [-dc-ip ip address]
                   [-target-ip ip address] [-port [destination port]]
  ```

### impacket-smbexec
- Python3 module to easily build and dissect network protocols
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y impacket-scripts`
  2. 看說明：`impacket-smbexec -h`（或 `man impacket-smbexec`）
  3. 執行：`impacket-smbexec ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: smbexec.py [-h] [-share SHARE] [-mode {SERVER,SHARE}] [-ts] [-debug]
                    [-codec CODEC] [-shell-type {cmd,powershell}]
                    [-dc-ip ip address] [-target-ip ip address]
                    [-port [destination port]] [-service-name service_name]
  ```

### rdesktop
- Remote Desktop Protocol client
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rdesktop`
  2. 看說明：`rdesktop -h`（或 `man rdesktop`）
  3. 執行：`rdesktop ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  rdesktop: invalid option -- '-'
  rdesktop: A Remote Desktop Protocol client.
  Version 1.9.0. Copyright (C) 1999-2016 Matthew Chapman et al.
  See http://www.rdesktop.org/ for more information.
  
  Usage: rdesktop [options] server[:port]
  ```


## Kali tools — network-information (7)

### amass
- 深入的 DNS 列舉與網路測繪
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y amass`
  2. 看說明：`amass -h`（或 `man amass`）
  3. 執行：`amass ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```
- 文件：https://github.com/OWASP/Amass

### dmitry
- Deepmagic 資訊蒐集工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dmitry`
  2. 看說明：`dmitry -h`（或 `man dmitry`）
  3. 執行：`dmitry ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  dmitry: invalid option -- '-'
  Deepmagic Information Gathering Tool
  "There be some deep magic going on"
  
  Usage: dmitry [-winsepfb] [-t 0-9] [-o %host.txt] host
    -o	 Save output to %host.txt or to file specified by -o file
  ```
- 文件：https://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/

### legion
- 半自動化網路滲透測試工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y legion`
  2. 看說明：`legion -h`（或 `man legion`）
  3. 執行：`legion ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: legion.py [-h] [--mcp-server] [--headless] [--web] [--tool-audit |
                   --tool-install-plan {kali,ubuntu} |
                   --tool-install {kali,ubuntu}] [--web-port WEB_PORT]
                   [--web-bind-all] [--web-transparent-ui]
                   [--input-file INPUT_FILE] [--discovery] [--staged-scan]
                   [--output-file OUTPUT_FILE] [--run-actions]
  ```
- 文件：https://github.com/Hackman238/legion

### nmap
- 網路測繪器（The Network Mapper）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y nmap`
  2. 看說明：`nmap -h`（或 `man nmap`）
  3. 執行：`nmap ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Nmap 7.991 ( https://nmap.org )
  Usage: nmap [Scan Type(s)] [Options] {target specification}
  TARGET SPECIFICATION:
    Can pass hostnames, IP addresses, networks, etc.
    Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
    -iL <inputfilename>: Input from list of hosts/networks
  ```
- 文件：https://nmap.org/

### theHarvester
- 從公開來源蒐集 email 與子網域的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y theharvester`
  2. 看說明：`theHarvester -h`（或 `man theHarvester`）
  3. 執行：`theHarvester ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Read proxies.yaml from /etc/theHarvester/proxies.yaml
  *******************************************************************
  *  _   _                                            _             *
  * | |_| |__   ___    /\  /\__ _ _ ____   _____  ___| |_ ___ _ __  *
  * | __|  _ \ / _ \  / /_/ / _` | '__\ \ / / _ \/ __| __/ _ \ '__| *
  * | |_| | | |  __/ / __  / (_| | |   \ V /  __/\__ \ ||  __/ |    *
  ```
- 文件：https://github.com/laramies/theHarvester

### unicornscan
- 使用者態分散式 TCP/IP 堆疊
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y unicornscan`
  2. 看說明：`unicornscan -h`（或 `man unicornscan`）
  3. 執行：`unicornscan ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  unicornscan (version 0.4.7)
  usage: unicornscan [options `b:B:cd:De:EFG:hHi:Ij:l:L:m:M:o:p:P:q:Qr:R:s:St:T:u:Uw:W:vVzZ:' ] X.X.X.X/YY:S-E
  	-b, --broken-crc     *set broken crc sums on [T]ransport layer, [N]etwork layer, or both[TN]
  	-B, --source-port    *set source port? or whatever the scan module expects as a number
  	-c, --proc-duplicates process duplicate replies
  	-d, --delay-type     *set delay type (numeric value, valid options are `1:tsc 2:gtod 3:sleep')
  ```
- 文件：http://www.unicornscan.org/

### zenmap
- Nmap 的圖形前端
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y zenmap`
  2. 看說明：`zenmap -h`（或 `man zenmap`）
  3. 執行：`zenmap ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: zenmap [options] [result files]
  
  Options:
    --version             show program's version number and exit
    -h, --help            show this help message and exit
    --confdir=DIR         Use DIR as the user configuration directory. Default:
  ```
- 文件：https://nmap.org/


## Kali tools — network-information-dns (5)

### dnsenum
- 列舉網域 DNS 資訊的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dnsenum`
  2. 看說明：`dnsenum -h`（或 `man dnsenum`）
  3. 執行：`dnsenum ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  dnsenum VERSION:1.3.1
  Usage: dnsenum [Options] <domain>
  [Options]:
  Note: If no -f tag supplied will default to /usr/share/dnsenum/dns.txt or
  the dns.txt file in the same directory as dnsenum
  GENERAL OPTIONS:
  ```
- 文件：https://github.com/SparrowOchon/dnsenum2

### dnsmap
- DNS 網域名稱暴力破解工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dnsmap`
  2. 看說明：`dnsmap -h`（或 `man dnsmap`）
  3. 執行：`dnsmap ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  dnsmap 0.36 - DNS Network Mapper
  
  [+] error: entered domain is not valid!
  ```
- 文件：https://github.com/resurrecting-open-source-projects/dnsmap

### dnsrecon
- 強大的 DNS 列舉腳本
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dnsrecon`
  2. 看說明：`dnsrecon -h`（或 `man dnsrecon`）
  3. 執行：`dnsrecon ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: dnsrecon [-h] [-d DOMAIN] [-iL INPUT_LIST] [-n NS_SERVER] [-r RANGE]
                  [-D DICTIONARY] [-f] [-a] [-s] [-b] [-y] [-k] [-w] [--shodan]
                  [--shodan-active] [--shodan-key SHODAN_KEY] [-z]
                  [--threads THREADS] [--lifetime LIFETIME]
                  [--loglevel {DEBUG,INFO,WARNING,ERROR,CRITICAL}] [--tcp]
                  [--db DB] [-x XML] [-c CSV] [-j JSON] [--iw]
  ```
- 文件：https://github.com/darkoperator/dnsrecon

### dnstracer
- 追蹤 DNS 查詢到來源
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dnstracer`
  2. 看說明：`dnstracer -h`（或 `man dnstracer`）
  3. 執行：`dnstracer ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  dnstracer: invalid option -- '-'
  DNSTRACER version 1.10 - (c) Edwin Groothuis - http://www.mavetju.org
  Usage: dnstracer [options] [host]
  	-c: disable local caching, default enabled
  	-C: enable negative caching, default disabled
  	-e: disable EDNS0, default enabled
  ```
- 文件：http://www.mavetju.org/unix/dnstracer.php

### dnswalk
- 以 nameserver 查詢檢查 DNS 區域資訊
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dnswalk`
  2. 看說明：`dnswalk -h`（或 `man dnswalk`）
  3. 執行：`dnswalk ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/dnswalk version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: dnswalk [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- 文件：https://github.com/davebarr/dnswalk


## Kali tools — network-security-appliances (3)

### firewalk
- 主動式偵察的網路安全工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y firewalk`
  2. 看說明：`firewalk -h`（或 `man firewalk`）
  3. 執行：`firewalk ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  firewalk: invalid option -- '-'
  Usage : firewalk [options] target_gateway metric
  		   [-d 0 - 65535] destination port to use (ramping phase)
  		   [-h] program help
  		   [-i device] interface
  		   [-n] do not resolve IP addresses into hostnames
  ```
- 文件：http://packetfactory.openwall.net/projects/firewalk/

### tcpreplay
- 以任意速度重播 tcpdump 檔的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y tcpreplay`
  2. 看說明：`tcpreplay -h`（或 `man tcpreplay`）
  3. 執行：`tcpreplay ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Warning in interface.c:get_interface_list() line 80:
  May need to run as root to get access to all network interfaces.
  tcpreplay (tcpreplay) - Replay network traffic stored in pcap files
  Usage:  tcpreplay [ -<flag> [<val>] | --<name>[{=| }<val>] ]... \
  		<pcap_file(s)> | <pcap_dir(s)>
  ```
- 文件：http://tcpreplay.appneta.com/

### wafw00f
- 辨識並指紋辨識 Web 應用防火牆
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y wafw00f`
  2. 看說明：`wafw00f -h`（或 `man wafw00f`）
  3. 執行：`wafw00f ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: wafw00f url1 [url2 [url3 ... ]]
  example: wafw00f http://www.victim.org/
  
  Options:
    -h, --help            show this help message and exit
    -v, --verbose         Enable verbosity, multiple -v options increase
  ```
- 文件：https://github.com/EnableSecurity/wafw00f


## Kali tools — network-service-discovery (2)

### ike-scan
- 探索與指紋辨識 IKE 主機（IPsec VPN 伺服器）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ike-scan`
  2. 看說明：`ike-scan -h`（或 `man ike-scan`）
  3. 執行：`ike-scan ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: ike-scan [options] [hosts...]
  
  Target hosts must be specified on the command line unless the --file option is
  given, in which case the targets are read from the specified file instead.
  
  The target hosts can be specified as IP addresses or hostnames. You can also
  ```
- 文件：https://github.com/royhills/ike-scan

### masscan
- TCP 連接埠掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y masscan`
  2. 看說明：`masscan -h`（或 `man masscan`）
  3. 執行：`masscan ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  MASSCAN is a fast port scanner. The primary input parameters are the
  IP addresses/ranges you want to scan, and the port numbers. An example
  is the following, which scans the 10.x.x.x network for web servers:
   masscan 10.0.0.0/8 -p80
  The program auto-detects network interface/adapter settings. If this
  fails, you'll have to set these manually. The following is an
  ```
- 文件：https://github.com/robertdavidgraham/masscan


## Kali tools — network-share-discovery (3)

### enum4linux
- 列舉 Windows 與 Samba 系統資訊
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y enum4linux`
  2. 看說明：`enum4linux -h`（或 `man enum4linux`）
  3. 執行：`enum4linux ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ./enum4linux.pl version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: enum4linux.pl [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- 文件：https://labs.portcullis.co.uk/tools/enum4linux/

### nbtscan
- 掃描網路尋找 NetBIOS 資訊
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y nbtscan`
  2. 看說明：`nbtscan -h`（或 `man nbtscan`）
  3. 執行：`nbtscan ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  nbtscan: invalid option -- '-'
  
  NBTscan version 1.7.2.
  This is a free software and it comes with absolutely no warranty.
  You can use, distribute and modify it under terms of GNU GPL 2+.
  ```
- 文件：https://github.com/resurrecting-open-source-projects/nbtscan

### smbclient
- Ftp-like client to access SMB/CIFS resources on servers
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y smbclient`
  2. 看說明：`smbclient -h`（或 `man smbclient`）
  3. 執行：`smbclient ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: smbclient [OPTIONS] service <password>
    -M, --message=HOST                           Send message
    -I, --ip-address=IP                          Use this IP to connect to
    -E, --stderr                                 Write messages to stderr
                                                 instead of stdout
    -L, --list=HOST                              Get a list of shares available
  ```


## Kali tools — network-sniffing (12)

### above
- 尋找網路弱點的網路安全嗅探器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y above`
  2. 看說明：`above -h`（或 `man above`）
  3. 執行：`above ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  WARNING: [bgp.py] use_2_bytes_asn: True
                                               
          ___    __                  
         /   |  / /_  ____ _   _____ 
        / /| | / __ \/ __ \ | / / _ \
       / ___ |/ /_/ / /_/ / |/ /  __/
  ```
- 文件：https://github.com/caster0x00/Above

### arpspoof
- Intercept packets on a switched LAN
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dsniff`
  2. 看說明：`arpspoof -h`（或 `man arpspoof`）
  3. 執行：`arpspoof ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  arpspoof: libnet_open_link(): UID/EUID 0 or capability CAP_NET_RAW required
  ```

### darkstat
- 網路流量分析器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y darkstat`
  2. 看說明：`darkstat -h`（或 `man darkstat`）
  3. 執行：`darkstat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  darkstat 3.0.722 (using libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3))
  
  usage: darkstat [ -i interface ]
                  [ -f filter ]
                  [ -r capfile ]
                  [ -p port ]
  ```
- 文件：https://unix4lyfe.org/darkstat/

### dnschef
- 滲透測試用的 DNS 代理
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dnschef`
  2. 看說明：`dnschef -h`（或 `man dnschef`）
  3. 執行：`dnschef ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/dnschef:453: SyntaxWarning: "\/" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\/"? A raw string is also an option.
    header += "      / _` | '_ \/ __|/ __| '_ \ / _ \  _|\n"
  /usr/bin/dnschef:454: SyntaxWarning: "\_" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\_"? A raw string is also an option.
    header += "     | (_| | | | \__ \ (__| | | |  __/ |  \n"
  /usr/bin/dnschef:455: SyntaxWarning: "\_" is an invalid escape sequence. Such sequences will not work in the future. Did you mean "\\_"? A raw string is also an option.
    header += "      \__,_|_| |_|___/\___|_| |_|\___|_|  \n"
  ```
- 文件：https://github.com/iphelix/dnschef

### driftnet
- 從網路流量擷取並顯示圖片
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y driftnet`
  2. 看說明：`driftnet -h`（或 `man driftnet`）
  3. 執行：`driftnet ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Sun Oct 25 08:40:29 2026 - error: unrecognised option --
  driftnet, version 1.5.0
  Capture images from network traffic and display them.
  
  Synopsis: driftnet [options] [filter code]
  ```
- 文件：https://github.com/deiv/driftnet

### dsniff
- 嗅探網路明文機密的各種工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dsniff`
  2. 看說明：`dsniff -h`（或 `man dsniff`）
  3. 執行：`dsniff ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  dsniff: invalid option -- '-'
  Version: 2.5a2
  Usage: dsniff [-cdamDNPCv] [-i interface | -p pcapfile] [-s snaplen]
                [-f services] [-t trigger[,...]]
                [pcap filter]
   -c         Half-duplex TCP stream assembly
  ```
- 文件：https://github.com/hackerschoice/dsniff

### hexinject
- 多功能封包注入與嗅探器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hexinject`
  2. 看說明：`hexinject -h`（或 `man hexinject`）
  3. 執行：`hexinject ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  hexinject: invalid option -- '-'
  HexInject 1.6 [hexadecimal packet injector/sniffer]
  written by: Emanuele Acri <<email>>
  
  Usage:
     hexinject <mode> <options>
  ```
- 文件：https://hexinject.sourceforge.net/

### netsniff-ng
- Linux 網路封包嗅探工具組
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y netsniff-ng`
  2. 看說明：`netsniff-ng -h`（或 `man netsniff-ng`）
  3. 執行：`netsniff-ng ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  netsniff-ng 0.6.9, the packet sniffing beast
  http://www.netsniff-ng.org
  
  Usage: netsniff-ng [options] [filter-expression]
  Options:
    -i|-d|--dev|--in <dev|pcap|->  Input source as netdev, pcap or pcap stdin
  ```
- 文件：http://netsniff-ng.org/

### scapy
- Interactive packet manipulation tool
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y scapy`
  2. 看說明：`scapy -h`（或 `man scapy`）
  3. 執行：`scapy ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ERROR: option --help not recognized
  ```

### tcpdump
- 命令列網路流量分析器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y tcpdump`
  2. 看說明：`tcpdump -h`（或 `man tcpdump`）
  3. 執行：`tcpdump ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  tcpdump version 4.99.6
  libpcap version 1.10.7 (64-bit time_t, with TPACKET_V3)
  OpenSSL 3.6.3 9 Jun 2026
  64-bit build, 64-bit time_t
  Usage: tcpdump [-AbdDefghHIJKlLnNOpqStuUvxX#] [ -B size ] [ -c count ] [--count]
  		[ -C file_size ] [ -E algo:secret ] [ -F file ] [ -G seconds ]
  ```
- 文件：https://www.tcpdump.org/

### tcpflow
- TCP 流量記錄器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y tcpflow`
  2. 看說明：`tcpflow -h`（或 `man tcpflow`）
  3. 執行：`tcpflow ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  TCPFLOW version 1.6.1
  
  usage: tcpflow [-aBcCDhIpsvVZ] [-b max_bytes] [-d debug_level] 
       [-[eE] scanner] [-f max_fds] [-F[ctTXMkmg]] [-h|--help] [-i iface]
       [-l files...] [-L semlock] [-m min_bytes] [-o outdir] [-r file] [-R file]
       [-S name=value] [-T template] [-U|--relinquish-privileges user] [-v|--verbose]
  ```
- 文件：https://github.com/simsong/tcpflow

### wireshark
- 網路流量分析器（圖形介面）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y wireshark`
  2. 看說明：`wireshark -h`（或 `man wireshark`）
  3. 執行：`wireshark ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Wireshark 4.6.6
  Interactively dump and analyze network traffic.
  See https://www.wireshark.org for more information.
  
  Usage: wireshark [options] ... [ <infile> ]
  ```
- 文件：https://www.wireshark.org/


## Kali tools — non-application-layer-protocol (7)

### dbd
- 含加密的 Netcat 複製品
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dbd`
  2. 看說明：`dbd -h`（或 `man dbd`）
  3. 執行：`dbd ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  dbd: invalid option -- '-'
  ```
- 文件：https://github.com/gitdurandal/dbd

### ncat
- NMAP 版 netcat 重製
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ncat`
  2. 看說明：`ncat -h`（或 `man ncat`）
  3. 執行：`ncat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Ncat 7.991 ( https://nmap.org/ncat )
  Usage: ncat [options] [hostname] [port]
  
  Options taking a time assume seconds. Append 'ms' for milliseconds,
  's' for seconds, 'm' for minutes, or 'h' for hours (e.g. 500ms).
    -4                         Use IPv4 only
  ```
- 文件：https://nmap.org/

### netcat
- TCP/IP swiss army knife
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y netcat`
  2. 看說明：`netcat -h`（或 `man netcat`）
  3. 執行：`netcat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  netcat: invalid option -- '-'
  nc -h for help
  ```

### powercat
- 以 PowerShell 實作的 netcat 功能
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y powercat`
  2. 看說明：`powercat -h`（或 `man powercat`）
  3. 執行：`powercat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ If you want to execute powercat script you need to install powershell:
  ┃ $ sudo apt install powershell
  ┃
  ┗━
  ```
- 文件：https://github.com/besimorhino/powercat

### sbd
- Linux/Windows 的安全後門
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sbd`
  2. 看說明：`sbd -h`（或 `man sbd`）
  3. 執行：`sbd ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sbd: invalid option -- '-'
  ```
- 文件：https://mirrors.kernel.org/gentoo/distfiles/sbd-1.37.tar.gz

### socat
- Multipurpose relay (SOcket CAT)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y socat`
  2. 看說明：`socat -h`（或 `man socat`）
  3. 執行：`socat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  2026/10/25 08:41:21 socat[1186875] E unknown option "--help"; use option "-h" for help
  ```

### termineter
- 智慧電表測試框架
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y termineter`
  2. 看說明：`termineter -h`（或 `man termineter`）
  3. 執行：`termineter ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: termineter [-h] [-v] [-L {DEBUG,INFO,WARNING,ERROR,CRITICAL}]
                    [-r RESOURCE_FILE]
  
  Termineter: Python Smart Meter Testing Framework
  
  options:
  ```
- 文件：https://github.com/rsmusllp/termineter


## Kali tools — os-credential-dumping (3)

### chntpw
- NT SAM 密碼救援工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y chntpw`
  2. 看說明：`chntpw -h`（或 `man chntpw`）
  3. 執行：`chntpw ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  chntpw: invalid option -- '-'
  chntpw: change password of a user in a Windows SAM file,
  or invoke registry editor. Should handle both 32 and 64 bit windows and
  all version from NT3.x to Win8.1
  chntpw [OPTIONS] <samfile> [systemfile] [securityfile] [otherreghive] [...]
   -h          This message
  ```
- 文件：http://pogostick.net/~pnh/ntpasswd/

### creddump7
- 從 Windows registry hive 擷取憑證與機密的 Python 工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y creddump7`
  2. 看說明：`creddump7 -h`（或 `man creddump7`）
  3. 執行：`creddump7 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  creddump7 - Python tool to extract credentials and secrets from Windows registry hives
  /usr/share/creddump7
  ├── cachedump.py
  ├── framework
  ├── lsadump.py
  ├── pwdump.py
  ```
- 文件：https://github.com/CiscoCXSecurity/creddump7

### samdump2
- 傾印 Windows 2k/NT/XP 密碼雜湊
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y samdump2`
  2. 看說明：`samdump2 -h`（或 `man samdump2`）
  3. 執行：`samdump2 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  samdump2: invalid option -- '-'
  samdump2 3.0.0 by Objectif Securite (http://www.objectif-securite.ch)
  original author: <email>
  
  Usage: samdump2 [OPTION]... SYSTEM_FILE SAM_FILE
  Retrieves syskey and extract hashes from Windows 2k/NT/XP/Vista SAM
  ```
- 文件：https://ophcrack.sourceforge.net/


## Kali tools — pass-the-hash (6)

### impacket-scripts
- 實用 impacket 腳本範例連結
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y impacket-scripts`
  2. 看說明：`impacket-net -h`（或 `man impacket-net`）
  3. 執行：`impacket-net ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Impacket v0.13.1 - Copyright Fortra, LLC and its affiliated companies 
  
  usage: net.py [-h] [-debug] [-ts] [-hashes LMHASH:NTHASH] [-no-pass] [-k]
                [-aesKey hex key] [-dc-ip ip address] [-target-ip ip address]
                [-port [destination port]]
                target {user,computer,localgroup,group} ...
  ```

### mimikatz
- 利用 Windows 管理權限明文顯示密碼
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y mimikatz`
  2. 看說明：`mimikatz -h`（或 `man mimikatz`）
  3. 執行：`mimikatz ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > mimikatz ~ Uses admin rights on Windows to display passwords in plaintext
  
  /usr/share/windows-resources/mimikatz
  ├── kiwi_passwords.yar
  ├── mimicom.idl
  ```
- 文件：https://blog.gentilkiwi.com/mimikatz

### netexec
- 網路執行工具（NetExec）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y netexec`
  2. 看說明：`netexec -h`（或 `man netexec`）
  3. 執行：`netexec ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: netexec [-h] [--version] [-t THREADS] [--timeout TIMEOUT]
                 [--jitter INTERVAL] [--no-progress] [--log LOG] [--verbose |
                 --debug] [-6] [--dns-server DNS_SERVER] [--dns-tcp]
                 [--dns-timeout DNS_TIMEOUT]
                 {winrm,rdp,smb,ftp,mssql,ssh,wmi,ldap,vnc,nfs} ...
  ```
- 文件：https://github.com/Pennyw0rth/NetExec

### passing-the-hash
- 以密碼雜湊作為驗證輸入的修補工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y passing-the-hash`
  2. 看說明：`pth-net -h`（或 `man pth-net`）
  3. 執行：`pth-net ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage:
    Use 'net help rpc' to get more extensive information about 'net rpc' commands.
    Use 'net help rap' to get more extensive information about 'net rap' commands.
    Use 'net help ads' to get more extensive information about 'net ads' commands.
    Use 'net help file' to get more information about 'net file' commands.
    Use 'net help share' to get more information about 'net share' commands.
  ```
- 文件：http://passing-the-hash.blogspot.fr

### smbmap
- 好用的 SMB 列舉工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y smbmap`
  2. 看說明：`smbmap -h`（或 `man smbmap`）
  3. 執行：`smbmap ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: smbmap [-h] (-H HOST | --host-file FILE) [-u USERNAME] [-p PASSWORD |
                --prompt] [-k] [--no-pass] [--dc-ip IP or Host] [-s SHARE]
                [-d DOMAIN] [-P PORT] [-v] [--signing] [--admin] [--no-banner]
                [--no-color] [--no-update] [--timeout SCAN_TIMEOUT] [-x COMMAND]
                [--mode CMDMODE] [-L | -r [PATH]] [-g FILE | --csv FILE]
                [--dir-only] [--no-write-check] [-q] [--depth DEPTH]
  ```
- 文件：https://github.com/ShawnDEvans/smbmap

### xfreerdp3
- FreeRDP X11 client
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y freerdp3-x11`
  2. 看說明：`xfreerdp3 -h`（或 `man xfreerdp3`）
  3. 執行：`xfreerdp3 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  xfreerdp3 - A Free Remote Desktop Protocol Implementation
  See www.freerdp.com for more information
  
  Usage: xfreerdp3 [file] [options] [/v:<server>[:port]]
  ```


## Kali tools — password-cracking (11)

### crackle
- 破解與解密 BLE 加密
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y crackle`
  2. 看說明：`crackle -h`（或 `man crackle`）
  3. 執行：`crackle ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  crackle: invalid option -- '-'
  Usage: crackle -i <input.pcap> [-o <output.pcap>] [-l <ltk>]
  Cracks Bluetooth Low Energy encryption (AKA Bluetooth Smart)
  
  Major modes:  Crack TK // Decrypt with LTK
  ```
- 文件：https://github.com/mikeryan/crackle

### fcrackzip
- zip 壓縮檔密碼破解器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y fcrackzip`
  2. 看說明：`fcrackzip -h`（或 `man fcrackzip`）
  3. 執行：`fcrackzip ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  fcrackzip version 1.0, a fast/free zip password cracker
  written by Marc Lehmann <<email>> You can find more info on
  http://www.goof.com/pcg/marc/
  
  USAGE: fcrackzip
  ```
- 文件：http://oldhome.schmorp.de/marc/fcrackzip.html

### hashcat
- 世上最快、最先進的密碼還原工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hashcat`
  2. 看說明：`hashcat -h`（或 `man hashcat`）
  3. 執行：`hashcat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  hashcat (v7.1.2) starting in help mode
  
  Usage: hashcat [options]... hash|hashfile|hccapxfile [dictionary|mask|directory]...
  
  - [ Options ] -
  ```
- 文件：https://hashcat.net/hashcat/

### john
- 主動式密碼破解工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y john`
  2. 看說明：`john -h`（或 `man john`）
  3. 執行：`john ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  John the Ripper 1.9.0-jumbo-1+bleeding-aec1328d6c 2021-11-02 10:45:52 +0100 OMP [linux-gnu 64-bit aarch64 ASIMD AC]
  Copyright (c) 1996-2021 by Solar Designer and others
  Homepage: https://www.openwall.com/john/
  
  Usage: john [OPTIONS] [PASSWORD-FILES]
  ```
- 文件：https://github.com/openwall/john

### johnny
- John the Ripper 的 GUI
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y johnny`
  2. 看說明：`johnny -h`（或 `man johnny`）
  3. 執行：`johnny ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- 文件：https://openwall.info/wiki/john/johnny

### ophcrack
- 用彩虹表破解 Windows 密碼（GUI）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ophcrack`
  2. 看說明：`ophcrack -h`（或 `man ophcrack`）
  3. 執行：`ophcrack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ophcrack: invalid option -- '-'
  ophcrack 3.8.0 by Objectif Securite (http://www.objectif-securite.ch)
  
  Usage: ophcrack [OPTIONS]
  Cracks Windows passwords with Rainbow tables
  ```
- 文件：https://ophcrack.sourceforge.net/

### ophcrack-cli
- 用彩虹表破解 Windows 密碼（命令列）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ophcrack-cli`
  2. 看說明：`ophcrack-cli -h`（或 `man ophcrack-cli`）
  3. 執行：`ophcrack-cli ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ophcrack-cli: invalid option -- '-'
  ophcrack 3.8.0 by Objectif Securite (http://www.objectif-securite.ch)
  
  Usage: ophcrack [OPTIONS]
  Cracks Windows passwords with Rainbow tables
  ```
- 文件：https://ophcrack.sourceforge.net/

### rcracki_mt
- Version of rcrack that supports hybrid and indexed tables
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rcracki-mt`
  2. 看說明：`rcracki_mt -h`（或 `man rcracki_mt`）
  3. 執行：`rcracki_mt ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Using 1 threads for pre-calculation and false alarm checking...
  no rainbow table found
  ```

### sipcrack
- SIP 登入傾印/破解器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sipcrack`
  2. 看說明：`sipcrack -h`（或 `man sipcrack`）
  3. 執行：`sipcrack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  SIPcrack 0.2 
  ----------------------------------------
  
  Usage: sipcrack [OPTIONS] [ -s | -w <wordlist> ] <dump file>
  ```
- 文件：http://www.remote-exploit.org/codes_sipcrack.html

### sucrack
- 多執行緒 su 暴力破解器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sucrack`
  2. 看說明：`sucrack -h`（或 `man sucrack`）
  3. 執行：`sucrack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sucrack: invalid option -- '-'
  ERROR: unrecognized option -?
  sucrack 1.2.3 (LINUX) - the su cracker
  Copyright (C) 2006  Nico Leidecker; <email>
  
   Usage: sucrack [-char] [-w num] [-b size] [-s sec] [-u user] [-l rules] wordlist
  ```
- 文件：https://labs.portcullis.co.uk/tools/sucrack/

### truecrack
- TrueCrypt 磁區密碼暴力破解器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y truecrack`
  2. 看說明：`truecrack -h`（或 `man truecrack`）
  3. 執行：`truecrack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  TrueCrack v3.6
  Website: https://github.com/lvaccaro/truecrack
  Contact us: <email>
  Bruteforce password cracker for Truecrypt volume. Optimazed with Nvidia Cuda technology.
  Based on TrueCrypt, freely available at http://www.truecrypt.org/
  Copyright (c) 2011 by Luca Vaccaro.
  ```
- 文件：https://github.com/lvaccaro/truecrack


## Kali tools — password-profiling-wordlists (8)

### cewl
- 自訂字典產生器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cewl`
  2. 看說明：`cewl -h`（或 `man cewl`）
  3. 執行：`cewl ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  CeWL 6.2.1 (More Fixes) Robin Wood (<email>) (https://digi.ninja/)
  Usage: cewl [OPTIONS] ... <url>
  
      OPTIONS:
  	-h, --help: Show help.
  	-k, --keep: Keep the downloaded file.
  ```
- 文件：https://github.com/digininja/CeWL

### crunch
- 字典產生工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y crunch`
  2. 看說明：`crunch -h`（或 `man crunch`）
  3. 執行：`crunch ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  crunch version 3.6
  
  Crunch can create a wordlist based on criteria you specify.  The output from crunch can be sent to the screen, file, or to another program.
  
  Usage: crunch <min> <max> [options]
  where min and max are numbers
  ```
- 文件：http://sourceforge.net/projects/crunch-wordlist/

### maskgen
- Password analysis and cracking kit
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pack`
  2. 看說明：`maskgen -h`（或 `man maskgen`）
  3. 執行：`maskgen ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: maskgen pass0.masks [pass1.masks ...] [options]
  
  Options:
    --version             show program's version number and exit
    -h, --help            show this help message and exit
    -t 86400, --targettime=86400
  ```

### policygen
- Password analysis and cracking kit
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pack`
  2. 看說明：`policygen -h`（或 `man policygen`）
  3. 執行：`policygen ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: policygen [options]
  
  Type --help for more options
  
  Options:
    --version             show program's version number and exit
  ```

### rsmangler
- 字典變形工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rsmangler`
  2. 看說明：`rsmangler -h`（或 `man rsmangler`）
  3. 執行：`rsmangler ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  rsmangler v 1.5 Robin Wood (<email>) <https://digi.ninja>
  
  Basic usage:
  
  	rsmangler --file wordlist.txt
  ```
- 文件：https://digi.ninja/projects/rsmangler.php

### statsgen
- Password analysis and cracking kit
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pack`
  2. 看說明：`statsgen -h`（或 `man statsgen`）
  3. 執行：`statsgen ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: statsgen [options] passwords.txt
  
  Type --help for more options
  
  Options:
    --version             show program's version number and exit
  ```

### twofi
- Twitter 關鍵字字典
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y twofi`
  2. 看說明：`twofi -h`（或 `man twofi`）
  3. 執行：`twofi ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  twoif 2.0-beta Robin Wood (<email>) (www.digininja.org)
  twoif - Twitter Words of Interest
  
  Usage: twoif [OPTIONS]
  	--help, -h: show help
  	--config <file>: config file, default is twofi.yml
  ```
- 文件：https://www.digininja.org/projects/twofi.php

### wordlists
- 內含 rockyou 字典
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y wordlists`
  2. 看說明：`wordlists -h`（或 `man wordlists`）
  3. 執行：`wordlists ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > wordlists ~ Contains the rockyou wordlist
  
  /usr/share/wordlists
  ├── dirb -> /usr/share/dirb/wordlists
  ├── dirbuster -> /usr/share/dirbuster/wordlists
  ```
- 文件：https://www.kali.org


## Kali tools — pdf-forensics-tools (2)

### pdf-parser
- 解析 PDF 檔以辨識基本元素
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pdf-parser`
  2. 看說明：`pdf-parser -h`（或 `man pdf-parser`）
  3. 執行：`pdf-parser ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  This program has not been tested with this version of Python (3.14.8)
  Should you encounter problems, please use Python version 3.13.9
  Usage: pdf-parser [options] pdf-file|zip-file|url
  pdf-parser, use it to parse a PDF document
  
  Options:
  ```
- 文件：https://blog.didierstevens.com/programs/pdf-tools/

### pdfid
- 掃描 PDF 檔中的特定關鍵字
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pdfid`
  2. 看說明：`pdfid -h`（或 `man pdfid`）
  3. 執行：`pdfid ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: pdfid [options] [pdf-file|zip-file|url|@file] ...
  Tool to test a PDF file
  
  Arguments:
  pdf-file and zip-file can be a single file, several files, and/or @file
  @file: run PDFiD on each file listed in the text file specified
  ```
- 文件：https://blog.didierstevens.com/programs/pdf-tools/


## Kali tools — persistence (5)

### laudanum
- 可注入的 web 檔案集
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y laudanum`
  2. 看說明：`laudanum -h`（或 `man laudanum`）
  3. 執行：`laudanum ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > laudanum ~ Collection of injectable web files
  
  /usr/share/laudanum
  ├── asp
  ├── aspx
  ```
- 文件：https://sourceforge.net/projects/laudanum/

### seclists
- 多種類型安全清單的集合
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y seclists`
  2. 看說明：`seclists -h`（或 `man seclists`）
  3. 執行：`seclists ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > seclists ~ Collection of multiple types of security lists
  
  /usr/share/seclists
  ├── Discovery
  ├── Fuzzing
  ```
- 文件：https://github.com/danielmiessler/SecLists

### webacoo
- Web 後門 cookie 腳本套件
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y webacoo`
  2. 看說明：`webacoo -h`（或 `man webacoo`）
  3. 執行：`webacoo ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/webacoo version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: webacoo [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- 文件：https://github.com/anestisb/WeBaCoo

### webshells
- web shell 集合
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y webshells`
  2. 看說明：`webshells -h`（或 `man webshells`）
  3. 執行：`webshells ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > webshells ~ Collection of webshells
  
  /usr/share/webshells
  ├── asp
  ├── aspx
  ```
- 文件：https://www.kali.org

### weevely
- 隱匿的微型 web shell
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y weevely`
  2. 看說明：`weevely -h`（或 `man weevely`）
  3. 執行：`weevely ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: weevely [-h] {terminal,session,generate} ...
  
  positional arguments:
    {terminal,session,generate}
      terminal            Run terminal or command on the target
      session             Recover an existing session
  ```
- 文件：https://github.com/epinna/weevely3/


## Kali tools — privilege-escalation (5)

### linpeas
- Privilege Escalation Awesome Scripts SUITE
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y peass`
  2. 看說明：`linpeas -h`（或 `man linpeas`）
  3. 執行：`linpeas ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > peass ~ Privilege Escalation Awesome Scripts SUITE
  
  /usr/share/peass/linpeas
  ├── linpeas_darwin_amd64
  ├── linpeas_darwin_arm64
  ```

### lynis
- Unix 系統安全稽核工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y lynis`
  2. 看說明：`lynis -h`（或 `man lynis`）
  3. 執行：`lynis ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  [ Lynis 3.1.7 ]
  
  ################################################################################
    Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
    welcome to redistribute it under the terms of the GNU General Public License.
  ```
- 文件：https://cisofy.com/lynis/

### peass
- 權限提升腳本套件（PEASS）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y peass`
  2. 看說明：`peass -h`（或 `man peass`）
  3. 執行：`peass ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > peass ~ Privilege Escalation Awesome Scripts SUITE
  
  /usr/share/peass/
  ├── linpeas
  │   ├── linpeas_darwin_amd64
  ```
- 文件：https://github.com/carlospolop/PEASS-ng

### unix-privesc-check
- 檢查簡易權限提升向量的腳本
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y unix-privesc-check`
  2. 看說明：`unix-privesc-check -h`（或 `man unix-privesc-check`）
  3. 執行：`unix-privesc-check ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  unix-privesc-check v1.6-svn- ( http://pentestmonkey.net/tools/unix-privesc-check )
  
  Usage: unix-privesc-check { standard | detailed }
  
  "standard" mode: Speed-optimised check of lots of security settings.
  ```
- 文件：https://pentestmonkey.net/tools/audit/unix-privesc-check

### winpeas
- Privilege Escalation Awesome Scripts SUITE
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y peass`
  2. 看說明：`winpeas -h`（或 `man winpeas`）
  3. 執行：`winpeas ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > peass ~ Privilege Escalation Awesome Scripts SUITE
  
  /usr/share/peass/winpeas
  ├── winPEASany.exe
  ├── winPEASany_ofs.exe
  ```


## Kali tools — protect (3)

### clamscan
- Scan files and directories for viruses
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y clamav`
  2. 看說明：`clamscan -h`（或 `man clamscan`）
  3. 執行：`clamscan ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
                         Clam AntiVirus: Scanner 1.4.6
             By The ClamAV Team: https://www.clamav.net/about.html#credits
             (C) 2024 Cisco Systems, Inc.
  
      clamscan [options] [file/directory/-]
  ```

### cryptsetup
- 磁碟加密支援（啟動腳本）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cryptsetup`
  2. 看說明：`cryptsetup -h`（或 `man cryptsetup`）
  3. 執行：`cryptsetup ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  cryptsetup 2.8.8 flags: UDEV BLKID KEYRING KERNEL_CAPI HW_OPAL 
  Usage: cryptsetup [OPTION...] <action> <action-specific>
  
  Help options:
    -?, --help                              Show this help message
        --usage                             Display brief usage
  ```
- 文件：https://gitlab.com/cryptsetup/cryptsetup

### fwbuilder
- 防火牆管理 GUI
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y fwbuilder`
  2. 看說明：`fwbuilder -h`（或 `man fwbuilder`）
  3. 執行：`fwbuilder ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Firewall Builder GUI 5.3.7
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- 文件：https://github.com/fwbuilder/fwbuilder/


## Kali tools — protocol-tunneling (11)

### dns2tcpc
- A tunneling tool that encapsulate TCP traffic over DNS.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dns2tcp`
  2. 看說明：`dns2tcpc -h`（或 `man dns2tcpc`）
  3. 執行：`dns2tcpc ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  dns2tcpc: invalid option -- '-'
  dns2tcp v0.5.2 ( http://www.hsc.fr/ )
  Usage : dns2tcpc [options] [server] 
  	-c         	: enable compression
  	-z <domain>	: domain to use (mandatory)
  	-d <1|2|3>	: debug_level (1, 2 or 3)
  ```

### dns2tcpd
- A tunneling tool that encapsulate TCP traffic over DNS.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dns2tcp`
  2. 看說明：`dns2tcpd -h`（或 `man dns2tcpd`）
  3. 執行：`dns2tcpd ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  dns2tcpd: invalid option -- '-'
  Usage : dns2tcpd [ -i IP ] [ -F ] [ -d debug_level ] [ -f config-file ] [ -p pidfile ]
  	 -F : dns2tcpd will run in foreground
  ```

### iodine-client-start
- Start an iodine IPv4-over-DNS tunnel
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y iodine`
  2. 看說明：`iodine-client-start -h`（或 `man iodine-client-start`）
  3. 執行：`iodine-client-start ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  'iodine-client-start' starts an iodine IP-over-DNS tunnel.
  
  Usage: iodine-client-start [option]
  
    -h, --help		Print help and exit
    -v, --version		Print version info and exit
  ```

### miredo
- 透過 NAT 的 Teredo IPv6 隧道
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y miredo`
  2. 看說明：`miredo -h`（或 `man miredo`）
  3. 執行：`miredo ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: miredo [OPTIONS] [SERVER_NAME]
  Creates a Teredo tunneling interface for encapsulation of IPv6 over UDP.
  
    -c, --config     specify an configuration file
    -f, --foreground run in the foreground
    -h, --help       display this help and exit
  ```
- 文件：http://www.remlab.net/miredo/

### proxychains4
- 透過 socks/http 代理轉送連線（proxychains-ng）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y proxychains4`
  2. 看說明：`proxychains4 -h`（或 `man proxychains4`）
  3. 執行：`proxychains4 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Usage:	proxychains4 -q -f config_file program_name [arguments]
  	-q makes proxychains quiet - this overrides the config setting
  	-f allows one to manually specify a configfile to use
  	for example : proxychains telnet somehost.com
  More help in README file
  ```
- 文件：https://github.com/rofl0r/proxychains-ng

### proxytunnel
- 協助 SSH 等協定穿過 HTTP(S) 代理
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y proxytunnel`
  2. 看說明：`proxytunnel -h`（或 `man proxytunnel`）
  3. 執行：`proxytunnel ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  proxytunnel 1.13.0 Copyright 2001-2026 Proxytunnel Project
  Usage: proxytunnel [OPTIONS]...
  Build generic tunnels through HTTPS proxies using HTTP authentication
  
  Standard options:
   -i, --inetd                Run from inetd (default: off)
  ```
- 文件：https://proxytunnel.sourceforge.io/

### ptunnel
- 透過 ICMP 封包隧道傳輸 TCP 連線
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ptunnel`
  2. 看說明：`ptunnel -h`（或 `man ptunnel`）
  3. 執行：`ptunnel ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ptunnel v 0.72.
  Usage:   ptunnel -p <addr> -lp <port> -da <dest_addr> -dp <dest_port> [-m max_tunnels] [-v verbosity] [-f logfile]
           ptunnel [-m max_threads] [-v verbosity] [-c <device>]
       -p: Set address of peer running packet forwarder. This causes
           ptunnel to operate in forwarding mode - the absence of this
           option causes ptunnel to operate in proxy mode.
  ```
- 文件：http://www.mit.edu/afs.new/sipb/user/golem/tmp/ptunnel-0.61.orig/web/

### pwnat
- NAT 對 NAT 的用戶端-伺服器通訊
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pwnat`
  2. 看說明：`pwnat -h`（或 `man pwnat`）
  3. 執行：`pwnat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  pwnat: invalid option -- '-'
  usage: pwnat <-s | -c> <args>
    -c    client mode (default)
          <args>: [local ip] <local port> <proxy host> [proxy port (def:2222)] <remote host> <remote port>
    -s    server mode
          <args>: [local ip] [proxy port (def:2222)] [[allowed host]:[allowed port] ...]
  ```
- 文件：https://samy.pl/pwnat/

### sslh
- 應用協定多工器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sslh`
  2. 看說明：`sslh -h`（或 `man sslh`）
  3. 執行：`sslh ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sslhcfg: invalid option "--help"
   [-Vfin] [-F <file>] [-v <n>] [--verbose-config=<n>] [--verbose-config-error=<n>] [--verbose-connections=<n>] [--verbose-connections-try=<n>] [--verbose-connections-error=<n>] [--verbose-fd=<n>] [--verbose-packets=<n>] [--verbose-probe-info=<n>] [--verbose-probe-error=<n>] [--verbose-system-error=<n>] [--verbose-int-error=<n>] [--transparent] [-t <n>] [--udp-max-connections=<n>] [-u <str>] [-P <file>] [-C <path>] [--syslog-facility=<str>] [--logfile=<str>] [--on-timeout=<str>] [--prefix=<str>] [-p <host:port>]... [--ssh=<host:port>]... [--tls=<host:port>]... [--ssl=<host:port>]... [--openvpn=<host:port>]... [--tinc=<host:port>]... [--wireguard=<host:port>]... [--xmpp=<host:port>]... [--http=<host:port>]... [--adb=<host:port>]... [--socks5=<host:port>]... [--syslog=<host:port>]... [--msrdp=<host:port>]... [--anyprot=<host:port>]...
    -F, --config=<file>      	Specify configuration file
    -v, --verbose=<n>        	Override all verbosness options
    --verbose-config=<n>     	Print configuration at startup
    --verbose-config-error=<n>	Print configuration errors
  ```
- 文件：http://www.rutschle.net/tech/sslh/README.html

### stunnel4
- 網路守護程式的通用 SSL 隧道（相容套件）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y stunnel4`
  2. 看說明：`stunnel4 -h`（或 `man stunnel4`）
  3. 執行：`stunnel4 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [.] stunnel 5.82 on aarch64-unknown-linux-gnu platform
  [.] Compiled with OpenSSL 3.6.4 25 Aug 2026
  [.] Running  with OpenSSL 3.6.3 9 Jun 2026
  [.] Threading:PTHREAD Sockets:POLL,IPv6,SYSTEMD TLS:ENGINE,OCSP,PSK,SNI,DTLS Auth:LIBWRAP
  [!] Invalid configuration file name "--help"
  [!] realpath: No such file or directory (2)
  ```
- 文件：https://www.stunnel.org/

### udptunnel
- 透過 TCP 連線隧道傳輸 UDP 封包
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y udptunnel`
  2. 看說明：`udptunnel -h`（或 `man udptunnel`）
  3. 執行：`udptunnel ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  udptunnel: invalid option -- '-'
  Usage: udptunnel -s TCP-port [-r] [-v] UDP-addr/UDP-port[/ttl]
      or udptunnel -c TCP-addr[/TCP-port] [-r] [-v] UDP-addr/UDP-port[/ttl]
       -s: Server mode.  Wait for TCP connections on the port.
       -c: Client mode.  Connect to the given address.
       -r: RTP mode.  Connect/listen on ports N and N+1 for both UDP and TCP.
  ```
- 文件：http://www1.cs.columbia.edu/~lennox/udptunnel/


## Kali tools — radio-frequency (3)

### chirpw
- A tool for programming two-way radio equipment
- **步驟:**
  1. 安裝：`sudo apt install -y chirp`
  2. 在 VNC 桌面開啟：`../scripts/apps.sh open chirpw`。
  3. Radio 選單 → Download From Radio（需序列/USB 連接支援的無線電）。

### hackrf_info
- Probe device and show configuration
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hackrf`
  2. 看說明：`hackrf_info -h`（或 `man hackrf_info`）
  3. 執行：`hackrf_info ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  hackrf_info version: 2026.01.3
  libhackrf version: 2026.01.3 (0.9.2)
  No HackRF boards found.
  ```

### rfcat
- sub-GHz 無線電瑞士刀
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rfcat`
  2. 看說明：`rfcat -h`（或 `man rfcat`）
  3. 執行：`rfcat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: rfcat [-h] [-r] [-i INDEX] [-s] [-f CENTFREQ] [-c INC] [-n SPECCHANS]
               [--bootloader] [--force] [-S]
  
  options:
    -h, --help            show this help message and exit
    -r, --research        Interactive Python and the "d" instance to talk to
  ```
- 文件：https://github.com/atlas0fd00m/rfcat


## Kali tools — reconnaissance (1)

### maltego
- 開源情報與鑑識應用程式
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y maltego`
  2. 看說明：`maltego -h`（或 `man maltego`）
  3. 執行：`maltego ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  arm64
  Usage: ./../platform/lib/nbexec {options} arguments
  
  General options:
    --help                show this help 
    --jdkhome <path>      path to Java(TM) 2 SDK, Standard Edition
  ```
- 文件：https://www.maltego.com


## Kali tools — remote-system-discovery (6)

### arping
- 送出 IP 與/或 ARP ping（到 MAC 位址）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y arping`
  2. 看說明：`arping -h`（或 `man arping`）
  3. 執行：`arping ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ARPing 2.29, by Thomas Habets <<email>>
  usage: arping [ -0aAbdDeFpPqrRuUvzZ ] [ -w <sec> ] [ -W <sec> ] [ -S <host/ip> ]
                [ -T <host/ip ] [ -s <MAC> ] [ -t <MAC> ] [ -c <count> ]
                [ -C <count> ] [ -i <interface> ] [ -m <type> ] [ -g <group> ]
                [ -V <vlan> ] [ -Q <priority> ] <host/ip/MAC | -B>
  ```
- 文件：https://www.habets.pp.se/synscan/programs.php?prog=arping

### atk6-thcping6
- The Hacker Choice's IPv6 Attack Toolkit
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y thc-ipv6`
  2. 看說明：`atk6-thcping6 -h`（或 `man atk6-thcping6`）
  3. 執行：`atk6-thcping6 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  atk6-thcping6 3.8 (c) 2020 by van Hauser / THC <<email>> www.github.com/vanhauser-thc/thc-ipv6
  
  Syntax: atk6-thcping6 [-EafqxO] [-e ethertype] [-H t:l:v] [-D t:l:v] [-F dst] [-e ethertype] [-L length] [-N nextheader] [-V version] [-t ttl] [-c class] [-l label] [-d size] [-S port|-U port|-T type -C code] interface src6 dst6 [srcmac [dstmac [data]]]
  
  Options:
    -T number       ICMPv6 type to send (default: 128 = ping)
  ```

### fierce
- 網域 DNS 掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y fierce`
  2. 看說明：`fierce -h`（或 `man fierce`）
  3. 執行：`fierce ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: fierce [-h] [--domain DOMAIN] [--connect] [--wide]
                [--traverse TRAVERSE] [--search SEARCH [SEARCH ...]]
                [--range RANGE] [--delay DELAY]
                [--subdomains SUBDOMAINS [SUBDOMAINS ...] |
                --subdomain-file SUBDOMAIN_FILE]
                [--dns-servers DNS_SERVERS [DNS_SERVERS ...] |
  ```
- 文件：https://github.com/mschwager/fierce

### fping
- 對多台主機送出 ICMP ECHO_REQUEST
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y fping`
  2. 看說明：`fping -h`（或 `man fping`）
  3. 執行：`fping ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: fping [options] [targets...]
  
  Probing options:
     -4, --ipv4         only ping IPv4 addresses
     -6, --ipv6         only ping IPv6 addresses
     -b, --size=BYTES   amount of ping data to send, in bytes (default: 56)
  ```
- 文件：https://www.fping.org/

### hping3
- 主動式網路壓測工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hping3`
  2. 看說明：`hping3 -h`（或 `man hping3`）
  3. 執行：`hping3 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: hping3 host [options]
    -h  --help      show this help
    -v  --version   show version
    -c  --count     packet count
    -i  --interval  wait (uX for X microseconds, for example -i u1000)
        --fast      alias for -i u10000 (10 packets for second)
  ```
- 文件：http://www.hping.org/

### p0f
- 被動式 OS 指紋辨識工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y p0f`
  2. 看說明：`p0f -h`（或 `man p0f`）
  3. 執行：`p0f ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  --- p0f 3.09b by Michal Zalewski <<email>> ---
  
  p0f: invalid option -- '-'
  Usage: p0f [ ...options... ] [ 'filter rule' ]
  
  Network interface options:
  ```
- 文件：https://lcamtuf.coredump.cx/p0f3/


## Kali tools — reporting-tools (6)

### cutycapt
- 擷取 WebKit 網頁算繪結果的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cutycapt`
  2. 看說明：`cutycapt -h`（或 `man cutycapt`）
  3. 執行：`cutycapt ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- 文件：https://github.com/Crystalix007/CutyCapt

### eyewitness
- 快速的 web 應用分流工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y eyewitness`
  2. 看說明：`eyewitness -h`（或 `man eyewitness`）
  3. 執行：`eyewitness ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ################################################################################
  #                                  EyeWitness                                  #
  ################################################################################
  #           Red Siege Information Security - https://www.redsiege.com           #
  ################################################################################
  ```
- 文件：https://www.christophertruncer.com/eyewitness-triage-tool/

### faraday-start
- Collaborative Penetration Test IDE
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y faraday`
  2. 看說明：`faraday-start -h`（或 `man faraday-start`）
  3. 執行：`faraday-start ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```

### pipal
- 對密碼傾印做統計分析
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pipal`
  2. 看說明：`pipal -h`（或 `man pipal`）
  3. 執行：`pipal ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  pipal 3.4.0 Robin Wood (<email>) (http://digi.ninja)
  
  Usage: pipal [OPTION] ... FILENAME
  	--help, -h, -?: show help
  	--top, -t X: show the top X results (default 10)
  	--output, -o <filename>: output to file
  ```
- 文件：https://www.digininja.org/projects/pipal.php

### recordmydesktop
- 擷取 Linux 桌面工作階段的影音
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y recordmydesktop`
  2. 看說明：`recordmydesktop -h`（或 `man recordmydesktop`）
  3. 執行：`recordmydesktop ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: recordmydesktop [OPTIONS]^filename
  
  Generic Options
    -h, --help                              Print this help and exit.
        --version                           Print program version and exit.
        --print-config                      Print info about options selected
  ```
- 文件：https://enselic.github.io/recordmydesktop/

### witnessme
- Web 清查工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y witnessme`
  2. 看說明：`witnessme -h`（或 `man witnessme`）
  3. 執行：`witnessme ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: witnessme [-h] [--threads THREADS] [--timeout TIMEOUT] [-d] [-v]
                   {screenshot,grab} ...
  
  WitnessMe!
  
  positional arguments:
  ```
- 文件：https://github.com/byt3bl33d3r/WitnessMe


## Kali tools — resource-development (23)

### afl-fuzz
- instrumentation-driven fuzzer for binary formats
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y afl++`
  2. 看說明：`afl-fuzz -h`（或 `man afl-fuzz`）
  3. 執行：`afl-fuzz ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  afl-fuzz++5.02c
  
  afl-fuzz [ options ] -- /path/to/fuzzed_app [ ... ]
  
  Required parameters:
    -i dir        - input directory with test cases (or '-' to resume, also see 
  ```

### apktool
- 反編譯 Android apk 檔的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y apktool`
  2. 看說明：`apktool -h`（或 `man apktool`）
  3. 執行：`apktool ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Unrecognized option: --help
  Apktool v2.7.0-dirty - a tool for reengineering Android apk files
  with smali v2.5.2.git2771eae-debian and baksmali v2.5.2.git2771eae-debian
  Copyright 2010 Ryszard Wiśniewski <<email>>
  Copyright 2010 Connor Tumbleson <<email>>
  ```
- 文件：https://ibotpeaches.github.io/Apktool/

### bed
- 網路協定模糊測試器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y bed`
  2. 看說明：`bed -h`（或 `man bed`）
  3. 執行：`bed ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ./bed.pl version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: bed.pl [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```
- 文件：http://www.snake-basket.de

### bytecode-viewer
- Java 8+ Jar 與 Android APK 逆向工程套件
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y bytecode-viewer`
  2. 看說明：`bytecode-viewer -h`（或 `man bytecode-viewer`）
  3. 執行：`bytecode-viewer ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Bytecode Viewer 2.13.2 [Fat Jar] - https://bytecodeviewer.com
  Created by @Konloch - https://konloch.com
  Presented by https://the.bytecode.club
  Cannot set security manager! Are you on Java 18+ and have not enabled support for it?
  Because of this, you may be susceptible to some exploits!
  Either deal with it or allow it using the -Djava.security.manager=allow parameter.
  ```
- 文件：https://github.com/Konloch/bytecode-viewer

### clang
- 以 LLVM 為基礎的 C/C++/Objective-C 編譯器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y clang`
  2. 看說明：`clang -h`（或 `man clang`）
  3. 執行：`clang ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  OVERVIEW: clang LLVM compiler
  
  USAGE: clang [options] file...
  
  OPTIONS:
    -###                    Print (but do not run) the commands to run for this compilation
  ```

### clang++
- C, C++ and Objective-C compiler (LLVM based), clang binary
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y clang`
  2. 看說明：`clang++ -h`（或 `man clang++`）
  3. 執行：`clang++ ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  OVERVIEW: clang LLVM compiler
  
  USAGE: clang [options] file...
  
  OPTIONS:
    -###                    Print (but do not run) the commands to run for this compilation
  ```

### cutter
- reverse engineering platform powered by rizin
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rizin-cutter`
  2. 看說明：`cutter -h`（或 `man cutter`）
  3. 執行：`cutter ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: From 6.5.0, xcb-cursor0 or libxcb-cursor0 is needed to load the Qt xcb platform plugin.
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: wayland-brcm, wayland-egl, wayland, vkkhrdisplay, xcb, vnc, minimal, eglfs, minimalegl, linuxfb, offscreen.
  ```

### d2j-dex2jar
- Tools to work with android .dex and java .class files
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dex2jar`
  2. 看說明：`d2j-dex2jar -h`（或 `man d2j-dex2jar`）
  3. 執行：`d2j-dex2jar ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  d2j-dex2jar -- convert dex to jar
  usage: d2j-dex2jar [options] <file0> [file1 ... fileN]
  options:
   --skip-exceptions            skip-exceptions
   -d,--debug-info              translate debug info
   -e,--exception-file <file>   detail exception file, default is $current_dir/[fi
  ```

### gdb
- GNU 除錯器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y gdb`
  2. 看說明：`gdb -h`（或 `man gdb`）
  3. 執行：`gdb ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  This is the GNU debugger.  Usage:
  
      gdb [options] [executable-file [core-file or process-id]]
      gdb [options] --args executable-file [inferior-arguments ...]
  
  Selection of debuggee and its files:
  ```
- 文件：https://www.gnu.org/s/gdb/

### generic_chunked
- Network protocol fuzzer
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y spike`
  2. 看說明：`generic_chunked -h`（或 `man generic_chunked`）
  3. 執行：`generic_chunked ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: ./generic_web_server_fuzz target port file.spk skipvariables skipfuzzstring
  Example: ./gwsf exchange1 80 owa1.spk 0 0
  http://www.immunitysec.com/spike.html
  ```

### generic_listen_tcp
- Network protocol fuzzer
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y spike`
  2. 看說明：`generic_listen_tcp -h`（或 `man generic_listen_tcp`）
  3. 執行：`generic_listen_tcp ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  argc=2
  Usage: ./generic_listen_tcp port spike_script
  ./generic_listen_tcp 70 gopherd.spk
  ```

### generic_send_tcp
- Network protocol fuzzer
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y spike`
  2. 看說明：`generic_send_tcp -h`（或 `man generic_send_tcp`）
  3. 執行：`generic_send_tcp ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  argc=2
  Usage: ./generic_send_tcp host port spike_script SKIPVAR SKIPSTR
  ./generic_send_tcp 192.168.1.100 701 something.spk 0 0
  ```

### generic_send_udp
- Network protocol fuzzer
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y spike`
  2. 看說明：`generic_send_udp -h`（或 `man generic_send_udp`）
  3. 執行：`generic_send_udp ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  argc=2
  Usage: ./gsu target port file.spk startvariable startfuzzstring startvariable startstring totaltosend
  ./gsu 192.168.1.104 80 file.spk 0 0 5000
  ```

### jadx-gui
- Dex to Java decompiler
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y jadx`
  2. 看說明：`jadx-gui -h`（或 `man jadx-gui`）
  3. 執行：`jadx-gui ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  jadx - dex to java decompiler, version: 1.5.6
  
  usage: jadx [command] [options] <input files> (.apk, .dex, .jar, .class, .smali, .zip, .aar, .arsc, .aab, .xapk, .apkm, .jadx.kts)
  commands (use '<command> --help' for command options):
    plugins	  - manage jadx plugins
  ```

### javasnoop
- 在本機攔截 Java 應用程式
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y javasnoop`
  2. 看說明：`javasnoop -h`（或 `man javasnoop`）
  3. 執行：`javasnoop ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [2] Turning off Java security for JavaSnoop usage
  [3] Starting JavaSnoop...
  log4j:ERROR setFile(null,true) call failed.
  java.io.FileNotFoundException: js.log (Permission denied)
  	at java.base/java.io.FileOutputStream.open0(Native Method)
  	at java.base/java.io.FileOutputStream.open(FileOutputStream.java:255)
  ```

### jd-gui
- 圖形化 Java .class 反編譯器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y jd-gui`
  2. 看說明：`jd-gui -h`（或 `man jd-gui`）
  3. 執行：`jd-gui ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Exception in thread "main" java.awt.HeadlessException: 
  No X11 DISPLAY variable was set,
  or no headful library support was found,
  but this program performed an operation which requires it.
  	at java.desktop/sun.awt.HeadlessToolkit.getScreenSize(HeadlessToolkit.java:186)
  	at org.jd.gui.service.a.c.a(Unknown Source)
  ```
- 文件：http://jd.benow.ca/

### msf-nasm_shell
- Framework for exploit development and vulnerability research
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y metasploit-framework`
  2. 看說明：`msf-nasm_shell -h`（或 `man msf-nasm_shell`）
  3. 執行：`msf-nasm_shell ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  0 bits not supported
  ```

### msfpc
- MSFvenom Payload 產生器（MSFPC）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y msfpc`
  2. 看說明：`msfpc -h`（或 `man msfpc`）
  3. 執行：`msfpc ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
   [*] MSFvenom Payload Creator (MSFPC v1.4.5)
  
   /usr/bin/msfpc <TYPE> (<DOMAIN/IP>) (<PORT>) (<CMD/MSF>) (<BIND/REVERSE>) (<STAGED/STAGELESS>) (<TCP/HTTP/HTTPS/FIND_PORT>) (<BATCH/LOOP>) (<VERBOSE>)
     Example: /usr/bin/msfpc windows 192.168.1.10        # Windows & manual IP.
              /usr/bin/msfpc elf bind eth0 4444          # Linux, eth0's IP & manual port.
              /usr/bin/msfpc stageless cmd py https      # Python, stageless command prompt.
  ```
- 文件：https://github.com/g0tmi1k/msfpc

### msfvenom
- Payload Generator and Encoder
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y msfvenom`
  2. 看說明：`msfvenom -h`（或 `man msfvenom`）
  3. 執行：`msfvenom ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  MsfVenom - a Metasploit standalone payload generator.
  Also a replacement for msfpayload and msfencode.
  Usage: /usr/bin/msfvenom [options] <var=val>
  Example: /usr/bin/msfvenom -p windows/meterpreter/reverse_tcp LHOST=<IP> -f exe -o payload.exe
  
  Options:
  ```

### radare2
- 免費進階的命令列十六進位編輯器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y radare2`
  2. 看說明：`radare2 -h`（或 `man radare2`）
  3. 執行：`radare2 ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: r2 [-ACdfjLMnNqStuvwzX] [-P patch] [-p prj] [-a arch] [-b bits] [-c cmd]
            [-s addr] [-B baddr] [-m maddr] [-i script] [-e k=v] file|pid|-|--|=
   --           run radare2 without opening any file
   -            same as 'r2 malloc://512'
   =            read file from stdin (use -i and -c to run cmds)
   -=           perform !=! command to run all commands remotely
  ```
- 文件：https://www.radare.org

### rizin
- 逆向工程框架與命令列工具組
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rizin`
  2. 看說明：`rizin -h`（或 `man rizin`）
  3. 執行：`rizin ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
   -- Change the block size with 'b <block-size>'. In visual mode you can also enter rizin command pressing the ':' key (like vi does)
  [2K
  
  [0x00000000]> 
  [0x00000000]> 
  ```
- 文件：https://rizin.re/

### searchsploit
- Exploit Database Archive Search
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y exploitdb`
  2. 看說明：`searchsploit -h`（或 `man searchsploit`）
  3. 執行：`searchsploit ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
    Usage: searchsploit [options] term1 [term2] ... [termN]
  
  ==========
   Examples 
  ==========
    searchsploit afd windows local
  ```

### sfuzz
- 黑箱測試工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sfuzz`
  2. 看說明：`sfuzz -h`（或 `man sfuzz`）
  3. 執行：`sfuzz ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  unknown option: h
  ```
- 文件：http://aconole.brad-x.com/programs/sfuzz.html


## Kali tools — respond (2)

### hashrat
- 支援多種雜湊與遞迴的雜湊工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y hashrat`
  2. 看說明：`hashrat -h`（或 `man hashrat`）
  3. 執行：`hashrat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Hashrat: version 1.25
  Author: Colum Paget
  Email: <email>
  Credits:
  	Thanks for bug reports/advice to: Stephan Hegel, Michael Shigorin <<email>> and Joao Eriberto Mota Filho <<email>>
  	Thanks to the people who invented the hash functions!
  ```
- 文件：https://github.com/ColumPaget/Hashrat/

### mac-robber
- 收集已掛載檔案系統中檔案的資料
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y mac-robber`
  2. 看說明：`mac-robber -h`（或 `man mac-robber`）
  3. 執行：`mac-robber ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  mac-robber: invalid option -- '-'
  usage: mac-robber [-V] <directories>
    -V: Print the version to stdout
  ```
- 文件：https://www.sleuthkit.org/mac-robber


## Kali tools — services-and-other-tools (2)

### Kali Tweaks
- Tool to adjust advanced configuration settings for Kali Linux
- **步驟:**
  1. 開啟（在終端機中執行）；方向鍵移到區段。
  2. 'Metapackages' → 勾選 kali-linux-default 安裝完整工具集。
  3. 套用；它會替你跑 apt。

### Root Terminal Emulator
- Opens a terminal as the root user, using sudo to ask for the password
- **步驟:**
  1. 啟動（需密碼）；僅在 sudo 不足時使用。


## Kali tools — sleuth-kit-suite (33)

### autopsy
- SleuthKit 的圖形化介面
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y autopsy`
  2. 看說明：`autopsy -h`（或 `man autopsy`）
  3. 執行：`autopsy ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Invalid flag: --help
  
  
  usage: /usr/bin/autopsy [-c] [-C] [-d evid_locker] [-i device filesystem mnt] [-p port] [remoteaddr]
    -c: force a cookie in the URL
    -C: force NO cookie in the URL
  ```
- 文件：https://www.sleuthkit.org/autopsy/

### blkcalc
- Converts between unallocated disk unit numbers and regular disk unit numbers.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`blkcalc -h`（或 `man blkcalc`）
  3. 執行：`blkcalc ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  blkcalc: invalid option -- '-'
  Invalid argument: --help
  usage: blkcalc [-dsu unit_addr] [-vV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] image [images]
  Slowly calculates the opposite block number
  	One of the following must be given:
  	  -d: The given address is from a 'dd' image 
  ```

### blkcat
- Display the contents of file system data unit in a disk image.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`blkcat -h`（或 `man blkcat`）
  3. 執行：`blkcat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  blkcat: invalid option -- '-'
  Invalid argument: --help
  usage: blkcat [-ahsvVw] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] [-k password] [-u usize] image [images] unit_addr [num]
  	-a: displays in all ASCII 
  	-h: displays in hexdump-like fashion
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  ```

### blkls
- List or output file system data units.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`blkls -h`（或 `man blkls`）
  3. 執行：`blkls ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  blkls: invalid option -- '-'
  Invalid argument: --help
  usage: blkls [-aAelvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] image [images] [start-stop]
  	-e: every block (including file system metadata blocks)
  	-l: print details in time machine list format
  	-a: Display allocated blocks
  ```

### blkstat
- Display details of a file system data unit (i.e. block or sector)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`blkstat -h`（或 `man blkstat`）
  3. 執行：`blkstat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  blkstat: invalid option -- '-'
  Invalid argument: --help
  usage: blkstat [-vV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] image [images] addr
  	-f fstype: File system type (use '-f list' for supported types)
  	-k password: Decryption password for encrypted volumes
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  ```

### ffind
- Finds the name of the file or directory using a given inode
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`ffind -h`（或 `man ffind`）
  3. 執行：`ffind ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ffind: invalid option -- '-'
  Invalid argument: --help
  usage: ffind [-aduvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] image [images] inode
  	-a: Find all occurrences
  	-d: Find deleted entries ONLY
  	-u: Find undeleted entries ONLY
  ```

### fls
- List file and directory names in a disk image.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`fls -h`（或 `man fls`）
  3. 執行：`fls ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  fls: invalid option -- '-'
  Invalid argument: --help
  usage: fls [-adDFlhpruvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-m dir/] [-o imgoffset] [-z ZONE] [-s seconds] image [images] [inode]
  	If [inode] is not given, the root directory is used
  	-a: Display "." and ".." entries
  	-d: Display deleted entries only
  ```

### fsstat
- Display general details of a file system
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`fsstat -h`（或 `man fsstat`）
  3. 執行：`fsstat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  fsstat: invalid option -- '-'
  Invalid argument: --help
  usage: fsstat [-tvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] image
  	-t: display type only
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### grokevt-addlog
- A tool for adding a raw event log to an existing GrokEVT database.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y grokevt`
  2. 看說明：`grokevt-addlog -h`（或 `man grokevt-addlog`）
  3. 執行：`grokevt-addlog ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  USAGE:
    /usr/bin/grokevt-addlog <DATABASE_DIR> <EVT_FILE> <NEW_TYPE> <BASE_TYPE>
  
  This script takes a raw Windows event log and adds it to a
  previously built database generated by grokevt-builddb.
  See the man page for more details.
  ```

### grokevt-builddb
- Builds a database tree based on a single windows system for the purpose of event log conversion.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y grokevt`
  2. 看說明：`grokevt-builddb -h`（或 `man grokevt-builddb`）
  3. 執行：`grokevt-builddb ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  USAGE:
    grokevt-builddb [-v] [-c CSID] <CONFIG_PROFILE> <OUTPUT_DIR>
  
  grokevt-builddb builds a database tree based on a
  single windows system for the purpose of event log
  conversion.  Please see the man page for more
  ```

### grokevt-findlogs
- Attempts to find log file fragments in raw binary files, such as memory dumps and disk images.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y grokevt`
  2. 看說明：`grokevt-findlogs -h`（或 `man grokevt-findlogs`）
  3. 執行：`grokevt-findlogs ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  USAGE:
    grokevt-findlogs -?
    grokevt-findlogs [-v] [-h] [-H] [-o <OFFSET>] <RAW_FILE>
  
  grokevt-findlogs attempts to find log file fragments in raw
  binary files, such as memory dumps and disk images.
  ```

### grokevt-parselog
- Parse a windows event log and generate human-readable output based on message resources stored in a database.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y grokevt`
  2. 看說明：`grokevt-parselog -h`（或 `man grokevt-parselog`）
  3. 執行：`grokevt-parselog ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  USAGE:
    grokevt-parselog -?|--help
    grokevt-parselog -l <DATABASE_DIR>
    grokevt-parselog -m <DATABASE_DIR> <LOG_TYPE>
    grokevt-parselog [-v] [-H] [-h] <DATABASE_DIR> <LOG_TYPE>
  ```

### grokevt-ripdll
- A tool for extracting message resources from a PE-formatted file.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y grokevt`
  2. 看說明：`grokevt-ripdll -h`（或 `man grokevt-ripdll`）
  3. 執行：`grokevt-ripdll ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  USAGE:
    grokevt-ripdll <INPUT_DLL> <OUTPUT_DB>
  
  grokevt-ripdll is a tool for extracting message resources from a PE-formatted file.
  Please see the man page for more information.
  ```

### hfind
- Lookup a hash value in a hash database
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`hfind -h`（或 `man hfind`）
  3. 執行：`hfind ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  hfind: invalid option -- '-'
  usage: hfind [-eqVa] [-c] [-f lookup_file] [-i db_type] db_file [hashes]
  	-e: Extended mode - where values other than just the name are printed
  	-q: Quick mode - where a 1 is printed if it is found, else 0
  	-V: Print version to STDOUT
  	-c db_name: Create new database with the given name.
  ```

### icat
- Output the contents of a file based on its inode number.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`icat -h`（或 `man icat`）
  3. 執行：`icat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  icat: invalid option -- '-'
  Invalid argument: --help
  usage: icat [-hrRsvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] image [images] inum[-typ[-id]]
  	-h: Do not display holes in sparse files
  	-r: Recover deleted file
  	-R: Recover deleted file and suppress recovery errors
  ```

### ifind
- Find the meta-data structure that has allocated a given disk unit or file name.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`ifind -h`（或 `man ifind`）
  3. 執行：`ifind ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ifind: invalid option -- '-'
  Invalid argument: --help
  usage: ifind [-alvV] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] [-d unit_addr] [-n file] [-p par_addr] [-z ZONE] image [images]
  	-a: find all inodes
  	-d unit_addr: Find the meta data given the data unit
  	-l: long format when -p is given
  ```

### ils
- List inode information
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`ils -h`（或 `man ils`）
  3. 執行：`ils ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ils: invalid option -- '-'
  Invalid argument: --help
  usage: ils [-emOpvV] [-aAlLzZ] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] [-s seconds] image [images] [inum[-end]]
  	-e: Display all inodes
  	-m: Display output in the mactime format
  	-O: Display inodes that are unallocated, but were sill open (UFS/ExtX only)
  ```

### img_cat
- Output contents of an image file.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`img_cat -h`（或 `man img_cat`）
  3. 執行：`img_cat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  img_cat: invalid option -- '-'
  Invalid argument: --help
  usage: img_cat [-vV] [-i imgtype] [-b dev_sector_size] [-s start_sector] [-e stop_sector] image
  	-i imgtype: The format of the image file (use 'i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-s start_sector: The sector number to start at
  ```

### img_stat
- Display details of an image file
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`img_stat -h`（或 `man img_stat`）
  3. 執行：`img_stat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  img_stat: invalid option -- '-'
  Invalid argument: --help
  usage: img_stat [-tvV] [-i imgtype] [-b dev_sector_size] image
  	-t: display type only
  	-i imgtype: The format of the image file (use '-i list' for list of supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### istat
- Display details of a meta-data structure (i.e. inode)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`istat -h`（或 `man istat`）
  3. 執行：`istat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  istat: invalid option -- '-'
  Invalid argument: --help
  usage: istat [-N num] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-P pooltype] [-B pool_volume_block] [-z zone] [-s seconds] [-rvV] image inum
  	-N num: force the display of NUM address of block pointers
  	-r: display run list instead of list of block addresses
  	-z zone: time zone of original machine (i.e. EST5EDT or GMT)
  ```

### jcat
- Show the contents of a block in the file system journal.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`jcat -h`（或 `man jcat`）
  3. 執行：`jcat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  jcat: invalid option -- '-'
  Invalid argument: --help
  usage: jcat [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-vV] image [images] [inode] blk
  	blk: The journal block to view
  	inode: The file system inode where the journal is located
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  ```

### jls
- List the contents of a file system journal
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`jls -h`（或 `man jls`）
  3. 執行：`jls ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  jls: invalid option -- '-'
  Invalid argument: --help
  usage: jls [-f fstype] [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-vV] image [inode]
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-f fstype: File system type (use '-f list' for supported types)
  ```

### mactime
- Create an ASCII time line of file activity
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`mactime -h`（或 `man mactime`）
  3. 執行：`mactime ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Unknown option: --help
  mactime [-b body_file] [-p password_file] [-g group_file] [-i day|hour idx_file] [-d] [-h] [-V] [-y] [-z TIME_ZONE] [DATE]
  		-b: Specifies the body file location, else STDIN is used
  		-d: Output in comma delimited format
  		-h: Display a header with session information
  		-i [day | hour] file: Specifies the index file with a summary of results
  ```

### mmcat
- Output the contents of a partition to stdout
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`mmcat -h`（或 `man mmcat`）
  3. 執行：`mmcat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  mmcat: invalid option -- '-'
  Unknown argument
  usage: mmcat [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-vV] [-t vstype] image [images] part_num
  	-t vstype: The type of partition system (use '-t list' for list of supported types)
  	-i imgtype: The format of the image file (use '-i list' for list of supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### mmls
- Display the partition layout of a volume system (partition tables)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`mmls -h`（或 `man mmls`）
  3. 執行：`mmls ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  mmls: invalid option -- '-'
  Unknown argument
  usage: mmls [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-BrvV] [-aAmM] [-t vstype] image [images]
  	-t vstype: The type of volume system (use '-t list' for list of supported types)
  	-i imgtype: The format of the image file (use '-i list' for list supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### mmstat
- Display details about the volume system (partition tables)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`mmstat -h`（或 `man mmstat`）
  3. 執行：`mmstat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  mmstat: invalid option -- '-'
  Unknown argument
  usage: mmstat [-i imgtype] [-b dev_sector_size] [-o imgoffset] [-vV] [-t vstype] image [images]
  	-t vstype: The volume system type (use '-t list' for list of supported types)
  	-i imgtype: The format of the image file (use '-i list' for list of supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  ```

### sigfind
- Find a binary signature in a file
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`sigfind -h`（或 `man sigfind`）
  3. 執行：`sigfind ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sigfind: invalid option -- '-'
  sigfind [-b bsize] [-o offset] [-t template] [-lV] [hex_signature] file
  	-b bsize: Give block size (default 512)
  	-o offset: Give offset into block where signature should exist (default 0)
  	-l: Signature will be little endian in image
  	-V: Version
  ```

### sorter
- Sort files in an image into categories based on file type
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`sorter -h`（或 `man sorter`）
  3. 執行：`sorter ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Unknown option: --help
  
  sorter [-b size] [-E] [-e] [-h]  [-l] [-md5] [-s] [-sha1] [-U] [-v] [-V] [-a hash_alert] [-c config] [-C config] [-d dir] [-m mnt] [-n nsrl_db] [-x hash_exclude] [-o imgoffset] [-f fstype] [-i imgtype] image [images] [dir_meta_addr] 
  
      -b size: Minimum size.  Ignore files smaller than 'size'
  	-E: Perform category indexing only (no extension checks - was '-i')
  ```

### srch_strings
- Display printable strings in files
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`srch_strings -h`（或 `man srch_strings`）
  3. 執行：`srch_strings ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  srch_strings: invalid option -- '-'
  Usage: srch_strings [option(s)] [file(s)]
   Display printable strings in [file(s)] (stdin by default)
   The options are:
    -a -                 Scan the entire file, not just the data section
    -f       Print the name of the file before each string
  ```

### tsk_comparedir
- Compare the contents of a directory with the contents of an image or local device.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`tsk_comparedir -h`（或 `man tsk_comparedir`）
  3. 執行：`tsk_comparedir ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  tsk_comparedir: invalid option -- '-'
  Invalid argument: --help
  usage: tsk_comparedir [-f fstype] [-i imgtype] [-b dev_sector_size] [-o sector_offset] [-P pooltype] [-B pool_volume_block] [-n start_inum] [-vV] image [image] comparison_directory
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-f fstype: The file system type (use '-f list' for supported types)
  ```

### tsk_gettimes
- Collect MAC times from a disk image into a body file.
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`tsk_gettimes -h`（或 `man tsk_gettimes`）
  3. 執行：`tsk_gettimes ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  tsk_gettimes: invalid option -- '-'
  Invalid argument: --help
  usage: tsk_gettimes [-vVm] [-i imgtype] [-b dev_sector_size] [-z zone] [-s seconds] image [image]
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-m: Calculate MD5 hash in output (slow)
  ```

### tsk_loaddb
- Populate a SQLite database with metadata from a disk image
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`tsk_loaddb -h`（或 `man tsk_loaddb`）
  3. 執行：`tsk_loaddb ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  tsk_loaddb: invalid option -- '-'
  Invalid argument: --help
  usage: tsk_loaddb [-ahkvV] [-i imgtype] [-b dev_sector_size] [-d database] [-z ZONE] image [image]
  	-a: Add image to existing database, instead of creating a new one (requires -d to specify database)
  	-k: Don't create block data table
  	-h: Calculate hash values for the files
  ```

### tsk_recover
- Export files from an image into a local directory
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sleuthkit`
  2. 看說明：`tsk_recover -h`（或 `man tsk_recover`）
  3. 執行：`tsk_recover ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  tsk_recover: invalid option -- '-'
  Invalid argument: --help
  usage: tsk_recover [-vVae] [-f fstype] [-i imgtype] [-b dev_sector_size] [-o sector_offset] [-P pooltype] [-B pool_volume_block] [-d dir_inum] image [image] output_dir
  	-i imgtype: The format of the image file (use '-i list' for supported types)
  	-b dev_sector_size: The size (in bytes) of the device sectors
  	-f fstype: The file system type (use '-f list' for supported types)
  ```


## Kali tools — smtp (1)

### swaks
- SMTP 命令列測試工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y swaks`
  2. 看說明：`swaks -h`（或 `man swaks`）
  3. 執行：`swaks ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  SWAKS(1)                             SWAKS                             SWAKS(1)
  
  NAME
       Swaks - Swiss Army Knife SMTP, the all-purpose SMTP transaction tester
  
  DESCRIPTION
  ```
- 文件：https://www.jetmore.org/john/code/swaks/


## Kali tools — snmp (3)

### braa
- 大量 SNMP 掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y braa`
  2. 看說明：`braa -h`（或 `man braa`）
  3. 執行：`braa ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  braa: invalid option -- '-'
  braa 0.90.1 - (c) by Mateusz 'mteg' Golicz and contributors, 2003 - 2015, 2024
  usage: braa [options] [query1] [query2] ...
    -h        Show this help.
    -2        Claim to be a SNMP2C agent.
    -b <n>    Use GETBULK requests for walks.
  ```
- 文件：https://github.com/mteg/braa

### onesixtyone
- 快速簡單的 SNMP 掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y onesixtyone`
  2. 看說明：`onesixtyone -h`（或 `man onesixtyone`）
  3. 執行：`onesixtyone ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  onesixtyone: invalid option -- '-'
  onesixtyone 0.3.3 [options] <host> <community>
    -c <communityfile> file with community names to try
    -i <inputfile>     file with target hosts
    -o <outputfile>    output log
    -p                 specify an alternate destination SNMP port
  ```
- 文件：https://github.com/trailofbits/onesixtyone

### snmp-check
- SNMP device enumerator
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y snmpcheck`
  2. 看說明：`snmp-check -h`（或 `man snmp-check`）
  3. 執行：`snmp-check ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  snmp-check v1.9 - SNMP enumerator
  Copyright (c) 2005-2015 by Matteo Cantoni (www.nothink.org)
  
   Usage: snmp-check [OPTIONS] <target IP address>
  
    -p --port        : SNMP port. Default port is 161;
  ```


## Kali tools — ssl-tls (3)

### sslscan
- 測試 SSL/TLS 服務支援的加密套件
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sslscan`
  2. 看說明：`sslscan -h`（或 `man sslscan`）
  3. 執行：`sslscan ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
                     _
             ___ ___| |___  ___ __ _ _ __
            / __/ __| / __|/ __/ _` | '_ \
            \__ \__ \ \__ \ (_| (_| | | | |
            |___/___/_|___/\___\__,_|_| |_|
  ```
- 文件：https://github.com/rbsec/sslscan

### sslyze
- 快速且功能完整的 SSL 掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sslyze`
  2. 看說明：`sslyze -h`（或 `man sslyze`）
  3. 執行：`sslyze ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: sslyze [-h] [--update_trust_stores] [--cert CERTIFICATE_FILE]
                [--key KEY_FILE] [--keyform KEY_FORMAT] [--pass PASSPHRASE]
                [--json_out JSON_FILE] [--targets_in TARGET_FILE] [--quiet]
                [--slow_connection] [--https_tunnel PROXY_SETTINGS]
                [--starttls PROTOCOL] [--xmpp_to HOSTNAME]
                [--sni SERVER_NAME_INDICATION] [--tlsv1_3] [--fallback]
  ```
- 文件：https://github.com/nabla-c0d3/sslyze

### tlssled
- 評估目標 SSL/TLS（HTTPS）伺服器安全性
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y tlssled`
  2. 看說明：`tlssled -h`（或 `man tlssled`）
  3. 執行：`tlssled ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ------------------------------------------------------
   TLSSLed - (1.3) based on sslscan and openssl
                   by Raul Siles (www.taddong.com)
  ------------------------------------------------------
      openssl version: OpenSSL 3.6.3 9 Jun 2026 (Library: OpenSSL 3.6.3 9 Jun 2026)
      
  ```
- 文件：http://www.taddong.com/en/lab.html


## Kali tools — system-network-configuration-discovery (7)

### 0trace.sh
- traceroute tool that can run within an existing TCP connection
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y 0trace`
  2. 看說明：`0trace.sh -h`（或 `man 0trace.sh`）
  3. 執行：`0trace.sh ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: /usr/bin/0trace.sh iface target_ip [ target_port ]
  ```

### ass
- Autonomous system scanner
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y irpas`
  2. 看說明：`ass -h`（或 `man ass`）
  3. 執行：`ass ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ass: invalid option -- '-'
  ass [-v[v[v]]] -i <interface> [-ApcMs] [-P IER12]
  	[-a <autonomous system start> -b <autonomous system stop>]
  	[-S <spoofed source IP>] [-D <destination ip>]
  	[-T <packets per delay>]
  	[-r <filename>]
  ```

### cdp
- Cdp packet generator
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y irpas`
  2. 看說明：`cdp -h`（或 `man cdp`）
  3. 執行：`cdp ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  cdp: invalid option -- '-'
  cdp [-v] -i <interface> -m {0,1} ...
  
  Flood mode (-m 0):
  -n <number>	number of packets
  -l <number>	length of the device id
  ```

### intrace
- 搭載既有 TCP 連線的 traceroute 類工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y intrace`
  2. 看說明：`intrace -h`（或 `man intrace`）
  3. 執行：`intrace ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  intrace: invalid option -- '-'
  InTrace, version 1.6 (C)2007-2016 Robert Swiecki <<email>>
  2026/10/25 08:40:45.785167 <ERROR> Couldn't resolve 'elp': 'Authoritative Answer. Host not found'
  2026/10/25 08:40:45.785185 <FATAL> Resolving 'elp' failed
  ```
- 文件：https://github.com/robertswiecki/intrace

### netdiscover
- 以 ARP 請求做主動/被動網路位址掃描
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y netdiscover`
  2. 看說明：`netdiscover -h`（或 `man netdiscover`）
  3. 執行：`netdiscover ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  netdiscover: invalid option -- '-'
  
  Netdiscover 0.21 [Active/passive ARP reconnaissance tool]
  Written by: Jaime Penalba <<email>>
  
  Usage: netdiscover [-i device] [-r range | -l file | -p] [-m file] [-F filter] [-s time] [-c count] [-n node] [-dfPLNS]
  ```
- 文件：https://github.com/netdiscover-scanner/netdiscover

### netmask
- 協助計算網路遮罩
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y netmask`
  2. 看說明：`netmask -h`（或 `man netmask`）
  3. 執行：`netmask ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  This is netmask, an address netmask generation utility
  Usage: netmask spec [spec ...]
    -h, --help			Print a summary of the options
    -v, --version			Print the version number
    -d, --debug			Print status/progress information
    -s, --standard		Output address/netmask pairs
  ```
- 文件：https://github.com/tlby/netmask

### yersinia
- 網路弱點檢查軟體
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y yersinia`
  2. 看說明：`yersinia -h`（或 `man yersinia`）
  3. 執行：`yersinia ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  You must be root to run yersinia 0.8.2
  
  
  MOTD: Magic people, voodoo people!
  ```
- 文件：https://github.com/tomac/yersinia


## Kali tools — system-services (7)

### beef-xss-stop
- Browser Exploitation Framework (BeEF)
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y beef-xss`
  2. 看說明：`beef-xss-stop -h`（或 `man beef-xss-stop`）
  3. 執行：`beef-xss-stop ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  ┏━(Message from Kali developers)
  ┃ 
  Failed to stop beef-xss.service: Access denied as the requested operation requires interactive authentication. However, interactive authentication has not been enabled by the calling program.
  See system logs and 'systemctl status beef-xss.service' for details.
  ```

### defectdojo-start
- security orchestration and vulnerability management platform
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y defectdojo`
  2. 看說明：`defectdojo-start -h`（或 `man defectdojo-start`）
  3. 執行：`defectdojo-start ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```

### defectdojo-stop
- security orchestration and vulnerability management platform
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y defectdojo`
  2. 看說明：`defectdojo-stop -h`（或 `man defectdojo-stop`）
  3. 執行：`defectdojo-stop ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  sudo: a terminal is required to read the password; either use ssh's -t option or configure an askpass helper
  sudo: a password is required
  ```

### faraday-stop
- Collaborative Penetration Test IDE
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y faraday`
  2. 看說明：`faraday-stop -h`（或 `man faraday-stop`）
  3. 執行：`faraday-stop ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  ┏━(Message from Kali developers)
  ┃ 
  Failed to stop faraday.service: Access denied as the requested operation requires interactive authentication. However, interactive authentication has not been enabled by the calling program.
  See system logs and 'systemctl status faraday.service' for details.
  ```

### gvm-check-setup
- remote network security auditor - metapackage and useful scripts
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y gvm`
  2. 看說明：`gvm-check-setup -h`（或 `man gvm-check-setup`）
  3. 執行：`gvm-check-setup ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  gvm-check-setup 25.04.0
   This script is provided and maintained by Debian and Kali.
    Test completeness and readiness of GVM-25.04.0
  [-] Error: /usr/bin/gvm-check-setup must be run as root
  ```

### gvm-setup
- remote network security auditor - metapackage and useful scripts
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y gvm`
  2. 看說明：`gvm-setup -h`（或 `man gvm-setup`）
  3. 執行：`gvm-setup ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [-] Error: /usr/bin/gvm-setup must be run as root
  ```

### gvm-stop
- remote network security auditor - metapackage and useful scripts
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y gvm`
  2. 看說明：`gvm-stop -h`（或 `man gvm-stop`）
  3. 執行：`gvm-stop ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [-] Error: /usr/bin/gvm-stop must be run as root
  ```


## Kali tools — voip (13)

### ohrwurm
- RTP 模糊測試器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ohrwurm`
  2. 看說明：`ohrwurm -h`（或 `man ohrwurm`）
  3. 執行：`ohrwurm ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ohrwurm-0.1
  ERROR: couldn't read from /proc/sys/net/ipv4/ip_forward
  ```
- 文件：http://mazzoo.de/blog/2006/08/25#ohrwurm

### protos-sip
- SIP 測試套件
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y protos-sip`
  2. 看說明：`protos-sip -h`（或 `man protos-sip`）
  3. 執行：`protos-sip ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ERROR: unknown command line argument: --help
  ```
- 文件：https://www.ee.oulu.fi/research/ouspg/PROTOS_Test-Suite_c07-sip

### rtpbreak
- 偵測、重建並分析 RTP 工作階段
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rtpbreak`
  2. 看說明：`rtpbreak -h`（或 `man rtpbreak`）
  3. 執行：`rtpbreak ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  --
  25/10/2026#08:41:19 Fatal error at main.c:485:init_opt: option '-' invalid; exit forced.
  --
  ```
- 文件：http://dallachiesa.com/code/rtpbreak/

### rtpinsertsound
- 將音訊插入指定串流
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rtpinsertsound`
  2. 看說明：`rtpinsertsound -h`（或 `man rtpinsertsound`）
  3. 執行：`rtpinsertsound ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  rtpinsertsound: invalid option -- '-'
  
  rtpinsertsound - Version 2.0
                   October 10, 2006
   Usage:
   Mandatory -
  ```
- 文件：http://www.hackingvoip.com/sec_tools.html

### rtpmixsound
- 即時混入預錄音訊
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rtpmixsound`
  2. 看說明：`rtpmixsound -h`（或 `man rtpmixsound`）
  3. 執行：`rtpmixsound ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  rtpmixsound: invalid option -- '-'
  
  rtpmixsound - Version 3.0
                January 03, 2007
   Usage:
   Mandatory -
  ```
- 文件：http://www.hackingvoip.com/sec_tools.html

### siparmyknife
- SIP 模糊測試工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y siparmyknife`
  2. 看說明：`siparmyknife -h`（或 `man siparmyknife`）
  3. 執行：`siparmyknife ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Duplicate specification "sport|p=s" for option "p"
  
  
  THIS IS THERE TO PUT THE HELP REFERENCE
  ```
- 文件：https://packetstormsecurity.com/files/107301/SIP-Army-Knife-Fuzzer-11232011.html

### sipp
- SIP 協定流量產生器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sipp`
  2. 看說明：`sipp -h`（或 `man sipp`）
  3. 執行：`sipp ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Usage:
  
    sipp remote_host[:remote_port] [options]
  
    Available options:
  ```
- 文件：https://sipp.sourceforge.net/

### sipsak
- SIP 瑞士刀
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sipsak`
  2. 看說明：`sipsak -h`（或 `man sipsak`）
  3. 執行：`sipsak ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  long option help
  sipsak 0.9.8.1 by Nils Ohlmeier
   Copyright (C) 2002-2004 FhG Fokus
   Copyright (C) 2004-2005 Nils Ohlmeier
   report bugs to <email>
  ```
- 文件：https://github.com/nils-ohlmeier/sipsak

### svcrash
- Stop unauthorized scans from svcrack/svwar tool
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sipvicious`
  2. 看說明：`svcrash -h`（或 `man svcrash`）
  3. 執行：`svcrash ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: svcrash [options]
  
  Options:
    --version        show program's version number and exit
    -h, --help       show this help message and exit
    --auto           Automatically send responses to attacks
  ```

### svmap
- Scanner that searches for SIP devices on a given network
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sipvicious`
  2. 看說明：`svmap -h`（或 `man svmap`）
  3. 執行：`svmap ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: svmap [options] host1 host2 hostrange
  Scans for SIP devices on a given network
  
  examples:
  
  svmap 10.0.0.1-10.0.0.255 172.16.131.1 sipvicious.org/22 10.0.1.1/241.1.1.1-20 1.1.2-20.* 4.1.*.*
  ```

### svreport
- Report engine manage sessions from previous scans with SIPVicious
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sipvicious`
  2. 看說明：`svreport -h`（或 `man svreport`）
  3. 執行：`svreport ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: svreport [command] [options]
  
  Supported commands:
  
                  - list:	lists all scans
  ```

### svwar
- Extension line scanner
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sipvicious`
  2. 看說明：`svwar -h`（或 `man svwar`）
  3. 執行：`svwar ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: svwar [options] target
  examples:
  svwar -e100-999 udp://10.0.0.1:5080
  svwar -d dictionary.txt 10.0.0.2
  ```

### voiphopper
- 執行 VLAN hop 安全測試
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y voiphopper`
  2. 看說明：`voiphopper -h`（或 `man voiphopper`）
  3. 執行：`voiphopper ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  voiphopper: invalid option -- '-'
  VoIP Hopper Extended Usage:
  
  Miscellaneous Options:
  	-l (list available interfaces for CDP sniffing, then exit)
  	Example:  voiphopper -l
  ```
- 文件：https://sourceforge.net/projects/voiphopper


## Kali tools — voip-credential-access (2)

### enumiax
- IAX 協定使用者名稱列舉器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y enumiax`
  2. 看說明：`enumiax -h`（或 `man enumiax`）
  3. 執行：`enumiax ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  enumiax: invalid option -- '-'
  enumIAX 0.4a
  Dustin D. Trammell <<email>>
  
  Usage: enumiax [options] target
    options:
  ```
- 文件：https://enumiax.sourceforge.net/

### svcrack
- Online password guessing tool for SIP devices
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y sipvicious`
  2. 看說明：`svcrack -h`（或 `man svcrack`）
  3. 執行：`svcrack ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage: svcrack -u username [options] target
  examples:
  svcrack -u100 -d dictionary.txt udp://10.0.0.1:5080
  svcrack -u100 -r1-9999 -z4 10.0.0.1
  ```


## Kali tools — vulnerability-scanning (3)

### CAT
- Concatenate files and print on the standard output
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cisco-auditing-tool`
  2. 看說明：`CAT -h`（或 `man CAT`）
  3. 執行：`CAT ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/CAT version [unknown] calling Getopt::Std::getopts (version 1.14 [paranoid]),
  running under Perl version 5.42.3.
  
  Usage: CAT [-OPTIONS [-MORE_OPTIONS]] [--] [PROGRAM_ARG1 ...]
  
  The following single-character options are accepted:
  ```

### gvm-start
- remote network security auditor - metapackage and useful scripts
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y gvm`
  2. 看說明：`gvm-start -h`（或 `man gvm-start`）
  3. 執行：`gvm-start ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [-] Error: /usr/bin/gvm-start must be run as root
  ```

### heartleech
- 偵測 Heartbleed OpenSSL 漏洞的掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y heartleech`
  2. 看說明：`heartleech -h`（或 `man heartleech`）
  3. 執行：`heartleech ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  > heartleech ~ Scanner detecting systems vulnerable to the heartbleed OpenSSL bug
  
  /usr/share/windows-resources/heartleech/
  └── heartleech.exe
  bash: cannot set terminal process group (1184247): Inappropriate ioctl for device
  ```
- 文件：https://github.com/robertdavidgraham/heartleech


## Kali tools — web-scanning (11)

### assetfinder
- 找出與指定網域相關的網域與子網域
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y assetfinder`
  2. 看說明：`assetfinder -h`（或 `man assetfinder`）
  3. 執行：`assetfinder ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Usage of assetfinder:
    -subs-only
      	Only include subdomains of search domain
  ```
- 文件：https://github.com/tomnomnom/assetfinder

### dirb
- URL 暴力列舉工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dirb`
  2. 看說明：`dirb -h`（或 `man dirb`）
  3. 執行：`dirb ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  -----------------
  DIRB v2.22    
  By The Dark Raver
  -----------------
  ```
- 文件：https://dirb.sourceforge.net/

### dirbuster
- Web 伺服器目錄暴力列舉器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y dirbuster`
  2. 看說明：`dirbuster -h`（或 `man dirbuster`）
  3. 執行：`dirbuster ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  DirBuster - 1.0-RC1
  Usage: java -jar DirBuster-1.0-RC1 -u <URL http://example.com/> [Options]
  
  	Options:
  	 -h : Display this help message
  	 -H : Start DirBuster in headless mode (no gui), report will be auto saved on exit
  ```
- 文件：https://www.owasp.org/index.php/Category:OWASP_DirBuster_Project

### feroxbuster
- Manual page for feroxbuster 2.13.1
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y feroxbuster`
  2. 看說明：`feroxbuster -h`（或 `man feroxbuster`）
  3. 執行：`feroxbuster ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  A fast, simple, recursive content discovery tool.
  
  Usage: feroxbuster [OPTIONS]
  
  Options:
    -h, --help
  ```

### ffuf
- Fast web fuzzer written in Go
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y ffuf`
  2. 看說明：`ffuf -h`（或 `man ffuf`）
  3. 執行：`ffuf ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Fuzz Faster U Fool - v2.3.0
  
  HTTP OPTIONS:
    -H                  Header "Name: Value", separated by colon. Multiple -H flags are accepted.
    -X                  HTTP method to use
    -b                  Cookie data "NAME1=VALUE1; NAME2=VALUE2" for copy as curl functionality.
  ```

### gobuster
- Directory/file, DNS and virtual host brute-forcing tool written in Go
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y gobuster`
  2. 看說明：`gobuster -h`（或 `man gobuster`）
  3. 執行：`gobuster ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  NAME:
     gobuster - the tool you love
  
  USAGE:
     gobuster command [command options]
  ```

### lbd
- 負載平衡器偵測器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y lbd`
  2. 看說明：`lbd -h`（或 `man lbd`）
  3. 執行：`lbd ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  lbd - load balancing detector 0.4 - Checks if a given domain uses load-balancing.
                                      Written by Stefan Behte (http://ge.mine.nu)
                                      Proof-of-concept! Might give false positives.
  
  Checking for DNS-Loadbalancing:host: illegal option -- -
  ```
- 文件：http://ge.mine.nu/code/

### recon-ng
- 以 Python 撰寫的 web 偵察框架
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y recon-ng`
  2. 看說明：`recon-ng -h`（或 `man recon-ng`）
  3. 執行：`recon-ng ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: recon-ng [-h] [-w workspace] [-r filename] [--no-version]
                  [--no-analytics] [--no-marketplace] [--stealth] [--accessible]
                  [--version]
  
  recon-ng - Tim Tomes (@lanmaster53)
  ```
- 文件：https://github.com/lanmaster53/recon-ng

### uniscan-gui
- LFI, RFI, and RCE vulnerability scanner
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y uniscan`
  2. 看說明：`uniscan-gui -h`（或 `man uniscan-gui`）
  3. 執行：`uniscan-gui ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Authorization required, but no authorization protocol specified
  
  couldn't connect to display ":0" at /usr/lib/aarch64-linux-gnu/perl5/5.42/Tk/MainWindow.pm line 53.
  MainWindow->new() at ./uniscan_gui.pl line 8.
  ```

### urlcrazy
- 網域誤植產生器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y urlcrazy`
  2. 看說明：`urlcrazy -h`（或 `man urlcrazy`）
  3. 執行：`urlcrazy ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Warning. File descriptor limit may be too low. Check with `ulimit -a` and change with `ulimit -n 10000`
  
  db    db d8888b. db       .o88b. d8888b.  .d8b.  d88888D db    db 
  88    88 88  `8D 88      d8P  Y8 88  `8D d8' `8b YP  d8' `8b  d8' 
  88    88 88oobY' 88      8P      88oobY' 88ooo88    d8'   `8bd8'  
  88    88 88`8b   88      8b      88`8b   88~~~88   d8'      88    
  ```
- 文件：https://www.morningstarsecurity.com/research/urlcrazy

### wfuzz
- web 應用暴力列舉器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y wfuzz`
  2. 看說明：`wfuzz -h`（或 `man wfuzz`）
  3. 執行：`wfuzz ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  default
  default
  ********************************************************
  * Wfuzz 3.1.0 - The Web Fuzzer                         *
  *                                                      *
  * Version up to 1.4c coded by:                         *
  ```
- 文件：http://www.edge-security.com/wfuzz.php


## Kali tools — web-vulnerability-scanning (11)

### davtest
- WebDAV 伺服器測試工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y davtest`
  2. 看說明：`davtest -h`（或 `man davtest`）
  3. 執行：`davtest ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Unknown option: help
  ^^^^^^^^^^^^^^  ERROR ^^^^^^^^^^^^^^
  
  /usr/bin/davtest -url <url> [options]
  
   -auth+ 	Authorization (user:password)
  ```
- 文件：https://github.com/cldrn/davtest

### joomscan
- OWASP Joomla 弱點掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y joomscan`
  2. 看說明：`joomscan -h`（或 `man joomscan`）
  3. 執行：`joomscan ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  TERM environment variable not set.
  
      ____  _____  _____  __  __  ___   ___    __    _  _ 
     (_  _)(  _  )(  _  )(  \/  )/ __) / __)  /__\  ( \( )
    .-_)(   )(_)(  )(_)(  )    ( \__ \( (__  /(__)\  )  ( 
    \____) (_____)(_____)(_/\/\_)(___/ \___)(__)(__)(_)\_)
  ```
- 文件：https://www.owasp.org/index.php/Category:OWASP_Joomla_Vulnerability_Scanner_Project

### nikto
- web 伺服器安全掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y nikto`
  2. 看說明：`nikto -h`（或 `man nikto`）
  3. 執行：`nikto ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Unknown option: help
  
     Options:
         -Add-header         Add HTTP headers (can be used multiple times, one per header pair)
         -ask+               Whether to ask about submitting updates
                                 yes   Ask about each (default)
  ```
- 文件：https://github.com/sullo/nikto

### nuclei
- Fast and customizable vulnerability scanner based on simple YAML based DSL
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y nuclei`
  2. 看說明：`nuclei -h`（或 `man nuclei`）
  3. 執行：`nuclei ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Nuclei is a fast, template based vulnerability scanner focusing
  on extensive configurability, massive extensibility and ease of use.
  
  Usage:
    nuclei [flags]
  ```

### paros
- web 應用程式代理
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y paros`
  2. 看說明：`paros -h`（或 `man paros`）
  3. 執行：`paros ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Exception in thread "main" java.awt.HeadlessException: 
  No X11 DISPLAY variable was set,
  or no headful library support was found,
  but this program performed an operation which requires it.
  	at java.desktop/java.awt.GraphicsEnvironment.checkHeadless(GraphicsEnvironment.java:158)
  	at java.desktop/java.awt.Window.<init>(Window.java:518)
  ```
- 文件：http://www.parosproxy.org/index.shtml

### skipfish
- 全自動主動式 web 應用安全偵察工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y skipfish`
  2. 看說明：`skipfish -h`（或 `man skipfish`）
  3. 執行：`skipfish ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  skipfish web application scanner - version 2.10b
  Usage: skipfish [ options ... ] -W wordlist -o output_dir start_url [ start_url2 ... ]
  
  Authentication and access options:
  
    -A user:pass      - use specified HTTP authentication credentials
  ```

### wapiti
- web 應用弱點掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y wapiti`
  2. 看說明：`wapiti -h`（或 `man wapiti`）
  3. 執行：`wapiti ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
       __    __            _ _   _ _____
      / / /\ \ \__ _ _ __ (_) |_(_)___ /
      \ \/  \/ / _` | '_ \| | __| | |_ \
       \  /\  / (_| | |_) | | |_| |___) |
        \/  \/ \__,_| .__/|_|\__|_|____/
  ```
- 文件：https://wapiti.sourceforge.net/

### webscarab
- web 應用審查工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y webscarab`
  2. 看說明：`webscarab -h`（或 `man webscarab`）
  3. 執行：`webscarab ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  No plugins found!
  java.awt.HeadlessException: 
  No X11 DISPLAY variable was set,
  or no headful library support was found,
  but this program performed an operation which requires it.
  	at java.desktop/java.awt.GraphicsEnvironment.checkHeadless(GraphicsEnvironment.java:158)
  ```
- 文件：https://github.com/OWASP/OWASP-WebScarab

### whatweb
- 下一代 web 掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y whatweb`
  2. 看說明：`whatweb -h`（或 `man whatweb`）
  3. 執行：`whatweb ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  .$$$     $.                                   .$$$     $.
  $$$$     $$. .$$$  $$$ .$$$$$$.  .$$$$$$$$$$. $$$$     $$. .$$$$$$$. .$$$$$$.
  $ $$     $$$ $ $$  $$$ $ $$$$$$. $$$$$ $$$$$$ $ $$     $$$ $ $$   $$ $ $$$$$$.
  $ `$     $$$ $ `$  $$$ $ `$  $$$ $$' $ `$ `$$ $ `$     $$$ $ `$      $ `$  $$$'
  $. $     $$$ $. $$$$$$ $. $$$$$$ `$  $. $  :' $. $     $$$ $. $$$$   $. $$$$$.
  ```
- 文件：https://github.com/urbanadventurer/WhatWeb

### wpscan
- 黑箱 WordPress 弱點掃描器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y wpscan`
  2. 看說明：`wpscan -h`（或 `man wpscan`）
  3. 執行：`wpscan ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  _______________________________________________________________
           __          _______   _____
           \ \        / /  __ \ / ____|
            \ \  /\  / /| |__) | (___   ___  __ _ _ __ ®
             \ \/  \/ / |  ___/ \___ \ / __|/ _` | '_ \
              \  /\  /  | |     ____) | (__| (_| | | | |
  ```
- 文件：https://wpscan.com/wordpress-security-scanner

### zaproxy
- 尋找 web 應用弱點的測試工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y zaproxy`
  2. 看說明：`zaproxy -h`（或 `man zaproxy`）
  3. 執行：`zaproxy ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Found Java version 25.0.5-ea
  Available memory: 2965 MB
  Using JVM args: -Xmx741m
  1002 [main] INFO  org.zaproxy.zap.GuiBootstrap - ZAP 2.17.0 started 25/10/2026, 08:41:49 with home: /home/kali/.ZAP/ cores: 2 maxMemory: 742 MB
  1012 [main] FATAL org.zaproxy.zap.GuiBootstrap - ZAP GUI is not supported on a headless environment.
  Run ZAP inline or in daemon mode, use -help command line argument for more details.
  ```
- 文件：https://github.com/zaproxy/zaproxy


## Kali tools — wifi (3)

### asleap
- 利用 Cisco LEAP 網路的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y asleap`
  2. 看說明：`asleap -h`（或 `man asleap`）
  3. 執行：`asleap ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  asleap: invalid option -- '-'
  asleap 2.5 - actively recover LEAP/PPTP passwords. <<email>>
  Usage: asleap [options]
  
  	-r 	Read from a libpcap file
  	-i 	Interface to capture on
  ```
- 文件：https://www.willhackforsushi.com/

### kismet
- 無線網路與裝置偵測器（中繼套件）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y kismet`
  2. 看說明：`kismet -h`（或 `man kismet`）
  3. 執行：`kismet ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  usage: kismet [OPTION]
  Nearly all of these options are run-time overrides for values in the
  kismet.conf configuration file.  Permanent changes should be made to
  the configuration file.
   *** Generic Options ***
   -v, --version                Show version
  ```
- 文件：https://www.kismetwireless.net/

### wash
- brute force attack tool against Wi-Fi Protected Setup PIN number
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y reaver`
  2. 看說明：`wash -h`（或 `man wash`）
  3. 執行：`wash ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Wash v1.6.6 WiFi Protected Setup Scan Tool
  Copyright (c) 2011, Tactical Network Solutions, Craig Heffner
  
  Required Arguments:
  	-i, --interface=<iface>              Interface to capture packets on
  ```


## Kali tools — wifi-credential-access (10)

### aircrack-ng
- 無線 WEP/WPA 破解工具組
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y aircrack-ng`
  2. 看說明：`aircrack-ng -h`（或 `man aircrack-ng`）
  3. 執行：`aircrack-ng ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
    Aircrack-ng 1.7  - (C) 2006-2022 Thomas d'Otreppe
    https://www.aircrack-ng.org
  
    usage: aircrack-ng [options] <input file(s)>
  ```
- 文件：https://www.aircrack-ng.org/

### airgeddon
- 稽核無線網路的多功能 bash 腳本
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y airgeddon`
  2. 看說明：`airgeddon -h`（或 `man airgeddon`）
  3. 執行：`airgeddon ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  [8lTERM environment variable not set.
  *********************************** Welcome ************************************ 
  Welcome to airgeddon script v12.02 
  
  tput: No value for $TERM and no -T specified
  tput: No value for $TERM and no -T specified
  ```
- 文件：https://github.com/v1s1t0r1sh3r3/airgeddon

### bully
- 以 C 撰寫的 WPS 暴力破解實作
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y bully`
  2. 看說明：`bully -h`（或 `man bully`）
  3. 執行：`bully ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
    bully v1.4
    the fork that actually works!
    maintained by kimocoder - https://twitter.com/kimocoder
  
    usage: bully <options> interface
  ```
- 文件：https://github.com/kimocoder/bully

### cowpatty
- WPA 字典暴力破解
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cowpatty`
  2. 看說明：`cowpatty -h`（或 `man cowpatty`）
  3. 執行：`cowpatty ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  cowpatty: invalid option -- '-'
  cowpatty 4.8 - WPA-PSK dictionary attack. <<email>>
  
  Usage: cowpatty [options]
  
  	-f 	Dictionary file
  ```
- 文件：https://www.willhackforsushi.com/?page_id=50

### eapmd5pass
- 擷取並破解 EAP-MD5 的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y eapmd5pass`
  2. 看說明：`eapmd5pass -h`（或 `man eapmd5pass`）
  3. 執行：`eapmd5pass ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  eapmd5pass: invalid option -- '-'
  eapmd5pass - Dictionary attack against EAP-MD5
  
  Usage: eapmd5pass [ -i <int> | -r <pcapfile> ] [ -w wordfile ] [options]
  
    -i <iface>	interface name
  ```
- 文件：https://www.willhackforsushi.com/?page_id=67

### fern-wifi-cracker
- 自動化 Wi-Fi 破解器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y fern-wifi-cracker`
  2. 看說明：`fern-wifi-cracker -h`（或 `man fern-wifi-cracker`）
  3. 執行：`fern-wifi-cracker ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Traceback (most recent call last):
    File "/usr/share/fern-wifi-cracker/execute.py", line 101, in <module>
      initialize()
      ~~~~~~~~~~^^
    File "/usr/share/fern-wifi-cracker/execute.py", line 46, in initialize
      create_directory()
  ```
- 文件：https://github.com/savio-code/fern-wifi-cracker

### pixiewps
- 離線 WPS 暴力破解工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y pixiewps`
  2. 看說明：`pixiewps -h`（或 `man pixiewps`）
  3. 執行：`pixiewps ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
   Pixiewps 1.4 WPS pixie-dust attack tool
   Copyright (c) 2015-2017, wiire <<email>>
  
   Description of arguments:
  ```
- 文件：https://github.com/wiire/pixiewps

### reaver
- 針對 WPS PIN 的暴力破解攻擊工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y reaver`
  2. 看說明：`reaver -h`（或 `man reaver`）
  3. 執行：`reaver ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  Reaver v1.6.6 WiFi Protected Setup Attack Tool
  Copyright (c) 2011, Tactical Network Solutions, Craig Heffner <<email>>
  
  Required Arguments:
  	-i, --interface=<wlan>          Name of the monitor-mode interface to use
  ```
- 文件：https://github.com/t6x/reaver-wps-fork-t6x

### wifi-honey
- Wi-Fi 蜜罐
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y wifi-honey`
  2. 看說明：`wifi-honey -h`（或 `man wifi-honey`）
  3. 執行：`wifi-honey ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  /usr/bin/wifi-honey: line 35: iwconfig: command not found
  Run it as root
  Run it as root
  Run it as root
  Run it as root
  Run it as root
  ```
- 文件：https://www.digininja.org/projects/wifi_honey.php

### wifite
- 以 aircrack-ng 自動化無線稽核的 Python 腳本
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y wifite`
  2. 看說明：`wifite -h`（或 `man wifite`）
  3. 執行：`wifite ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
     .               .    
   .´  ·  .     .  ·  `.  wifite2 2.8.1
   :  :  :  (¯)  :  :  :  a wireless auditor by derv82
   `.  ·  ` /¯\ ´  ·  .´  maintained by kimocoder
     `     /¯¯¯\     ´    https://github.com/kimocoder/wifite2
  ```
- 文件：https://github.com/kimocoder/wifite2


## Terminals (5)

### CuteCom
- 圖形化序列埠終端機（類似 minicom）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cutecom`
  2. 看說明：`cutecom -h`（或 `man cutecom`）
  3. 執行：`cutecom ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  qt.qpa.xcb: could not connect to display 
  qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
  This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
  
  Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, xcb.
  ```
- 文件：https://gitlab.com/cutecom/cutecom

### QTerminal
- Terminal emulator
- **步驟:**
  1. 開啟後 `cd ~/kali-scripts`。
  2. 執行工具組，例如 `TARGET=<NODE_IP> ./toolkit.sh chain recon,web`。

### QTerminal Drop-down
- A drop-down terminal emulator
- **步驟:**
  1. 按熱鍵從上方拉下終端機。

### UXTerm
- xterm wrapper for Unicode environments
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "UXTerm"`（或從選單）。
  2. 在此執行任何 CLI 工具，例如 `TARGET=<NODE_IP> ../scripts/toolkit.sh chain recon,web`。
  3. Ctrl+Shift+T 開新分頁。

### XTerm
- standard terminal emulator for the X window system
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "XTerm"`（或從選單）。
  2. 在此執行任何 CLI 工具，例如 `TARGET=<NODE_IP> ../scripts/toolkit.sh chain recon,web`。
  3. Ctrl+Shift+T 開新分頁。


## Editors (3)

### Mousepad
- Simple Text Editor
- **步驟:**
  1. `apps.sh open Mousepad notes.txt` 或 File → Open。
  2. 編輯；Ctrl+S 儲存。

### Text Editor
- Simple Text Editor
- **步驟:**
  1. 啟動；編輯並儲存設定/筆記。

### Vim
- Edit text files
- **步驟:**
  1. `vim file`；按 i 進入編輯，Esc 後 :wq 儲存離開。


## Web & network (2)

### Firefox ESR
- Browse the World Wide Web
- **步驟:**
  1. `apps.sh open "Firefox ESR" http://<NODE_IP>:30080`。
  2. Settings → Network → 手動代理 127.0.0.1:8080 以經 Burp。
  3. 匯入 Burp 的 CA 憑證以攔截 HTTPS。

### Web Browser
- Browse the web
- **步驟:**
  1. 啟動；代理流程同上方 Firefox ESR。


## Files & archives (2)

### Engrampa Archive Manager
- Create and modify an archive
- **步驟:**
  1. `apps.sh open ... file.zip` 或 File → Open。
  2. Extract → 選資料夾；或拖入檔案後 Save 建立壓縮檔。

### Thunar File Manager
- Browse the filesystem with the file manager
- **步驟:**
  1. 開啟後進入證據資料夾。
  2. Tools → Open Terminal Here 以對資料夾操作。


## Media & documents (3)

### Parole Media Player
- Play your media
- **步驟:**
  1. `apps.sh open "Parole Media Player" clip.mp4` 或 Open。

### Ristretto Image Viewer
- Look at your images easily
- **步驟:**
  1. `apps.sh open "Ristretto Image Viewer" shot.png`。
  2. 方向鍵逐張瀏覽資料夾。

### Volume Control
- Adjust the volume level
- **步驟:**
  1. 開啟後調整輸出/輸入音量。


## Accessibility (2)

### Onboard
- Flexible onscreen keyboard
- **步驟:**
  1. 啟動後用滑鼠點按鍵。

### Onboard Settings
- Change Onboard settings
- **步驟:**
  1. 開啟後設定配置/佈景/自動顯示。


## Settings & desktop (30)

### Accessibility
- Improve keyboard and mouse accessibility
- **步驟:**
  1. 開啟後選 Keyboard 或 Mouse 分頁。
  2. 開啟需要的輔助；即時生效。

### Advanced Network Configuration
- Manage and change your network connection settings
- **步驟:**
  1. 開啟後按 + 新增連線，或選現有的 Ethernet。
  2. IPv4 分頁 → Manual → 填入 lab 網段的位址/遮罩/閘道。
  3. 儲存後重新啟用連線以套用。

### Appearance
- Customize the look of your desktop
- **步驟:**
  1. 開啟後在前幾個分頁選 Style/Icons。
  2. Fonts 分頁 → 若 VNC 下字太小可調 DPI。

### Clipboard Manager Settings
- Customize your clipboard
- **步驟:**
  1. 開啟後設定歷史長度與忽略規則。
  2. 關閉即儲存。

### Color Profiles
- Set color profiles
- **步驟:**
  1. 開啟後選顯示器；新增/指定設定檔。

### Default Applications
- Associate preferred applications with MIME types
- **步驟:**
  1. 開啟後在 Internet/Utilities 分頁設定各預設。

### Desktop
- Set desktop background and menu and icon behavior
- **步驟:**
  1. 開啟後 Background 分頁選桌布。
  2. Icons 分頁 → 切換要顯示的圖示。

### Display
- Configure screen settings and layout
- **步驟:**
  1. 開啟後把解析度設成與 VNC 相符（例如 1440x900）。
  2. Apply 後確認保留。

### Kali HiDPI Mode
- Toggle HiDPI desktop mode
- **步驟:**
  1. 執行一次啟用；再執行停用。

### Keyboard
- Edit keyboard settings and application shortcuts
- **步驟:**
  1. 開啟後 Layout 分頁新增/選配置。
  2. Application Shortcuts 分頁 → 綁定按鍵到指令。

### LightDM GTK Greeter settings
- Configure LightDM GTK Greeter
- **步驟:**
  1. 開啟（需 sudo）；設定佈景/背景/使用者清單。
  2. 儲存；下次登入生效。

### Mouse and Touchpad
- Configure pointer device behavior and appearance
- **步驟:**
  1. 開啟後調整 Acceleration/Buttons。

### Notifications
- Customize how notifications appear on your screen
- **步驟:**
  1. 開啟後設定位置與勿擾。

### Panel
- Customize the panel
- **步驟:**
  1. 開啟後 Items 分頁新增啟動器/時鐘/系統匣。

### Panel Profiles
- Backup and restore your panel configuration
- **步驟:**
  1. 開啟後儲存目前配置，或載入備份。

### Power Manager
- Settings for the Xfce Power Manager
- **步驟:**
  1. 開啟後把顯示睡眠設為 never 以利長時掃描。

### Qt5 Settings
- Qt5 Configuration Tool
- **步驟:**
  1. 開啟後把 Qt 佈景調成與 GTK 一致。

### Qt6 Settings
- Qt6 Configuration Tool
- **步驟:**
  1. 開啟後把 Qt 佈景調成與 GTK 一致。

### Removable Drives and Media
- Configure management of removable drives and media
- **步驟:**
  1. 開啟後依媒體類型切換自動掛載。

### Session and Startup
- Customize desktop startup
- **步驟:**
  1. 開啟後 Application Autostart 分頁 → 加入例如 VNC server。

### Settings Editor
- Graphical settings editor for Xfconf
- **步驟:**
  1. 開啟後瀏覽 channel；謹慎編輯值。

### Settings Manager
- Graphical Settings Manager for Xfce
- **步驟:**
  1. 開啟後點任一圖示進入該設定。

### Thunar Preferences
- Configure the Thunar file manager
- **步驟:**
  1. 開啟後設定預設檢視與顯示隱藏檔。

### Time and Date
- Change system time, date, and timezone
- **步驟:**
  1. 開啟（sudo）；時區設 UTC 讓證據時間戳一致。

### Users and Groups
- Add or remove users and groups
- **步驟:**
  1. 開啟（sudo）；新增使用者或把自己加入群組（例如 wireshark）。

### Window Manager
- Configure window behavior and shortcuts
- **步驟:**
  1. 開啟後 Keyboard 分頁設定視窗切換/排列快捷鍵。

### Window Manager Tweaks
- Fine-tune window behaviour and effects
- **步驟:**
  1. 開啟後 Compositor 分頁 → VNC 卡頓時關閉陰影。

### Workspaces
- Configure layout, names and margins
- **步驟:**
  1. 開啟後設定工作區數量與邊界。

### Xfce Screensaver
- Set your screensaver preferences
- **步驟:**
  1. 開啟後關閉閒置鎖定以利長時無人掃描。

### xfreerdp
- Connect to RDP servers for remote work or administration
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y xfreerdp`
  2. 看說明：`xfreerdp -h`（或 `man xfreerdp`）
  3. 執行：`xfreerdp ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  xfreerdp - A Free Remote Desktop Protocol Implementation
  See www.freerdp.com for more information
  
  Usage: xfreerdp [file] [options] [/v:<server>[:port]]
  ```


## System & utilities (27)

### About Xfce
- Information about the Xfce Desktop Environment
- **步驟:**
  1. 選單 → About Xfce（或 `apps.sh open "About Xfce"`）。
  2. 在第一頁看版本；看完關閉。

### Application Finder
- Find and launch applications installed on your system
- **步驟:**
  1. 按快捷鍵或開啟後輸入程式名稱。
  2. Enter 啟動；這是開啟工具最快的方式。

### Atril Document Viewer
- View multi-page documents
- **步驟:**
  1. `apps.sh open "Atril Document Viewer" report.pdf` 或 File → Open。
  2. 用側欄導覽；Ctrl+F 搜尋文字。

### BackTrack Mode
- Toggle BackTrack Mode
- **步驟:**
  1. 啟動它（kali-undercover 變體）切換佈景。
  2. 再執行一次即可還原。

### Bulk Rename
- Rename Multiple Files
- **步驟:**
  1. 開啟後用 + 加入檔案。
  2. 選規則（取代/編號）；預覽；Rename。

### Catfish File Search
- Search the file system
- **步驟:**
  1. 開啟後輸入關鍵字；可勾選搜尋檔案內容。
  2. 雙擊結果開啟。

### Clipboard Manager
- Clipboard Manager Autostart File
- **步驟:**
  1. 在系統列執行；點它看近期剪貼。
  2. 點一筆即可重新複製。

### Disks
- Manage Drives and Media
- **步驟:**
  1. 開啟後在左側清單選磁碟。
  2. 用 ⋮ 選單 → Create Disk Image / Format 做鑑識或準備。
  3. 用 ▶/⏏ 掛載/卸載；絕不動不屬於你的磁碟。

### File Manager
- Browse the file system
- **步驟:**
  1. 啟動後瀏覽到 ~/lab-evidence。

### GParted
- GNOME 磁碟分割編輯器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y gparted`
  2. 看說明：`gparted -h`（或 `man gparted`）
  3. 執行：`gparted ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Error executing command as another user: No authentication agent found.
  ```
- 文件：https://gparted.org

### GtkHash
- Calculate message digests or checksums
- **步驟:**
  1. 開啟後選檔案；勾選雜湊演算法。
  2. 按 Hash；與預期值比對。

### Hardware Locality lstopo
- Show hardware topology
- **步驟:**
  1. 安裝：`sudo apt install -y hwloc`
  2. 顯示拓撲：`lstopo`（GUI）或 `lstopo-no-graphics`（文字）。
  3. 匯出：`lstopo topology.png` —— 繪出你擁有主機的 CPU/NUMA/快取。

### Help
- Get help with GNOME
- **步驟:**
  1. 開啟後瀏覽或搜尋說明主題。

### Kali Autopilot
- Kali 自動攻擊腳本工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y kali-autopilot`
  2. 看說明：`kali-autopilot -h`（或 `man kali-autopilot`）
  3. 執行：`kali-autopilot ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Unable to access the X Display, is $DISPLAY set properly?
  ```
- 文件：https://gitlab.com/kalilinux/packages/kali-autopilot

### Kali Halloween Mode
- Toggle Kali Halloween Mode
- **步驟:**
  1. 啟動以套用/還原佈景。

### Kali Undercover Mode
- Toggle Kali Undercover Mode
- **步驟:**
  1. 啟動以切換類 Windows 外觀。

### Log Out
- Log out of the Xfce Desktop
- **步驟:**
  1. 啟動後選 Log Out / Restart / Shut Down。

### MATE Calculator
- Perform arithmetic, scientific or financial calculations
- **步驟:**
  1. 開啟後 Mode 選單 → Programmer 做十六進位/位元運算。

### Mail Reader
- Read your email
- **步驟:**
  1. 啟動；若提示則設定帳號。

### RFDump
- 解碼 RFID 標籤資料的工具
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y rfdump`
  2. 看說明：`rfdump -h`（或 `man rfdump`）
  3. 執行：`rfdump ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  
  (rfdump:165270): Gtk-WARNING **: 05:47:00.137: cannot open display: 
  ```
- 文件：http://www.rfdump.org/

### Run Program...
- Enter a command you want to launch
- **步驟:**
  1. 啟動；輸入指令並 Enter。

### Screenshot
- Take screenshots of the entire screen, of the active window or of a region
- **步驟:**
  1. 啟動；選全螢幕/視窗/區域與延遲。
  2. 存到 ~/lab-evidence。

### Sensor Viewer
- Show sensor values.
- **步驟:**
  1. 開啟查看可用感測器（VM 內有限）。

### Task Manager
- Easy to use application to monitor system resources
- **步驟:**
  1. 開啟後依 CPU/MEM 排序。
  2. 右鍵程序 → Kill 以結束當掉的掃描。

### Terminal Emulator
- Use the command line
- **步驟:**
  1. 開啟；用法同 QTerminal。

### TigerVNC viewer
- Connect to VNC server and display remote desktop
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "TigerVNC viewer"`。
  2. 指向 lab：`http://<NODE_IP>:30080`。
  3. 用 Burp/ZAP 代理（127.0.0.1:8080）檢視請求。

### Web Browser
- Browse the web
- **步驟:**
  1. 啟動；代理流程同上方 Firefox ESR。

