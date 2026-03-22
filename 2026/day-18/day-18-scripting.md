# Day 18 – Shell Scripting: Functions & intermediate Concepts

## Task 1: Basic Functions
1. Created `functions.sh` with:
   - A function `greet` that takes a name as argument and prints `Hello, <name>!`
   - A function `add` that takes two numbers and prints their sum
   - Call both functions from the script

[function script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/function.sh)

![function-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/function-image.png)

---

## Task 2: Functions with Return Values
1. Created `disk_check.sh` with:
   - A function `check_disk` that checks disk usage of `/` using `df -h`
   - A function `check_memory` that checks free memory using `free -h`
   - A main section that calls both and prints the results

[disk_check script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/disk_check.sh)

![disk_check-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/disk_check-image.png)

---

## Task 3: Strict Mode — `set -euo pipefail`
1. Created `strict_demo.sh` with `set -euo pipefail` at the top
2. Tred using an **undefined variable** — what happens with `set -u`?
3. Tried a command that **fails** — what happens with `set -e`?
4. Tried a **piped command** where one part fails — what happens with `set -o pipefail`?

**Document:** What does each flag do?
- `set -e` → Stops the script if any command fails.
- `set -u` → Stops the script if any theres any undefined variable.
- `set -o pipefail` → Ensure whole pipeline fails if any part of command fails.

[strict-_mode script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/strict_demo.sh)

![strict-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/system-image.png)

---

## Task 4: Local Variables
1. Create `local_demo.sh` with:
   - A function that uses `local` keyword for variables
   - Show that `local` variables don't leak outside the function
   - Compare with a function that uses regular variables
Key takeway:
- When a variable is defined as local inside a function it is only applicable for the function.
- Outisde the function the global variable is accessed.
- No local variable is accessiable outside the function.
 
[local_demo script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/local_demo.sh)

![local-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/strict-image.png)

---

## Task 5: Build a Script — System Info Reporter
Create `system_info.sh` that uses functions for everything:
1. A function to print **hostname and OS info**
2. A function to print **uptime**
3. A function to print **disk usage** (top 5 by size)
4. A function to print **memory usage**
5. A function to print **top 5 CPU-consuming processes**
6. A `main` function that calls all of the above with section headers
7. Use `set -euo pipefail` at the top

Output should look clean and readable.
 
[system_info script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/system_info.sh)

![system-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-18/Files/system-image.png)

## What I learned:
- To create a function and use it as many time we want which makes it reuable and clean block of code.
- Using a main function which makes the script automation friendly and modular.
- Creating logic to check the system health such as disk usage, cpu usage and memory usage which help in quick system health checks.
- Understood the difference between LOCAL and GLOBAL variables.
- How to handle different type of errors using `set -euo pipefail` to catch undefined variable, failing command and pipeline failures.
