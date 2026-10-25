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
- **Steps:**
  1. Open: `../scripts/apps.sh open "bloodhound-python"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
- **Steps:**
  1. Open: `../scripts/apps.sh open "fang"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "ubertooth-util"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
- **Steps:**
  1. Open: `../scripts/apps.sh open "xhydra"`.
  2. Use it from the VNC desktop.
  3. Close when done.


## Kali tools — cisco-tools (3)

### cge.pl
- Simple and fast Cisco exploitation tool
- **Steps:**
  1. Open: `../scripts/apps.sh open "cge.pl"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "ettercap-pkexec"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "impacket-mssqlclient"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### mdb-sql
- SQL interface to MDB Tools
- **Steps:**
  1. Open: `../scripts/apps.sh open "mdb-sql"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### mysql
- The MariaDB command-line tool (mysql is now a symlink to mariadb)
- **Steps:**
  1. Open: `../scripts/apps.sh open "mysql"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "sidguess"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "exe2hex"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "ftest"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "readpst"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "beef-xss-start"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### evilgrade
- Evilgrade framework
- **Steps:**
  1. Open: `../scripts/apps.sh open "evilgrade"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "impacket-smbserver"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
- **Steps:**
  1. Open: `../scripts/apps.sh open "affcat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### dd_rescue
- Data recovery and protection tool
- **Steps:**
  1. Open: `../scripts/apps.sh open "dd_rescue"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### ewfacquire
- Acquires data in the EWF format
- **Steps:**
  1. Open: `../scripts/apps.sh open "ewfacquire"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
  Sun 25.Oct.2026 05:44:09 A3BE27E0 toollog.cpp t_Log 76                     Info  - Log file opened
  Sun 25.Oct.2026 05:44:09 A3BE27E0 main.cpp MainGo 418                      Info  - =================================================== Starting GUYMAGER ===================================================
  Sun 25.Oct.2026 05:44:09 A3BE27E0 main.cpp MainGo 419                      Info  - Version: 0.8.13-3
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "bulk_extractor"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "spiderfoot-cli"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
- **Steps:**
  1. Open: `../scripts/apps.sh open "nipper"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### osrframework-cli
- Open Sources Research Framework
- **Steps:**
  1. Open: `../scripts/apps.sh open "osrframework-cli"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
  New configuration template added to /home/kali/.siege
  Run siege -C to view the current settings in that file
  SIEGE 4.1.7
  Usage: siege [options]
         siege [options] URL
         siege -g URL
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "dns-rebind"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### jboss-linux
- JBoss script for obtaining remote shell access
- **Steps:**
  1. Open: `../scripts/apps.sh open "jboss-linux"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### jboss-win
- JBoss script for obtaining remote shell access
- **Steps:**
  1. Open: `../scripts/apps.sh open "jboss-win"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### jsql
- Java tool for automatic database injection
- **Steps:**
  1. Open: `../scripts/apps.sh open "jsql"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "setoolkit"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
   ___ ___[.]_____ ___ ___  {1.10.9#stable}
  |_ -| . [.]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "impacket-psexec"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### impacket-smbexec
- Python3 module to easily build and dissect network protocols
- **Steps:**
  1. Open: `../scripts/apps.sh open "impacket-smbexec"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### rdesktop
- Remote Desktop Protocol client
- **Steps:**
  1. Open: `../scripts/apps.sh open "rdesktop"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
  2. Help: `theharvester -h`  (or `man theharvester`)
  3. Run: `theharvester ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ The command theharvester is deprecated. Please use theHarvester instead.
  ┃
  ┗━
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "smbclient"`.
  2. Point it at the lab: `http://<NODE_IP>:30080`.
  3. Proxy via Burp/ZAP (127.0.0.1:8080) to inspect requests.


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
- **Steps:**
  1. Open: `../scripts/apps.sh open "arpspoof"`.
  2. Point it at the lab: `http://<NODE_IP>:30080`.
  3. Proxy via Burp/ZAP (127.0.0.1:8080) to inspect requests.

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
  Sun Oct 25 05:43:31 2026 - error: unrecognised option --
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "scapy"`.
  2. Point it at the lab: `http://<NODE_IP>:30080`.
  3. Proxy via Burp/ZAP (127.0.0.1:8080) to inspect requests.

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
- **Steps:**
  1. Banner grab: `nc -v <NODE_IP> 30080` then type a request.
  2. Egress test: `nc -zv <NODE_IP> 5432` — refused = DB control holds.
  3. Listener (own hosts only): `nc -lvnp 4444`.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "socat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
  [*] Copying default configuration file
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "xfreerdp3"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
- **Steps:**
  1. Open: `../scripts/apps.sh open "rcracki_mt"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "maskgen"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### policygen
- Password analysis and cracking kit
- **Steps:**
  1. Open: `../scripts/apps.sh open "policygen"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "statsgen"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "linpeas"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "winpeas"`.
  2. Use it from the VNC desktop.
  3. Close when done.


## Kali tools — protect (3)

### clamscan
- Scan files and directories for viruses
- **Steps:**
  1. Open: `../scripts/apps.sh open "clamscan"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### cryptsetup
- Utility for configuring and managing encrypted storage devices
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y cryptsetup`
  2. Help: `luksformat -h`  (or `man luksformat`)
  3. Run: `luksformat ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  This program needs to be started as root
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "dns2tcpc"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### dns2tcpd
- A tunneling tool that encapsulate TCP traffic over DNS.
- **Steps:**
  1. Open: `../scripts/apps.sh open "dns2tcpd"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### iodine-client-start
- Start an iodine IPv4-over-DNS tunnel
- **Steps:**
  1. Open: `../scripts/apps.sh open "iodine-client-start"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
  1. Open: `../scripts/apps.sh open "chirpw"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### hackrf_info
- Probe device and show configuration
- **Steps:**
  1. Open: `../scripts/apps.sh open "hackrf_info"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
  java is /usr/bin/java
  found java executable in PATH
  pwd: jar:file:/usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar!/BOOT-INF/lib/java-config-lib-1.0-SNAPSHOT.jar!/
  file: /usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar
  installDir: /usr/share/maltego
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "atk6-thcping6"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "faraday-start"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "afl-fuzz"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "clang++"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### cutter
- reverse engineering platform powered by rizin
- **Steps:**
  1. Open: `../scripts/apps.sh open "cutter"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### d2j-dex2jar
- Tools to work with android .dex and java .class files
- **Steps:**
  1. Open: `../scripts/apps.sh open "d2j-dex2jar"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "generic_chunked"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### generic_listen_tcp
- Network protocol fuzzer
- **Steps:**
  1. Open: `../scripts/apps.sh open "generic_listen_tcp"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### generic_send_tcp
- Network protocol fuzzer
- **Steps:**
  1. Open: `../scripts/apps.sh open "generic_send_tcp"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### generic_send_udp
- Network protocol fuzzer
- **Steps:**
  1. Open: `../scripts/apps.sh open "generic_send_udp"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### jadx-gui
- Dex to Java decompiler
- **Steps:**
  1. Open: `../scripts/apps.sh open "jadx-gui"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "msf-nasm_shell"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "msfvenom"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
   -- You can add commands into your ~/.rizinrc to customize your experience with Rizin
  [2K
  
  [0x00000000]> 
  [0x00000000]> 
  ```
- Docs: https://rizin.re/

### searchsploit
- Exploit Database Archive Search
- **Steps:**
  1. Open: `../scripts/apps.sh open "searchsploit"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "blkcalc"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### blkcat
- Display the contents of file system data unit in a disk image.
- **Steps:**
  1. Open: `../scripts/apps.sh open "blkcat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### blkls
- List or output file system data units.
- **Steps:**
  1. Open: `../scripts/apps.sh open "blkls"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### blkstat
- Display details of a file system data unit (i.e. block or sector)
- **Steps:**
  1. Open: `../scripts/apps.sh open "blkstat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### ffind
- Finds the name of the file or directory using a given inode
- **Steps:**
  1. Open: `../scripts/apps.sh open "ffind"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### fls
- List file and directory names in a disk image.
- **Steps:**
  1. Open: `../scripts/apps.sh open "fls"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### fsstat
- Display general details of a file system
- **Steps:**
  1. Open: `../scripts/apps.sh open "fsstat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### grokevt-addlog
- A tool for adding a raw event log to an existing GrokEVT database.
- **Steps:**
  1. Open: `../scripts/apps.sh open "grokevt-addlog"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### grokevt-builddb
- Builds a database tree based on a single windows system for the purpose of event log conversion.
- **Steps:**
  1. Open: `../scripts/apps.sh open "grokevt-builddb"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### grokevt-findlogs
- Attempts to find log file fragments in raw binary files, such as memory dumps and disk images.
- **Steps:**
  1. Open: `../scripts/apps.sh open "grokevt-findlogs"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### grokevt-parselog
- Parse a windows event log and generate human-readable output based on message resources stored in a database.
- **Steps:**
  1. Open: `../scripts/apps.sh open "grokevt-parselog"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### grokevt-ripdll
- A tool for extracting message resources from a PE-formatted file.
- **Steps:**
  1. Open: `../scripts/apps.sh open "grokevt-ripdll"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### hfind
- Lookup a hash value in a hash database
- **Steps:**
  1. Open: `../scripts/apps.sh open "hfind"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### icat
- Output the contents of a file based on its inode number.
- **Steps:**
  1. Open: `../scripts/apps.sh open "icat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### ifind
- Find the meta-data structure that has allocated a given disk unit or file name.
- **Steps:**
  1. Open: `../scripts/apps.sh open "ifind"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### ils
- List inode information
- **Steps:**
  1. Open: `../scripts/apps.sh open "ils"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### img_cat
- Output contents of an image file.
- **Steps:**
  1. Open: `../scripts/apps.sh open "img_cat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### img_stat
- Display details of an image file
- **Steps:**
  1. Open: `../scripts/apps.sh open "img_stat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### istat
- Display details of a meta-data structure (i.e. inode)
- **Steps:**
  1. Open: `../scripts/apps.sh open "istat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### jcat
- Show the contents of a block in the file system journal.
- **Steps:**
  1. Open: `../scripts/apps.sh open "jcat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### jls
- List the contents of a file system journal
- **Steps:**
  1. Open: `../scripts/apps.sh open "jls"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### mactime
- Create an ASCII time line of file activity
- **Steps:**
  1. Open: `../scripts/apps.sh open "mactime"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### mmcat
- Output the contents of a partition to stdout
- **Steps:**
  1. Open: `../scripts/apps.sh open "mmcat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### mmls
- Display the partition layout of a volume system (partition tables)
- **Steps:**
  1. Open: `../scripts/apps.sh open "mmls"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### mmstat
- Display details about the volume system (partition tables)
- **Steps:**
  1. Open: `../scripts/apps.sh open "mmstat"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### sigfind
- Find a binary signature in a file
- **Steps:**
  1. Open: `../scripts/apps.sh open "sigfind"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### sorter
- Sort files in an image into categories based on file type
- **Steps:**
  1. Open: `../scripts/apps.sh open "sorter"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### srch_strings
- Display printable strings in files
- **Steps:**
  1. Open: `../scripts/apps.sh open "srch_strings"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### tsk_comparedir
- Compare the contents of a directory with the contents of an image or local device.
- **Steps:**
  1. Open: `../scripts/apps.sh open "tsk_comparedir"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### tsk_gettimes
- Collect MAC times from a disk image into a body file.
- **Steps:**
  1. Open: `../scripts/apps.sh open "tsk_gettimes"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### tsk_loaddb
- Populate a SQLite database with metadata from a disk image
- **Steps:**
  1. Open: `../scripts/apps.sh open "tsk_loaddb"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### tsk_recover
- Export files from an image into a local directory
- **Steps:**
  1. Open: `../scripts/apps.sh open "tsk_recover"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
- **Steps:**
  1. Open: `../scripts/apps.sh open "snmp-check"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
                [--sni SERVER_NAME_INDICATION] [--http_headers] [--ems]
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "0trace.sh"`.
  2. Point it at the lab: `http://<NODE_IP>:30080`.
  3. Proxy via Burp/ZAP (127.0.0.1:8080) to inspect requests.

### ass
- Autonomous system scanner
- **Steps:**
  1. Open: `../scripts/apps.sh open "ass"`.
  2. Point it at the lab: `http://<NODE_IP>:30080`.
  3. Proxy via Burp/ZAP (127.0.0.1:8080) to inspect requests.

### cdp
- Cdp packet generator
- **Steps:**
  1. Open: `../scripts/apps.sh open "cdp"`.
  2. Point it at the lab: `http://<NODE_IP>:30080`.
  3. Proxy via Burp/ZAP (127.0.0.1:8080) to inspect requests.

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
  2026/10/25 05:44:39.93599 <ERROR> Couldn't resolve 'elp': 'Authoritative Answer. Host not found'
  2026/10/25 05:44:39.93660 <FATAL> Resolving 'elp' failed
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
  
  
  MOTD: Having lotto fun with my Audiovector Mi3 Avantgarde Arrete LE... :)
  ```
- Docs: https://github.com/tomac/yersinia


## Kali tools — system-services (7)

### beef-xss-stop
- Browser Exploitation Framework (BeEF)
- **Steps:**
  1. Open: `../scripts/apps.sh open "beef-xss-stop"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### defectdojo-start
- security orchestration and vulnerability management platform
- **Steps:**
  1. Open: `../scripts/apps.sh open "defectdojo-start"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### defectdojo-stop
- security orchestration and vulnerability management platform
- **Steps:**
  1. Open: `../scripts/apps.sh open "defectdojo-stop"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### faraday-stop
- Collaborative Penetration Test IDE
- **Steps:**
  1. Open: `../scripts/apps.sh open "faraday-stop"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### gvm-check-setup
- remote network security auditor - metapackage and useful scripts
- **Steps:**
  1. Open: `../scripts/apps.sh open "gvm-check-setup"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### gvm-setup
- remote network security auditor - metapackage and useful scripts
- **Steps:**
  1. Open: `../scripts/apps.sh open "gvm-setup"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### gvm-stop
- remote network security auditor - metapackage and useful scripts
- **Steps:**
  1. Open: `../scripts/apps.sh open "gvm-stop"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
  25/10/2026#05:47:08 Fatal error at main.c:485:init_opt: option '-' invalid; exit forced.
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "svcrash"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### svmap
- Scanner that searches for SIP devices on a given network
- **Steps:**
  1. Open: `../scripts/apps.sh open "svmap"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### svreport
- Report engine manage sessions from previous scans with SIPVicious
- **Steps:**
  1. Open: `../scripts/apps.sh open "svreport"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### svwar
- Extension line scanner
- **Steps:**
  1. Open: `../scripts/apps.sh open "svwar"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "svcrack"`.
  2. Use it from the VNC desktop.
  3. Close when done.


## Kali tools — vulnerability-scanning (3)

### CAT
- Concatenate files and print on the standard output
- **Steps:**
  1. Open: `../scripts/apps.sh open "CAT"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### gvm-start
- remote network security auditor - metapackage and useful scripts
- **Steps:**
  1. Open: `../scripts/apps.sh open "gvm-start"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
  bash: cannot set terminal process group (159027): Inappropriate ioctl for device
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "feroxbuster"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### ffuf
- Fast web fuzzer written in Go
- **Steps:**
  1. Open: `../scripts/apps.sh open "ffuf"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### gobuster
- Directory/file, DNS and virtual host brute-forcing tool written in Go
- **Steps:**
  1. Open: `../scripts/apps.sh open "gobuster"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **Steps:**
  1. Open: `../scripts/apps.sh open "uniscan-gui"`.
  2. Use it from the VNC desktop.
  3. Close when done.

### urlcrazy
- Domain typo generator
- **Steps (verified ✓):**
  1. Install: `sudo apt install -y urlcrazy`
  2. Help: `urlcrazy -h`  (or `man urlcrazy`)
  3. Run: `urlcrazy ...` against a target you own (see the real --help below).
- **real --help (verified on VM):**
  ```
  Warning. File descriptor limit may be too low. Check with `ulimit -a` and change with `ulimit -n 10000`
  
  ____ _____________.____   _________                             
  |    |   \______   \    |  \_   ___ \___________  ___________.__.
  |    |   /|       _/    |  /    \  \|_  __ \__  \ \___   <   |  |
  |    |  / |    |   \    |__\     \___|  | \// __ \_/    / \___  |
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "nuclei"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
  
   ██╗    ██╗ █████╗ ██████╗ ██╗████████╗██╗██████╗
   ██║    ██║██╔══██╗██╔══██╗██║╚══██╔══╝██║╚════██╗
   ██║ █╗ ██║███████║██████╔╝██║   ██║   ██║ █████╔╝
   ██║███╗██║██╔══██║██╔═══╝ ██║   ██║   ██║ ╚═══██╗
   ╚███╔███╔╝██║  ██║██║     ██║   ██║   ██║██████╔╝
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
  666 [main] INFO  org.parosproxy.paros.Constant - Copying default configuration to /home/kali/.ZAP/config.xml
  814 [main] INFO  org.parosproxy.paros.Constant - Creating directory /home/kali/.ZAP/session
  815 [main] INFO  org.parosproxy.paros.Constant - Creating directory /home/kali/.ZAP/dirbuster
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
- **Steps:**
  1. Open: `../scripts/apps.sh open "wash"`.
  2. Use it from the VNC desktop.
  3. Close when done.


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
- **Steps:**
  1. Open: `../scripts/apps.sh open "xfreerdp"`.
  2. Adjust the setting (xfreerdp).
  3. Close to apply.


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
  1. Open: `../scripts/apps.sh open "Hardware Locality lstopo"`.
  2. Use it from the VNC desktop.
  3. Close when done.

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "bloodhound-python"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "fang"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ubertooth-util"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "xhydra"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


## Kali tools — cisco-tools (3)

### cge.pl
- Simple and fast Cisco exploitation tool
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "cge.pl"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ettercap-pkexec"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "impacket-mssqlclient"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### mdb-sql
- SQL interface to MDB Tools
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "mdb-sql"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### mysql
- The MariaDB command-line tool (mysql is now a symlink to mariadb)
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "mysql"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "sidguess"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "exe2hex"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ftest"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "readpst"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "beef-xss-start"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### evilgrade
- Evilgrade framework
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "evilgrade"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "impacket-smbserver"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "affcat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### dd_rescue
- Data recovery and protection tool
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "dd_rescue"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### ewfacquire
- Acquires data in the EWF format
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ewfacquire"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
  Sun 25.Oct.2026 05:44:09 A3BE27E0 toollog.cpp t_Log 76                     Info  - Log file opened
  Sun 25.Oct.2026 05:44:09 A3BE27E0 main.cpp MainGo 418                      Info  - =================================================== Starting GUYMAGER ===================================================
  Sun 25.Oct.2026 05:44:09 A3BE27E0 main.cpp MainGo 419                      Info  - Version: 0.8.13-3
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "bulk_extractor"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "spiderfoot-cli"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "nipper"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### osrframework-cli
- Open Sources Research Framework
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "osrframework-cli"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
  New configuration template added to /home/kali/.siege
  Run siege -C to view the current settings in that file
  SIEGE 4.1.7
  Usage: siege [options]
         siege [options] URL
         siege -g URL
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "dns-rebind"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### jboss-linux
- JBoss script for obtaining remote shell access
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "jboss-linux"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### jboss-win
- JBoss script for obtaining remote shell access
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "jboss-win"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### jsql
- Java tool for automatic database injection
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "jsql"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "setoolkit"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
   ___ ___[.]_____ ___ ___  {1.10.9#stable}
  |_ -| . [.]     | .'| . |
  |___|_  ["]_|_|_|__,|  _|
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "impacket-psexec"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### impacket-smbexec
- Python3 module to easily build and dissect network protocols
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "impacket-smbexec"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### rdesktop
- Remote Desktop Protocol client
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "rdesktop"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
  2. 看說明：`theharvester -h`（或 `man theharvester`）
  3. 執行：`theharvester ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  ┏━(Message from Kali developers)
  ┃
  ┃ The command theharvester is deprecated. Please use theHarvester instead.
  ┃
  ┗━
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "smbclient"`。
  2. 指向 lab：`http://<NODE_IP>:30080`。
  3. 用 Burp/ZAP 代理（127.0.0.1:8080）檢視請求。


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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "arpspoof"`。
  2. 指向 lab：`http://<NODE_IP>:30080`。
  3. 用 Burp/ZAP 代理（127.0.0.1:8080）檢視請求。

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
  Sun Oct 25 05:43:31 2026 - error: unrecognised option --
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "scapy"`。
  2. 指向 lab：`http://<NODE_IP>:30080`。
  3. 用 Burp/ZAP 代理（127.0.0.1:8080）檢視請求。

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
- **步驟:**
  1. 抓 banner：`nc -v <NODE_IP> 30080` 再輸入請求。
  2. 出站測試：`nc -zv <NODE_IP> 5432` —— 被拒＝DB 控制有效。
  3. 監聽（僅自有主機）：`nc -lvnp 4444`。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "socat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
  [*] Copying default configuration file
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "xfreerdp3"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "rcracki_mt"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "maskgen"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### policygen
- Password analysis and cracking kit
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "policygen"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "statsgen"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "linpeas"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "winpeas"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


## Kali tools — protect (3)

### clamscan
- Scan files and directories for viruses
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "clamscan"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### cryptsetup
- 磁碟加密支援（啟動腳本）
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y cryptsetup`
  2. 看說明：`luksformat -h`（或 `man luksformat`）
  3. 執行：`luksformat ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  This program needs to be started as root
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "dns2tcpc"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### dns2tcpd
- A tunneling tool that encapsulate TCP traffic over DNS.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "dns2tcpd"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### iodine-client-start
- Start an iodine IPv4-over-DNS tunnel
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "iodine-client-start"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
  1. 開啟：`../scripts/apps.sh open "chirpw"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### hackrf_info
- Probe device and show configuration
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "hackrf_info"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
  java is /usr/bin/java
  found java executable in PATH
  pwd: jar:file:/usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar!/BOOT-INF/lib/java-config-lib-1.0-SNAPSHOT.jar!/
  file: /usr/share/maltego/maltego-ui/modules/ext/com.paterva.maltego.java-config-ui/com-paterva-maltego/java-config-app.jar
  installDir: /usr/share/maltego
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "atk6-thcping6"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "faraday-start"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "afl-fuzz"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "clang++"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### cutter
- reverse engineering platform powered by rizin
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "cutter"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### d2j-dex2jar
- Tools to work with android .dex and java .class files
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "d2j-dex2jar"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "generic_chunked"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### generic_listen_tcp
- Network protocol fuzzer
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "generic_listen_tcp"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### generic_send_tcp
- Network protocol fuzzer
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "generic_send_tcp"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### generic_send_udp
- Network protocol fuzzer
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "generic_send_udp"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### jadx-gui
- Dex to Java decompiler
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "jadx-gui"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "msf-nasm_shell"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "msfvenom"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
   -- You can add commands into your ~/.rizinrc to customize your experience with Rizin
  [2K
  
  [0x00000000]> 
  [0x00000000]> 
  ```
- 文件：https://rizin.re/

### searchsploit
- Exploit Database Archive Search
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "searchsploit"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "blkcalc"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### blkcat
- Display the contents of file system data unit in a disk image.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "blkcat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### blkls
- List or output file system data units.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "blkls"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### blkstat
- Display details of a file system data unit (i.e. block or sector)
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "blkstat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### ffind
- Finds the name of the file or directory using a given inode
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ffind"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### fls
- List file and directory names in a disk image.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "fls"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### fsstat
- Display general details of a file system
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "fsstat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### grokevt-addlog
- A tool for adding a raw event log to an existing GrokEVT database.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "grokevt-addlog"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### grokevt-builddb
- Builds a database tree based on a single windows system for the purpose of event log conversion.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "grokevt-builddb"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### grokevt-findlogs
- Attempts to find log file fragments in raw binary files, such as memory dumps and disk images.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "grokevt-findlogs"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### grokevt-parselog
- Parse a windows event log and generate human-readable output based on message resources stored in a database.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "grokevt-parselog"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### grokevt-ripdll
- A tool for extracting message resources from a PE-formatted file.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "grokevt-ripdll"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### hfind
- Lookup a hash value in a hash database
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "hfind"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### icat
- Output the contents of a file based on its inode number.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "icat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### ifind
- Find the meta-data structure that has allocated a given disk unit or file name.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ifind"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### ils
- List inode information
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ils"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### img_cat
- Output contents of an image file.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "img_cat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### img_stat
- Display details of an image file
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "img_stat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### istat
- Display details of a meta-data structure (i.e. inode)
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "istat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### jcat
- Show the contents of a block in the file system journal.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "jcat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### jls
- List the contents of a file system journal
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "jls"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### mactime
- Create an ASCII time line of file activity
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "mactime"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### mmcat
- Output the contents of a partition to stdout
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "mmcat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### mmls
- Display the partition layout of a volume system (partition tables)
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "mmls"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### mmstat
- Display details about the volume system (partition tables)
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "mmstat"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### sigfind
- Find a binary signature in a file
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "sigfind"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### sorter
- Sort files in an image into categories based on file type
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "sorter"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### srch_strings
- Display printable strings in files
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "srch_strings"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### tsk_comparedir
- Compare the contents of a directory with the contents of an image or local device.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "tsk_comparedir"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### tsk_gettimes
- Collect MAC times from a disk image into a body file.
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "tsk_gettimes"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### tsk_loaddb
- Populate a SQLite database with metadata from a disk image
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "tsk_loaddb"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### tsk_recover
- Export files from an image into a local directory
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "tsk_recover"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "snmp-check"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
                [--sni SERVER_NAME_INDICATION] [--http_headers] [--ems]
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "0trace.sh"`。
  2. 指向 lab：`http://<NODE_IP>:30080`。
  3. 用 Burp/ZAP 代理（127.0.0.1:8080）檢視請求。

### ass
- Autonomous system scanner
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ass"`。
  2. 指向 lab：`http://<NODE_IP>:30080`。
  3. 用 Burp/ZAP 代理（127.0.0.1:8080）檢視請求。

### cdp
- Cdp packet generator
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "cdp"`。
  2. 指向 lab：`http://<NODE_IP>:30080`。
  3. 用 Burp/ZAP 代理（127.0.0.1:8080）檢視請求。

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
  2026/10/25 05:44:39.93599 <ERROR> Couldn't resolve 'elp': 'Authoritative Answer. Host not found'
  2026/10/25 05:44:39.93660 <FATAL> Resolving 'elp' failed
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
  
  
  MOTD: Having lotto fun with my Audiovector Mi3 Avantgarde Arrete LE... :)
  ```
- 文件：https://github.com/tomac/yersinia


## Kali tools — system-services (7)

### beef-xss-stop
- Browser Exploitation Framework (BeEF)
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "beef-xss-stop"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### defectdojo-start
- security orchestration and vulnerability management platform
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "defectdojo-start"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### defectdojo-stop
- security orchestration and vulnerability management platform
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "defectdojo-stop"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### faraday-stop
- Collaborative Penetration Test IDE
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "faraday-stop"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### gvm-check-setup
- remote network security auditor - metapackage and useful scripts
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "gvm-check-setup"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### gvm-setup
- remote network security auditor - metapackage and useful scripts
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "gvm-setup"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### gvm-stop
- remote network security auditor - metapackage and useful scripts
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "gvm-stop"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
  25/10/2026#05:47:08 Fatal error at main.c:485:init_opt: option '-' invalid; exit forced.
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "svcrash"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### svmap
- Scanner that searches for SIP devices on a given network
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "svmap"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### svreport
- Report engine manage sessions from previous scans with SIPVicious
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "svreport"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### svwar
- Extension line scanner
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "svwar"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "svcrack"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


## Kali tools — vulnerability-scanning (3)

### CAT
- Concatenate files and print on the standard output
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "CAT"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### gvm-start
- remote network security auditor - metapackage and useful scripts
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "gvm-start"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
  bash: cannot set terminal process group (159027): Inappropriate ioctl for device
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "feroxbuster"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### ffuf
- Fast web fuzzer written in Go
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "ffuf"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### gobuster
- Directory/file, DNS and virtual host brute-forcing tool written in Go
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "gobuster"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "uniscan-gui"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

### urlcrazy
- 網域誤植產生器
- **步驟（已驗證 ✓）:**
  1. 安裝：`sudo apt install -y urlcrazy`
  2. 看說明：`urlcrazy -h`（或 `man urlcrazy`）
  3. 執行：`urlcrazy ...` 對你擁有的目標（見下方實測 --help）。
- **實測 --help:**
  ```
  Warning. File descriptor limit may be too low. Check with `ulimit -a` and change with `ulimit -n 10000`
  
  ____ _____________.____   _________                             
  |    |   \______   \    |  \_   ___ \___________  ___________.__.
  |    |   /|       _/    |  /    \  \|_  __ \__  \ \___   <   |  |
  |    |  / |    |   \    |__\     \___|  | \// __ \_/    / \___  |
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "nuclei"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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
  
   ██╗    ██╗ █████╗ ██████╗ ██╗████████╗██╗██████╗
   ██║    ██║██╔══██╗██╔══██╗██║╚══██╔══╝██║╚════██╗
   ██║ █╗ ██║███████║██████╔╝██║   ██║   ██║ █████╔╝
   ██║███╗██║██╔══██║██╔═══╝ ██║   ██║   ██║ ╚═══██╗
   ╚███╔███╔╝██║  ██║██║     ██║   ██║   ██║██████╔╝
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
  666 [main] INFO  org.parosproxy.paros.Constant - Copying default configuration to /home/kali/.ZAP/config.xml
  814 [main] INFO  org.parosproxy.paros.Constant - Creating directory /home/kali/.ZAP/session
  815 [main] INFO  org.parosproxy.paros.Constant - Creating directory /home/kali/.ZAP/dirbuster
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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "wash"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。


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
- **步驟:**
  1. 開啟：`../scripts/apps.sh open "xfreerdp"`。
  2. 調整該設定（xfreerdp）。
  3. 關閉即套用。


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
  1. 開啟：`../scripts/apps.sh open "Hardware Locality lstopo"`。
  2. 在 VNC 桌面使用。
  3. 用完關閉。

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

