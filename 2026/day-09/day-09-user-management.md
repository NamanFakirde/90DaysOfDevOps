# Linux User & Group Management Challenge

## Task 1: Create Users- 
- Created users `tokyo`, `berlin` and `professor` using 
```bash
  sudo useradd -m <username>
```
- Gave password to each user using
```bash
  sudo passwd <username>
```
- Verified using 
```bash
  cat /etc/passwd
```
```bash
  ls /home/
```
<img width="800" height="300" alt="image" src="https://github.com/user-attachments/assets/a7f9092a-325d-4959-9b1e-c6d37d2482ea" />

## Task 2: Create Groups-
- Created groups using
``` bash
  sudo groupadd <groupname>
```
- verified using
``` bash
  cat /etc/group
```
<img width="359" height="128" alt="image" src="https://github.com/user-attachments/assets/b8f034e1-0c05-4a82-a910-89c6f5ba2026" />

## Task 3: Assign to Groups
- added users to a group
```bash
  sudo gpasswd -a <username> <groupname>
```
- can be verified using
```bash
  groups <username1> <username2> ..
```
OR
```bash
  cat /etc/group
```
<img width="500" height="200" alt="image" src="https://github.com/user-attachments/assets/4ffcec1a-2d87-4c85-976b-5906448d1941" />

## Task 4: Shared directory
1. create directory
```bash
  sudo mkdir /opt/dev-project
```
2. set group owner to developers
```bash
  sudo chgrp developers /opt/dev-project
```
3. set permission to 775
```bash
  sudo chmod 775 /opt/dev-project/
```
4. test by creating file as tokyo and berlin
```bash
  touch /opt/dev-project/filename.txt
```
Verified using 
```bash
  ls -l
```
<img width="500" height="250" alt="image" src="https://github.com/user-attachments/assets/ec75261f-a4f5-45f9-b17a-490d003a8ffc" />

## Task 5: Team Workspace
1. Create user nairobi with home directory
```bash
  sudo useradd -m nairobi
```   
2.Create group project-team
```bash
  sudo groupadd project-team
```
4. Add nairobi and tokyo to project-team
```bash
  sudo usermod -aG project-team nairobi
  sudo usermod -aG project-team tokyo
```
5. Create /opt/team-workspace directory
```bash
  sudo mkdir /opt/team-workspace
```
6. Set group to project-team, permissions to 775
```bash
  sudo chgrp project-team /opt/team-workspace/
  sudo chmod 775 /opt/team-workspace/
```  
7. Test by creating file as nairobi
```bash
  su nairobi
  touch /opt/team-workspace/nairobi.txt
```
<img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/b1da6fc3-599f-45d6-894c-fc6c8878bd2e" />

---

# Documentation

## Users & Groups Created
- users: tokyo, berlin, professor and nairobi
- groups: developers, admins, project-team

## Group Assignments
- developers: tokyo, berlin.
- admins: berlin, professor.
- project-team: tokyo, nairobi.

## Directories created
- dev-project        (permissions: drwxrwxr-x i.e 775)
- team-workspace     (permissions: drwxrwxr-x i.e 775)

## Commands used
- created users with password
``` bash
  sudo useradd -m tokyo
  sudo useradd -m berlin
  sudo useradd -m professor
  sudo useradd -m nairobi
  sudo passwd tokyo
  sudo passwd berlin
  sudo passwd professor
  sudo passwd nairobi
```
- Group creation
``` bash
  sudo groupadd developers
  sudo groupadd admins
  sudo groupadd project-team
```
- Assign user to group
```bash
  sudo usermod -aG developers tokyo
  sudo usermod -aG developers,admins berlin
  sudo usermod -aG admins professor
  sudo usermod -aG project-team nairobi
  sudo usermod -aG project-team tokyo
```
- Directory creation and permissions
```bash
  sudo mkdir /opt/dev-project
  sudo mkdir /opt/team-workspace

  sudo chgrp developers /opt/dev-project
  sudo chgrp project-team /opt/team-workspace

  sudo chmod 775 /opt/dev-project
  sudo chmod 775 /opt/team-workspace
```
- Verification
```bash
# Verifying User Creation
  cat /etc/passwd 

# Verifying Group Assignments
  groups tokyo berlin professor nairobi

# Testing Write Access (Development Project)
  su tokyo
  touch /opt/dev-project/tokyo.txt
  su berlin
  touch /opt/dev-project/berlin.txt
  ls -l


# Testing Write Access (Team Workspace)
  su nairobi
  touch /opt/team-workspace/nairobi.txt
  ls -l
```
## What I learned
1. Managing permissions via group: rather than managing permissions for single users, adding users to the group and assigning permissions to groups
2. 775 permission: understood the permissions 775 which gives full control to owner and groups such as read, write, execute; while restricting permissions to others such as read, execcute only.
3. Verifications: Ensuring verification of every user administrative changes using `ls -ld` to check permissions and `groups` to check user membership that ensures the user has only specific access over resources.
