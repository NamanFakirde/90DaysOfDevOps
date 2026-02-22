# Task: Cloud Server Setup: Docker, Nginx & Web Deployment

## PART 1: Launch Cloud Instance & SSH Access

### Step 1: Create a Cloud Instance
- Give name to the instance.
- Choose the distro for the instance (I choose ubuntu linux)
- Created a key-pair to access securely to the instance.
- launched the instance.

### Step 2: Connect via SSH
- Choose the ssh client option in connect
- Run this command locally to ensure the key is not visible publically
``` bash
  chmod 400 "your-key-pair-name.pem"
```
- Run this command to connect to the instance locally
``` bash
  ssh -i "your-key-pair.pem" ubuntu@<your-instance-ip>.compute-1.amazonaws.com
```
<img width="1000" height="800" alt="image" src="https://github.com/user-attachments/assets/0b8e67fa-1d7d-4db0-8bfe-5f96a514c675" />

## PART 2: Install Docker & Nginx 

### Step 1: Update System
- Update system to the latest version before any installations
  ``` bash
  sudo apt-get update
  ```

### Step 2: Install Docker
- installed using
``` bash
  sudo apt install docker.io -y
```

### Step 3: Install nginx
- install nginx and check the status
``` bash
  sudo apt install nginx -y
  systemctl status nginx
```

## Part 3: Security Group Configuration
- Allowed inbound traffic to port 80 for nginx 
- opened browser and visited my instance ip
<img width="1000" height="800" alt="image" src="https://github.com/user-attachments/assets/776526a3-3495-4ed8-ae58-c905c95942af" />

## Part 4: Extract Nginx Logs
### Step 1: View Nginx Logs
``` bash
  cd /var/log/nginx/
  cat access.log
```

### Step 2: Save Logs to File
``` bash
  sudo cat /var/log/nginx/access.log > mginx-log.txt
```

### Step 3: Download Log File to Your Local Machine
- Run this command in your local machine terminal
``` bash
  scp -i your-key.pem ubuntu@<your-instance-ip>:~/nginx-log.txt .
```
- [View nginx access log file](./nginx-log.txt)
---

## Challenge Faced 
- Got issue running nginx on browser, solved by revisiting the procedure and retrying.

## What I learned
- Launched an EC2 instance seemlessly using security access key (key-pairs).
- Installed nginx and docker using package installing linux command.
- Configured inbound rule of HTTP port 80 for nginx service.
- learned how the hosting of web server takes place using EC2 public IP address.
- verfied the logs and downloaded it on the local machine
