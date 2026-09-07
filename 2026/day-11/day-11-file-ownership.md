# Day 11 – File Ownership Challenge (chown & chgrp)

## Task 1: Understanding Ownership

1. Ran `ls -l` in home directory
2. Identifed the **owner** and **group** columns
3. Checked who owns your files

Documented: What's the difference between owner and group?
- Owner: A user who owns the file and can manange the file.
- Group: A collection of users who has permissions to a file operation.

![ownership](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-11/Images/ownership.png)

---

## Task 2: Basic chown Operations 

1. Created file `devops-file.txt`
2. Checked current owner: `ls -l devops-file.txt`: 
3. Changed owner to `tokyo` (create user if needed)
4. Changed owner to `berlin`.
5. Verified the changes using `ls -l devops-file.txt`.

![chown-operation](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-11/Images/chown-operation.png)

---

## Task 3: Basic chgrp Operations

1. Created file `team-notes.txt`
2. Checked current group: `ls -l team-notes.txt`
3. Created group: `sudo groupadd heist-team`
4. Changed file group to `heist-team`
5. Verified the change

![chgrp-operation](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-11/Images/chgrp-operation.png)

---

## Task 4: Combined Owner & Group Change

Using `chown` you can change both owner and group together:

1. Created file `project-config.yaml`
2. Change owner to `professor` AND group to `heist-team` (one command)
3. Create directory `app-logs/`
4. Change its owner to `berlin` and group to `heist-team`

![combined-ownership](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-11/Images/combined-ownership.png)

---

## Task 5: Recursive Ownership

1. Created directory structure:
   ```
   mkdir -p heist-project/vault
   mkdir -p heist-project/plans
   touch heist-project/vault/gold.txt
   touch heist-project/plans/strategy.conf
   ```

2. Created group `planners`: `sudo groupadd planners`

3. Changed ownership of entire `heist-project/` directory:
   - Owner: `professor`
   - Group: `planners`
   - Used recursive flag (`-R`)

4. Verified all files and subdirectories changes using `ls -lR heist-project/`,

![R-ownership](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-11/Images/R-ownership.png)

---

## Task 6: Practice Challenge (20 minutes)

1. Users: `tokyo`, `berlin`, `nairobi`  already exits.
2. Created groups: `vault-team`, `tech-team`
3. Created directory: `bank-heist/`
4. Created 3 files inside:
   ```
   touch bank-heist/access-codes.txt
   touch bank-heist/blueprints.pdf
   touch bank-heist/escape-plan.txt
   ```

5. Set different ownership:
   - `access-codes.txt` → owner: `tokyo`, group: `vault-team`
   - `blueprints.pdf` → owner: `berlin`, group: `tech-team`
   - `escape-plan.txt` → owner: `nairobi`, group: `vault-team`

**Verified:** `ls -l bank-heist/`

![practice](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-11/Images/practice.png)

---

## Files & Directories Created
Files:
```bash
1. devops-file.txt
2. team-notes.txt
3. project-config.yaml
4. gold.txt
5. strategy.conf
6. access-codes.txt
7. blueprints.pdf
8. escape-plan.txt
```

Directories:
```bash
1. app-logs/
2. heist-project/
3. vault/
4. plans/
5. bank-heist/
```

---

## Ownership Changes
```bash
1. devops-file.txt: ubuntu:ubuntu → tokyo:ubuntu → berlin:ubuntu
2. project-config.yaml: ubuntu:ubuntu → professor:heist-team
3. app-logs/: ubuntu:ubuntu → berlin:heist-team
4. heist-project/: ubuntu:ubuntu → professor:planners
5. access-codes.txt: ubuntu:ubuntu → tokyo:vault-team
6. blueprints.pdf: ubuntu:ubuntu → berlin:tech-team
7. escape-plan.txt: ubuntu:ubuntu → nairobi:vault-team
```
---

## Commands Used
```bash
- ls -l
- touch devops-file.txt
- ls -l devops-file.txt
- sudo chown tokyo devops-file.txt
- sudo chown berlin devops-file.txt
- touch team-notes.txt
- ls -l team-notes.txt
- sudo groupadd heist-team
- sudo chgrp heist-team team-notes.txt
- touch project-config.yam
- sudo chown professor:heist-team project-config.yaml
- mkdir app-logs/
- sudo chown berlin:heist-team app-logs/
- mkdir -p heist-project/vault
- touch heist-project/vault/gold.txt
- touch heist-project/plans/strategy.conf
- sudo groupadd planners
- sudo chown -R professor:planners heist-project
- ls -lR heist-project/
- sudo groupadd vault-team; sudo groupadd tech-team
- mkdir bank-heist/
- touch bank-heist/access-codes.txt
- touch bank-heist/blueprints.pdf
- touch bank-heist/escape-plan.txt
- sudo chown -R tokyo:vault-team bank-heist/access-codes.txt
- sudo chown -R berlin:tech-team bank-heist/blueprints.pdf 
- sudo chown -R nairobi:vault-team bank-heist/escape-plan.txt 
- ls -l bank-heist/
```

---

## What I Learned
1. File ownership controls who modifies and managers file therefore it is critical for deployments and shared workspaces.
2. `chown` can change both `owner` and `group` within a single command, also `chown -R` is the recursive flag used to manage entire directory 
3. Always verify the ownership changed using `ls` command 

---