# Day 12 – Breather & Revision (Days 01–11)

## Mini Self-Check

**1) Which 3 commands save you the most time right now, and why?**
- `ls`: This command saves a lot of time by listing everything  the current directory. Also it can be used with other flags such as `-l` and `-ld` which displays full details of the directory or a file.
- `systemctl status <service>`: let us know status of service rather than manually checking it.
- `chown`: A single command that can be used to change the owner and group of a file/directory.
---
**2) How do you check if a service is healthy? List the exact 2–3 commands you’d run first.**
- Firsly I'll check the status of the service using `systemcttl status <service>`.
- Secondly We can check logs using `journalctl -u <service>`.
- Lastly we can directly check if the service is actually responding or not using `curl -I https://localhost:port`.
---
**3) How do you safely change ownership and permissions without breaking access? Give one example command.**
- `chown` command allows us to change the `ownership` and `permission`without breaking access
```bash
sudo chown -R berlin:team-heist bank-heist/blueprint.txt
sudo chmod 765 file.txt
```
---
**4) What will you focus on improving in the next 3 days?**
- Getting more confident with linux commands and troubleshooting.
- Learn how to streamline commands in daily task.