# Day 12 – Breather & Revision

## Mini Self-Check
1. Which 3 commands save you the most time right now, and why?
  - `ls`: this command save lot of time by listing everything in current directory, also it can be used with other flag such as `-ld`, `-l` which gives full details of the file/directory.
  - `systemctl status <service>` : let us know status of the service rather than manually checking it.
  - `chown`: This single command let us change the owner and group of a file/directory at once.
<br>

2. How do you check if a service is healthy? List the exact 2–3 commands you’d run first.
Run this command firstly which i learnt for any service
- `systemctl status <service>`: check if service is active or dead.
- `journalctl -u <service>`: check the logs of the service for any insights.
- `curl -I https://localhost:port`: Check if service is actually responding to the request

<br>

3. How do you safely change ownership and permissions without breaking access? Give one example command.
- `  sudo chown -R berlin:tech-team bank-heist/blueprints.pdf ` and `sudo chmod 765 file.txt`

<br>

4. What will you focus on improving in the next 3 days?
- Getting more confident over linux commands and troubleshooting.
