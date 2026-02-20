# Task
Today's goal is to **understand where things live in Linux** and **practice troubleshooting like a DevOps engineer**.

You will create notes covering:
- Linux File System Hierarchy (the most important directories)
- Practice solving real-world scenarios step by step

This consolidates your Linux fundamentals and prepares you for real-world troubleshooting.

---

# PART 1

#### Core directories:

`/` directory:
- This is the root directory of the linux system, Everything starts from this directory.
- some directories which can be seen using `ls -l` are `bin`, `home`, `dev`, `root`, `mnt`, etc.
- I would use it to navigate between the directories 

`/home` directory:.
- This is the directory where we can see the <b>USERS</b>. 
- using `ls` we can see the users available (I can see only one user i.e `naman` on my system).
- I would use it to switch between the users and do whatever we wish to rather than doing it in `/` or any other directory.

`/root` directory:
- This directory is the personal home directory for the root user in my case its `naman` itself.
- It contains configuration file (`.bashrc` or `.vimrc`), sensitive credentials (`.ssh/`) etc, Generally changing directory to `root` is restricted
- i would use when performing highly sentitive admin work

`/etc` directory: 
- This is the directory where configuration files, folder are stored
- files such as hostname, hosts and folders such as openvpn, ifplug, xml etc are present.
- I would use it when i want to customize system behavior.

`/var/log` directory:
- This is the system diary where logs and records are stored
- Some common file such as `auth.log`, `boot.log`, etc can be seen.
- If something goes wrong the answer is alwasy almost hidden in `/var/log`,  I would use it when troubleshooting. 

`/tmp` directory:
- Temporary files are stored in this folder.
- it is auto cleaned once the system is reboot.
- I would use it for scratch work or dumping tmp files.

`/bin` directory:
- this stores the essential tool for everyone.
- commands which we use every single day is stored in `/bin`.
- I would use it to find the commands needed.

`usr/bin` directory:
- stores user command and executable programs in linux system.
- command such as `ping`, `pidstat` can be seen here.
- I would use it to check the availability of the program

`/opt` directory:
- stores optional or third party applications.
- i would use it when working with third party applications.

### Hand-on task:
`du -sh /var/log/* 2>/dev/null | sort -h | tail -5` : shows the 5 biggest log files and not complaining about the permissions.
- `du -sh`: gives human readable summary for disk usage.
- `/var/log/`: directory containing log files.
-  `*`: implies <b>Everything</b>.
-  `2>/dev/null`: send `error` (2) to `black hole` (>/dev/null).
-  `sort -h`: sort everthing in humanly readable format.
-  `tail -h`: give last 5 lines from the file.
  <img width="836" height="160" alt="image" src="https://github.com/user-attachments/assets/b9a0eaac-8f0a-4b0b-9d81-c97e562dd970" />
- Observation: journal is the largest file occupying the space in my system

---

# PART 2 - Scenario based practice

### Scenario 1: Service Not Starting
Step 1:
- Command: `systemctl status myapp`
- Why? It shows the status of our service i.e active, stopped or failed.

Step 2:
- Command: `journalctl -u myapp -n 50`
- Why? It gives the insight into the applications using its logs

Step 3:
- Command: `systemctl is-enabled myapp`
- Why? Check if the service automatically loaded once system is reboot.

<b>What i learned? </b> Always check for the status of the service/app first for futher troubleshoot check its logs and then investigate the rest.

### Scenario 2: High CPU Usage
Step 1:
- Command: `top or htop`
- Why? shows the live running process in a system.

Step 2:
- Command: `ps aux --sort=-%cpu | head -10`
- Why? list down the top 10 high cpu consuming service/process which helps in reporting.

Step 3:
- Command: `Kill <pid>`
- Why? if the process is not necessary then kill/terminate the process.

<b>What i learned?</b> Always check the process consuming HIGH CPU then take further actions.

