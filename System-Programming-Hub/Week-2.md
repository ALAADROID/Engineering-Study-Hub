
# Basic Linux Commands and Process Management — Week 2 Review

| Command | Stands for | Purpose / Usage | Example |
|---|---|---|---|
| `pwd` | Print Working Directory | Displays the current directory. | `pwd` |
| `ls` | List | Lists files and directories. | `ls -la` |
| `cd` | Change Directory | Changes the current directory. | `cd /home` |
| `mkdir` | Make Directory | Creates a directory. | `mkdir test` |
| `touch` | Not an acronym | Creates an empty file or updates its timestamp. | `touch file.txt` |
| `cat` | Concatenate | Displays or combines file contents. | `cat file.txt` |
| `cp` | Copy | Copies files or directories. | `cp a.txt b.txt` |
| `mv` | Move | Moves or renames files and directories. | `mv a.txt b.txt` |
| `rm` | Remove | Deletes files. | `rm file.txt` |
| `rmdir` | Remove Directory | Deletes an empty directory. | `rmdir test` |
| `head` | Not an acronym | Displays the first 10 lines by default. | `head -n 5 file.txt` |
| `tail` | Not an acronym | Displays the last 10 lines by default. | `tail -n 5 file.txt` |
| `echo` | Not an acronym | Prints text or variable values. | `echo $SHELL` |
| `whoami` | Who Am I? | Displays the current username. | `whoami` |
| `id` | Identity | Displays user and group IDs. | `id` |
| `hostname` | Host Name | Displays the computer's hostname. | `hostname` |
| `ps` | Process Status | Displays a snapshot of processes. | `ps -f` |
| `top` | Not an acronym | Monitors running processes interactively. | `top` |
| `kill` | Not an acronym | Sends a signal to a process. | `kill 1234` |
| `systemctl` | System Control | Manages systemd services and units. | `systemctl status ssh` |
| `tty` | Teletypewriter | Displays the current terminal device. | `tty` |
| `uname` | Unix Name | Displays system and kernel information. | `uname -a` |
| `arch` | Architecture | Displays the machine architecture. | `arch` |
| `lsb_release` | Linux Standard Base Release | Displays Linux distribution information. | `lsb_release -a` |
| `sudo` | Superuser Do | Runs a command with elevated privileges. | `sudo apt update` |
| `su` | Substitute User | Switches to another user or root. | `sudo su` |
| `man` | Manual | Opens a command's manual page. | `man ls` |
| `history` | Not an acronym | Displays command history. | `history 10` |
| `nano` | Not an acronym | Opens a terminal text editor. | `nano file.txt` |
| `env` | Environment | Displays environment variables. | `env` |
| `file` | Not an acronym | Identifies a file's type. | `file file.txt` |
| `ln` | Link | Creates hard or symbolic links. | `ln -s file.txt link.txt` |
| `chmod` | Change Mode | Changes file permissions. | `chmod 755 script.sh` |
| `grep` | Global Regular Expression Print | Searches text for matching patterns. | `grep "error" file.txt` |

## Important Options and Symbols

| Option / Symbol | Meaning | Example |
|---|---|---|
| `-a` | Include hidden entries with `ls` | `ls -a` |
| `-l` | Long listing format | `ls -l` |
| `-r` | Recursive operation for commands such as `cp` | `cp -r dir1 dir2` |
| `-p` | Select a PID with `ps -p` | `ps -p 1` |
| `-f` | Full-format listing with `ps -f` | `ps -f` |
| `-n` | Specify the number of lines | `head -n 3 file.txt` |
| `*` | Matches zero or more characters | `ls *.txt` |
| `?` | Matches exactly one character | `ls file?.txt` |
| `>` | Redirects output, replacing the destination file's contents | `echo Hello > file.txt` |
| `\|` | Sends one command's output to another | `who \| sort` |
| `$VAR` | Accesses a shell variable's value | `echo $HOME` |
| `~` | Home directory | `cd ~` |
| `.` | Current directory | `cd .` |
| `..` | Parent directory | `cd ..` |
| `cd -` | Returns to the previous working directory | `cd -` |

## Process and System Information

| Command | Purpose | Example |
|---|---|---|
| `ps -p 1 -o comm=` | Displays the command name of PID 1 | `ps -p 1 -o comm=` |
| `ps --forest` | Displays process hierarchy | `ps --forest` |
| `cat /etc/os-release` | Displays OS identification details | `cat /etc/os-release` |
| `sudo lshw -short` | Displays a concise hardware overview | `sudo lshw -short` |
| `tty` | Identifies the current terminal device | `tty` |
| `systemctl start SERVICE` | Starts a service now | `sudo systemctl start ssh` |
| `systemctl stop SERVICE` | Stops a service now | `sudo systemctl stop ssh` |
| `systemctl status SERVICE` | Displays service status | `systemctl status ssh` |
| `systemctl enable SERVICE` | Enables automatic startup at boot | `sudo systemctl enable ssh` |




# Notebook: 


## 1. Systemd Services & `systemctl` Commands

* **What is a process?** The Linux operating system calls a running program a process, which can run in the foreground or background under kernel management[cite: 1].
* **What is the init process?** The kernel creates the first process, called the init process (`systemd`), to start all other processes[cite: 1].
* **What is `systemctl`?** The main command used to manage `systemd` services and system state[cite: 1].


---

## 2. Terminal Types: TTY vs. PTY

* **Virtual Console (TTY):** A terminal session running directly in system memory, independent of the graphical desktop, created by the Linux Kernel (accessed via `Ctrl + Alt + F1` through `F6`, used for recovery and server maintenance)[cite: 1].
* **Terminal Emulator (PTS / Pseudo Terminal Slave):** A software program that emulates a terminal inside the graphical desktop environment for daily command-line work[cite: 1].

| Command / Feature | TTY (Virtual Console) | PTY (Terminal Emulator) |
| :--- | :--- | :--- |
| **Created by** | Linux Kernel | Terminal Emulator Software|
| **Desktop Independent** | Yes | No |
| **Primary Use** | Recovery, server maintenance, login | Daily command-line work inside GUI |

---

## 4. Navigation, Filesystem, and Text Viewing Commands

* **Absolute Path:** Full path starting from the root directory `/` (e.g., `/home/osman/data`)[cite: 1].
* **Relative Path:** Path relative to your current working directory (e.g., `./data` or `../var`)[cite: 1].
* **Hard Link:** Shares the exact same inode as the original file; if the original is deleted, data remains accessible through the link[cite: 1].
* **Symbolic Link (Symlink):** A shortcut pointer to the original file path; if the original file is deleted, the symlink breaks[cite: 1].

---


