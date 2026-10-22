# Day 17 – Shell Scripting: Loops, Arguments & Error Handling


### Task 1: For Loop
1. Created `for_loop.sh` that:
   - Loops through a list of 5 fruits and prints each one

[for_loop_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Scripts/for_loop.sh)

![for_loop_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Images/for_loop_image.png)

2. Created `count.sh` that:
   - Prints numbers 1 to 10 using a for loop

[count-script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Scripts/count.sh)

![count-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Images/count_image.png)

---

### Task 2: While Loop
1. Created `countdown.sh` that:
   - Takes a number from the user
   - Counts down to 0 using a while loop
   - Prints "Done!" at the end

[while_loop_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Scripts/countdown.sh)

![while_loop_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Images/while_loop_image.png)

---

### Task 3: Command-Line Arguments
1. Created `greet.sh` that:
   - Accepts a name as `$1`
   - Prints `Hello, <name>!`
   - If no argument is passed, prints "Usage: ./greet.sh <name>"

[greet_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Scripts/greet.sh)

![greet_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Images/greet_image.png)

2. Created `args_demo.sh` that:
   - Prints total number of arguments (`$#`)
   - Prints all arguments (`$@`)
   - Prints the script name (`$0`)

[args_demo_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Scripts/args_demo.sh)

![args_demo_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Images/args_demo_image.png)

---

### Task 4: Install Packages via Script
1. Created `install_packages.sh` that:
   - Defines a list of packages: `nginx`, `curl`, `wget`
   - Loops through the list
   - Checks if each package is installed (use `dpkg -s` or `rpm -q`)
   - Installs it if missing, skips if already present
   - Prints status for each package

> Run as root: `sudo -i` or `sudo su`

[install_package_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Scripts/install_packages.sh)

![install_package_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Images/install_package_image.png)

---

### Task 5: Error Handling
1. Created `safe_script.sh` that:
   - Uses `set -e` at the top (exit on error)
   - Tries to create a directory `/tmp/devops-test`
   - Tries to navigate into it
   - Creates a file inside
   - Uses `||` operator to print an error if any step fails

Example:
```bash
mkdir /tmp/devops-test || echo "Directory already exists"
```

[error_handling_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Scripts/safe_scripts.sh)

![error_handling_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Images/error_handling_image.png)

2. Modified `install_packages.sh` to check if the script is being run as root — exit with a message if not.

[mod_install_package_script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Scripts/mod_install_packages.sh)

![mod_install_package_image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/main/2026/day-17/Images/mod_install_package_image.png)

---

## What I learned:
1. **Loops and user input**: how to take input from user and loop over a list of item using `for` and `while` loop.
2. **Arguments**: Learned how we can print number of arguments and give command line arguments.
3. **Error handling**: exit on error in a script using `set -e`, also give a Fall-back Message` in error.
4. **Integration**: Integrating loops and conditions to make a logic that helps automate tasks.
5. **-z and $EUID**: 
      - `-z` is a linux inbuilt flag that checks zero length of a string.
      - `$EUID` stands for Effective User ID which is `0` for superuser (root user). 