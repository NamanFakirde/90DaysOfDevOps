# Day 14 – Networking Fundamentals & Hands-on Checks

## Concept Check

### OSI Model
OSI model is an conceptual model that helps in connecting systems, it has 7 layers as follows
- `Layer 7`: `Application layer`: It is an interface that user interact with.
- `Layer 6`: `Presentation layer`: Handles encryption, decryption and data formating. 
- `Layer 5`: `Session layer`: Establishes and terminates sesssions.
- `Layer 4`: `Transport layer`: Manage end-to-end connection and transportation of packets/data.
- `Layer 3`: `Network layer`: Handle IP addressing and routing.
- `Layer 2`: `Data link layer`: Provide node-to-node connection. 
- `Layer 1`: `Physical layer`: Physical node such as cable, server, router, etc.

### TCP\IP Model
TCP\IP is a practical implementation of OSI model in real world.
- `Layer 4`: `Application layer`: Combines application, presentation and session layer of OSI model. (HTTP, HTTPS is L4 protocol)
- `Layer 3`: `Transport layer`: Same role as transport layer in OSI model. (TCP/UDP is L3 protocol)
- `Layer 2`: `Internet layer`: Same role as network layer in OSI model. (IP and route is L2 protocol) 
- `Layer 1`: `Network access layer`: It combines Data-link and Physical layer of OSI model. (Cable, Router, Server, MAC-address, etc)

![curl-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/curl-image.png)

---

## Hands-on Checklist

### 1. Identity:
```bash
hostname -I
    or 
ip addr show
```
- `172.31.14.53` is my machines private IP address.

![identity-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/identity-image.png)


### 2. Reachability 
```bash
ping www.trainwithshubham.com
```
- 0% packet loss = number of packets transmitted and received are same that means network is reachable. 

![reachability-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/reachability-image.png)


### 3. Path
```bash
traceroute www.trainwithshubham.com
    or 
tracepath 
```
- trace the path taken to reach a website/domain.
- took 30 hops to reach.

![path-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/path-image.png)


### 4. Ports
```bash
ss -tulpn
    or 
netstat -tulpn
```
- display a detailed list of all listening network services.
- SSH on port 22.
- web server on port 80 (nginx).

![port-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/port-image.png)


### 5. Name resolution
```bash
dig www.google.com
    or 
nslookup www.google.com
```
- dig command interrogates DNS name servers, while nslookup command act as a phonebook of internet.
- resolved IPs are numbers that server found, in my case ` 192.178.155.113`, etc
- Since google.com is big service therefore it rerturned multiple IPs.

![Name-resolution-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/name-resolution-image.png)


### 6. HTTP check
```bash
curl -I https://www.google.com/
```
- curl command is used to transfer a url.
- Got `HTTPS code 200` which means `OK`.

![http-check-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/http-check-image.png)


### 7. Connections snapshot
```bash
netstat -an | head
```
- This command shows us current network activity of our system.
- Got 5 LISTEN and 1 ESTABLISHED.

![connection-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/connection-image.png)

---

## Mini Task: Port Probe & Interpret
1. Identifing one listening port from `ss -tulpn`.
     - Got many LISTENING port such as 22 (SSH), 80 (Web servers), etc.
2. From the same machine, testing it: `nc -zv localhost <port>` (or `curl -I http://localhost:<port>`).
    - Connection to local host is successfully established and got to know `nginx` is running on `port 80`.
3. Is it reachable?
    - Yes, it is reachable
    - If not?
    - Then use `sudo systemctl status <service>` to check the current status of the service.

![min-task-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-14/Images/min-task-image.png)


## Reflection
1. Which command gives you the fastest signal when something is broken?
   - `ss -tulpn`
2. What layer (OSI/TCP-IP) would you inspect next if DNS fails? If HTTP 500 shows up?
   - If DNS fails I'll check `Network layer` (OSI or TCP/IP model) first since DNS is network layer protocol.
   - If HTTP 500 shows us? then `Application layer` in both OSI & TCP/IP model since `500` indicates server-side or application error.
3. Two follow-up checks you’d run in a real incident.
   - `systemctl status <service>` to check status of the service.
   - `ss -tulpn` to check state of the specific ports.