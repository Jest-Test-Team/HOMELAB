# All installed applications on this VM (currently 450) — intro & usage (English)

> 繁體中文：[`installed-apps.md` 的中文段見下] · per-tool step-by-step: [`tutorials.en.md`](tutorials.en.md)

With the full toolset installed, the menu has **450** applications (enumerated from the VM by `../scripts/list-apps.sh`). Open any on the VNC desktop with `../scripts/apps.sh open "<Name>"`; for the offensive tools, the full step-by-step is in [`tutorials.en.md`](tutorials.en.md). Scope: `../../ROE.md`.


## Kali tools — account-discovery (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| apache-users | Enumerate usernames on systems with Apache UserDir module | `apps.sh open "apache-users"` · tutorial: tutorials.en.md |
| smtp-user-enum | Username guessing tool for the SMTP service | `apps.sh open "smtp-user-enum"` · tutorial: tutorials.en.md |

## Kali tools — active-directory (1)

| Application | What it is | Open / tutorial |
|---|---|---|
| bloodhound-python | ingestor for BloodHound, based on Impacket (Python 3) | `apps.sh open "bloodhound-python"` |

## Kali tools — application-layer-protocol (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| cadaver | A command-line WebDAV client for Unix. | `apps.sh open "cadaver"` · tutorial: tutorials.en.md |
| minicom | Friendly serial communication program | `apps.sh open "minicom"` · tutorial: tutorials.en.md |

## Kali tools — bluetooth (8)

| Application | What it is | Open / tutorial |
|---|---|---|
| bettercap | Complete, modular, portable and easily extensible MITM framework | `apps.sh open "bettercap"` · tutorial: tutorials.en.md |
| bluelog | Bluetooth Scanner and Logger | `apps.sh open "bluelog"` · tutorial: tutorials.en.md |
| blueranger | Simple Bash script to locate Bluetooth devices | `apps.sh open "blueranger"` · tutorial: tutorials.en.md |
| bluesnarfer | Bluesnarfing utility | `apps.sh open "bluesnarfer"` · tutorial: tutorials.en.md |
| btscanner | Ncurses-based scanner for Bluetooth devices | `apps.sh open "btscanner"` · tutorial: tutorials.en.md |
| fang | Locates non-discoverable bluetooth devices | `apps.sh open "fang"` |
| spooftooph | Automates spoofing or cloning Bluetooth devices | `apps.sh open "spooftooph"` · tutorial: tutorials.en.md |
| ubertooth-util | General purpose Ubertooth utility | `apps.sh open "ubertooth-util"` |

## Kali tools — brute-force (6)

| Application | What it is | Open / tutorial |
|---|---|---|
| hydra | A very fast network logon cracker which supports many different services | `apps.sh open "hydra"` · tutorial: tutorials.en.md |
| medusa | Parallel Network Login Auditor | `apps.sh open "medusa"` · tutorial: tutorials.en.md |
| ncrack | Network authentication cracking tool | `apps.sh open "ncrack"` · tutorial: tutorials.en.md |
| patator | Multi-purpose brute-forcer | `apps.sh open "patator"` · tutorial: tutorials.en.md |
| thc-pptp-bruter | THC PPTP Brute Force | `apps.sh open "thc-pptp-bruter"` · tutorial: tutorials.en.md |
| xhydra | Gtk+3 frontend for thc-hydra | `apps.sh open "xhydra"` |

## Kali tools — cisco-tools (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| cge.pl | Simple and fast Cisco exploitation tool | `apps.sh open "cge.pl"` |
| cisco-ocs | Mass Cisco scanner | `apps.sh open "cisco-ocs"` · tutorial: tutorials.en.md |
| cisco-torch | Cisco device scanner | `apps.sh open "cisco-torch"` · tutorial: tutorials.en.md |

## Kali tools — collection (9)

| Application | What it is | Open / tutorial |
|---|---|---|
| ettercap-pkexec | Graphical pkexec-based launcher for ettercap | `apps.sh open "ettercap-pkexec"` |
| ferret-sidejack | Monitors data and extracts interesting data | `apps.sh open "ferret-sidejack"` · tutorial: tutorials.en.md |
| fiked | A fake IKE PSK+XAUTH daemon based on vpnc | `apps.sh open "fiked"` · tutorial: tutorials.en.md |
| hamster-sidejack | Sidejacking tool | `apps.sh open "hamster-sidejack"` · tutorial: tutorials.en.md |
| httrack | Offline browser : copy websites to a local directory | `apps.sh open "httrack"` · tutorial: tutorials.en.md |
| mitmproxy | SSL-capable man-in-the-middle HTTP proxy | `apps.sh open "mitmproxy"` · tutorial: tutorials.en.md |
| ssldump | Dump SSL traffic on a network | `apps.sh open "ssldump"` · tutorial: tutorials.en.md |
| sslsniff | SSL/TLS man-in-the-middle attack tool | `apps.sh open "sslsniff"` · tutorial: tutorials.en.md |
| sslsplit | - transparent SSL/TLS interception | `apps.sh open "sslsplit"` · tutorial: tutorials.en.md |

## Kali tools — credential-access (1)

| Application | What it is | Open / tutorial |
|---|---|---|
| responder | LLMNR/NBT-NS/mDNS Poisoner | `apps.sh open "responder"` · tutorial: tutorials.en.md |

## Kali tools — databases (7)

| Application | What it is | Open / tutorial |
|---|---|---|
| impacket-mssqlclient | Python3 module to easily build and dissect network protocols | `apps.sh open "impacket-mssqlclient"` |
| mdb-sql | SQL interface to MDB Tools | `apps.sh open "mdb-sql"` |
| mysql | The MariaDB command-line tool (mysql is now a symlink to mariadb) | `apps.sh open "mysql"` |
| oscanner | Oracle assessment framework | `apps.sh open "oscanner"` · tutorial: tutorials.en.md |
| sidguess | Guesses sids against an Oracle database | `apps.sh open "sidguess"` |
| sqlitebrowser | Light GUI editor for SQLite databases | `apps.sh open "sqlitebrowser"` · tutorial: tutorials.en.md |
| tnscmd10g | Tool to prod the oracle tnslsnr process | `apps.sh open "tnscmd10g"` · tutorial: tutorials.en.md |

## Kali tools — defense-evasion (10)

| Application | What it is | Open / tutorial |
|---|---|---|
| ccrypt | Encrypt and decrypt files and streams | `apps.sh open "ccrypt"` · tutorial: tutorials.en.md |
| exe2hex | Convert EXE to bat | `apps.sh open "exe2hex"` |
| fragrouter | Network intrusion detection evasion toolkit | `apps.sh open "fragrouter"` · tutorial: tutorials.en.md |
| ftest | Tool for testing firewalls and Intrusion Detection System (IDS) | `apps.sh open "ftest"` |
| macchanger | MAC Changer | `apps.sh open "macchanger"` · tutorial: tutorials.en.md |
| padbuster | Script for performing Padding Oracle attacks | `apps.sh open "padbuster"` · tutorial: tutorials.en.md |
| sniffjoke | Transparent TCP connection scrambler | `apps.sh open "sniffjoke"` · tutorial: tutorials.en.md |
| steghide | A steganography program | `apps.sh open "steghide"` · tutorial: tutorials.en.md |
| stegosuite | A steganography tool | `apps.sh open "stegosuite"` · tutorial: tutorials.en.md |
| stegsnow | Whitespace steganography program | `apps.sh open "stegsnow"` · tutorial: tutorials.en.md |

## Kali tools — detect (1)

| Application | What it is | Open / tutorial |
|---|---|---|
| sentrypeer | A distributed list of bad IP addresses and phone numbers collected via a SIP Honeypot | `apps.sh open "sentrypeer"` · tutorial: tutorials.en.md |

## Kali tools — digital-forensics (7)

| Application | What it is | Open / tutorial |
|---|---|---|
| dc3dd | Convert and copy a file | `apps.sh open "dc3dd"` · tutorial: tutorials.en.md |
| dcfldd | Enhanced version of dd for forensics and security | `apps.sh open "dcfldd"` · tutorial: tutorials.en.md |
| missidentify | Find executable files without an executable extension | `apps.sh open "missidentify"` · tutorial: tutorials.en.md |
| readpst | Convert PST (MS Outlook Personal Folders) files to mbox and other formats | `apps.sh open "readpst"` |
| reglookup | Windows NT+ registry reader/lookup tool | `apps.sh open "reglookup"` · tutorial: tutorials.en.md |
| undbx | A tool to extract e-mails from Outlook Express .dbx files. | `apps.sh open "undbx"` · tutorial: tutorials.en.md |
| vinetto | Extract thumbnails and associated metadata from Thumbs.db files | `apps.sh open "vinetto"` · tutorial: tutorials.en.md |

## Kali tools — execution (6)

| Application | What it is | Open / tutorial |
|---|---|---|
| armitage | Cyber attack management for Metasploit | `apps.sh open "armitage"` · tutorial: tutorials.en.md |
| beef-xss-start | Browser Exploitation Framework (BeEF) | `apps.sh open "beef-xss-start"` |
| evilgrade | Evilgrade framework | `apps.sh open "evilgrade"` |
| nishang | Collection of PowerShell scripts and payloads | `apps.sh open "nishang"` · tutorial: tutorials.en.md |
| powersploit | PowerShell Post-Exploitation Framework | `apps.sh open "powersploit"` · tutorial: tutorials.en.md |
| xsser | XSS testing framework | `apps.sh open "xsser"` · tutorial: tutorials.en.md |

## Kali tools — exfiltration (1)

| Application | What it is | Open / tutorial |
|---|---|---|
| impacket-smbserver | Python3 module to easily build and dissect network protocols | `apps.sh open "impacket-smbserver"` |

## Kali tools — forensic-carving-tools (15)

| Application | What it is | Open / tutorial |
|---|---|---|
| ext3grep | Ext3 file recovery tool | `apps.sh open "ext3grep"` · tutorial: tutorials.en.md |
| ext4magic | Recover deleted files on ext3/4 filesystems | `apps.sh open "ext4magic"` · tutorial: tutorials.en.md |
| extundelete | Utility to undelete files from an ext3 or ext4 partition. | `apps.sh open "extundelete"` · tutorial: tutorials.en.md |
| foremost | Recover files using their headers, footers, and data structures | `apps.sh open "foremost"` · tutorial: tutorials.en.md |
| magicrescue | Scans a block device and extracts known file types by looking at magic bytes. | `apps.sh open "magicrescue"` · tutorial: tutorials.en.md |
| myrescue | Harddisc Rescue | `apps.sh open "myrescue"` · tutorial: tutorials.en.md |
| pasco | Tool to extract information from MS IE cache files | `apps.sh open "pasco"` · tutorial: tutorials.en.md |
| readpe | Displays information about PE files | `apps.sh open "readpe"` · tutorial: tutorials.en.md |
| recoverdm | Recover files on disks with damaged sectors | `apps.sh open "recoverdm"` · tutorial: tutorials.en.md |
| recoverjpeg | Recover jpeg pictures from a filesystem image | `apps.sh open "recoverjpeg"` · tutorial: tutorials.en.md |
| rifiuti | Tool to extract information from MS recycle bins info2 files. | `apps.sh open "rifiuti"` · tutorial: tutorials.en.md |
| rifiuti2 | Windows recycle bin analysis tool | `apps.sh open "rifiuti2"` · tutorial: tutorials.en.md |
| safecopy | Rescue data from a source that causes IO errors | `apps.sh open "safecopy"` · tutorial: tutorials.en.md |
| scalpel | Recover files using a header/footer database | `apps.sh open "scalpel"` · tutorial: tutorials.en.md |
| scrounge-ntfs | Helps retrieve data from corrupted NTFS partitions | `apps.sh open "scrounge-ntfs"` · tutorial: tutorials.en.md |

## Kali tools — forensic-imaging-tools (4)

| Application | What it is | Open / tutorial |
|---|---|---|
| affcat | Output contents of an image file to stdout. | `apps.sh open "affcat"` |
| dd_rescue | Data recovery and protection tool | `apps.sh open "dd_rescue"` |
| ewfacquire | Acquires data in the EWF format | `apps.sh open "ewfacquire"` |
| guymager | A forensic acquisition program | `apps.sh open "guymager"` · tutorial: tutorials.en.md |

## Kali tools — forensics (10)

| Application | What it is | Open / tutorial |
|---|---|---|
| binwalk | Tool for searching binary images for embedded files and executable code | `apps.sh open "binwalk"` · tutorial: tutorials.en.md |
| binwalk3 | tool library for analyzing binary blobs and executable code | `apps.sh open "binwalk3"` · tutorial: tutorials.en.md |
| bulk_extractor | Scans a disk image for regular expressions and other content. | `apps.sh open "bulk_extractor"` |
| chkrootkit | Scan the system for signs of rootkits | `apps.sh open "chkrootkit"` · tutorial: tutorials.en.md |
| galleta | Tool to extract information from MSIE cookie files | `apps.sh open "galleta"` · tutorial: tutorials.en.md |
| hashdeep | Compute, compare, or audit multiple message digests | `apps.sh open "hashdeep"` · tutorial: tutorials.en.md |
| rkhunter | RootKit Hunter | `apps.sh open "rkhunter"` · tutorial: tutorials.en.md |
| ssdeep | Computes context triggered piecewise hashes (fuzzy hashes) | `apps.sh open "ssdeep"` · tutorial: tutorials.en.md |
| unhide | Forensic tool to find hidden processes | `apps.sh open "unhide"` · tutorial: tutorials.en.md |
| yara | Find files matching patterns and rules written in a special-purpose language. | `apps.sh open "yara"` · tutorial: tutorials.en.md |

## Kali tools — hash-identification (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| hash-identifier | Tool to identify hash types | `apps.sh open "hash-identifier"` · tutorial: tutorials.en.md |
| hashid | Identify the different types of hashes used to encrypt data | `apps.sh open "hashid"` · tutorial: tutorials.en.md |

## Kali tools — host-information (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| metagoofil | Tool designed for extracting metadata of public documents | `apps.sh open "metagoofil"` · tutorial: tutorials.en.md |
| spiderfoot | OSINT collection and reconnaissance tool | `apps.sh open "spiderfoot"` · tutorial: tutorials.en.md |
| spiderfoot-cli | OSINT collection and reconnaissance tool | `apps.sh open "spiderfoot-cli"` |

## Kali tools — identify (4)

| Application | What it is | Open / tutorial |
|---|---|---|
| maryam | OWASP Maryam is a modular/optional open source framework bas | `apps.sh open "maryam"` · tutorial: tutorials.en.md |
| nipper | Network Infrastructure Parser. Produces reports based of network device configuration file settings. | `apps.sh open "nipper"` |
| osrframework-cli | Open Sources Research Framework | `apps.sh open "osrframework-cli"` |
| tiger | UNIX Security Checker | `apps.sh open "tiger"` · tutorial: tutorials.en.md |

## Kali tools — impact (9)

| Application | What it is | Open / tutorial |
|---|---|---|
| dhcpig | DHCP exhaustion script using scapy network library | `apps.sh open "dhcpig"` · tutorial: tutorials.en.md |
| iaxflood | VoIP flooder tool | `apps.sh open "iaxflood"` · tutorial: tutorials.en.md |
| inviteflood | SIP/SDP INVITE message flooding over UDP/IP | `apps.sh open "inviteflood"` · tutorial: tutorials.en.md |
| mdk3 | Wireless attack tool for IEEE 802.11 networks | `apps.sh open "mdk3"` · tutorial: tutorials.en.md |
| rtpflood | Tool to flood any RTP device | `apps.sh open "rtpflood"` · tutorial: tutorials.en.md |
| siege | An HTTP/FTP load tester and benchmarking utility. | `apps.sh open "siege"` · tutorial: tutorials.en.md |
| slowhttptest | Denial Of Service attacks simulator | `apps.sh open "slowhttptest"` · tutorial: tutorials.en.md |
| t50 | Network packet injector | `apps.sh open "t50"` · tutorial: tutorials.en.md |
| thc-ssl-dos | Stress tester for the SSL handshake | `apps.sh open "thc-ssl-dos"` · tutorial: tutorials.en.md |

## Kali tools — initial-access (10)

| Application | What it is | Open / tutorial |
|---|---|---|
| commix | Automated All-in-One OS Command Injection and Exploitation Tool | `apps.sh open "commix"` · tutorial: tutorials.en.md |
| dns-rebind | DNS rebinding tool | `apps.sh open "dns-rebind"` |
| jboss-linux | JBoss script for obtaining remote shell access | `apps.sh open "jboss-linux"` |
| jboss-win | JBoss script for obtaining remote shell access | `apps.sh open "jboss-win"` |
| jsql | Java tool for automatic database injection | `apps.sh open "jsql"` |
| metasploit-framework | Framework for exploit development and vulnerability research | `apps.sh open "metasploit-framework"` · tutorial: tutorials.en.md |
| setoolkit | Social-Engineer Toolkit | `apps.sh open "setoolkit"` |
| sqlmap | Automatic SQL injection tool | `apps.sh open "sqlmap"` · tutorial: tutorials.en.md |
| sqlninja | SQL server injection and takeover tool | `apps.sh open "sqlninja"` · tutorial: tutorials.en.md |
| sqlsus | MySQL injection tool | `apps.sh open "sqlsus"` · tutorial: tutorials.en.md |

## Kali tools — kali-offsec-links (9)

| Application | What it is | Open / tutorial |
|---|---|---|
| Exploit Database | Archive of public exploits that is CVE compliant | `apps.sh open "Exploit Database"` |
| Kali Bugs | The Kali Linux bug tracker | `apps.sh open "Kali Bugs"` |
| Kali Docs | Official Kali Linux documentation website | `apps.sh open "Kali Docs"` |
| Kali Forums | Get community support on forums | `apps.sh open "Kali Forums"` |
| Kali Linux | The official web site of Kali Linux | `apps.sh open "Kali Linux"` |
| Kali Tools | Discover tools available in Kali Linux | `apps.sh open "Kali Tools"` |
| NetHunter | Penetration testing tools on mobile devices | `apps.sh open "NetHunter"` |
| OffSec Training | Follow courses and get certified to show off your skills | `apps.sh open "OffSec Training"` |
| VulnHub | Vulnerable by design - lab to download virtual machines to test your skills | `apps.sh open "VulnHub"` |

## Kali tools — lateral-movement (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| impacket-psexec | Python3 module to easily build and dissect network protocols | `apps.sh open "impacket-psexec"` |
| impacket-smbexec | Python3 module to easily build and dissect network protocols | `apps.sh open "impacket-smbexec"` |
| rdesktop | Remote Desktop Protocol client | `apps.sh open "rdesktop"` |

## Kali tools — network-information (7)

| Application | What it is | Open / tutorial |
|---|---|---|
| amass | In-depth DNS Enumeration and Network Mapping | `apps.sh open "amass"` · tutorial: tutorials.en.md |
| dmitry | Deepmagic Information Gathering Tool | `apps.sh open "dmitry"` · tutorial: tutorials.en.md |
| legion | semi-automated network penetration testing tool | `apps.sh open "legion"` · tutorial: tutorials.en.md |
| nmap | Network exploration tool and security / port scanner | `apps.sh open "nmap"` · tutorial: tutorials.en.md |
| theHarvester | tool for gathering e-mail accounts and subdomain names from public sources | `apps.sh open "theHarvester"` · tutorial: tutorials.en.md |
| unicornscan | Userland distributed TCP/IP stack | `apps.sh open "unicornscan"` · tutorial: tutorials.en.md |
| zenmap | Graphical Nmap frontend and results viewer | `apps.sh open "zenmap"` · tutorial: tutorials.en.md |

## Kali tools — network-information-dns (5)

| Application | What it is | Open / tutorial |
|---|---|---|
| dnsenum | - multithread script to enumerate information on a domain and to discover non-contiguous IP blocks | `apps.sh open "dnsenum"` · tutorial: tutorials.en.md |
| dnsmap | Scan for subdomains using bruteforcing techniques | `apps.sh open "dnsmap"` · tutorial: tutorials.en.md |
| dnsrecon | DNS Enumeration and Scanning Tool | `apps.sh open "dnsrecon"` · tutorial: tutorials.en.md |
| dnstracer | Trace a chain of DNS servers to the source | `apps.sh open "dnstracer"` · tutorial: tutorials.en.md |
| dnswalk | A DNS database debugger | `apps.sh open "dnswalk"` · tutorial: tutorials.en.md |

## Kali tools — network-security-appliances (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| firewalk | Active Reconnaissance Network Security Tool with Extreme Prejudice | `apps.sh open "firewalk"` · tutorial: tutorials.en.md |
| tcpreplay | Replay network traffic stored in pcap files | `apps.sh open "tcpreplay"` · tutorial: tutorials.en.md |
| wafw00f | Identify and fingerprint Web Application Firewall products | `apps.sh open "wafw00f"` · tutorial: tutorials.en.md |

## Kali tools — network-service-discovery (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| ike-scan | Discover and fingerprint IKE hosts (IPsec VPN servers) | `apps.sh open "ike-scan"` · tutorial: tutorials.en.md |
| masscan | Fast scan of the Internet | `apps.sh open "masscan"` · tutorial: tutorials.en.md |

## Kali tools — network-share-discovery (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| enum4linux | Enumerates info from Windows and Samba systems | `apps.sh open "enum4linux"` · tutorial: tutorials.en.md |
| nbtscan | Scan networks for NetBIOS name information | `apps.sh open "nbtscan"` · tutorial: tutorials.en.md |
| smbclient | Ftp-like client to access SMB/CIFS resources on servers | `apps.sh open "smbclient"` |

## Kali tools — network-sniffing (12)

| Application | What it is | Open / tutorial |
|---|---|---|
| above | Network security sniffer for finding vulnerabilities in the network | `apps.sh open "above"` · tutorial: tutorials.en.md |
| arpspoof | Intercept packets on a switched LAN | `apps.sh open "arpspoof"` |
| darkstat | Network statistics gatherer | `apps.sh open "darkstat"` · tutorial: tutorials.en.md |
| dnschef | DNS proxy for penetration testers | `apps.sh open "dnschef"` · tutorial: tutorials.en.md |
| driftnet | Capture images from network traffic and display them in an X window; optionally, capture audio streams and play them. | `apps.sh open "driftnet"` · tutorial: tutorials.en.md |
| dsniff | Password sniffer | `apps.sh open "dsniff"` · tutorial: tutorials.en.md |
| hexinject | Versatile packet injector and sniffer | `apps.sh open "hexinject"` · tutorial: tutorials.en.md |
| netsniff-ng | The packet sniffing beast | `apps.sh open "netsniff-ng"` · tutorial: tutorials.en.md |
| scapy | Interactive packet manipulation tool | `apps.sh open "scapy"` |
| tcpdump | Dump traffic on a network | `apps.sh open "tcpdump"` · tutorial: tutorials.en.md |
| tcpflow | TCP flow recorder | `apps.sh open "tcpflow"` · tutorial: tutorials.en.md |
| wireshark | Interactively dump and analyze network traffic | `apps.sh open "wireshark"` · tutorial: tutorials.en.md |

## Kali tools — non-application-layer-protocol (7)

| Application | What it is | Open / tutorial |
|---|---|---|
| dbd | Netcat clone with encryption | `apps.sh open "dbd"` · tutorial: tutorials.en.md |
| ncat | Concatenate and redirect sockets | `apps.sh open "ncat"` · tutorial: tutorials.en.md |
| netcat | TCP/IP swiss army knife | `apps.sh open "netcat"` |
| powercat | netcat features all in powershell v2 | `apps.sh open "powercat"` · tutorial: tutorials.en.md |
| sbd | Secure backdoor for Linux and Windows | `apps.sh open "sbd"` · tutorial: tutorials.en.md |
| socat | Multipurpose relay (SOcket CAT) | `apps.sh open "socat"` |
| termineter | Smart meter testing framework | `apps.sh open "termineter"` · tutorial: tutorials.en.md |

## Kali tools — os-credential-dumping (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| chntpw | Utility to overwrite passwords of Windows systems | `apps.sh open "chntpw"` · tutorial: tutorials.en.md |
| creddump7 | Python tool to extract credentials and secrets from Windows registry hives | `apps.sh open "creddump7"` · tutorial: tutorials.en.md |
| samdump2 | Retrieves syskey and extract hashes from Windows 2k/NT/XP/Vista SAM. | `apps.sh open "samdump2"` · tutorial: tutorials.en.md |

## Kali tools — pass-the-hash (6)

| Application | What it is | Open / tutorial |
|---|---|---|
| impacket-scripts | Links to useful impacket scripts examples | `apps.sh open "impacket-scripts"` · tutorial: tutorials.en.md |
| mimikatz | Uses admin rights on Windows to display passwords in plaintext | `apps.sh open "mimikatz"` · tutorial: tutorials.en.md |
| netexec | Network Execution Tool | `apps.sh open "netexec"` · tutorial: tutorials.en.md |
| passing-the-hash | Patched tools to use password hashes as authentication input | `apps.sh open "passing-the-hash"` · tutorial: tutorials.en.md |
| smbmap | SMB enumeration tool | `apps.sh open "smbmap"` · tutorial: tutorials.en.md |
| xfreerdp3 | FreeRDP X11 client | `apps.sh open "xfreerdp3"` |

## Kali tools — password-cracking (11)

| Application | What it is | Open / tutorial |
|---|---|---|
| crackle | Crack and decrypt BLE encryption | `apps.sh open "crackle"` · tutorial: tutorials.en.md |
| fcrackzip | A Free/Fast Zip Password Cracker | `apps.sh open "fcrackzip"` · tutorial: tutorials.en.md |
| hashcat | Advanced CPU-based password recovery utility | `apps.sh open "hashcat"` · tutorial: tutorials.en.md |
| john | A tool to find weak passwords of your users | `apps.sh open "john"` · tutorial: tutorials.en.md |
| johnny | GUI for John the Ripper | `apps.sh open "johnny"` · tutorial: tutorials.en.md |
| ophcrack | A Microsoft Windows password cracker using rainbow tables. | `apps.sh open "ophcrack"` · tutorial: tutorials.en.md |
| ophcrack-cli | A Microsoft Windows password cracker using rainbow tables. | `apps.sh open "ophcrack-cli"` · tutorial: tutorials.en.md |
| rcracki_mt | Version of rcrack that supports hybrid and indexed tables | `apps.sh open "rcracki_mt"` |
| sipcrack | A suite of tools to sniff and crack the digest authentications within the SIP protocol. | `apps.sh open "sipcrack"` · tutorial: tutorials.en.md |
| sucrack | Is a multithreaded Linux/UNIX tool for brute-force cracking of local user accounts via su. | `apps.sh open "sucrack"` · tutorial: tutorials.en.md |
| truecrack | Brute-force password cracker for TrueCrypt (Copyright) volumes. | `apps.sh open "truecrack"` · tutorial: tutorials.en.md |

## Kali tools — password-profiling-wordlists (8)

| Application | What it is | Open / tutorial |
|---|---|---|
| cewl | Custom word list generator | `apps.sh open "cewl"` · tutorial: tutorials.en.md |
| crunch | Generate wordlists from a character set | `apps.sh open "crunch"` · tutorial: tutorials.en.md |
| maskgen | Password analysis and cracking kit | `apps.sh open "maskgen"` |
| policygen | Password analysis and cracking kit | `apps.sh open "policygen"` |
| rsmangler | Wordlist mangling tool | `apps.sh open "rsmangler"` · tutorial: tutorials.en.md |
| statsgen | Password analysis and cracking kit | `apps.sh open "statsgen"` |
| twofi | Twitter words of interest | `apps.sh open "twofi"` · tutorial: tutorials.en.md |
| wordlists | Contains the rockyou wordlist | `apps.sh open "wordlists"` · tutorial: tutorials.en.md |

## Kali tools — pdf-forensics-tools (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| pdf-parser | Parses PDF files to identify fundamental elements | `apps.sh open "pdf-parser"` · tutorial: tutorials.en.md |
| pdfid | Scans PDF files for certain PDF keywords | `apps.sh open "pdfid"` · tutorial: tutorials.en.md |

## Kali tools — persistence (5)

| Application | What it is | Open / tutorial |
|---|---|---|
| laudanum | Collection of injectable web files | `apps.sh open "laudanum"` · tutorial: tutorials.en.md |
| seclists | Collection of multiple types of security lists | `apps.sh open "seclists"` · tutorial: tutorials.en.md |
| webacoo | Web backdoor cookie script kit | `apps.sh open "webacoo"` · tutorial: tutorials.en.md |
| webshells | Collection of webshells | `apps.sh open "webshells"` · tutorial: tutorials.en.md |
| weevely | Weaponized web shell | `apps.sh open "weevely"` · tutorial: tutorials.en.md |

## Kali tools — privilege-escalation (5)

| Application | What it is | Open / tutorial |
|---|---|---|
| linpeas | Privilege Escalation Awesome Scripts SUITE | `apps.sh open "linpeas"` |
| lynis | System and security auditing tool | `apps.sh open "lynis"` · tutorial: tutorials.en.md |
| peass | Privilege Escalation Awesome Scripts SUITE | `apps.sh open "peass"` · tutorial: tutorials.en.md |
| unix-privesc-check | Script to check for simple privilege escalation vectors | `apps.sh open "unix-privesc-check"` · tutorial: tutorials.en.md |
| winpeas | Privilege Escalation Awesome Scripts SUITE | `apps.sh open "winpeas"` |

## Kali tools — protect (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| clamscan | Scan files and directories for viruses | `apps.sh open "clamscan"` |
| cryptsetup | Utility for configuring and managing encrypted storage devices | `apps.sh open "cryptsetup"` · tutorial: tutorials.en.md |
| fwbuilder | Multiplatform firewall configuration tool | `apps.sh open "fwbuilder"` · tutorial: tutorials.en.md |

## Kali tools — protocol-tunneling (11)

| Application | What it is | Open / tutorial |
|---|---|---|
| dns2tcpc | A tunneling tool that encapsulate TCP traffic over DNS. | `apps.sh open "dns2tcpc"` |
| dns2tcpd | A tunneling tool that encapsulate TCP traffic over DNS. | `apps.sh open "dns2tcpd"` |
| iodine-client-start | Start an iodine IPv4-over-DNS tunnel | `apps.sh open "iodine-client-start"` |
| miredo | Teredo IPv6 tunneling for Unix | `apps.sh open "miredo"` · tutorial: tutorials.en.md |
| proxychains4 | Redirect connections through proxy servers | `apps.sh open "proxychains4"` · tutorial: tutorials.en.md |
| proxytunnel | Program to tunnel a connection through a standard HTTPS proxy | `apps.sh open "proxytunnel"` · tutorial: tutorials.en.md |
| ptunnel | Tunnel TCP connections over ICMP echo request/reply packets. | `apps.sh open "ptunnel"` · tutorial: tutorials.en.md |
| pwnat | Proxy server that works behind both client and server NATs | `apps.sh open "pwnat"` · tutorial: tutorials.en.md |
| sslh | Protocol demultiplexer | `apps.sh open "sslh"` · tutorial: tutorials.en.md |
| stunnel4 | TLS offloading and load-balancing proxy | `apps.sh open "stunnel4"` · tutorial: tutorials.en.md |
| udptunnel | Tunnel UDP packets over a TCP connection | `apps.sh open "udptunnel"` · tutorial: tutorials.en.md |

## Kali tools — radio-frequency (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| chirpw | A tool for programming two-way radio equipment | `apps.sh open "chirpw"` |
| hackrf_info | Probe device and show configuration | `apps.sh open "hackrf_info"` |
| rfcat | Swiss army knife of sub-GHz radio | `apps.sh open "rfcat"` · tutorial: tutorials.en.md |

## Kali tools — reconnaissance (1)

| Application | What it is | Open / tutorial |
|---|---|---|
| maltego | Open source intelligence and forensics application | `apps.sh open "maltego"` · tutorial: tutorials.en.md |

## Kali tools — remote-system-discovery (6)

| Application | What it is | Open / tutorial |
|---|---|---|
| arping | Sends arp and/or ip pings to a given host | `apps.sh open "arping"` · tutorial: tutorials.en.md |
| atk6-thcping6 | The Hacker Choice's IPv6 Attack Toolkit | `apps.sh open "atk6-thcping6"` |
| fierce | DNS scanner that helps locate non-contiguous IP space and hostnames against specified domains. | `apps.sh open "fierce"` · tutorial: tutorials.en.md |
| fping | Send ICMP ECHO_REQUEST packets to network hosts | `apps.sh open "fping"` · tutorial: tutorials.en.md |
| hping3 | Send (almost) arbitrary TCP/IP packets to network hosts | `apps.sh open "hping3"` · tutorial: tutorials.en.md |
| p0f | Identify remote systems passively | `apps.sh open "p0f"` · tutorial: tutorials.en.md |

## Kali tools — reporting-tools (6)

| Application | What it is | Open / tutorial |
|---|---|---|
| cutycapt | Utility to capture WebKit's rendering of a web page | `apps.sh open "cutycapt"` · tutorial: tutorials.en.md |
| eyewitness | Rapid web application triage tool | `apps.sh open "eyewitness"` · tutorial: tutorials.en.md |
| faraday-start | Collaborative Penetration Test IDE | `apps.sh open "faraday-start"` |
| pipal | Statistical analysis on password dumps | `apps.sh open "pipal"` · tutorial: tutorials.en.md |
| recordmydesktop | Record desktop sessions to an Ogg Theora video file with Vorbis audio | `apps.sh open "recordmydesktop"` · tutorial: tutorials.en.md |
| witnessme | Web Inventory tool | `apps.sh open "witnessme"` · tutorial: tutorials.en.md |

## Kali tools — resource-development (23)

| Application | What it is | Open / tutorial |
|---|---|---|
| afl-fuzz | instrumentation-driven fuzzer for binary formats | `apps.sh open "afl-fuzz"` |
| apktool | Tool for reverse engineering Android apk files | `apps.sh open "apktool"` · tutorial: tutorials.en.md |
| bed | A network protocol fuzzer | `apps.sh open "bed"` · tutorial: tutorials.en.md |
| bytecode-viewer | Java 8+ Jar & Android APK Reverse Engineering Suite | `apps.sh open "bytecode-viewer"` · tutorial: tutorials.en.md |
| clang | The Clang C, C++, and Objective-C compiler | `apps.sh open "clang"` · tutorial: tutorials.en.md |
| clang++ | C, C++ and Objective-C compiler (LLVM based), clang binary | `apps.sh open "clang++"` |
| cutter | reverse engineering platform powered by rizin | `apps.sh open "cutter"` |
| d2j-dex2jar | Tools to work with android .dex and java .class files | `apps.sh open "d2j-dex2jar"` |
| gdb | GNU Debugger | `apps.sh open "gdb"` · tutorial: tutorials.en.md |
| generic_chunked | Network protocol fuzzer | `apps.sh open "generic_chunked"` |
| generic_listen_tcp | Network protocol fuzzer | `apps.sh open "generic_listen_tcp"` |
| generic_send_tcp | Network protocol fuzzer | `apps.sh open "generic_send_tcp"` |
| generic_send_udp | Network protocol fuzzer | `apps.sh open "generic_send_udp"` |
| jadx-gui | Dex to Java decompiler | `apps.sh open "jadx-gui"` |
| javasnoop | Intercept Java applications locally | `apps.sh open "javasnoop"` · tutorial: tutorials.en.md |
| jd-gui | GUI Java .class decompiler | `apps.sh open "jd-gui"` · tutorial: tutorials.en.md |
| msf-nasm_shell | Framework for exploit development and vulnerability research | `apps.sh open "msf-nasm_shell"` |
| msfpc | MSFvenom Payload Creator (MSFPC) | `apps.sh open "msfpc"` · tutorial: tutorials.en.md |
| msfvenom | Payload Generator and Encoder | `apps.sh open "msfvenom"` |
| radare2 | Advanced command-line hexadecimal editor, disassembler and debugger | `apps.sh open "radare2"` · tutorial: tutorials.en.md |
| rizin | Advanced commandline hexadecimal editor, disassembler and debugger | `apps.sh open "rizin"` · tutorial: tutorials.en.md |
| searchsploit | Exploit Database Archive Search | `apps.sh open "searchsploit"` |
| sfuzz | Black Box testing utilities | `apps.sh open "sfuzz"` · tutorial: tutorials.en.md |

## Kali tools — respond (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| hashrat | Hashing tool supporting several hashes and recursivity | `apps.sh open "hashrat"` · tutorial: tutorials.en.md |
| mac-robber | Collects data about allocated files in mounted filesystems | `apps.sh open "mac-robber"` · tutorial: tutorials.en.md |

## Kali tools — services-and-other-tools (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| Kali Tweaks | Tool to adjust advanced configuration settings for Kali Linux | `apps.sh open "Kali Tweaks"` |
| Root Terminal Emulator | Opens a terminal as the root user, using sudo to ask for the password | `apps.sh open "Root Terminal Emulator"` |

## Kali tools — sleuth-kit-suite (33)

| Application | What it is | Open / tutorial |
|---|---|---|
| autopsy | Autopsy Forensic Browser | `apps.sh open "autopsy"` · tutorial: tutorials.en.md |
| blkcalc | Converts between unallocated disk unit numbers and regular disk unit numbers. | `apps.sh open "blkcalc"` |
| blkcat | Display the contents of file system data unit in a disk image. | `apps.sh open "blkcat"` |
| blkls | List or output file system data units. | `apps.sh open "blkls"` |
| blkstat | Display details of a file system data unit (i.e. block or sector) | `apps.sh open "blkstat"` |
| ffind | Finds the name of the file or directory using a given inode | `apps.sh open "ffind"` |
| fls | List file and directory names in a disk image. | `apps.sh open "fls"` |
| fsstat | Display general details of a file system | `apps.sh open "fsstat"` |
| grokevt-addlog | A tool for adding a raw event log to an existing GrokEVT database. | `apps.sh open "grokevt-addlog"` |
| grokevt-builddb | Builds a database tree based on a single windows system for the purpose of event log conversion. | `apps.sh open "grokevt-builddb"` |
| grokevt-findlogs | Attempts to find log file fragments in raw binary files, such as memory dumps and disk images. | `apps.sh open "grokevt-findlogs"` |
| grokevt-parselog | Parse a windows event log and generate human-readable output based on message resources stored in a database. | `apps.sh open "grokevt-parselog"` |
| grokevt-ripdll | A tool for extracting message resources from a PE-formatted file. | `apps.sh open "grokevt-ripdll"` |
| hfind | Lookup a hash value in a hash database | `apps.sh open "hfind"` |
| icat | Output the contents of a file based on its inode number. | `apps.sh open "icat"` |
| ifind | Find the meta-data structure that has allocated a given disk unit or file name. | `apps.sh open "ifind"` |
| ils | List inode information | `apps.sh open "ils"` |
| img_cat | Output contents of an image file. | `apps.sh open "img_cat"` |
| img_stat | Display details of an image file | `apps.sh open "img_stat"` |
| istat | Display details of a meta-data structure (i.e. inode) | `apps.sh open "istat"` |
| jcat | Show the contents of a block in the file system journal. | `apps.sh open "jcat"` |
| jls | List the contents of a file system journal | `apps.sh open "jls"` |
| mactime | Create an ASCII time line of file activity | `apps.sh open "mactime"` |
| mmcat | Output the contents of a partition to stdout | `apps.sh open "mmcat"` |
| mmls | Display the partition layout of a volume system (partition tables) | `apps.sh open "mmls"` |
| mmstat | Display details about the volume system (partition tables) | `apps.sh open "mmstat"` |
| sigfind | Find a binary signature in a file | `apps.sh open "sigfind"` |
| sorter | Sort files in an image into categories based on file type | `apps.sh open "sorter"` |
| srch_strings | Display printable strings in files | `apps.sh open "srch_strings"` |
| tsk_comparedir | Compare the contents of a directory with the contents of an image or local device. | `apps.sh open "tsk_comparedir"` |
| tsk_gettimes | Collect MAC times from a disk image into a body file. | `apps.sh open "tsk_gettimes"` |
| tsk_loaddb | Populate a SQLite database with metadata from a disk image | `apps.sh open "tsk_loaddb"` |
| tsk_recover | Export files from an image into a local directory | `apps.sh open "tsk_recover"` |

## Kali tools — smtp (1)

| Application | What it is | Open / tutorial |
|---|---|---|
| swaks | Swiss Army Knife SMTP, the all-purpose SMTP transaction tester | `apps.sh open "swaks"` · tutorial: tutorials.en.md |

## Kali tools — snmp (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| braa | Mass SNMP scanner | `apps.sh open "braa"` · tutorial: tutorials.en.md |
| onesixtyone | Fast and simple SNMP scanner | `apps.sh open "onesixtyone"` · tutorial: tutorials.en.md |
| snmp-check | SNMP device enumerator | `apps.sh open "snmp-check"` |

## Kali tools — ssl-tls (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| sslscan | Fast SSL/TLS scanner | `apps.sh open "sslscan"` · tutorial: tutorials.en.md |
| sslyze | Fast and full-featured SSL scanner | `apps.sh open "sslyze"` · tutorial: tutorials.en.md |
| tlssled | Evaluates the security of a target SSL/TLS (HTTPS) server | `apps.sh open "tlssled"` · tutorial: tutorials.en.md |

## Kali tools — system-network-configuration-discovery (7)

| Application | What it is | Open / tutorial |
|---|---|---|
| 0trace.sh | traceroute tool that can run within an existing TCP connection | `apps.sh open "0trace.sh"` |
| ass | Autonomous system scanner | `apps.sh open "ass"` |
| cdp | Cdp packet generator | `apps.sh open "cdp"` |
| intrace | Traceroute-like application piggybacking on existing TCP connections | `apps.sh open "intrace"` · tutorial: tutorials.en.md |
| netdiscover | Active/passive ARP reconnaissance tool | `apps.sh open "netdiscover"` · tutorial: tutorials.en.md |
| netmask | A netmask generation and conversion program | `apps.sh open "netmask"` · tutorial: tutorials.en.md |
| yersinia | A Framework for layer 2 attacks | `apps.sh open "yersinia"` · tutorial: tutorials.en.md |

## Kali tools — system-services (7)

| Application | What it is | Open / tutorial |
|---|---|---|
| beef-xss-stop | Browser Exploitation Framework (BeEF) | `apps.sh open "beef-xss-stop"` |
| defectdojo-start | security orchestration and vulnerability management platform | `apps.sh open "defectdojo-start"` |
| defectdojo-stop | security orchestration and vulnerability management platform | `apps.sh open "defectdojo-stop"` |
| faraday-stop | Collaborative Penetration Test IDE | `apps.sh open "faraday-stop"` |
| gvm-check-setup | remote network security auditor - metapackage and useful scripts | `apps.sh open "gvm-check-setup"` |
| gvm-setup | remote network security auditor - metapackage and useful scripts | `apps.sh open "gvm-setup"` |
| gvm-stop | remote network security auditor - metapackage and useful scripts | `apps.sh open "gvm-stop"` |

## Kali tools — voip (13)

| Application | What it is | Open / tutorial |
|---|---|---|
| ohrwurm | RTP fuzzer | `apps.sh open "ohrwurm"` · tutorial: tutorials.en.md |
| protos-sip | SIP test suite | `apps.sh open "protos-sip"` · tutorial: tutorials.en.md |
| rtpbreak | Detects, reconstructs, and analyzes RTP sessions | `apps.sh open "rtpbreak"` · tutorial: tutorials.en.md |
| rtpinsertsound | Inserts audio into a specified stream | `apps.sh open "rtpinsertsound"` · tutorial: tutorials.en.md |
| rtpmixsound | Mixes pre-recorded audio in real-time | `apps.sh open "rtpmixsound"` · tutorial: tutorials.en.md |
| siparmyknife | SIP fuzzing tool | `apps.sh open "siparmyknife"` · tutorial: tutorials.en.md |
| sipp | Traffic generator for the SIP protocol | `apps.sh open "sipp"` · tutorial: tutorials.en.md |
| sipsak | A utility for various tests on sip servers and user agents | `apps.sh open "sipsak"` · tutorial: tutorials.en.md |
| svcrash | Stop unauthorized scans from svcrack/svwar tool | `apps.sh open "svcrash"` |
| svmap | Scanner that searches for SIP devices on a given network | `apps.sh open "svmap"` |
| svreport | Report engine manage sessions from previous scans with SIPVicious | `apps.sh open "svreport"` |
| svwar | Extension line scanner | `apps.sh open "svwar"` |
| voiphopper | Runs a VLAN hop security test | `apps.sh open "voiphopper"` · tutorial: tutorials.en.md |

## Kali tools — voip-credential-access (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| enumiax | IAX protocol username enumerator | `apps.sh open "enumiax"` · tutorial: tutorials.en.md |
| svcrack | Online password guessing tool for SIP devices | `apps.sh open "svcrack"` |

## Kali tools — vulnerability-scanning (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| CAT | Concatenate files and print on the standard output | `apps.sh open "CAT"` |
| gvm-start | remote network security auditor - metapackage and useful scripts | `apps.sh open "gvm-start"` |
| heartleech | Exploits OpenSSL heartbleed vulnerability | `apps.sh open "heartleech"` · tutorial: tutorials.en.md |

## Kali tools — web-scanning (11)

| Application | What it is | Open / tutorial |
|---|---|---|
| assetfinder | Find domains and subdomains related to a given domain | `apps.sh open "assetfinder"` · tutorial: tutorials.en.md |
| dirb | Web Content Scanner | `apps.sh open "dirb"` · tutorial: tutorials.en.md |
| dirbuster | Web server directory brute-forcer | `apps.sh open "dirbuster"` · tutorial: tutorials.en.md |
| feroxbuster | Manual page for feroxbuster 2.13.1 | `apps.sh open "feroxbuster"` |
| ffuf | Fast web fuzzer written in Go | `apps.sh open "ffuf"` |
| gobuster | Directory/file, DNS and virtual host brute-forcing tool written in Go | `apps.sh open "gobuster"` |
| lbd | Load balancer detector | `apps.sh open "lbd"` · tutorial: tutorials.en.md |
| recon-ng | Web Reconnaissance framework | `apps.sh open "recon-ng"` · tutorial: tutorials.en.md |
| uniscan-gui | LFI, RFI, and RCE vulnerability scanner | `apps.sh open "uniscan-gui"` |
| urlcrazy | Domain typo generator | `apps.sh open "urlcrazy"` · tutorial: tutorials.en.md |
| wfuzz | A web application bruteforcer | `apps.sh open "wfuzz"` · tutorial: tutorials.en.md |

## Kali tools — web-vulnerability-scanning (11)

| Application | What it is | Open / tutorial |
|---|---|---|
| davtest | Testing tool for WebDAV servers | `apps.sh open "davtest"` · tutorial: tutorials.en.md |
| joomscan | OWASP Joomla Vulnerability Scanner Project | `apps.sh open "joomscan"` · tutorial: tutorials.en.md |
| nikto | Scan web server for known vulnerabilities | `apps.sh open "nikto"` · tutorial: tutorials.en.md |
| nuclei | Fast and customizable vulnerability scanner based on simple YAML based DSL | `apps.sh open "nuclei"` |
| paros | Web application proxy | `apps.sh open "paros"` · tutorial: tutorials.en.md |
| skipfish | Web application security scanner | `apps.sh open "skipfish"` · tutorial: tutorials.en.md |
| wapiti | A web application vulnerability scanner in Python | `apps.sh open "wapiti"` · tutorial: tutorials.en.md |
| webscarab | Web application review tool | `apps.sh open "webscarab"` · tutorial: tutorials.en.md |
| whatweb | Next generation Web scanner. Identify technologies used by websites. | `apps.sh open "whatweb"` · tutorial: tutorials.en.md |
| wpscan | WordPress Security Scanner | `apps.sh open "wpscan"` · tutorial: tutorials.en.md |
| zaproxy | Testing tool for finding vulnerabilities in web applications | `apps.sh open "zaproxy"` · tutorial: tutorials.en.md |

## Kali tools — wifi (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| asleap | A tool for exploiting Cisco LEAP networks | `apps.sh open "asleap"` · tutorial: tutorials.en.md |
| kismet | Wireless sniffer and monitor | `apps.sh open "kismet"` · tutorial: tutorials.en.md |
| wash | brute force attack tool against Wi-Fi Protected Setup PIN number | `apps.sh open "wash"` |

## Kali tools — wifi-credential-access (10)

| Application | What it is | Open / tutorial |
|---|---|---|
| aircrack-ng | A 802.11 WEP / WPA-PSK key cracker | `apps.sh open "aircrack-ng"` · tutorial: tutorials.en.md |
| airgeddon | multi-use bash script for Linux systems to audit wireless networks | `apps.sh open "airgeddon"` · tutorial: tutorials.en.md |
| bully | Implementation of the WPS brute force attack, written in C | `apps.sh open "bully"` · tutorial: tutorials.en.md |
| cowpatty | Brute-force dictionary attack against WPA-PSK | `apps.sh open "cowpatty"` · tutorial: tutorials.en.md |
| eapmd5pass | Tool for extracting and cracking EAP-MD5 | `apps.sh open "eapmd5pass"` · tutorial: tutorials.en.md |
| fern-wifi-cracker | Automated Wi-Fi cracker | `apps.sh open "fern-wifi-cracker"` · tutorial: tutorials.en.md |
| pixiewps | Offline Wi-Fi Protected Setup bruteforce tool | `apps.sh open "pixiewps"` · tutorial: tutorials.en.md |
| reaver | WPS Cracker | `apps.sh open "reaver"` · tutorial: tutorials.en.md |
| wifi-honey | Wi-Fi honeypot | `apps.sh open "wifi-honey"` · tutorial: tutorials.en.md |
| wifite | Python script to automate wireless auditing using aircrack-ng tools | `apps.sh open "wifite"` · tutorial: tutorials.en.md |

## Terminals (5)

| Application | What it is | Open / tutorial |
|---|---|---|
| CuteCom | A graphical serial terminal | `apps.sh open "CuteCom"` · tutorial: tutorials.en.md |
| QTerminal | Terminal emulator | `apps.sh open "QTerminal"` |
| QTerminal Drop-down | A drop-down terminal emulator | `apps.sh open "QTerminal Drop-down"` |
| UXTerm | xterm wrapper for Unicode environments | `apps.sh open "UXTerm"` |
| XTerm | standard terminal emulator for the X window system | `apps.sh open "XTerm"` |

## Editors (3)

| Application | What it is | Open / tutorial |
|---|---|---|
| Mousepad | Simple Text Editor | `apps.sh open "Mousepad"` |
| Text Editor | Simple Text Editor | `apps.sh open "Text Editor"` |
| Vim | Edit text files | `apps.sh open "Vim"` |

## Web & network (5)

| Application | What it is | Open / tutorial |
|---|---|---|
| Firefox ESR | Browse the World Wide Web | `apps.sh open "Firefox ESR"` |
| Mail Reader | Read your email | `apps.sh open "Mail Reader"` |
| TigerVNC viewer | Connect to VNC server and display remote desktop | `apps.sh open "TigerVNC viewer"` |
| Web Browser | Browse the web | `apps.sh open "Web Browser"` |
| Web Browser | Browse the web | `apps.sh open "Web Browser"` |

## Files & archives (4)

| Application | What it is | Open / tutorial |
|---|---|---|
| Bulk Rename | Rename Multiple Files | `apps.sh open "Bulk Rename"` |
| Engrampa Archive Manager | Create and modify an archive | `apps.sh open "Engrampa Archive Manager"` |
| GParted | Create, reorganize, and delete partitions | `apps.sh open "GParted"` · tutorial: tutorials.en.md |
| Thunar File Manager | Browse the filesystem with the file manager | `apps.sh open "Thunar File Manager"` |

## Media & documents (4)

| Application | What it is | Open / tutorial |
|---|---|---|
| Atril Document Viewer | View multi-page documents | `apps.sh open "Atril Document Viewer"` |
| Parole Media Player | Play your media | `apps.sh open "Parole Media Player"` |
| Ristretto Image Viewer | Look at your images easily | `apps.sh open "Ristretto Image Viewer"` |
| Volume Control | Adjust the volume level | `apps.sh open "Volume Control"` |

## Accessibility (2)

| Application | What it is | Open / tutorial |
|---|---|---|
| Onboard | Flexible onscreen keyboard | `apps.sh open "Onboard"` |
| Onboard Settings | Change Onboard settings | `apps.sh open "Onboard Settings"` |

## Settings & desktop (30)

| Application | What it is | Open / tutorial |
|---|---|---|
| Accessibility | Improve keyboard and mouse accessibility | `apps.sh open "Accessibility"` |
| Advanced Network Configuration | Manage and change your network connection settings | `apps.sh open "Advanced Network Configuration"` |
| Appearance | Customize the look of your desktop | `apps.sh open "Appearance"` |
| Clipboard Manager Settings | Customize your clipboard | `apps.sh open "Clipboard Manager Settings"` |
| Color Profiles | Set color profiles | `apps.sh open "Color Profiles"` |
| Default Applications | Associate preferred applications with MIME types | `apps.sh open "Default Applications"` |
| Desktop | Set desktop background and menu and icon behavior | `apps.sh open "Desktop"` |
| Display | Configure screen settings and layout | `apps.sh open "Display"` |
| Kali HiDPI Mode | Toggle HiDPI desktop mode | `apps.sh open "Kali HiDPI Mode"` |
| Keyboard | Edit keyboard settings and application shortcuts | `apps.sh open "Keyboard"` |
| LightDM GTK Greeter settings | Configure LightDM GTK Greeter | `apps.sh open "LightDM GTK Greeter settings"` |
| Mouse and Touchpad | Configure pointer device behavior and appearance | `apps.sh open "Mouse and Touchpad"` |
| Notifications | Customize how notifications appear on your screen | `apps.sh open "Notifications"` |
| Panel | Customize the panel | `apps.sh open "Panel"` |
| Panel Profiles | Backup and restore your panel configuration | `apps.sh open "Panel Profiles"` |
| Power Manager | Settings for the Xfce Power Manager | `apps.sh open "Power Manager"` |
| Qt5 Settings | Qt5 Configuration Tool | `apps.sh open "Qt5 Settings"` |
| Qt6 Settings | Qt6 Configuration Tool | `apps.sh open "Qt6 Settings"` |
| Removable Drives and Media | Configure management of removable drives and media | `apps.sh open "Removable Drives and Media"` |
| Session and Startup | Customize desktop startup | `apps.sh open "Session and Startup"` |
| Settings Editor | Graphical settings editor for Xfconf | `apps.sh open "Settings Editor"` |
| Settings Manager | Graphical Settings Manager for Xfce | `apps.sh open "Settings Manager"` |
| Thunar Preferences | Configure the Thunar file manager | `apps.sh open "Thunar Preferences"` |
| Time and Date | Change system time, date, and timezone | `apps.sh open "Time and Date"` |
| Users and Groups | Add or remove users and groups | `apps.sh open "Users and Groups"` |
| Window Manager | Configure window behavior and shortcuts | `apps.sh open "Window Manager"` |
| Window Manager Tweaks | Fine-tune window behaviour and effects | `apps.sh open "Window Manager Tweaks"` |
| Workspaces | Configure layout, names and margins | `apps.sh open "Workspaces"` |
| Xfce Screensaver | Set your screensaver preferences | `apps.sh open "Xfce Screensaver"` |
| xfreerdp | Connect to RDP servers for remote work or administration | `apps.sh open "xfreerdp"` |

## System & utilities (21)

| Application | What it is | Open / tutorial |
|---|---|---|
| About Xfce | Information about the Xfce Desktop Environment | `apps.sh open "About Xfce"` |
| Application Finder | Find and launch applications installed on your system | `apps.sh open "Application Finder"` |
| BackTrack Mode | Toggle BackTrack Mode | `apps.sh open "BackTrack Mode"` |
| Catfish File Search | Search the file system | `apps.sh open "Catfish File Search"` |
| Clipboard Manager | Clipboard Manager Autostart File | `apps.sh open "Clipboard Manager"` |
| Disks | Manage Drives and Media | `apps.sh open "Disks"` |
| File Manager | Browse the file system | `apps.sh open "File Manager"` |
| GtkHash | Calculate message digests or checksums | `apps.sh open "GtkHash"` |
| Hardware Locality lstopo | Show hardware topology | `apps.sh open "Hardware Locality lstopo"` |
| Help | Get help with GNOME | `apps.sh open "Help"` |
| Kali Autopilot | Automated Kali Attack Platform | `apps.sh open "Kali Autopilot"` · tutorial: tutorials.en.md |
| Kali Halloween Mode | Toggle Kali Halloween Mode | `apps.sh open "Kali Halloween Mode"` |
| Kali Undercover Mode | Toggle Kali Undercover Mode | `apps.sh open "Kali Undercover Mode"` |
| Log Out | Log out of the Xfce Desktop | `apps.sh open "Log Out"` |
| MATE Calculator | Perform arithmetic, scientific or financial calculations | `apps.sh open "MATE Calculator"` |
| RFDump | Tool to directly interoperate with an RFID reader | `apps.sh open "RFDump"` · tutorial: tutorials.en.md |
| Run Program... | Enter a command you want to launch | `apps.sh open "Run Program..."` |
| Screenshot | Take screenshots of the entire screen, of the active window or of a region | `apps.sh open "Screenshot"` |
| Sensor Viewer | Show sensor values. | `apps.sh open "Sensor Viewer"` |
| Task Manager | Easy to use application to monitor system resources | `apps.sh open "Task Manager"` |
| Terminal Emulator | Use the command line | `apps.sh open "Terminal Emulator"` |

---

# 本機已安裝的所有應用程式（目前 450 個）— 介紹與用法（繁體中文）

> English：[`installed-apps.en-note`] 見 `README.md` · 每個攻擊工具的逐步教學：[`tutorials.zh-TW.md`](tutorials.zh-TW.md)

安裝完整工具集後，選單共有 **450** 個應用程式（由 `../scripts/list-apps.sh` 從 VM 列舉）。每個都可用 `../scripts/apps.sh open "<名稱>"` 在 VNC 桌面開啟；屬於攻擊工具者，完整逐步教學見 [`tutorials.zh-TW.md`](tutorials.zh-TW.md)。範圍見 `../../ROE.md`。


## Kali tools — account-discovery (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| apache-users | 列舉啟用 Apache UserDir 模組系統上的使用者名稱 | `apps.sh open "apache-users"` · 教學: tutorials.zh-TW.md |
| smtp-user-enum | SMTP 服務使用者名稱猜測工具 | `apps.sh open "smtp-user-enum"` · 教學: tutorials.zh-TW.md |

## Kali tools — active-directory (1)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| bloodhound-python | ingestor for BloodHound, based on Impacket (Python 3) | `apps.sh open "bloodhound-python"` |

## Kali tools — application-layer-protocol (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| cadaver | 命令列 WebDAV 用戶端 | `apps.sh open "cadaver"` · 教學: tutorials.zh-TW.md |
| minicom | 選單式序列埠通訊程式 | `apps.sh open "minicom"` · 教學: tutorials.zh-TW.md |

## Kali tools — bluetooth (8)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| bettercap | 完整、模組化、可攜、易擴充的 MITM 框架 | `apps.sh open "bettercap"` · 教學: tutorials.zh-TW.md |
| bluelog | 藍牙掃描與紀錄器 | `apps.sh open "bluelog"` · 教學: tutorials.zh-TW.md |
| blueranger | 定位藍牙裝置的簡易 Bash 腳本 | `apps.sh open "blueranger"` · 教學: tutorials.zh-TW.md |
| bluesnarfer | Bluesnarfing 工具 | `apps.sh open "bluesnarfer"` · 教學: tutorials.zh-TW.md |
| btscanner | 以 ncurses 為介面的藍牙裝置掃描器 | `apps.sh open "btscanner"` · 教學: tutorials.zh-TW.md |
| fang | Locates non-discoverable bluetooth devices | `apps.sh open "fang"` |
| spooftooph | 自動偽冒或複製藍牙裝置 | `apps.sh open "spooftooph"` · 教學: tutorials.zh-TW.md |
| ubertooth-util | General purpose Ubertooth utility | `apps.sh open "ubertooth-util"` |

## Kali tools — brute-force (6)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| hydra | 非常快速的網路登入破解器 | `apps.sh open "hydra"` · 教學: tutorials.zh-TW.md |
| medusa | 快速、平行、模組化的網路服務登入暴力破解器 | `apps.sh open "medusa"` · 教學: tutorials.zh-TW.md |
| ncrack | 高速網路驗證破解工具 | `apps.sh open "ncrack"` · 教學: tutorials.zh-TW.md |
| patator | 多用途暴力破解器 | `apps.sh open "patator"` · 教學: tutorials.zh-TW.md |
| thc-pptp-bruter | THC PPTP 暴力破解 | `apps.sh open "thc-pptp-bruter"` · 教學: tutorials.zh-TW.md |
| xhydra | Gtk+3 frontend for thc-hydra | `apps.sh open "xhydra"` |

## Kali tools — cisco-tools (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| cge.pl | Simple and fast Cisco exploitation tool | `apps.sh open "cge.pl"` |
| cisco-ocs | 大量 Cisco 掃描器 | `apps.sh open "cisco-ocs"` · 教學: tutorials.zh-TW.md |
| cisco-torch | Cisco 裝置掃描器 | `apps.sh open "cisco-torch"` · 教學: tutorials.zh-TW.md |

## Kali tools — collection (9)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| ettercap-pkexec | Graphical pkexec-based launcher for ettercap | `apps.sh open "ettercap-pkexec"` |
| ferret-sidejack | 監看資料並擷取感興趣的內容 | `apps.sh open "ferret-sidejack"` · 教學: tutorials.zh-TW.md |
| fiked | Cisco VPN 攻擊工具 | `apps.sh open "fiked"` · 教學: tutorials.zh-TW.md |
| hamster-sidejack | Sidejacking 工具 | `apps.sh open "hamster-sidejack"` · 教學: tutorials.zh-TW.md |
| httrack | 將網站複製到本機（離線瀏覽器） | `apps.sh open "httrack"` · 教學: tutorials.zh-TW.md |
| mitmproxy | 支援 SSL 的中間人 HTTP 代理 | `apps.sh open "mitmproxy"` · 教學: tutorials.zh-TW.md |
| ssldump | SSLv3/TLS 網路協定分析器 | `apps.sh open "ssldump"` · 教學: tutorials.zh-TW.md |
| sslsniff | SSL/TLS 中間人攻擊工具 | `apps.sh open "sslsniff"` · 教學: tutorials.zh-TW.md |
| sslsplit | 透明且可擴充的 SSL/TLS 攔截 | `apps.sh open "sslsplit"` · 教學: tutorials.zh-TW.md |

## Kali tools — credential-access (1)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| responder | LLMNR/NBT-NS/mDNS 投毒器 | `apps.sh open "responder"` · 教學: tutorials.zh-TW.md |

## Kali tools — databases (7)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| impacket-mssqlclient | Python3 module to easily build and dissect network protocols | `apps.sh open "impacket-mssqlclient"` |
| mdb-sql | SQL interface to MDB Tools | `apps.sh open "mdb-sql"` |
| mysql | The MariaDB command-line tool (mysql is now a symlink to mariadb) | `apps.sh open "mysql"` |
| oscanner | Oracle 評估框架 | `apps.sh open "oscanner"` · 教學: tutorials.zh-TW.md |
| sidguess | Guesses sids against an Oracle database | `apps.sh open "sidguess"` |
| sqlitebrowser | SQLite 資料庫的 GUI 編輯器 | `apps.sh open "sqlitebrowser"` · 教學: tutorials.zh-TW.md |
| tnscmd10g | 探測 Oracle tnslsnr 程序的工具 | `apps.sh open "tnscmd10g"` · 教學: tutorials.zh-TW.md |

## Kali tools — defense-evasion (10)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| ccrypt | 安全加解密檔案與串流 | `apps.sh open "ccrypt"` · 教學: tutorials.zh-TW.md |
| exe2hex | Convert EXE to bat | `apps.sh open "exe2hex"` |
| fragrouter | IDS 規避工具組 | `apps.sh open "fragrouter"` · 教學: tutorials.zh-TW.md |
| ftest | Tool for testing firewalls and Intrusion Detection System (IDS) | `apps.sh open "ftest"` |
| macchanger | 操作網卡 MAC 位址的工具 | `apps.sh open "macchanger"` · 教學: tutorials.zh-TW.md |
| padbuster | 執行 Padding Oracle 攻擊的腳本 | `apps.sh open "padbuster"` · 教學: tutorials.zh-TW.md |
| sniffjoke | 透明的 TCP 連線擾亂器 | `apps.sh open "sniffjoke"` · 教學: tutorials.zh-TW.md |
| steghide | 隱寫術隱藏工具 | `apps.sh open "steghide"` · 教學: tutorials.zh-TW.md |
| stegosuite | 將資訊藏入圖片的隱寫術工具 | `apps.sh open "stegosuite"` · 教學: tutorials.zh-TW.md |
| stegsnow | 以 ASCII 檔進行隱寫術 | `apps.sh open "stegsnow"` · 教學: tutorials.zh-TW.md |

## Kali tools — detect (1)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| sentrypeer | VoIP 的 SIP 點對點蜜罐 | `apps.sh open "sentrypeer"` · 教學: tutorials.zh-TW.md |

## Kali tools — digital-forensics (7)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| dc3dd | 具鑑識功能的 GNU dd 修改版 | `apps.sh open "dc3dd"` · 教學: tutorials.zh-TW.md |
| dcfldd | 鑑識與安全用途的 dd 強化版 | `apps.sh open "dcfldd"` · 教學: tutorials.zh-TW.md |
| missidentify | 尋找 win32 應用程式 | `apps.sh open "missidentify"` · 教學: tutorials.zh-TW.md |
| readpst | Convert PST (MS Outlook Personal Folders) files to mbox and other formats | `apps.sh open "readpst"` |
| reglookup | 分析 Windows NT registry 的工具 | `apps.sh open "reglookup"` · 教學: tutorials.zh-TW.md |
| undbx | 從 .dbx 檔擷取與救回郵件訊息 | `apps.sh open "undbx"` · 教學: tutorials.zh-TW.md |
| vinetto | 檢視 Thumbs.db 檔的鑑識工具 | `apps.sh open "vinetto"` · 教學: tutorials.zh-TW.md |

## Kali tools — execution (6)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| armitage | Metasploit 的圖形化攻擊管理介面 | `apps.sh open "armitage"` · 教學: tutorials.zh-TW.md |
| beef-xss-start | Browser Exploitation Framework (BeEF) | `apps.sh open "beef-xss-start"` |
| evilgrade | Evilgrade framework | `apps.sh open "evilgrade"` |
| nishang | PowerShell 腳本與 payload 集 | `apps.sh open "nishang"` · 教學: tutorials.zh-TW.md |
| powersploit | PowerShell 後滲透框架 | `apps.sh open "powersploit"` · 教學: tutorials.zh-TW.md |
| xsser | XSS 測試框架 | `apps.sh open "xsser"` · 教學: tutorials.zh-TW.md |

## Kali tools — exfiltration (1)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| impacket-smbserver | Python3 module to easily build and dissect network protocols | `apps.sh open "impacket-smbserver"` |

## Kali tools — forensic-carving-tools (15)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| ext3grep | 協助還原 ext3 已刪除檔案的工具 | `apps.sh open "ext3grep"` · 教學: tutorials.zh-TW.md |
| ext4magic | 從 ext3/ext4 分割區救回已刪除檔案 | `apps.sh open "ext4magic"` · 教學: tutorials.zh-TW.md |
| extundelete | 從 ext3/ext4 分割區救回已刪除檔案的工具 | `apps.sh open "extundelete"` · 教學: tutorials.zh-TW.md |
| foremost | 救回遺失檔案的鑑識程式 | `apps.sh open "foremost"` · 教學: tutorials.zh-TW.md |
| magicrescue | 以 magic bytes 救回檔案 | `apps.sh open "magicrescue"` · 教學: tutorials.zh-TW.md |
| myrescue | 從受損磁碟救回資料 | `apps.sh open "myrescue"` · 教學: tutorials.zh-TW.md |
| pasco | IE 快取鑑識分析工具 | `apps.sh open "pasco"` · 教學: tutorials.zh-TW.md |
| readpe | 操作 Windows PE 檔的命令列工具 | `apps.sh open "readpe"` · 教學: tutorials.zh-TW.md |
| recoverdm | 從壞軌磁碟救回檔案 | `apps.sh open "recoverdm"` · 教學: tutorials.zh-TW.md |
| recoverjpeg | 救回 JPEG 圖片與 MOV 影片 | `apps.sh open "recoverjpeg"` · 教學: tutorials.zh-TW.md |
| rifiuti | MS Windows 資源回收桶分析工具 | `apps.sh open "rifiuti"` · 教學: tutorials.zh-TW.md |
| rifiuti2 | rifiuti 的替代品，分析 Windows 資源回收桶 | `apps.sh open "rifiuti2"` · 教學: tutorials.zh-TW.md |
| safecopy | 問題或受損媒體的資料救援工具 | `apps.sh open "safecopy"` · 教學: tutorials.zh-TW.md |
| scalpel | 快速、與檔案系統無關的檔案救援 | `apps.sh open "scalpel"` · 教學: tutorials.zh-TW.md |
| scrounge-ntfs | NTFS 檔案系統資料救援程式 | `apps.sh open "scrounge-ntfs"` · 教學: tutorials.zh-TW.md |

## Kali tools — forensic-imaging-tools (4)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| affcat | Output contents of an image file to stdout. | `apps.sh open "affcat"` |
| dd_rescue | Data recovery and protection tool | `apps.sh open "dd_rescue"` |
| ewfacquire | Acquires data in the EWF format | `apps.sh open "ewfacquire"` |
| guymager | 以 Qt 為基礎的鑑識映像工具 | `apps.sh open "guymager"` · 教學: tutorials.zh-TW.md |

## Kali tools — forensics (10)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| binwalk | 分析二進位資料與可執行碼的工具函式庫 | `apps.sh open "binwalk"` · 教學: tutorials.zh-TW.md |
| binwalk3 | 分析二進位資料與可執行碼的工具函式庫 | `apps.sh open "binwalk3"` · 教學: tutorials.zh-TW.md |
| bulk_extractor | Scans a disk image for regular expressions and other content. | `apps.sh open "bulk_extractor"` |
| chkrootkit | rootkit 偵測器 | `apps.sh open "chkrootkit"` · 教學: tutorials.zh-TW.md |
| galleta | IE cookie 鑑識分析工具 | `apps.sh open "galleta"` · 教學: tutorials.zh-TW.md |
| hashdeep | 遞迴計算雜湊或分段雜湊 | `apps.sh open "hashdeep"` · 教學: tutorials.zh-TW.md |
| rkhunter | rootkit、後門、嗅探器與 exploit 掃描器 | `apps.sh open "rkhunter"` · 教學: tutorials.zh-TW.md |
| ssdeep | 遞迴分段雜湊工具 | `apps.sh open "ssdeep"` · 教學: tutorials.zh-TW.md |
| unhide | 尋找隱藏程序與連接埠的鑑識工具 | `apps.sh open "unhide"` · 教學: tutorials.zh-TW.md |
| yara | 惡意程式研究者的模式比對瑞士刀 | `apps.sh open "yara"` · 教學: tutorials.zh-TW.md |

## Kali tools — hash-identification (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| hash-identifier | 辨識雜湊類型的工具 | `apps.sh open "hash-identifier"` · 教學: tutorials.zh-TW.md |
| hashid | 辨識用於加密資料的各種雜湊類型 | `apps.sh open "hashid"` · 教學: tutorials.zh-TW.md |

## Kali tools — host-information (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| metagoofil | 擷取公開文件中繼資料的工具 | `apps.sh open "metagoofil"` · 教學: tutorials.zh-TW.md |
| spiderfoot | OSINT 蒐集與偵察工具 | `apps.sh open "spiderfoot"` · 教學: tutorials.zh-TW.md |
| spiderfoot-cli | OSINT collection and reconnaissance tool | `apps.sh open "spiderfoot-cli"` |

## Kali tools — identify (4)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| maryam | OWASP Maryam 模組化開源 OSINT 框架 | `apps.sh open "maryam"` · 教學: tutorials.zh-TW.md |
| nipper | Network Infrastructure Parser. Produces reports based of network device configuration file settings. | `apps.sh open "nipper"` |
| osrframework-cli | Open Sources Research Framework | `apps.sh open "osrframework-cli"` |
| tiger | Linux 安全稽核與入侵偵測工具 | `apps.sh open "tiger"` · 教學: tutorials.zh-TW.md |

## Kali tools — impact (9)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| dhcpig | 使用 scapy 的 DHCP 耗盡攻擊腳本 | `apps.sh open "dhcpig"` · 教學: tutorials.zh-TW.md |
| iaxflood | VoIP 洪泛工具 | `apps.sh open "iaxflood"` · 教學: tutorials.zh-TW.md |
| inviteflood | 透過 UDP/IP 洪泛 SIP/SDP INVITE 訊息 | `apps.sh open "inviteflood"` · 教學: tutorials.zh-TW.md |
| mdk3 | IEEE 802.11 無線攻擊工具 | `apps.sh open "mdk3"` · 教學: tutorials.zh-TW.md |
| rtpflood | 洪泛任何 RTP 裝置的工具 | `apps.sh open "rtpflood"` · 教學: tutorials.zh-TW.md |
| siege | HTTP 回歸測試與壓力測試工具 | `apps.sh open "siege"` · 教學: tutorials.zh-TW.md |
| slowhttptest | 應用層 DoS 攻擊模擬工具 | `apps.sh open "slowhttptest"` · 教學: tutorials.zh-TW.md |
| t50 | 多協定封包注入工具 | `apps.sh open "t50"` · 教學: tutorials.zh-TW.md |
| thc-ssl-dos | SSL 握手壓測工具 | `apps.sh open "thc-ssl-dos"` · 教學: tutorials.zh-TW.md |

## Kali tools — initial-access (10)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| commix | 自動化一站式 OS 命令注入與利用工具 | `apps.sh open "commix"` · 教學: tutorials.zh-TW.md |
| dns-rebind | DNS rebinding tool | `apps.sh open "dns-rebind"` |
| jboss-linux | JBoss script for obtaining remote shell access | `apps.sh open "jboss-linux"` |
| jboss-win | JBoss script for obtaining remote shell access | `apps.sh open "jboss-win"` |
| jsql | Java tool for automatic database injection | `apps.sh open "jsql"` |
| metasploit-framework | 漏洞開發與弱點研究框架 | `apps.sh open "metasploit-framework"` · 教學: tutorials.zh-TW.md |
| setoolkit | Social-Engineer Toolkit | `apps.sh open "setoolkit"` |
| sqlmap | 自動化 SQL 注入工具 | `apps.sh open "sqlmap"` · 教學: tutorials.zh-TW.md |
| sqlninja | SQL Server 注入與接管工具 | `apps.sh open "sqlninja"` · 教學: tutorials.zh-TW.md |
| sqlsus | MySQL 注入工具 | `apps.sh open "sqlsus"` · 教學: tutorials.zh-TW.md |

## Kali tools — kali-offsec-links (9)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| Exploit Database | Archive of public exploits that is CVE compliant | `apps.sh open "Exploit Database"` |
| Kali Bugs | The Kali Linux bug tracker | `apps.sh open "Kali Bugs"` |
| Kali Docs | Official Kali Linux documentation website | `apps.sh open "Kali Docs"` |
| Kali Forums | Get community support on forums | `apps.sh open "Kali Forums"` |
| Kali Linux | The official web site of Kali Linux | `apps.sh open "Kali Linux"` |
| Kali Tools | Discover tools available in Kali Linux | `apps.sh open "Kali Tools"` |
| NetHunter | Penetration testing tools on mobile devices | `apps.sh open "NetHunter"` |
| OffSec Training | Follow courses and get certified to show off your skills | `apps.sh open "OffSec Training"` |
| VulnHub | Vulnerable by design - lab to download virtual machines to test your skills | `apps.sh open "VulnHub"` |

## Kali tools — lateral-movement (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| impacket-psexec | Python3 module to easily build and dissect network protocols | `apps.sh open "impacket-psexec"` |
| impacket-smbexec | Python3 module to easily build and dissect network protocols | `apps.sh open "impacket-smbexec"` |
| rdesktop | Remote Desktop Protocol client | `apps.sh open "rdesktop"` |

## Kali tools — network-information (7)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| amass | 深入的 DNS 列舉與網路測繪 | `apps.sh open "amass"` · 教學: tutorials.zh-TW.md |
| dmitry | Deepmagic 資訊蒐集工具 | `apps.sh open "dmitry"` · 教學: tutorials.zh-TW.md |
| legion | 半自動化網路滲透測試工具 | `apps.sh open "legion"` · 教學: tutorials.zh-TW.md |
| nmap | 網路測繪器（The Network Mapper） | `apps.sh open "nmap"` · 教學: tutorials.zh-TW.md |
| theHarvester | 從公開來源蒐集 email 與子網域的工具 | `apps.sh open "theHarvester"` · 教學: tutorials.zh-TW.md |
| unicornscan | 使用者態分散式 TCP/IP 堆疊 | `apps.sh open "unicornscan"` · 教學: tutorials.zh-TW.md |
| zenmap | Nmap 的圖形前端 | `apps.sh open "zenmap"` · 教學: tutorials.zh-TW.md |

## Kali tools — network-information-dns (5)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| dnsenum | 列舉網域 DNS 資訊的工具 | `apps.sh open "dnsenum"` · 教學: tutorials.zh-TW.md |
| dnsmap | DNS 網域名稱暴力破解工具 | `apps.sh open "dnsmap"` · 教學: tutorials.zh-TW.md |
| dnsrecon | 強大的 DNS 列舉腳本 | `apps.sh open "dnsrecon"` · 教學: tutorials.zh-TW.md |
| dnstracer | 追蹤 DNS 查詢到來源 | `apps.sh open "dnstracer"` · 教學: tutorials.zh-TW.md |
| dnswalk | 以 nameserver 查詢檢查 DNS 區域資訊 | `apps.sh open "dnswalk"` · 教學: tutorials.zh-TW.md |

## Kali tools — network-security-appliances (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| firewalk | 主動式偵察的網路安全工具 | `apps.sh open "firewalk"` · 教學: tutorials.zh-TW.md |
| tcpreplay | 以任意速度重播 tcpdump 檔的工具 | `apps.sh open "tcpreplay"` · 教學: tutorials.zh-TW.md |
| wafw00f | 辨識並指紋辨識 Web 應用防火牆 | `apps.sh open "wafw00f"` · 教學: tutorials.zh-TW.md |

## Kali tools — network-service-discovery (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| ike-scan | 探索與指紋辨識 IKE 主機（IPsec VPN 伺服器） | `apps.sh open "ike-scan"` · 教學: tutorials.zh-TW.md |
| masscan | TCP 連接埠掃描器 | `apps.sh open "masscan"` · 教學: tutorials.zh-TW.md |

## Kali tools — network-share-discovery (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| enum4linux | 列舉 Windows 與 Samba 系統資訊 | `apps.sh open "enum4linux"` · 教學: tutorials.zh-TW.md |
| nbtscan | 掃描網路尋找 NetBIOS 資訊 | `apps.sh open "nbtscan"` · 教學: tutorials.zh-TW.md |
| smbclient | Ftp-like client to access SMB/CIFS resources on servers | `apps.sh open "smbclient"` |

## Kali tools — network-sniffing (12)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| above | 尋找網路弱點的網路安全嗅探器 | `apps.sh open "above"` · 教學: tutorials.zh-TW.md |
| arpspoof | Intercept packets on a switched LAN | `apps.sh open "arpspoof"` |
| darkstat | 網路流量分析器 | `apps.sh open "darkstat"` · 教學: tutorials.zh-TW.md |
| dnschef | 滲透測試用的 DNS 代理 | `apps.sh open "dnschef"` · 教學: tutorials.zh-TW.md |
| driftnet | 從網路流量擷取並顯示圖片 | `apps.sh open "driftnet"` · 教學: tutorials.zh-TW.md |
| dsniff | 嗅探網路明文機密的各種工具 | `apps.sh open "dsniff"` · 教學: tutorials.zh-TW.md |
| hexinject | 多功能封包注入與嗅探器 | `apps.sh open "hexinject"` · 教學: tutorials.zh-TW.md |
| netsniff-ng | Linux 網路封包嗅探工具組 | `apps.sh open "netsniff-ng"` · 教學: tutorials.zh-TW.md |
| scapy | Interactive packet manipulation tool | `apps.sh open "scapy"` |
| tcpdump | 命令列網路流量分析器 | `apps.sh open "tcpdump"` · 教學: tutorials.zh-TW.md |
| tcpflow | TCP 流量記錄器 | `apps.sh open "tcpflow"` · 教學: tutorials.zh-TW.md |
| wireshark | 網路流量分析器（圖形介面） | `apps.sh open "wireshark"` · 教學: tutorials.zh-TW.md |

## Kali tools — non-application-layer-protocol (7)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| dbd | 含加密的 Netcat 複製品 | `apps.sh open "dbd"` · 教學: tutorials.zh-TW.md |
| ncat | NMAP 版 netcat 重製 | `apps.sh open "ncat"` · 教學: tutorials.zh-TW.md |
| netcat | TCP/IP swiss army knife | `apps.sh open "netcat"` |
| powercat | 以 PowerShell 實作的 netcat 功能 | `apps.sh open "powercat"` · 教學: tutorials.zh-TW.md |
| sbd | Linux/Windows 的安全後門 | `apps.sh open "sbd"` · 教學: tutorials.zh-TW.md |
| socat | Multipurpose relay (SOcket CAT) | `apps.sh open "socat"` |
| termineter | 智慧電表測試框架 | `apps.sh open "termineter"` · 教學: tutorials.zh-TW.md |

## Kali tools — os-credential-dumping (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| chntpw | NT SAM 密碼救援工具 | `apps.sh open "chntpw"` · 教學: tutorials.zh-TW.md |
| creddump7 | 從 Windows registry hive 擷取憑證與機密的 Python 工具 | `apps.sh open "creddump7"` · 教學: tutorials.zh-TW.md |
| samdump2 | 傾印 Windows 2k/NT/XP 密碼雜湊 | `apps.sh open "samdump2"` · 教學: tutorials.zh-TW.md |

## Kali tools — pass-the-hash (6)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| impacket-scripts | 實用 impacket 腳本範例連結 | `apps.sh open "impacket-scripts"` · 教學: tutorials.zh-TW.md |
| mimikatz | 利用 Windows 管理權限明文顯示密碼 | `apps.sh open "mimikatz"` · 教學: tutorials.zh-TW.md |
| netexec | 網路執行工具（NetExec） | `apps.sh open "netexec"` · 教學: tutorials.zh-TW.md |
| passing-the-hash | 以密碼雜湊作為驗證輸入的修補工具 | `apps.sh open "passing-the-hash"` · 教學: tutorials.zh-TW.md |
| smbmap | 好用的 SMB 列舉工具 | `apps.sh open "smbmap"` · 教學: tutorials.zh-TW.md |
| xfreerdp3 | FreeRDP X11 client | `apps.sh open "xfreerdp3"` |

## Kali tools — password-cracking (11)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| crackle | 破解與解密 BLE 加密 | `apps.sh open "crackle"` · 教學: tutorials.zh-TW.md |
| fcrackzip | zip 壓縮檔密碼破解器 | `apps.sh open "fcrackzip"` · 教學: tutorials.zh-TW.md |
| hashcat | 世上最快、最先進的密碼還原工具 | `apps.sh open "hashcat"` · 教學: tutorials.zh-TW.md |
| john | 主動式密碼破解工具 | `apps.sh open "john"` · 教學: tutorials.zh-TW.md |
| johnny | John the Ripper 的 GUI | `apps.sh open "johnny"` · 教學: tutorials.zh-TW.md |
| ophcrack | 用彩虹表破解 Windows 密碼（GUI） | `apps.sh open "ophcrack"` · 教學: tutorials.zh-TW.md |
| ophcrack-cli | 用彩虹表破解 Windows 密碼（命令列） | `apps.sh open "ophcrack-cli"` · 教學: tutorials.zh-TW.md |
| rcracki_mt | Version of rcrack that supports hybrid and indexed tables | `apps.sh open "rcracki_mt"` |
| sipcrack | SIP 登入傾印/破解器 | `apps.sh open "sipcrack"` · 教學: tutorials.zh-TW.md |
| sucrack | 多執行緒 su 暴力破解器 | `apps.sh open "sucrack"` · 教學: tutorials.zh-TW.md |
| truecrack | TrueCrypt 磁區密碼暴力破解器 | `apps.sh open "truecrack"` · 教學: tutorials.zh-TW.md |

## Kali tools — password-profiling-wordlists (8)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| cewl | 自訂字典產生器 | `apps.sh open "cewl"` · 教學: tutorials.zh-TW.md |
| crunch | 字典產生工具 | `apps.sh open "crunch"` · 教學: tutorials.zh-TW.md |
| maskgen | Password analysis and cracking kit | `apps.sh open "maskgen"` |
| policygen | Password analysis and cracking kit | `apps.sh open "policygen"` |
| rsmangler | 字典變形工具 | `apps.sh open "rsmangler"` · 教學: tutorials.zh-TW.md |
| statsgen | Password analysis and cracking kit | `apps.sh open "statsgen"` |
| twofi | Twitter 關鍵字字典 | `apps.sh open "twofi"` · 教學: tutorials.zh-TW.md |
| wordlists | 內含 rockyou 字典 | `apps.sh open "wordlists"` · 教學: tutorials.zh-TW.md |

## Kali tools — pdf-forensics-tools (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| pdf-parser | 解析 PDF 檔以辨識基本元素 | `apps.sh open "pdf-parser"` · 教學: tutorials.zh-TW.md |
| pdfid | 掃描 PDF 檔中的特定關鍵字 | `apps.sh open "pdfid"` · 教學: tutorials.zh-TW.md |

## Kali tools — persistence (5)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| laudanum | 可注入的 web 檔案集 | `apps.sh open "laudanum"` · 教學: tutorials.zh-TW.md |
| seclists | 多種類型安全清單的集合 | `apps.sh open "seclists"` · 教學: tutorials.zh-TW.md |
| webacoo | Web 後門 cookie 腳本套件 | `apps.sh open "webacoo"` · 教學: tutorials.zh-TW.md |
| webshells | web shell 集合 | `apps.sh open "webshells"` · 教學: tutorials.zh-TW.md |
| weevely | 隱匿的微型 web shell | `apps.sh open "weevely"` · 教學: tutorials.zh-TW.md |

## Kali tools — privilege-escalation (5)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| linpeas | Privilege Escalation Awesome Scripts SUITE | `apps.sh open "linpeas"` |
| lynis | Unix 系統安全稽核工具 | `apps.sh open "lynis"` · 教學: tutorials.zh-TW.md |
| peass | 權限提升腳本套件（PEASS） | `apps.sh open "peass"` · 教學: tutorials.zh-TW.md |
| unix-privesc-check | 檢查簡易權限提升向量的腳本 | `apps.sh open "unix-privesc-check"` · 教學: tutorials.zh-TW.md |
| winpeas | Privilege Escalation Awesome Scripts SUITE | `apps.sh open "winpeas"` |

## Kali tools — protect (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| clamscan | Scan files and directories for viruses | `apps.sh open "clamscan"` |
| cryptsetup | 磁碟加密支援（啟動腳本） | `apps.sh open "cryptsetup"` · 教學: tutorials.zh-TW.md |
| fwbuilder | 防火牆管理 GUI | `apps.sh open "fwbuilder"` · 教學: tutorials.zh-TW.md |

## Kali tools — protocol-tunneling (11)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| dns2tcpc | A tunneling tool that encapsulate TCP traffic over DNS. | `apps.sh open "dns2tcpc"` |
| dns2tcpd | A tunneling tool that encapsulate TCP traffic over DNS. | `apps.sh open "dns2tcpd"` |
| iodine-client-start | Start an iodine IPv4-over-DNS tunnel | `apps.sh open "iodine-client-start"` |
| miredo | 透過 NAT 的 Teredo IPv6 隧道 | `apps.sh open "miredo"` · 教學: tutorials.zh-TW.md |
| proxychains4 | 透過 socks/http 代理轉送連線（proxychains-ng） | `apps.sh open "proxychains4"` · 教學: tutorials.zh-TW.md |
| proxytunnel | 協助 SSH 等協定穿過 HTTP(S) 代理 | `apps.sh open "proxytunnel"` · 教學: tutorials.zh-TW.md |
| ptunnel | 透過 ICMP 封包隧道傳輸 TCP 連線 | `apps.sh open "ptunnel"` · 教學: tutorials.zh-TW.md |
| pwnat | NAT 對 NAT 的用戶端-伺服器通訊 | `apps.sh open "pwnat"` · 教學: tutorials.zh-TW.md |
| sslh | 應用協定多工器 | `apps.sh open "sslh"` · 教學: tutorials.zh-TW.md |
| stunnel4 | 網路守護程式的通用 SSL 隧道（相容套件） | `apps.sh open "stunnel4"` · 教學: tutorials.zh-TW.md |
| udptunnel | 透過 TCP 連線隧道傳輸 UDP 封包 | `apps.sh open "udptunnel"` · 教學: tutorials.zh-TW.md |

## Kali tools — radio-frequency (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| chirpw | A tool for programming two-way radio equipment | `apps.sh open "chirpw"` |
| hackrf_info | Probe device and show configuration | `apps.sh open "hackrf_info"` |
| rfcat | sub-GHz 無線電瑞士刀 | `apps.sh open "rfcat"` · 教學: tutorials.zh-TW.md |

## Kali tools — reconnaissance (1)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| maltego | 開源情報與鑑識應用程式 | `apps.sh open "maltego"` · 教學: tutorials.zh-TW.md |

## Kali tools — remote-system-discovery (6)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| arping | 送出 IP 與/或 ARP ping（到 MAC 位址） | `apps.sh open "arping"` · 教學: tutorials.zh-TW.md |
| atk6-thcping6 | The Hacker Choice's IPv6 Attack Toolkit | `apps.sh open "atk6-thcping6"` |
| fierce | 網域 DNS 掃描器 | `apps.sh open "fierce"` · 教學: tutorials.zh-TW.md |
| fping | 對多台主機送出 ICMP ECHO_REQUEST | `apps.sh open "fping"` · 教學: tutorials.zh-TW.md |
| hping3 | 主動式網路壓測工具 | `apps.sh open "hping3"` · 教學: tutorials.zh-TW.md |
| p0f | 被動式 OS 指紋辨識工具 | `apps.sh open "p0f"` · 教學: tutorials.zh-TW.md |

## Kali tools — reporting-tools (6)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| cutycapt | 擷取 WebKit 網頁算繪結果的工具 | `apps.sh open "cutycapt"` · 教學: tutorials.zh-TW.md |
| eyewitness | 快速的 web 應用分流工具 | `apps.sh open "eyewitness"` · 教學: tutorials.zh-TW.md |
| faraday-start | Collaborative Penetration Test IDE | `apps.sh open "faraday-start"` |
| pipal | 對密碼傾印做統計分析 | `apps.sh open "pipal"` · 教學: tutorials.zh-TW.md |
| recordmydesktop | 擷取 Linux 桌面工作階段的影音 | `apps.sh open "recordmydesktop"` · 教學: tutorials.zh-TW.md |
| witnessme | Web 清查工具 | `apps.sh open "witnessme"` · 教學: tutorials.zh-TW.md |

## Kali tools — resource-development (23)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| afl-fuzz | instrumentation-driven fuzzer for binary formats | `apps.sh open "afl-fuzz"` |
| apktool | 反編譯 Android apk 檔的工具 | `apps.sh open "apktool"` · 教學: tutorials.zh-TW.md |
| bed | 網路協定模糊測試器 | `apps.sh open "bed"` · 教學: tutorials.zh-TW.md |
| bytecode-viewer | Java 8+ Jar 與 Android APK 逆向工程套件 | `apps.sh open "bytecode-viewer"` · 教學: tutorials.zh-TW.md |
| clang | 以 LLVM 為基礎的 C/C++/Objective-C 編譯器 | `apps.sh open "clang"` · 教學: tutorials.zh-TW.md |
| clang++ | C, C++ and Objective-C compiler (LLVM based), clang binary | `apps.sh open "clang++"` |
| cutter | reverse engineering platform powered by rizin | `apps.sh open "cutter"` |
| d2j-dex2jar | Tools to work with android .dex and java .class files | `apps.sh open "d2j-dex2jar"` |
| gdb | GNU 除錯器 | `apps.sh open "gdb"` · 教學: tutorials.zh-TW.md |
| generic_chunked | Network protocol fuzzer | `apps.sh open "generic_chunked"` |
| generic_listen_tcp | Network protocol fuzzer | `apps.sh open "generic_listen_tcp"` |
| generic_send_tcp | Network protocol fuzzer | `apps.sh open "generic_send_tcp"` |
| generic_send_udp | Network protocol fuzzer | `apps.sh open "generic_send_udp"` |
| jadx-gui | Dex to Java decompiler | `apps.sh open "jadx-gui"` |
| javasnoop | 在本機攔截 Java 應用程式 | `apps.sh open "javasnoop"` · 教學: tutorials.zh-TW.md |
| jd-gui | 圖形化 Java .class 反編譯器 | `apps.sh open "jd-gui"` · 教學: tutorials.zh-TW.md |
| msf-nasm_shell | Framework for exploit development and vulnerability research | `apps.sh open "msf-nasm_shell"` |
| msfpc | MSFvenom Payload 產生器（MSFPC） | `apps.sh open "msfpc"` · 教學: tutorials.zh-TW.md |
| msfvenom | Payload Generator and Encoder | `apps.sh open "msfvenom"` |
| radare2 | 免費進階的命令列十六進位編輯器 | `apps.sh open "radare2"` · 教學: tutorials.zh-TW.md |
| rizin | 逆向工程框架與命令列工具組 | `apps.sh open "rizin"` · 教學: tutorials.zh-TW.md |
| searchsploit | Exploit Database Archive Search | `apps.sh open "searchsploit"` |
| sfuzz | 黑箱測試工具 | `apps.sh open "sfuzz"` · 教學: tutorials.zh-TW.md |

## Kali tools — respond (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| hashrat | 支援多種雜湊與遞迴的雜湊工具 | `apps.sh open "hashrat"` · 教學: tutorials.zh-TW.md |
| mac-robber | 收集已掛載檔案系統中檔案的資料 | `apps.sh open "mac-robber"` · 教學: tutorials.zh-TW.md |

## Kali tools — services-and-other-tools (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| Kali Tweaks | Tool to adjust advanced configuration settings for Kali Linux | `apps.sh open "Kali Tweaks"` |
| Root Terminal Emulator | Opens a terminal as the root user, using sudo to ask for the password | `apps.sh open "Root Terminal Emulator"` |

## Kali tools — sleuth-kit-suite (33)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| autopsy | SleuthKit 的圖形化介面 | `apps.sh open "autopsy"` · 教學: tutorials.zh-TW.md |
| blkcalc | Converts between unallocated disk unit numbers and regular disk unit numbers. | `apps.sh open "blkcalc"` |
| blkcat | Display the contents of file system data unit in a disk image. | `apps.sh open "blkcat"` |
| blkls | List or output file system data units. | `apps.sh open "blkls"` |
| blkstat | Display details of a file system data unit (i.e. block or sector) | `apps.sh open "blkstat"` |
| ffind | Finds the name of the file or directory using a given inode | `apps.sh open "ffind"` |
| fls | List file and directory names in a disk image. | `apps.sh open "fls"` |
| fsstat | Display general details of a file system | `apps.sh open "fsstat"` |
| grokevt-addlog | A tool for adding a raw event log to an existing GrokEVT database. | `apps.sh open "grokevt-addlog"` |
| grokevt-builddb | Builds a database tree based on a single windows system for the purpose of event log conversion. | `apps.sh open "grokevt-builddb"` |
| grokevt-findlogs | Attempts to find log file fragments in raw binary files, such as memory dumps and disk images. | `apps.sh open "grokevt-findlogs"` |
| grokevt-parselog | Parse a windows event log and generate human-readable output based on message resources stored in a database. | `apps.sh open "grokevt-parselog"` |
| grokevt-ripdll | A tool for extracting message resources from a PE-formatted file. | `apps.sh open "grokevt-ripdll"` |
| hfind | Lookup a hash value in a hash database | `apps.sh open "hfind"` |
| icat | Output the contents of a file based on its inode number. | `apps.sh open "icat"` |
| ifind | Find the meta-data structure that has allocated a given disk unit or file name. | `apps.sh open "ifind"` |
| ils | List inode information | `apps.sh open "ils"` |
| img_cat | Output contents of an image file. | `apps.sh open "img_cat"` |
| img_stat | Display details of an image file | `apps.sh open "img_stat"` |
| istat | Display details of a meta-data structure (i.e. inode) | `apps.sh open "istat"` |
| jcat | Show the contents of a block in the file system journal. | `apps.sh open "jcat"` |
| jls | List the contents of a file system journal | `apps.sh open "jls"` |
| mactime | Create an ASCII time line of file activity | `apps.sh open "mactime"` |
| mmcat | Output the contents of a partition to stdout | `apps.sh open "mmcat"` |
| mmls | Display the partition layout of a volume system (partition tables) | `apps.sh open "mmls"` |
| mmstat | Display details about the volume system (partition tables) | `apps.sh open "mmstat"` |
| sigfind | Find a binary signature in a file | `apps.sh open "sigfind"` |
| sorter | Sort files in an image into categories based on file type | `apps.sh open "sorter"` |
| srch_strings | Display printable strings in files | `apps.sh open "srch_strings"` |
| tsk_comparedir | Compare the contents of a directory with the contents of an image or local device. | `apps.sh open "tsk_comparedir"` |
| tsk_gettimes | Collect MAC times from a disk image into a body file. | `apps.sh open "tsk_gettimes"` |
| tsk_loaddb | Populate a SQLite database with metadata from a disk image | `apps.sh open "tsk_loaddb"` |
| tsk_recover | Export files from an image into a local directory | `apps.sh open "tsk_recover"` |

## Kali tools — smtp (1)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| swaks | SMTP 命令列測試工具 | `apps.sh open "swaks"` · 教學: tutorials.zh-TW.md |

## Kali tools — snmp (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| braa | 大量 SNMP 掃描器 | `apps.sh open "braa"` · 教學: tutorials.zh-TW.md |
| onesixtyone | 快速簡單的 SNMP 掃描器 | `apps.sh open "onesixtyone"` · 教學: tutorials.zh-TW.md |
| snmp-check | SNMP device enumerator | `apps.sh open "snmp-check"` |

## Kali tools — ssl-tls (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| sslscan | 測試 SSL/TLS 服務支援的加密套件 | `apps.sh open "sslscan"` · 教學: tutorials.zh-TW.md |
| sslyze | 快速且功能完整的 SSL 掃描器 | `apps.sh open "sslyze"` · 教學: tutorials.zh-TW.md |
| tlssled | 評估目標 SSL/TLS（HTTPS）伺服器安全性 | `apps.sh open "tlssled"` · 教學: tutorials.zh-TW.md |

## Kali tools — system-network-configuration-discovery (7)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| 0trace.sh | traceroute tool that can run within an existing TCP connection | `apps.sh open "0trace.sh"` |
| ass | Autonomous system scanner | `apps.sh open "ass"` |
| cdp | Cdp packet generator | `apps.sh open "cdp"` |
| intrace | 搭載既有 TCP 連線的 traceroute 類工具 | `apps.sh open "intrace"` · 教學: tutorials.zh-TW.md |
| netdiscover | 以 ARP 請求做主動/被動網路位址掃描 | `apps.sh open "netdiscover"` · 教學: tutorials.zh-TW.md |
| netmask | 協助計算網路遮罩 | `apps.sh open "netmask"` · 教學: tutorials.zh-TW.md |
| yersinia | 網路弱點檢查軟體 | `apps.sh open "yersinia"` · 教學: tutorials.zh-TW.md |

## Kali tools — system-services (7)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| beef-xss-stop | Browser Exploitation Framework (BeEF) | `apps.sh open "beef-xss-stop"` |
| defectdojo-start | security orchestration and vulnerability management platform | `apps.sh open "defectdojo-start"` |
| defectdojo-stop | security orchestration and vulnerability management platform | `apps.sh open "defectdojo-stop"` |
| faraday-stop | Collaborative Penetration Test IDE | `apps.sh open "faraday-stop"` |
| gvm-check-setup | remote network security auditor - metapackage and useful scripts | `apps.sh open "gvm-check-setup"` |
| gvm-setup | remote network security auditor - metapackage and useful scripts | `apps.sh open "gvm-setup"` |
| gvm-stop | remote network security auditor - metapackage and useful scripts | `apps.sh open "gvm-stop"` |

## Kali tools — voip (13)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| ohrwurm | RTP 模糊測試器 | `apps.sh open "ohrwurm"` · 教學: tutorials.zh-TW.md |
| protos-sip | SIP 測試套件 | `apps.sh open "protos-sip"` · 教學: tutorials.zh-TW.md |
| rtpbreak | 偵測、重建並分析 RTP 工作階段 | `apps.sh open "rtpbreak"` · 教學: tutorials.zh-TW.md |
| rtpinsertsound | 將音訊插入指定串流 | `apps.sh open "rtpinsertsound"` · 教學: tutorials.zh-TW.md |
| rtpmixsound | 即時混入預錄音訊 | `apps.sh open "rtpmixsound"` · 教學: tutorials.zh-TW.md |
| siparmyknife | SIP 模糊測試工具 | `apps.sh open "siparmyknife"` · 教學: tutorials.zh-TW.md |
| sipp | SIP 協定流量產生器 | `apps.sh open "sipp"` · 教學: tutorials.zh-TW.md |
| sipsak | SIP 瑞士刀 | `apps.sh open "sipsak"` · 教學: tutorials.zh-TW.md |
| svcrash | Stop unauthorized scans from svcrack/svwar tool | `apps.sh open "svcrash"` |
| svmap | Scanner that searches for SIP devices on a given network | `apps.sh open "svmap"` |
| svreport | Report engine manage sessions from previous scans with SIPVicious | `apps.sh open "svreport"` |
| svwar | Extension line scanner | `apps.sh open "svwar"` |
| voiphopper | 執行 VLAN hop 安全測試 | `apps.sh open "voiphopper"` · 教學: tutorials.zh-TW.md |

## Kali tools — voip-credential-access (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| enumiax | IAX 協定使用者名稱列舉器 | `apps.sh open "enumiax"` · 教學: tutorials.zh-TW.md |
| svcrack | Online password guessing tool for SIP devices | `apps.sh open "svcrack"` |

## Kali tools — vulnerability-scanning (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| CAT | Concatenate files and print on the standard output | `apps.sh open "CAT"` |
| gvm-start | remote network security auditor - metapackage and useful scripts | `apps.sh open "gvm-start"` |
| heartleech | 偵測 Heartbleed OpenSSL 漏洞的掃描器 | `apps.sh open "heartleech"` · 教學: tutorials.zh-TW.md |

## Kali tools — web-scanning (11)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| assetfinder | 找出與指定網域相關的網域與子網域 | `apps.sh open "assetfinder"` · 教學: tutorials.zh-TW.md |
| dirb | URL 暴力列舉工具 | `apps.sh open "dirb"` · 教學: tutorials.zh-TW.md |
| dirbuster | Web 伺服器目錄暴力列舉器 | `apps.sh open "dirbuster"` · 教學: tutorials.zh-TW.md |
| feroxbuster | Manual page for feroxbuster 2.13.1 | `apps.sh open "feroxbuster"` |
| ffuf | Fast web fuzzer written in Go | `apps.sh open "ffuf"` |
| gobuster | Directory/file, DNS and virtual host brute-forcing tool written in Go | `apps.sh open "gobuster"` |
| lbd | 負載平衡器偵測器 | `apps.sh open "lbd"` · 教學: tutorials.zh-TW.md |
| recon-ng | 以 Python 撰寫的 web 偵察框架 | `apps.sh open "recon-ng"` · 教學: tutorials.zh-TW.md |
| uniscan-gui | LFI, RFI, and RCE vulnerability scanner | `apps.sh open "uniscan-gui"` |
| urlcrazy | 網域誤植產生器 | `apps.sh open "urlcrazy"` · 教學: tutorials.zh-TW.md |
| wfuzz | web 應用暴力列舉器 | `apps.sh open "wfuzz"` · 教學: tutorials.zh-TW.md |

## Kali tools — web-vulnerability-scanning (11)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| davtest | WebDAV 伺服器測試工具 | `apps.sh open "davtest"` · 教學: tutorials.zh-TW.md |
| joomscan | OWASP Joomla 弱點掃描器 | `apps.sh open "joomscan"` · 教學: tutorials.zh-TW.md |
| nikto | web 伺服器安全掃描器 | `apps.sh open "nikto"` · 教學: tutorials.zh-TW.md |
| nuclei | Fast and customizable vulnerability scanner based on simple YAML based DSL | `apps.sh open "nuclei"` |
| paros | web 應用程式代理 | `apps.sh open "paros"` · 教學: tutorials.zh-TW.md |
| skipfish | 全自動主動式 web 應用安全偵察工具 | `apps.sh open "skipfish"` · 教學: tutorials.zh-TW.md |
| wapiti | web 應用弱點掃描器 | `apps.sh open "wapiti"` · 教學: tutorials.zh-TW.md |
| webscarab | web 應用審查工具 | `apps.sh open "webscarab"` · 教學: tutorials.zh-TW.md |
| whatweb | 下一代 web 掃描器 | `apps.sh open "whatweb"` · 教學: tutorials.zh-TW.md |
| wpscan | 黑箱 WordPress 弱點掃描器 | `apps.sh open "wpscan"` · 教學: tutorials.zh-TW.md |
| zaproxy | 尋找 web 應用弱點的測試工具 | `apps.sh open "zaproxy"` · 教學: tutorials.zh-TW.md |

## Kali tools — wifi (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| asleap | 利用 Cisco LEAP 網路的工具 | `apps.sh open "asleap"` · 教學: tutorials.zh-TW.md |
| kismet | 無線網路與裝置偵測器（中繼套件） | `apps.sh open "kismet"` · 教學: tutorials.zh-TW.md |
| wash | brute force attack tool against Wi-Fi Protected Setup PIN number | `apps.sh open "wash"` |

## Kali tools — wifi-credential-access (10)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| aircrack-ng | 無線 WEP/WPA 破解工具組 | `apps.sh open "aircrack-ng"` · 教學: tutorials.zh-TW.md |
| airgeddon | 稽核無線網路的多功能 bash 腳本 | `apps.sh open "airgeddon"` · 教學: tutorials.zh-TW.md |
| bully | 以 C 撰寫的 WPS 暴力破解實作 | `apps.sh open "bully"` · 教學: tutorials.zh-TW.md |
| cowpatty | WPA 字典暴力破解 | `apps.sh open "cowpatty"` · 教學: tutorials.zh-TW.md |
| eapmd5pass | 擷取並破解 EAP-MD5 的工具 | `apps.sh open "eapmd5pass"` · 教學: tutorials.zh-TW.md |
| fern-wifi-cracker | 自動化 Wi-Fi 破解器 | `apps.sh open "fern-wifi-cracker"` · 教學: tutorials.zh-TW.md |
| pixiewps | 離線 WPS 暴力破解工具 | `apps.sh open "pixiewps"` · 教學: tutorials.zh-TW.md |
| reaver | 針對 WPS PIN 的暴力破解攻擊工具 | `apps.sh open "reaver"` · 教學: tutorials.zh-TW.md |
| wifi-honey | Wi-Fi 蜜罐 | `apps.sh open "wifi-honey"` · 教學: tutorials.zh-TW.md |
| wifite | 以 aircrack-ng 自動化無線稽核的 Python 腳本 | `apps.sh open "wifite"` · 教學: tutorials.zh-TW.md |

## Terminals (5)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| CuteCom | 圖形化序列埠終端機（類似 minicom） | `apps.sh open "CuteCom"` · 教學: tutorials.zh-TW.md |
| QTerminal | Terminal emulator | `apps.sh open "QTerminal"` |
| QTerminal Drop-down | A drop-down terminal emulator | `apps.sh open "QTerminal Drop-down"` |
| UXTerm | xterm wrapper for Unicode environments | `apps.sh open "UXTerm"` |
| XTerm | standard terminal emulator for the X window system | `apps.sh open "XTerm"` |

## Editors (3)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| Mousepad | Simple Text Editor | `apps.sh open "Mousepad"` |
| Text Editor | Simple Text Editor | `apps.sh open "Text Editor"` |
| Vim | Edit text files | `apps.sh open "Vim"` |

## Web & network (5)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| Firefox ESR | Browse the World Wide Web | `apps.sh open "Firefox ESR"` |
| Mail Reader | Read your email | `apps.sh open "Mail Reader"` |
| TigerVNC viewer | Connect to VNC server and display remote desktop | `apps.sh open "TigerVNC viewer"` |
| Web Browser | Browse the web | `apps.sh open "Web Browser"` |
| Web Browser | Browse the web | `apps.sh open "Web Browser"` |

## Files & archives (4)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| Bulk Rename | Rename Multiple Files | `apps.sh open "Bulk Rename"` |
| Engrampa Archive Manager | Create and modify an archive | `apps.sh open "Engrampa Archive Manager"` |
| GParted | GNOME 磁碟分割編輯器 | `apps.sh open "GParted"` · 教學: tutorials.zh-TW.md |
| Thunar File Manager | Browse the filesystem with the file manager | `apps.sh open "Thunar File Manager"` |

## Media & documents (4)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| Atril Document Viewer | View multi-page documents | `apps.sh open "Atril Document Viewer"` |
| Parole Media Player | Play your media | `apps.sh open "Parole Media Player"` |
| Ristretto Image Viewer | Look at your images easily | `apps.sh open "Ristretto Image Viewer"` |
| Volume Control | Adjust the volume level | `apps.sh open "Volume Control"` |

## Accessibility (2)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| Onboard | Flexible onscreen keyboard | `apps.sh open "Onboard"` |
| Onboard Settings | Change Onboard settings | `apps.sh open "Onboard Settings"` |

## Settings & desktop (30)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| Accessibility | Improve keyboard and mouse accessibility | `apps.sh open "Accessibility"` |
| Advanced Network Configuration | Manage and change your network connection settings | `apps.sh open "Advanced Network Configuration"` |
| Appearance | Customize the look of your desktop | `apps.sh open "Appearance"` |
| Clipboard Manager Settings | Customize your clipboard | `apps.sh open "Clipboard Manager Settings"` |
| Color Profiles | Set color profiles | `apps.sh open "Color Profiles"` |
| Default Applications | Associate preferred applications with MIME types | `apps.sh open "Default Applications"` |
| Desktop | Set desktop background and menu and icon behavior | `apps.sh open "Desktop"` |
| Display | Configure screen settings and layout | `apps.sh open "Display"` |
| Kali HiDPI Mode | Toggle HiDPI desktop mode | `apps.sh open "Kali HiDPI Mode"` |
| Keyboard | Edit keyboard settings and application shortcuts | `apps.sh open "Keyboard"` |
| LightDM GTK Greeter settings | Configure LightDM GTK Greeter | `apps.sh open "LightDM GTK Greeter settings"` |
| Mouse and Touchpad | Configure pointer device behavior and appearance | `apps.sh open "Mouse and Touchpad"` |
| Notifications | Customize how notifications appear on your screen | `apps.sh open "Notifications"` |
| Panel | Customize the panel | `apps.sh open "Panel"` |
| Panel Profiles | Backup and restore your panel configuration | `apps.sh open "Panel Profiles"` |
| Power Manager | Settings for the Xfce Power Manager | `apps.sh open "Power Manager"` |
| Qt5 Settings | Qt5 Configuration Tool | `apps.sh open "Qt5 Settings"` |
| Qt6 Settings | Qt6 Configuration Tool | `apps.sh open "Qt6 Settings"` |
| Removable Drives and Media | Configure management of removable drives and media | `apps.sh open "Removable Drives and Media"` |
| Session and Startup | Customize desktop startup | `apps.sh open "Session and Startup"` |
| Settings Editor | Graphical settings editor for Xfconf | `apps.sh open "Settings Editor"` |
| Settings Manager | Graphical Settings Manager for Xfce | `apps.sh open "Settings Manager"` |
| Thunar Preferences | Configure the Thunar file manager | `apps.sh open "Thunar Preferences"` |
| Time and Date | Change system time, date, and timezone | `apps.sh open "Time and Date"` |
| Users and Groups | Add or remove users and groups | `apps.sh open "Users and Groups"` |
| Window Manager | Configure window behavior and shortcuts | `apps.sh open "Window Manager"` |
| Window Manager Tweaks | Fine-tune window behaviour and effects | `apps.sh open "Window Manager Tweaks"` |
| Workspaces | Configure layout, names and margins | `apps.sh open "Workspaces"` |
| Xfce Screensaver | Set your screensaver preferences | `apps.sh open "Xfce Screensaver"` |
| xfreerdp | Connect to RDP servers for remote work or administration | `apps.sh open "xfreerdp"` |

## System & utilities (21)

| 應用程式 | 說明 | 開啟 / 教學 |
|---|---|---|
| About Xfce | Information about the Xfce Desktop Environment | `apps.sh open "About Xfce"` |
| Application Finder | Find and launch applications installed on your system | `apps.sh open "Application Finder"` |
| BackTrack Mode | Toggle BackTrack Mode | `apps.sh open "BackTrack Mode"` |
| Catfish File Search | Search the file system | `apps.sh open "Catfish File Search"` |
| Clipboard Manager | Clipboard Manager Autostart File | `apps.sh open "Clipboard Manager"` |
| Disks | Manage Drives and Media | `apps.sh open "Disks"` |
| File Manager | Browse the file system | `apps.sh open "File Manager"` |
| GtkHash | Calculate message digests or checksums | `apps.sh open "GtkHash"` |
| Hardware Locality lstopo | Show hardware topology | `apps.sh open "Hardware Locality lstopo"` |
| Help | Get help with GNOME | `apps.sh open "Help"` |
| Kali Autopilot | Kali 自動攻擊腳本工具 | `apps.sh open "Kali Autopilot"` · 教學: tutorials.zh-TW.md |
| Kali Halloween Mode | Toggle Kali Halloween Mode | `apps.sh open "Kali Halloween Mode"` |
| Kali Undercover Mode | Toggle Kali Undercover Mode | `apps.sh open "Kali Undercover Mode"` |
| Log Out | Log out of the Xfce Desktop | `apps.sh open "Log Out"` |
| MATE Calculator | Perform arithmetic, scientific or financial calculations | `apps.sh open "MATE Calculator"` |
| RFDump | 解碼 RFID 標籤資料的工具 | `apps.sh open "RFDump"` · 教學: tutorials.zh-TW.md |
| Run Program... | Enter a command you want to launch | `apps.sh open "Run Program..."` |
| Screenshot | Take screenshots of the entire screen, of the active window or of a region | `apps.sh open "Screenshot"` |
| Sensor Viewer | Show sensor values. | `apps.sh open "Sensor Viewer"` |
| Task Manager | Easy to use application to monitor system resources | `apps.sh open "Task Manager"` |
| Terminal Emulator | Use the command line | `apps.sh open "Terminal Emulator"` |
