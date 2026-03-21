# Day 17 – Shell Scripting: Loops, Arguments & Error Handling

## Task 1: For Loop
1. Created `for_loop.sh` that:
   - Loops through a list of 5 fruits and prints each one

[for_loop script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/for_loop.sh)

![for_loop-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/for_loop.png)

2. Created `count.sh` that:
   - Prints numbers 1 to 10 using a for loop
     
[count script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/count.sh)

![count-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/count.png)

## Task 2: While Loop
1. Create `countdown.sh` that:
   - Takes a number from the user
   - Counts down to 0 using a while loop
   - Prints "Done!" at the end
     
[countdown script using while](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/countdown.sh)

![countdown-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/countdown.png)
  
## Task 3: Command-Line Arguments
1. Created `greet.sh` that:
   - Accepts a name as `$1`
   - Prints `Hello, <name>!`
   - If no argument is passed, prints "Usage: ./greet.sh <name>"

[greet script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/greet.sh)

![greet-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/greet-image.png)
     
2. Created `args_demo.sh` that:
   - Prints total number of arguments (`$#`)
   - Prints all arguments (`$@`)
   - Prints the script name (`$0`)

[args-demo script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/args_demo.sh)

![args_demo-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/args_demo-image.png)

## Task 4: Install Packages via Script
1. Create `install_packages.sh` that:
   - Defines a list of packages: `nginx`, `curl`, `wget`
   - Loops through the list
   - Checks if each package is installed (use `dpkg -s` or `rpm -q`)
   - Installs it if missing, skips if already present
   - Prints status for each package

[install-package script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/install_packages.sh)

![package-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/package-image.png)

### Task 5: Error Handling
1. Create `safe_script.sh` that:
   - Uses `set -e` at the top (exit on error)
   - Tries to create a directory `/tmp/devops-test`
   - Tries to navigate into it
   - Creates a file inside
   - Uses `||` operator to print an error if any step fails

Example:
```bash
mkdir /tmp/devops-test || echo "Directory already exists"
```

[safe-script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/safe_script.sh)

![safe-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/safe-image.png)

2. Modify your `install_packages.sh` to check if the script is being run as root — exit with a message if not.

[modified-package-install script](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/mod_install_packages.sh)

![modified_package-image](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-17/Files/modified_package-image.png)

> Run as root: `sudo -i` or `sudo su`

## What I Learned:
- how to loop over a range of items in a script using `for` and `while` loop.
- how to take user input using `read`.
- how to write multiline comment using  `<<usage ... usage`.
- how to use command line arguments and handle error if no argument is passed
- Automated package installtion using script.
- how to handl error using `set -e` and giving a fallback message.
- Integrating conditions and loops to make a logic that helps automate task using script.
