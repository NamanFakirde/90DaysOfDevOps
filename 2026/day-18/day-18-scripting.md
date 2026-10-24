# Day 18 – Shell Scripting: Functions & intermediate Concepts


### Task 1: Basic Functions
1. Created `functions.sh` with:
   - A function `greet` that takes a name as argument and prints `Hello, <name>!`
   - A function `add` that takes two numbers and prints their sum
   - Call both functions from the script

[functions_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Scripts/functions.sh)

![functions_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Images/function_image.png)

---

### Task 2: Functions with Return Values
1. Created `disk_check.sh` with:
   - A function `check_disk` that checks disk usage of `/` using `df -h`
   - A function `check_memory` that checks free memory using `free -h`
   - A main section that calls both and prints the results

[disk_check_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Scripts/disk_check.sh)

![disk_check_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Images/disk_check_image.png)

---

### Task 3: Strict Mode — `set -euo pipefail`
1. Created `strict_demo.sh` with `set -euo pipefail` at the top
2. Try using an **undefined variable** — what happens with `set -u`?
3. Try a command that **fails** — what happens with `set -e`?
4. Try a **piped command** where one part fails — what happens with `set -o pipefail`?

**Document:** What does each flag do?
- `set -e` → Exit the script immediately if any command fails.
- `set -u` → Exit the script if an undefined (unset) variable is used.
- `set -o pipefail` → Pipeline fails if any command fails.

[strict_demo_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Scripts/strict_demo.sh)

![strict_demo_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Images/strict_demo_image.png)

---

### Task 4: Local Variables
1. Created `local_demo.sh` with:
   - A function that uses `local` keyword for variables
   - Show that `local` variables don't leak outside the function
   - Compare with a function that uses regular variables

[local_demo_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Scripts/local_demo.sh)

![local_demo_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Images/local_demo_image.png)

---

### Task 5: Build a Script — System Info Reporter
Created `system_info.sh` that uses functions for everything:
1. A function to print **hostname and OS info**
2. A function to print **uptime**
3. A function to print **disk usage** (top 5 by size)
4. A function to print **memory usage**
5. A function to print **top 5 CPU-consuming processes**
6. A `main` function that calls all of the above with section headers
7. Uses `set -euo pipefail` at the top

[system_info_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Scripts/system_info.sh)

![system_info_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-18/Images/system_info_image.png)


## What I learned:
1.  How to handle different type of errors using `set -euo pipefail` to catch undefined variable, failing command and pipeline failures.
2.  Understood the difference between LOCAL and GLOBAL variables.
3. Using a main function which makes the script automation friendly and modular.
4. To create a function and use it as many time we want which makes it reuable and clean block of code.