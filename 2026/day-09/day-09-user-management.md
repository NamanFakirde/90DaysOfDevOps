# Day 09 – Linux User & Group Management Challenge

## Task 1: Create Users
- Created three users - `tokyo`, `berlin`, `professor` with home directories and passwords.

![users](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-09/Images/users.png)

---

## Task 2: Create Groups
- Created two groups `developers`,`admins`.
- verified both groups in `/etc/group`.

---

## Task 3: Assign to Groups

Assigned users:
- `tokyo` → `developers`
- `berlin` → `developers` + `admins` (both groups)
- `professor` → `admins`
verified users and associated groups in `/etc/group`.

![assign-groups](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-09/Images/assign-groups.png)

---

## Task 4: Shared Directory

1. Created directory: `/opt/dev-project`
2. Set group owner to `developers`
3. Set permissions to `775` (rwxrwxr-x)
4. Tested by creating files as `tokyo` and `berlin`.

**Verify:** Check permissions and test file creation

![permissions](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-09/Images/permissions.png)

---

## Task 5: Team Workspace 

1. Created user `nairobi` with home directory
2. Created group `project-team`
3. Added user `nairobi` and `tokyo` to `project-team`
4. Created `/opt/team-workspace` directory
5. Set group to `project-team`, permissions to `775`
6. Tested by creating file as `nairobi`

![nairobi-task](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-09/Images/nairobi-task.png)

---

## Users & Groups Created
- Users: tokyo, berlin, professor, nairobi
- Groups: developers, admins, project-team

## Group Assignments
- developers: tokyo,berlin
- admins: berlin,professor
- project-team: nairobi,tokyo

## Directories Created
(Home Directories)
- drwxr-x--- 2 berlin    berlin    4096 Sep  4 16:47 berlin 
- drwxr-x--- 2 nairobi   nairobi   4096 Sep  4 17:22 nairobi
- drwxr-x--- 2 professor professor 4096 Sep  4 16:48 professor
- drwxr-x--- 2 tokyo     tokyo     4096 Sep  4 16:47 tokyo 

(Other Directories)

- drwxrwxr-x 2 root developers   4096 Sep  4 17:17 dev-project
- drwxrwxr-x 2 root project-team 4096 Sep  4 17:29 team-workspace

## Commands Used
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

## What I Learned
1. Managing permissions via group: rather than managing permissions for single users, adding users to the group and assigning permissions to groups
2. 775 permission: understood the permissions 775 which gives full control to owner and groups such as read, write, execute; while restricting permissions to others such as read, execcute only.
3. Verifications: Ensuring verification of every user administrative changes using `ls -ld` to check permissions and `groups` to check user membership that ensures the user has only specific access over resources.
