<h1>Runbook for SSH service</h1>

<h3>This runbook gives step-by-step guide if ssh service goes down</h3>

<h2>Environment basics:</h2>

- Command: `uname -a`

  Output: `Linux naman-VirtualBox 6.14.0-37-generic #37~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Nov 20 10:25:38 UTC 2 x86_64 x86_64 x86_64 GNU/Linux`

  Observation: Kernel version and its details confirmed

- Command: `cat /etc/os-release`

  <img width="500" height="170" alt="image" src="https://github.com/user-attachments/assets/1b3dddf6-0e1c-4534-8dc6-feb3ca031167" />

  Observation: Displays detailed information about your operating system.


<h2>Filesystem sanity</h2>

- Command: `mkdir /tmp/runbook-demo`

  Output: 

  Observation: Folder and File created successfully.

- Command: `cat /etc/os-release`

  <img width="1006" height="90" alt="image" src="https://github.com/user-attachments/assets/4a08b76f-5198-492e-8243-9d8f59b05bdd" />

  Observation: Copied the folder from  `/etc/hosts` to `/tmp/runbook-demo/hosts-copy` and listing it.

<h2>CPU / Memory</h2>

- Command: `ps -o pid,pcpu,pmem,comm -p <pid>`

  <img width="609" height="72" alt="image" src="https://github.com/user-attachments/assets/64d535d2-586c-487f-bfb3-1db126b39b9a" />

  Observation: ssh using almost negligible CPU and Memory

- Command: `free -h`

  <img width="847" height="91" alt="image" src="https://github.com/user-attachments/assets/f5be8ed9-e820-49f7-a984-151a1ef6883f" />

  Observation: Memory usage is healthy; no swap usage

<h2>Disk I/O </h2>

- Command: `df -h`

  <img width="613" height="184" alt="image" src="https://github.com/user-attachments/assets/61a4df2c-f842-40a1-be04-8cd55432103e" />

  Observation: 44% of disk is used, 14G is still available therefore no risk for the services.

- Command: `iostat`

  <img width="500" height="200" alt="image" src="https://github.com/user-attachments/assets/dbbef5f2-327c-4f4d-beae-66d2d532c8d7" />

  Observation: Shows 97.17% CPU is idle i.e CPU is healthy, %iowait is 0.40 which is minimal that conclude disk is healthy and no I/O constraint or load.

<h2>Network</h2>

- Command: `ss -tulpn` : gives socket statistics for tulpn (TCP/UDP port and which process is using them).

  <img width="500" height="150" alt="image" src="https://github.com/user-attachments/assets/5ada5a17-a7da-4169-bc5a-51a93f8adfc5" />

  Observation: No process is running on any of our TCP\UDP port 

- Command: `curl -I https://google.com`

  <img width="400" height="100" alt="image" src="https://github.com/user-attachments/assets/c3cebe36-7815-44a5-94d6-72d8915c855a" />

  Observation: returned `HTTP/2 301` which is completely normal it by default redirected to `https://www.google.com` instead of `https://google.com` 

<h2>Logs</h2>

- Commmand: `journalctl -u <service> -n 50`

  <img width="500" height="150" alt="image" src="https://github.com/user-attachments/assets/1e43b91e-d449-4a22-bd0d-e6bfe7969343" />

  Observation: SSH service started successfully and began listening on port 22

- Command: `tail -n 50 /var/log/<file>.log`

  <img width="1106" height="238" alt="image" src="https://github.com/user-attachments/assets/49863d6b-4bf4-4789-b61c-f75412d625b2" />

  Observation: Shows the most recent authorized logins for the system using auth.log file

<h2>Quick findings</h2>
<ul>
  <li>SSH is working normally</li>
  <li>TCP/UDP ports are open for connections</li> 
  <li>no error in logs</li>
  <li>disk and io are healthy</li>
</ul>
<h2>If this worsens</h2>
 <ul>
  <li>check if port is used by another service</li>
  <li>check logs</li>
  <li>restart the service</li>
  <li>check proper connectivity</li>
  <li>check CPU/Disk usage</li>
 </ul>
