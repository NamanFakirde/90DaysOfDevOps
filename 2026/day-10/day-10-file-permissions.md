# Day 10 – File Permissions & File Operations Challenge

## Task 1: Create Files
- Create empty file devops.txt using touch
- Create notes.txt with some content using cat or echo
- Create script.sh using vim with content: echo "Hello DevOps"
<img width="784" height="223" alt="image" src="https://github.com/user-attachments/assets/f0c3ac32-91d0-4252-9e5d-c169513ad0af" />

## Task 2: Read Files
- Read notes.txt using cat
- Display first 5 lines of /etc/passwd using head
- Display last 5 lines of /etc/passwd using tail <br>
<img width="688" height="348" alt="image" src="https://github.com/user-attachments/assets/84269a83-7422-4ec9-9211-73c0cbe91a1f" /> <br>
- View script.sh in vim read-only mode <br>
<img width="569" height="265" alt="image" src="https://github.com/user-attachments/assets/f2e4e228-d414-42fc-94e9-7f8fb1ee521c" /> <br>

## Task 3: Understand Permissions
- currently all three files have same file permissions 
```bash
  -rw-rw-r--`
```
```bash
  owner (naman) -> read and write
  group (naman) -> read and write
  other         -> read only
```
<img width="946" height="436" alt="image" src="https://github.com/user-attachments/assets/08933db2-5e7a-4981-ad80-8d19a58ecfbc" />

## Task 4: Modify Permissions
- Make script.sh executable → run it with ./script.sh
- Set devops.txt to read-only (remove write for all)
- Set notes.txt to 640 (owner: rw, group: r, others: none)
- Create directory project/ with permissions 755

<img width="781" height="377" alt="image" src="https://github.com/user-attachments/assets/49d366b1-102a-45ad-842b-ca25f26ccdc1" />


## Task 5: Test Permissions
- Try writing to a read-only file - what happens? : gives permission denied prompt 
- Try executing a file without execute permission : Gives permission denied prompt 
- Document the error messages
<img width="710" height="138" alt="image" src="https://github.com/user-attachments/assets/265c9de7-5d0b-4aa9-ba2a-476a6df69fd0" />

# Documentation

## Files created
- devops.txt
- notes.txt
- script.sh
- project/ (directory)

## Permission changed
- Before:
  <img width="784" height="223" alt="image" src="https://github.com/user-attachments/assets/f0c3ac32-91d0-4252-9e5d-c169513ad0af" />
- After changes :
  <img width="569" height="134" alt="image" src="https://github.com/user-attachments/assets/6181b62e-e66d-4929-a94e-08fe364c3e7c" />

## Commands Used
- File creation: `touch`, `echo "message" > file`, `vim`.
- Read: `cat`, `head -n`, `tail -n`.
- Permissions: `chmod 666`, `chmod 755`, `chmod 640`, etc.

## what I learned
- File creation and writing to it: I learned how to create file and write into the file using `touch`, `cat` and `vim` editor. Moreover i learned how to filter specific number of lines using `head` and `tail`.
- Managing permissions: I learned how to manage the permissions to the file and directory which directly affect the file operations such as  `read`, `write`, `execute` using `chmod nnn` command.
- File access control: As file permissions directly affect file operations then we can use this to give permission when working with multiple users and we can modify the permissions to access the file/directories. 
