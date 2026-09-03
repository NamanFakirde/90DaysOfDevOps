# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## Part 1: Launch Cloud Instance & SSH Access 

### Step 1: Create a Cloud Instance
- Login to AWS Account.
- Search for EC2 service.
- Go to instances.
- Give name for an instance. (Every instance has a unique name)
- Choose an operating system. (Ubuntu in my case)
- Choose instance type as per requirement (I choose t3.micro)
- Create a key-pair.pem.
- Configure storage as needed.
- Then finally launch instance.

### Step 2: Connect via SSH
- Choose your instance.
- Click on connect.
- Choose `In SSH client`
- On terminal locate the key-pair.
- Run `chmod 600 key-pair-name.pem` on terminal which ensure its not publicly viewabale.
- Run `ssh -i "key-pair-name.pem" <instance public DNS>`

Screenshot:
![EC2-instance](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-08/Images/EC2-instance.png)
![ssh-connection](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-08/Images/ssh-connection.png)

---

## Part 2: Install Docker & Nginx

### Step 1: Update System
- updates system to get latest updates.
### Step 3: Install Nginx
- installed nginx and docker
### Verify Nginx is running:
- verified nginx and docker is running (active).

Screenshot:
![service-status](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-08/Images/service-status.png)

---

## Part 3: Security Group Configuration
- Allowed inbound traffic to **PORT 80** for Nginx. 
- Opened browser and visited my instance **public IP**.

Screenshot:
![welcome-nginx](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-08/Images/welcome-nginx.png)

---

## Part 4: Extract Nginx Logs (15 minutes)

### Step 1: View Nginx Logs
- `journalctl -u nignx`
### Step 2: Save Logs to File
- `journalctl -u nginx > nginx-logs.txt`
### Step 3: Download Log File to Your Local Machine
```bash
# On your local machine (new terminal window)
# For AWS:
scp -i your-key.pem ubuntu@<your-instance-ip>:~/nginx-logs.txt .
```
[access-logs](log-files/access-log) <br>
[nginx-logs](log-files/nginx-logs.txt)

---

## Command Used
1. `chmod 600 key-pair-name.pem`
2. `ssh -i "key-pair-name.pem" <instance public DNS>`
3. `sudo apt-get update`
4. `sudo apt install nginx`
5. `sudo apt install docker.io`
6. `systemctl status nginx`
7. `systemctl status docker`
8. `journalctl -u nignx`
9. `journalctl -u nginx > nginx-logs.txt`
10. `scp -i your-key.pem ubuntu@<your-instance-ip>:~/nginx-logs.txt .`

## Challenges Faced
### I faced issue while downloading the file locally.
- I was missing the `.` at the end which signifies `download the file in current selected directory`.

## What I learned:
- Installed nginx and docker using package installing linux command.
- Configured inbound rule of HTTP port 80 for nginx service.
- learned how the hosting of web server takes place using EC2 public IP address.
- verfied the logs and downloaded it on the local machine.

