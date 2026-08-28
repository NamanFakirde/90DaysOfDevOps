# Day 02 – Linux Architecture, Processes, and systemd

## 1. What is Linux?
- Linux is a open source operating system which was developed in 1991 by **Linus Torvalds**. Linux is popular because it doesn't requires any antivirus and unnecessary updates in between any process.
- 90% of the users uses windows operating system but 90% of the applications are built and runs on linux.

## 2. Linux Architecture
The linux architecture has different layers which helps user to interact with the hardware through applications or shell.
![Linux Architecture](https://github.com/NamanFakirde/90DaysOfDevOps/blob/master/2026/day-02/images/linux-architecture-image.png)

1. **Hardware**: A physical computer component (CPU, RAM, ROM, etc).
2. **Kernel**: It is a heart of the linux operating system, it has a computer program which understands the machine language.
3. **Shell**: A interactive terminal through which the user interact with the kernel.
4. **Application**: It is software with which the user interacts. 

## 3. Process systemd
The sequence of events that occurs when a linux system is powered on -
1. **Power on**: The system receives a power.
2. **BOIS**: A motherboard which loads the hardware once the system is powered on.
3. **GNU GRUB**: A bootloader which loads the kernel from memory.
4. **OS loading**: Once the kernel is loaded we see a OS loading on screen (ubuntu loading..).
5. **init/systemd process**: A very first process started by the kernel which has Process ID-1 (PID 1) always and then all other process/services is started.

## 4. Process State
1. Running: Actively using the CPU or waiting for a turn.
2. Sleeping: Waiting for an event, can be interrupted.
3. Killed: Paused manually by the user or by a debugger.
4. Zombie: Occurs when a process has finished its execution but its entry still remains in the Process Table.

## 5. Commonly used commands
### Navigation & File management
1. `cd`: change the working directory.
2. `ls`: list the files and directories.
3. `touch <file-name.txt>`: create an empty file.
4. `mkdir <folder-name>`: create an folder/directory.
5. `cp`: copy the file or directory from one place to another.
6. `mv`: move file or directory from one place to another, it is also used to rename a file/directory.

### Networking
1. `ip addr`: shows the IP address configurations of a host.
2. `ping <website-url>`: network diagnostic command which used to test reachability of the host to the internet.

### System info
1. `df -h`: shows available and used disk space in humanly readable format such as gigabytes or megabytes.
2. `free -h`: shows available and used memory of a system in a humanly readable format.
