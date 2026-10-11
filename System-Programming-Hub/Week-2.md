# Week 2: Basic Linux Commands and Process Management — Study Guide

## 1. Systemd Services & `systemctl` Commands

* **What is a process?** The Linux operating system calls a running program a process, which can run in the foreground or background under kernel management[cite: 1].
* **What is the init process?** The kernel creates the first process, called the init process (`systemd`), to start all other processes[cite: 1].
* **What is `systemctl`?** The main command used to manage `systemd` services and system state[cite: 1].

| Command | Stands For / Action | Purpose of Usage |
| :--- | :--- | :--- |
| `systemctl list-units --type=service` | List Units (Service Type) | Shows all active systemd service units[cite: 1]. |
| `systemctl --failed` | List Failed Units | Displays any services or units that have failed to start[cite: 1]. |
| `sudo systemctl start «service»` | Start Service | Starts a specific service immediately[cite: 1]. |
| `sudo systemctl stop «service»` | Stop Service | Stops a running service[cite: 1]. |
| `sudo systemctl restart «service»` | Restart Service | Restarts a service[cite: 1]. |
| `sudo systemctl reload «service»` | Reload Service Configuration | Reloads service configuration files without stopping the service[cite: 1]. |
| `systemctl status «service»` | Service Status | Checks the current operational status of a service[cite: 1]. |
| `systemctl is-active «service»` | Is Active? | Checks if a service is currently running[cite: 1]. |
| `systemctl is-enabled «service»` | Is Enabled? | Checks if a service is configured to start automatically at boot[cite: 1]. |
| `sudo systemctl enable «service»` | Enable Service | Configures a service to start automatically at system boot[cite: 1]. |
| `sudo systemctl disable «service»` | Disable Service | Prevents a service from starting automatically at boot[cite: 1]. |
| `sudo systemctl enable --now «service»` | Enable and Start Now | Enables a service at boot and starts it immediately[cite: 1]. |
| `sudo systemctl mask «service»` | Mask Service | Completely blocks a service from being started (stronger than disable)[cite: 1]. |
| `sudo systemctl unmask «service»` | Unmask Service | Unblocks a previously masked service[cite: 1]. |
| `systemctl list-dependencies «service»` | List Dependencies | Shows dependencies required by a service[cite: 1]. |
| `systemctl cat «service»` | Cat Unit File | Displays the configuration unit file of a service[cite: 1]. |
| `sudo systemctl edit «service»` | Edit Unit File | Creates an override configuration file for a service[cite: 1]. |
| `sudo systemctl daemon-reload` | Daemon Reload | Reloads the systemd manager configuration after making changes to unit files[cite: 1]. |
| `journalctl -u «service»` | Journal Control Logs | Views log entries related to a specific service[cite: 1]. |
| `journalctl -u «service» -f` | Journal Control Follow | Follows and displays service logs live in real-time[cite: 1]. |
| `sudo systemctl poweroff` | Power Off System | Shuts down the system[cite: 1]. |
| `sudo systemctl reboot` | Reboot System | Reboots the system[cite: 1]. |
| `systemctl get-default` | Get Default Target | Displays the default boot target state[cite: 1]. |
| `systemctl set-default «target»` | Set Default Target | Changes the default boot target state[cite: 1]. |

---

## 2. Terminal Types: TTY vs. PTY

* **Virtual Console (TTY):** A terminal session running directly in system memory, independent of the graphical desktop, created by the Linux Kernel (accessed via `Ctrl + Alt + F1` through `F6`, used for recovery and server maintenance)[cite: 1].
* **Terminal Emulator (PTS / Pseudo Terminal Slave):** A software program that emulates a terminal inside the graphical desktop environment for daily command-line work[cite: 1].

| Command / Feature | TTY (Virtual Console) | PTY (Terminal Emulator) |
| :--- | :--- | :--- |
| **Created by** | Linux Kernel[cite: 1] | Terminal Emulator Software[cite: 1] |
| **Desktop Independent** | Yes[cite: 1] | No[cite: 1] |
| **Primary Use** | Recovery, server maintenance, login[cite: 1] | Daily command-line work inside GUI[cite: 1] |

---

## 3. Shell, User Management, and Environment Commands

* **Environment Variables:** Control how the shell and programs behave (e.g., `$SHELL`, `$PATH`, `$HOME`, `$USER`, `$LANG`)[cite: 1].

| Command | Stands For / Meaning | Purpose of Usage |
| :--- | :--- | :--- |
| `echo $SHELL` | Echo Shell | Displays the path of your current shell[cite: 1]. |
| `echo $PATH` | Echo Path | Displays directories searched for executable commands[cite: 1]. |
| `whoami` | Who am I? | Shows your current username[cite: 1]. |
| `who` | Who is logged in? | Shows currently logged-in users and sessions[cite: 1]. |
| `w` | Who + What are they doing? | Shows logged-in users, active processes, and system load[cite: 1]. |
| `id` | Identity | Displays user ID (UID), primary group ID (GID), and supplementary group memberships[cite: 1]. |
| `hostname` | Host Name | Displays the system's computer name[cite: 1]. |
| `pwd` | Print Working Directory | Displays the absolute path of the current directory[cite: 1]. |
| `lslogins` | List Logins | Displays detailed summary information about all system user accounts[cite: 1]. |
| `sudo su` | Super User / Switch User | Temporarily switches to the root administrator session[cite: 1]. |
| `su - [username]` | Switch User | Switches to another specified user account[cite: 1]. |

---

## 4. Navigation, Filesystem, and Text Viewing Commands

* **Absolute Path:** Full path starting from the root directory `/` (e.g., `/home/osman/data`)[cite: 1].
* **Relative Path:** Path relative to your current working directory (e.g., `./data` or `../var`)[cite: 1].
* **Hard Link:** Shares the exact same inode as the original file; if the original is deleted, data remains accessible through the link[cite: 1].
* **Symbolic Link (Symlink):** A shortcut pointer to the original file path; if the original file is deleted, the symlink breaks[cite: 1].

| Command | Stands For / Meaning | Purpose of Usage |
| :--- | :--- | :--- |
| `cd [path]` | Change Directory | Navigates to a specified directory[cite: 1]. |
| `cd -` | Change Directory (Previous) | Returns immediately to the previous working directory[cite: 1]. |
| `pwd` | Print Working Directory | Shows the current directory path[cite: 1]. |
| `mkdir [dir]` | Make Directory | Creates new directories (`-p` creates parent structures recursively)[cite: 1]. |
| `touch [file]` | Touch | Creates empty files or updates file timestamps[cite: 1]. |
| `cp [src] [dest]` | Copy | Copies files and directories (`-r` for recursive)[cite: 1]. |
| `mv [src] [dest]` | Move / Rename | Moves or renames files and directories[cite: 1]. |
| `rm [file]` | Remove | Deletes files (`-rf` recursively and forcibly directories)[cite: 1]. |
| `head [file]` | Head | Displays the first few lines of a file (default 10 lines, `-n` specifies count)[cite: 1]. |
| `tail [file]` | Tail | Displays the last few lines of a file (`-f` follows logs live in real-time)[cite: 1]. |
| `cat [file]` | Concatenate | Displays the entire content of a file to the terminal[cite: 1]. |
| `file [file]` | File Type | Determines and displays the internal data type of a file[cite: 1]. |
| `ln [target] [link]` | Link | Creates a hard link to a file[cite: 1]. |
| `ln -s [target] [link]` | Link Symbolic | Creates a symbolic (soft) link to a file or directory[cite: 1]. |

---

## 5. System Information, History, and Manual Pages

| Command | Stands For / Meaning | Purpose of Usage |
| :--- | :--- | :--- |
| `history` | Command History | Displays the list of previously executed terminal commands[cite: 1]. |
| `!!` | Repeat Last Command | Re-runs the immediately preceding command[cite: 1]. |
| `uname` | Unix Name | Displays basic system and kernel information (`-a` for all details)[cite: 1]. |
| `arch` | Architecture | Displays machine hardware architecture (e.g., `x86_64`)[cite: 1]. |
| `lsb_release -a` | Linux Standard Base Release | Displays distribution-specific version details and codenames[cite: 1]. |
| `lshw` | List Hardware | Displays detailed configuration of system hardware components[cite: 1]. |
| `man [command]` | Manual | Opens the comprehensive manual documentation page for a command[cite: 1]. |

---

## 6. Quick Keyboard Shortcuts Reference

* **`Ctrl + Alt + T`**: Opens a new terminal window[cite: 1].
* **`Ctrl + a`**: Moves cursor to the beginning of the command line[cite: 1].
* **`Ctrl + e`**: Moves cursor to the end of the command line[cite: 1].
* **`Ctrl + k`**: Deletes text from the cursor position to the end of the line[cite: 1].
* **`Ctrl + u`**: Deletes everything before the cursor on the line[cite: 1].
* **`Ctrl + C`**: Terminates or stops the currently running foreground process[cite: 1].
