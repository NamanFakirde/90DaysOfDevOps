# # Day 04 – Linux Practice: Processes and Services



## Process Commands

### 1. `pgrep -a sshd`
This gives all active `sshd` process along with their PID.

#### Observation:
- `667`: The main ssh daemon.
- `1293`: Previleged ssh process.
- `1416`: Active user sessions (pts/0).

#### Output:
![pgrep-sshd]()


### 2. ps aux | grep sshd
This give snapshot of particularly all sshd processes.

#### Observation:
- main ssh daemon runs under `root` user.
- logged in session runs under `ubuntu` user.
- `PID 1510` is a grep process for ssh which is normal.

#### Output:
![ps-aux]()



## Service Commands
 
### 3. `systemctl status ssh`
It displays status,CPU/memory usage, uptime and recent logs of ssh service.

#### Observation:
- ssh service is active and running.
- listening on port 22.
- EC2 is connected using ssh authorized key.

#### output
![ssh-status]()


### 4. `systemctl list-units --type=service --state=running`
List all the active running process of the system.

#### Observation
- ssh is running 
- core services are also running such as `cron`, `networkd` and `systemctl journald`.
- Our instance is stable and healthy.

#### Output
![running-services]()



## Log commands

### 5. `journalclt -u ssh -n 20`
This gives most recent 20 journals/logs of ssh service.

#### Observation
- session records.
- port 22 is listening.
- public key authentication success.

#### Output
![ssh-log]()


## 6. `tail -n 50 /var/log/auth.log`
Shows most recetn authentication and authorization logs.

#### Observation
- `ssh` session opened for `ubuntu` user.
- `cron` executed as `root`.
- Accepted public key.

#### Output
![auth-log]()

## Key Learnings
- ssh creates multiple processes as per user.
- AWS EC2 uses key based authentication.
- `systemctl` is important to inspect and manage services.
- `logs` are critical for auditing and security purpose.