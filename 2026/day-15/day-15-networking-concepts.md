# Day 15 – Networking Concepts: DNS, IP, Subnets & Ports


## Task 1: DNS – How Names Become IPs
1. What happens when you type `google.com` in a browser?
    - Firstly, it checks **cheche** in local browser for recently visited IPs. If found it directly presents to the browser.
    - If not found then it reaches to **DNS Server** to find the IP in **Root Server** and returns to the **TLD Server**.
    - Then it moves toward **Authoritative server** that returns the IP record and maps hostname to that IP.
    - Finally the browser initiates the connections and page is loaded.

2. What are these record types? Write one line each:
**DNS record types** defines the specific kind of data stored in a DNS zone file to map human-readable domain names to machine-readable network destinations or metadata
   - `A record`: connects the domain to IPv4 address.
   - `AAAA record`: connects the domain to IPv6 address.
   - `CNAME record`:  Maps an alias name to a true domain name.
   - `MX record`: Directs email to a specific mail server.
   - `NS record`:  Defines which servers are authoritative for a domain.
3. Run: `dig google.com` — identify the A record and TTL from the output.
   - A records: ` 142.251.16.138`, `142.251.16.113`, etc
   - TTL (Time-to-live): 132 seconds

![DNS-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-15/Images/DNS-image.png)

---

## Task 2: IP Addressing
1. What is an IPv4 address? How is it structured? (e.g., `192.168.1.10`)
    - IPv4 is a **network layer** protocol that is used to route most internet traffics.
    - It utilizes **32-bit** addresses composed of four 8-bit octets separated by dots to uniquely identify devices.
    - the first 3 octets represents Network ID while last octets represent Host ID
2. Difference between **public** and **private** IPs — give one example of each
    - Public IPs: IPs which are unique and visible to the whole world (eg. the building address which is visible to whole world is your PUBLIC IP)
   - Private IPs: IPs which are unique in their own network and are not visible to whole world (eg. the apartment number which the other buildings can also have but there can be only sinlge 101 in that specific building is what your PRIVATE IP is.)
3. What are the private IP ranges?
   - 10.0.0.0 - 10.255.255.255 
   - 172.16.0.0 – 172.31.255.255
   - 192.168.0.0 - 196.168.255.255
4. Run: `ip addr show` — identify which of your IPs are private
   - `172.31.14.53` is my Private IP.

![IP-addr-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-15/Images/IP-addr-image.png)

---

### Task 3: CIDR & Subnetting
1. What does `/24` mean in `192.168.1.0/24`?
    - `/24` is a CIDR notation/prefix which decides number of IPs in a network.
    - This means there are `256` total IPs of which `254` are usabale IPs.
2. How many usable hosts in a `/24`? A `/16`? A `/28`?
    - `/24`: 254 usable IPs.
    - `/16`: 65534 usable IPs.
    - `/28`: 14 usable IPs 
3. Explain in your own words: why do we subnet?
    - `Subnet` is a division of bigger internet into a smaller private internet.
    - We do subnet so that we can manage traffic IPs efficiently, provide better security and avoid shortage of IPs.
4. Quick exercise — fill in:

| CIDR | Subnet Mask | Total IPs | Usable Hosts |
|------|-------------|-----------|--------------|
| /24  | 255.255.255.0 | 256     |      254     |
| /16  | 255.255.0.0 | 65536     |    65534     |
| /28  | 255.255.255.240 | 16    | 14           |

---

### Task 4: Ports – The Doors to Services
1. What is a port? Why do we need them?
    - communication endpoint in computer networking that allows a device to manage multiple incoming and outgoing connections simultaneously.
    - We need them so that we can easily manage inbound and outbound services.
2. Document these common ports:

| Port | Service |
|------|---------|
| 22   | SSH       |
| 80   | Web server |
| 443  | HTTP |
| 53   | DNS  |
| 3306 | MySQL       |
| 6379 | Redis       |
| 27017| MongoDB       |

3. Run `ss -tulpn` — match at least 2 listening ports to their services
- port 53, 80, 22 can be seen in the below image

![ss-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-15/Images/ss-image.png)

## Task 5: Putting It Together
Answer in 2–3 lines each:
1. You run `curl http://myapp.com:8080` — what networking concepts from today are involved?
   - DNS, TCP, HTTP, Port:8080
2. Your app can't reach a database at `10.0.1.50:3306` — what would you check first?
   - Check network connectivity: ping 10.0.1.50
   - Check firewall rules: Ensure port 3306 is open
   - Check database service: MySQL must be running and listening on 3306
  
## What I learnt
1. Ports directs traffic to the service
2. DNS resoultion is important
3. IP addressing its range and how IPs are assigned. 
