# Day 16 – Shell Scripting Basics

## Task 1: Your First Script
1. Created a file `hello.sh`
2. Added the shebang line `#!/bin/bash` at the top
3. Printed `Hello, DevOps!` using `echo`
4. Made it executable and ran it using `chmod +x hello.sh` `./hello.sh`.

![hello-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/hello-image.png)

- [hello script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/hello.sh)

Observation:
- Shebang tells the system which interpreter to use
- If we do not include shebang line `#!bin/bash` it will use the dafault interpreter which is usually `#!/bin/sh`

## Task 2: Variables
1. Created `variables.sh` with:
   - A variable for your `NAME`
   - A variable for your `ROLE` (e.g., "DevOps Engineer")
   - Printed: `Hello, I am <NAME> and I am a <ROLE>`
2. Try using single quotes vs double quotes — what's the difference?
   - when using double quote script can detect the variable and print it
   - but then using single quote script cannot detect the variable and print as it is.

![variable-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/variable-image.png)

- [variable script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/variable.sh)

## Task 3: User Input with read
1. Create `greet.sh` that:
   - Asks the user for their name using `read`
   - Asks for their favourite tool
   - Prints: `Hello <name>, your favourite tool is <tool>`

![greet-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/greet-image.png)

- [greet script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/greet.sh)

### Task 4: If-Else Conditions
1. Created `check_number.sh` that:
   - Takes a number using `read`
   - Prints whether it is **positive**, **negative**, or **zero**

![number-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/number-image.png)

- [check_number script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/check_number.sh)

2. Created `file_check.sh` that:
   - Asks for a filename
   - Checks if the file **exists** using `-f`
   - Prints appropriate message

![file-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/flie-image.png)

- [file_check script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/file_check.sh)

## Task 5: Combine It All
Created `server_check.sh` that:
1. Stores a service name in a variable (e.g., `nginx`, `sshd`)
2. Asks the user: "Do you want to check the status? (y/n)"
3. If `y` — runs `systemctl status <service>` and prints whether it's **active** or **not**
4. If `n` — prints "Skipped."

![server-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/server-image.png)

- [server_check script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-16/Files/server_check.sh)

## What I Learnt:
- Importance of Shebang: Shebang is important to let the system know how it should interpret the script
- How to use variable: made a lot of mistake and learned, how to properly call a variable, how to use a variable in a script.
- Conditions: learnt how to compare t conditions for number and file, when to use [], how to intergrate commands in condition.
- Blackhole: redirected output of a command to `/dev/null` through which the commands's output is not visible on the window.
