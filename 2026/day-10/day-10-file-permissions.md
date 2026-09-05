# Day 10 – File Permissions & File Operations Challenge

### Task 1: Create Files

1. Created empty file `devops.txt` using `touch`
2. Created `notes.txt` with some content using `cat` or `echo`
3. Created `script.sh` using `vim` with content: `echo "Hello DevOps"`

- Verified using `ls -l` to see permissions

![create-file](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-10/Images/create-file.png)

---

### Task 2: Read Files

1. Read `notes.txt` using `cat`
2. Viewed `script.sh` in vim read-only mode
3. Displayed first 5 lines of `/etc/passwd` using `head`
4. Displayed last 5 lines of `/etc/passwd` using `tail`

![read-file](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-10/Images/read-file.png)

---

### Task 3: Understand Permissions

- Currently all three files has same permissions
```bash
-rw-rw-r-- 
```

```bash
Owner : ubunut -> read and write
Group : ubunut -> read and write
Other :        -> read only
```
![file-permission](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-10/Images/file-permission.png)

---

### Task 4: Modify Permissions

1. Made `script.sh` executable → run it with `./script.sh`
2. Set `devops.txt` to read-only (removed write for all)
3. Set `notes.txt` to `640` (owner: rw, group: r, others: none)
4. Created directory `project/` with permissions `755`

- Verified using `ls -l` after each change

![modify-permission](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-10/Images/modify-permissions.png)

---

### Task 5: Test Permissions (10 minutes)

1. Tried writing to a read-only file - what happens?
- `-bash: devops.txt: Permission denied` Not able to write
2. Tried executing a file without execute permission
- `-bash: ./notes.txt: Permission denied` Not able to execute
3. Documented the error messages

![test-permissions](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-10/Images/test-permissions.png)

---


## Files Created
```bash
1. devops.txt
2. notes.txt
3. script.sh
```

## Permission Changes
| Files | Before | After |
|------|--------|-------|
| devops.txt | -rw-rw-r-- | -r--r--r-- |
| notes.txt | -rw-rw-r-- | -rw-r----- |
| script.sh | -rw-rw-r-- | -rwxrwxr-x |

## Commands Used
To create a file
```bash
1. touch devops.txt
2. echo "This is day-10 of devops" > notes.txt
3. vim script.sh -> i: for insert mode -> :wq : to save & exit
```

To read file
```bash
1. cat notes.txt
2. vim script.sh
3. head -n 5 /etc/passwd
4. tail -n 5 /etc/passwd
```

To modify the permission
```bash
1. chmod +x script.sh
2. chmod 444 devops.txt
3. chmod 640 notes.txt
4. mkdir -m 755 project
```

To test permissions
```bash
1. echo "trying to write into read-only file"
2. ./notes.txt
```

For verification
```bash
ls -l
```

## What I Learned
1. Understood the File permission and its importance
2. learned how to read and write into a file using `cat`, `touch` and `vim editor`. Also how to filter our required number of line using `head` and `tail`.
3. As file permissions directly affect file operations then we can use this to give permission when working with multiple users and we can modify the permissions to access the file/directories. 