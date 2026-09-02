# Day 07 – Linux File System Hierarchy & Scenario-Based Practice

## Part 1: Linux File System Hierarchy (30 minutes)

Documenting the purpose of these **essential** directories:
### 1. `/` (Root)
- This is the starting point of everything in linux file system.
- Every directory in linux starts from `/`.
- I would use it when i want to navigate between the directories.

### 2. `/home`
- It is a place for all the regular users.
- Whatever task we want to perform must be done in this directory only.
- I would use it when i want to switch between the users.

### 3. `/root`
- This directory is the personal home directory for the root user.
- I  would use when performing highly sentitive admin work

### 4. `/etc`
- This is the directory where configuration files, folder are stored.
- I would use it when i want to customise system behavior.

### 5. `/var/log`
- This directory stores the `logs` (recent activities) of applications and system.
- I would use it when troubleshooting, if anything goes r=wrong the answer is alwasy in `/var/log`.

### 6. `/tmp`
- It stores temporary files and folders.
- It automatically cleaned up once system is reboot.
- I would use it for scratch work or dumping temporary files.

### 7. `/bin`
- This stores the essential tools for the system.
- Daily usage command can be seen in this directory.
- I would use it to find commands when needed.

### 8. `/usr/bin`
- stores user command and executable programs in linux system.
- command such as `ping`, `pidstat` can be seen here.
- I would use it to check the availability of the program

### 9. `/opt`
- stores optional or third party applications.
- I would use it when working with third party applications.

### Hand-on-task
```bash
1. du -sh /var/log/* 2>/dev/null | sort -h | tail -5
- Gives top 5 largest log file in a system
- 2>/dev/null` appends the error into a `black hole`
- Journal is the largest file in my system.

2. cat /etc/hostname
- Displays the current IP address.

3. ls -la
- Displays all the file in a home directory.
```
![hand-on-task](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-07/Images/hand-on-task-1.png)

---

## Part 2: Scenario-Based Practice

### Scenario 1: Service Not Starting
```
A web application service called 'myapp' failed to start after a server reboot.
What commands would you run to diagnose the issue?
Write at least 4 commands in order.
```
1. `systemctl status myapp`
- why - shows the status of our application as `Active`, `Failed` or `Stopped`.
2. `journalctl -u myapp -n 50`
- why - shows the top 50 logs by which we might get insight of our application.
3. `systemctl is-enabled myapp`
- why - Check if the service automatically loaded once system is reboot.

**What I learned:** First check for the service/process status then move towards logs then only investigate further.

---

**Scenario 2: High CPU Usage** 
```
Your manager reports that the application server is slow.
You SSH into the server. What commands would you run to identify
which process is using high CPU?
```
1. `top`or `htop`
- Shows live information about the active process of the system.
2. `ps aux --sort=-%cpu | head -10`
- Shows 10 processes sorted by %CPU.
3. `Kill <pid>`
- Terminates the process consuming high CPU.

**What I learned:** Always check the process consuming HIGH CPU then take further actions.
 
---

**Scenario 3: Finding Service Logs** 
```
A developer asks: "Where are the logs for the 'docker' service?"
The service is managed by systemd.
What commands would you use?
```
1. systemctl status docker
- gives status of docker service
2. journalctl -u -n 50 docker 
- Displays the top 50 logs of docker service.

**What I learned:** Every serivce has logs saved in /var/logs, which can be used to retrive insights.

---

**Scenario 4: File Permissions Issue** 
```
A script at /home/user/backup.sh is not executing.
When you run it: ./backup.sh
You get: "Permission denied"

What commands would you use to fix this?
```
1. `ls -l /home/user/backup.sh`
- Gives current details of the file.
2. `chmod +x /home/user/backup.sh`
- Add executable permission to the file.
3. `ls -l /home/user/backup.sh`
- Verify the permission. (look for -x in the permission)
4. `./backup.sh`
- Execute the script.