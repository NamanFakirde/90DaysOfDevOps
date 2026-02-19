# Basic file read/write operations

1. Command:  `touch <notes.txt>`
   - This command creates a file to our directory, I have noticed it has only read-write permission but not execute permissions (664).

2. Command: `echo "Line 1" > notes.txt`
   - This command write into the file and `>` overwrites the file.

3. Command: `echo "Line 2" >> notes.txt`
   - This command simply appends to the file.

4. Command: `echo "Line 3" | tee -a notes.txt` 
   - This command is combination of `echo` and `tee` command, it write to the file and display the output.

5. Command: `cat notes.txt`
   - cat command is used to display the content of the file

6. Command: `head -n 2 notes.txt`
   - display the top 2 lines from the file.

7. Command: `tail -n 2 notes.txt`
   - displat the  bottom 2 lines from the file.
  
<img width="550" height="400" alt="Screenshot 2026-02-19 150209" src="https://github.com/user-attachments/assets/2f0f3a22-23dd-4215-a737-14b5f051965a" />
