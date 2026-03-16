# Day 14 – Networking Fundamentals & Hands-on Checks

## Quick Concepts

### OSI Model -
OSI is an conceptual model that helps in connecting systems, it has 7 layers as follows:
- Layer 7: Application: Interface to end user (eg. browser).
- Layer 6: Presentation: handles encryption, decryption and data formating.
- Layer 5: Session: Manage session establishment and termination.
- Layer 4: Transport: Managa end-to-end communication.
- Layer 3: Network: Handle IP addressing and routing.
- Layer 2: Data links: Provide node-to-node communication.
- Layer 1: Physical: Physical hardware such as cables or monitor or phone etc.

### TCP/IP Model -
TCP/IP is an practical model that is actually used in world, it has 4 layers: 
- Layer 4: Application: It combines OSI's Application, Presentation and Session layer (HTTP/HTTPS/SSH).
- Layer 3: Transport: same role as transport in OSI model (TCP/UDP).
- Layer 2: Internet: same role as network in OSI mdoel (IP/Route).
- Layer 1: Network Access: It combines OSI's Data-Link and Physical layer. (cable/MAC address).

### Protocol Placement - 
- Application layer: HTTP, HTTPS, FTP, SMTP, DNS, DHCP, SSH.
- Transport layer: TCP, UDP
- Internet layer: IP, ARP, ICMP, IGMP
- Network access layer: Ethernet, Wi-Fi, PPP

### Example
Command:
```bash
curl -L www.trainwithshubham.com
```

![curl-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/curl-image.png)

## Hands-on Checklist
### Task 1: Identity
```bash
hostname -I
      OR
ip addr show
```
Observation: 
- Display all network adresses of host. 
- In my case `10.0.2.15` & `172.17.0.1` both are private IP Adresses since im a using virtualbox
- If I'll look for same on linux instance or local machine it will give me different IPs

![hostname-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/hostname-image.png)

### Task 2: Reachability
```bash
ping google.com
```
Observations:
- 0% packet loss = number of packets transmitted and received are same - networks reachable 
- high latency = delay in routing

![ping-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/ping-image.png)

### Task 3: Path
```bash
traceroute google.com
```
Observation:
- Give hop-by-hop path of the service using various IPs
- mine took 20 hops total, within 11 hops it finished its work 

![traceroute-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/traceroute-image.png)

### Task 4: Ports
```bash
ss -tulpn
```
Observation:
- display a detailed list of all listening network services.
- SSH on port 22.
- web server on port 80 (nginx).

![port-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/port-image.png)

### Task 5: Name resolution
```bash
dig google.com
nslookup google.com
```
Observation:
- Dig command interrogates DNS name servers, while nslookup command act as a phonebook of internet.
- resolved IPs are numbers that server found, in my case `64.233.180.138`, etc
- Since google.com is big service therefore it rerturned multiple IPs.

![dig-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/dig-image.png)

### Task 6: HTTP check
```bash
curl -I https://www.google.com/
```
Observation:
- curl command is used to transfer a url.
- Got `HTTPS code 200` which means `OK`.

![curl-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/curl-image%20(2).png)

### Task 7: Connections snapshot
```bash
netstat -an | head
```
Observation:
- This command shows us current network activity of our system.
- Got 7 LISTEN and 1 ESTABLISHED

![netstat-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/netstat-image.png)

## Mini Task: Port Probe & Interpret
1. Identify one listening port from `ss -tulpn` (e.g., SSH on 22 or a local web app).
  - Got many LISTENING Port such as 22 (SSH), 80 (Web servers), etc.
2. From the same machine, test it: `nc -zv localhost <port>` (or `curl -I http://localhost:<port>`).
  - Connection to local host is successfully established and got to know `nginx` is running on `port 80`.
3. Write one line: is it reachable? If not, what’s the next check? (e.g., service status, firewall).
  - Yes, it is reachable
  - If not?
  - Then use `sudo systemctl status <service>` to check the current status of the service.

![Minitask-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-14/Images/Minitask-image.png)

## Reflection
1. Which command gives you the fastest signal when something is broken?
   - `ss -tulpn`
2. What layer (OSI/TCP-IP) would you inspect next if DNS fails? If HTTP 500 shows up?
   - If DNS fails I'll check `Applicaton layer` (OSI or TCP/IP model) first since DNS is application layer protocol.
   - If HTTP 500 shows us? then also `Application layer` in both OSI & TCP/IP model since `500` indicates server-side or application error.
3. Two follow-up checks you’d run in a real incident.
   - `systemctl status <service>` to check status of the service.
   - `ss -tulpn` to check state of the specific ports.
