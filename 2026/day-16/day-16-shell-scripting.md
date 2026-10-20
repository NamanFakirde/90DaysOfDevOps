# Day 16 – Shell Scripting Basics

## Task 1: Your First Script
1. Created a file `hello.sh`
2. Added the shebang line `#!/bin/bash` at the top
3. Printed `Hello, DevOps!` using `echo`
4. Made it executable and ran it using `chmod +x hello.sh` `./hello.sh`.
5. What happens if you remove the shebang line?
    - Shebang tell the kernel which interpreter to use while executing a script file.
    - If we remove the shebang line, script will be executed using default interpreter which is usually #!/bin/sh.

[hello-script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Scripts/hello.sh)

![hello-script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Images/hello_script.png)

---

### Task 2: Variables
1. Created `variables.sh` with:
   - A variable for your `NAME`
   - A variable for your `ROLE` (e.g., "DevOps Engineer")
   - Printed: `Hello, I am <NAME> and I am a <ROLE>`
2. Tried using single quotes vs double quotes — what's the difference?
   - When using single quotes the variables cannot be detected and the script is printed as it is.
   - When using double quotes the variable can be detected and print the value of it.

[variable-script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Scripts/variable.sh)

![variable-script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Images/variable_script.png)

---

### Task 3: User Input with read
1. Created `greet.sh` that:
   - Asks the user for their name using `read`
   - Asks for their favourite tool
   - Prints: `Hello <name>, your favourite tool is <tool>`

[greet-script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Scripts/greet.sh)

![greet-script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Images/greet_script.png)

---

### Task 4: If-Else Conditions
1. Created `check_number.sh` that:
   - Takes a number using `read`
   - Prints whether it is **positive**, **negative**, or **zero**

[check_number_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Scripts/check_number.sh)

![check_number_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Images/check_number_script.png)

2. Created `file_check.sh` that:
   - Asks for a filename
   - Checks if the file **exists** using `-f`
   - Prints appropriate message

[file_check_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Scripts/file_check.sh)

![file_check_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Images/file_check_script.png)

---

### Task 5: Combine It All
Created `server_check.sh` that:
1. Stores a service name in a variable (e.g., `nginx`, `sshd`)
2. Asks the user: "Do you want to check the status? (y/n)"
3. If `y` — runs `systemctl status <service>` and prints whether it's **active** or **not**
4. If `n` — prints "Skipped."

[server_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Scripts/server_check.sh)

![server_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-16/Images/server_script.png)

---

## What I learned:
1. Shebang: Shebang is important to let the system know how it should interpret the script.
2. Conditions: learnt how to compare the conditions for number and file, when to use [], how to intergrate commands in condition. (Made mistakes in not closing the condition using `fi`).
3. Blackhole: redirected output of a command to `/dev/null` through which the commands's output is not visible on the window.


