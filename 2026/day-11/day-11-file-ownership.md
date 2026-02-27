# Day 11 – File Ownership Challenge
## Task 1: Understanding Ownership
- Run `ls -l` in your home directory 
- Identify the owner and group columns: Owner and group is `naman` i.e the user.
- Check who owns your files: User `naman` owns the file/directories
<img width="749" height="217" alt="Screenshot 2026-02-27 174605" src="https://github.com/user-attachments/assets/5c0c2276-c2db-4bc4-bb58-545fef7dba36" />


Difference:
- Owner: Owner is the user who owns and can manage the file. 
- Group: A collection of users who has permissions to the file for read/write/execute operations.

## Task 2: Basic chown Operations
- Created file `devops-file.txt`
``` bash
  touch devops-file.txt
```
- Check current owner: `Owner` is `naman`
<img width="564" height="45" alt="image" src="https://github.com/user-attachments/assets/6556445b-7ef9-48a1-a8d3-9d499e8a7a69" />

- Changed owner to `tokyo` and verified
``` bash
  sudo chown tokyo devops-file.txt
```
<img width="615" height="71" alt="image" src="https://github.com/user-attachments/assets/93ddb435-5a2a-4de7-b8de-983915a94fb4" />

- Again changed owner to `berlin` and verified
```bash
  sudo chown berlin devops-file.txt
```
<img width="578" height="73" alt="image" src="https://github.com/user-attachments/assets/56bd8418-93a5-40f6-97f0-9c0dd8efdced" />

## Task 3: Basic chgrp Operations
-  Created file  `team-notes.txt`
```bash
  touch team-notes.txt
```
- Current group is `naman`
<img width="567" height="77" alt="image" src="https://github.com/user-attachments/assets/9c69bf13-f590-4b26-b6a4-776c0417f678" />

- Created group `heist-team`
```bash
  sudo groupadd heist-team
```

- Changed file group to `heist-team` and verified it
<img width="645" height="84" alt="image" src="https://github.com/user-attachments/assets/e67fafa8-f2d8-4092-8bbf-be840b1d5754" />

## Task 4: Combined Owner & Group Change
- Created file `project-config.yaml`
```bash
  touch project-config.yaml
```
- Changed owner to `professor` AND group to `heist-team` (one command)
```bash
  sudo chown perofessor:heist-team project-config.yaml
```
- Created directory `app-logs/`
```bash
  mkdir app-logs/
```
- Changed its owner to `berlin` and group to `heist-team`
```bash
  sudo chown berlin:heist-team app-logs/ 
```
<img width="896" height="487" alt="image" src="https://github.com/user-attachments/assets/76f7e5fc-e633-41f5-9369-0b3d04ce6919" />

## Task 5: Recursive Ownership
- Created directory structure
```bash
  mkdir -p heist-project/vault
  mkdir -p heist-project/plans
  touch heist-project/vault/gold.txt
  touch heist-project/plans/strategy.conf
```
- Created group `planners`
```bash
  sudo groupadd planners
```
- Changed ownership of entire `heist-project/` directory and verified all steps.
```bash
  sudo chown -R professor:planners heist-projects/
  ls -lR heist-projects/
```
<img width="717" height="464" alt="image" src="https://github.com/user-attachments/assets/fabf40d8-8e57-4bfe-855c-bd1d7e6221ad" />


## Task 6: Practice Challenge
- Users already created: `tokyo`, `berlin`, `nairobi`.
```bash
  sudo useradd -m toyko
  sudo useradd -m berlin
  sudo useradd -m nairobi
```
- Created groups: `vault-team`, `tech-team`
```bash
  sudo groupadd vault-team
  sudo groupadd tech-team
```
- Created directory: bank-heist/
```bash
  mkdir bank-heist/
```
Create 3 files inside:
```bash
  touch bank-heist/access-codes.txt
  touch bank-heist/blueprints.pdf
  touch bank-heist/escape-plan.txt
```
- Changed different ownership:
```bash
  # access-codes.txt → owner: tokyo, group: vault-team
  sudo chown -R tokyo:vault-team bank-heist/access-codes.txt

  # blueprints.pdf → owner: berlin, group: tech-team
  sudo chown -R berlin:tech-team bank-heist/blueprints.pdf 

  #escape-plan.txt → owner: nairobi, group: vault-team
  sudo chown -R nairobi:vault-team bank-heist/escape-plan.txt 
```
<img width="903" height="408" alt="image" src="https://github.com/user-attachments/assets/2d573cfa-15c5-4e8d-88d0-b93d68c5d4aa" />


# Documentation:
## Files & Directories Created
### Files:
- project-config.yaml (inside home directory)
- team-notes.txt (inside home directory)
- strategy.conf (/home/naman/heist-project/plans)
- gold.txt (/home/naman/heist-project/vault)
- access-codes.txt, blueprints.pdf, escape-plan.txt (/home/naman/bank-heist)
### Directory:
- heist-project/
- vault/
- plans/
- bank-heist

## Ownership Changes
- devops-file.txt: naman:naman → tokyo:naman → berlin:naman
- project-config.yaml: naman:naman → professor:heist-team
- app-logs/: naman:naman → berlin:heist-team
- heist-project/: naman:naman → professor:planners
- access-codes.txt: naman:naman → tokyo:vault-team
- blueprints.pdf: naman:naman → berlin:tech-team
- escape-plan.txt: naman:naman → nairobi:vault-team


## Commands Used
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

## What I Learned
- File ownership controls who modifies and managers file therefore it is critical for deployments and shared workspaces.
- `chown` can change both `owner` and `group` within a single command, also `chown -R` is the recursive flag used to manage entire directory 
- Alwasy verify the ownership changed using `ls` command 
