# Day 05 – Linux Troubleshooting Drill: CPU, Memory, and Logs

## What’s a runbook?
A **runbook** is a short, repeatable checklist you follow during an incident: the exact commands you run, what you observed, and the next actions if the issue persists. Keep it concise so you can reuse it under pressure.


## Environment Basics 

### 1. `uname -a`
#### Observation: 
- Gives basic linux information.
- 64 bit ubuntu linux is running on AWS.
#### Output
![uname](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/uname.png)

### 2. `cat /etc/os-release`
#### Observation
- Ubuntu version and system information displayed.
- LTS ubuntu version is running.
#### Output
![cat-os](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/cat-os.png)


## Filesystem sanity
### 3. `mkdir /tmp/runbook-demo`
#### Observation
- Created a directory named `runbook-demo` in `/tmp`.

### 4. `cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo`
#### Observation
- copy the systems `host` file to `runbook-demo` directory.
- list the `runbook-demo` directory to verify the operation.
#### Output
![cp-host](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/cp-host.png)


## Snapshot: CPU / Memory
### 5. `ps -o pid,pcpu,pmem,comm -p 2189`
#### Observation
- `sshd` service has 2189 PID.
- No `CPU` usage and only `0.8% Memory` consumption.
#### Output
![ssh-ps](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/ssh-ps.png)

### 6. `free -h`
#### Observation
- Almost 50% of the space if avaiable.
- That means system is healthy.
#### Output
![free](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/free.png)


## Snapshot: Disk / IO
### 7. `df -h`
#### Observation
- Out of `19G`, `16G` is available free.
- We can say that  system is healthy in terms of disk space.
#### Output
![df-h](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/df-h.png)

### 8. `du -sh /var/log`
#### Observation
-`36M` of space is consumed by /var/log.
-`negligible` space is consumed by log directory.
#### Output
![du-log](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/du-log.png)


## Snaptshot: Network
### 9. `ss -tulpn`
#### Observation
- The system has TCP services listening on port 22 (ssh) and port 80 (HTTP), etc.
#### Output
![ssh-tulpn](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/ss-tulpn.png)

### 10. `curl -I http://localhost:80`
#### Observation
- Received HTTP 200 OK
- That means port 80 is actively listening and working properly.
#### Output
![curl-80](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/curl-80.png)


## Logs
### 11. `journalctl -u sshd -n 50`
#### Observation
- Recent logs shows normal ssh behaviour and closure.
- Public key authentication successfull.
- Actively listening on port 22.
#### Output
![journalctl](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/journalctl.png)

### 12. `tail -n 50 /var/log/auth.log`
#### Observation
- `auth.log` shows successful SSH public-key authentication and normal user session activity.
- `SSH` was terminated and subsequently started again, with the server listening on `port 22` afterward.
#### Output
![auth-log](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-05/images/auth-log.png)

## Quick Findings
- CPU and memory is healthy.
- SSH service is running normally.
- No bigger errors in logs.
- Port 22 is actively listening.

## If This Worsen
- Check logs again.
- Restart the service.
- Check CPU/Memory usage.