# SYSTEM PROGRAMMING — MOCK MIDTERM ANSWER KEY

## PART 1 — LINUX PERMISSIONS (WEEK 3)

### Question 1 — Convert Numeric to Symbolic

| Numeric | Symbolic |
|---|---|
| 755 | `rwxr-xr-x` |
| 644 | `rw-r--r--` |
| 700 | `rwx------` |
| 750 | `rwxr-x---` |
| 777 | `rwxrwxrwx` |
| 640 | `rw-r-----` |
| 421 | `r---w---x` |
| 600 | `rw-------` |

### Question 2 — Convert Symbolic to Numeric

| Symbolic | Numeric |
|---|---|
| `rwxr-xr-x` | 755 |
| `rw-r--r--` | 644 |
| `rwx------` | 700 |
| `rwxr-----` | 740 |
| `rw-r-----` | 640 |
| `rwxrwxrwx` | 777 |

### Question 3 — Understand chmod

Command:
```bash
chmod u=rwx,g=r,o= file.txt
```

1. Owner receives: Read, write, execute (`rwx`).
2. Group receives: Read (`r--`).
3. Others receive: No permissions (`---`).
4. `=` means assign permissions exactly as specified.
5. It sets permissions exactly, replacing the previous permissions for those categories.

### Question 4 — Complete the Commands

```bash
# Give the owner execute permission
chmod u+x file.txt

# Remove write permission from the group
chmod g-w file.txt

# Give everyone read permission
chmod a+r file.txt

# Set owner = rwx, group = r-x, others = ---
chmod u=rwx,g=rx,o= file.txt
```

### Question 5 — Understand ls -l

Given:
```text
-rwxr-xr-- 1 student users 1200 file.txt
```

1. File type: Regular file (`-`).
2. Owner permissions: `rwx`.
3. Group permissions: `r-x`.
4. Others' permissions: `r--`.
5. Owner name: `student`.
6. Group name: `users`.

### Question 6 — Package Management

1. `sudo apt update`: Updates the package lists from software repositories.
2. `sudo apt upgrade`: Installs available upgrades for installed packages.
3. `sudo apt remove`: Removes a package but generally keeps its configuration files.
4. `sudo apt purge`: Removes a package and its system configuration files.
5. `sudo apt autoremove`: Removes automatically installed packages that are no longer needed.

Update package information and then upgrade installed packages:

```bash
sudo apt update
sudo apt upgrade
```

---

## PART 2 — BASH CONDITIONS AND LOOPS (WEEK 4)

### Question 7 — Complete the if Statement

```bash
#!/bin/bash

read -p "Enter your age: " age

if [ "$age" -ge 18 ]; then
    echo "Adult"
else
    echo "Minor"
fi
```

### Question 8 — Numeric Comparison

| Operator | Meaning |
|---|---|
| `-eq` | Equal |
| `-ne` | Not equal |
| `-gt` | Greater than |
| `-ge` | Greater than or equal |
| `-lt` | Less than |
| `-le` | Less than or equal |

### Question 9 — Find the Errors

Correct script:

```bash
#!/bin/bash

read -p "Enter a number: " number

if [ "$number" -gt 10 ]; then
    echo "Greater than 10"
else
    echo "10 or less"
fi
```

The correction is adding spaces after `[` and before `]`.

### Question 10 — File Testing

```bash
# Check whether a regular file exists
if [ -f "data.txt" ]; then
    echo "Regular file exists"
fi

# Check whether a directory exists
if [ -d "backup" ]; then
    echo "Directory exists"
fi

# Check whether a file is readable
if [ -r "data.txt" ]; then
    echo "File is readable"
fi
```

### Question 11 — Case Statement

```bash
#!/bin/bash

read -p "Enter your choice (1-3): " choice

case "$choice" in
    1)
        echo "Start"
        ;;
    2)
        echo "Settings"
        ;;
    3)
        echo "Exit"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
```

### Question 12 — For Loop

```bash
#!/bin/bash

for i in {1..10}; do
    echo "$i"
done
```

### Question 13 — While Loop

```bash
#!/bin/bash

i=1

while [ "$i" -le 5 ]; do
    echo "$i"
    ((i++))
done
```

### Question 14 — Until Loop

```bash
#!/bin/bash

i=1

until [ "$i" -gt 5 ]; do
    echo "$i"
    ((i++))
done
```

### Question 15 — break and continue

- `break`: Immediately exits the current loop.
- `continue`: Skips the remaining commands in the current iteration and starts the next iteration.
- `break 2`: Exits two nested loops.

### Question 16 — Predict the Output

Output:
```text
1
2
4
5
```

Explanation: When `i` equals 3, `continue` skips the `echo` command.

### Question 17 — Even and Odd Numbers

```bash
#!/bin/bash

read -p "Enter a number: " number

if (( number % 2 == 0 )); then
    echo "Even"
else
    echo "Odd"
fi
```

### Question 18 — Nested Loops

Output:
```text
1 1
1 2
1 3
2 1
```

Explanation: When `a` and `b` both equal 2, `break 2` exits both loops immediately.

---

## PART 3 — USER INPUT AND REDIRECTION (WEEK 4)

### Question 19 — Special Parameters

| Parameter | Meaning |
|---|---|
| `$0` | Name or path used to execute the script |
| `$1` | First command-line argument |
| `$2` | Second command-line argument |
| `$#` | Number of command-line arguments |
| `$@` | All command-line arguments as separate words |
| `$*` | All command-line arguments; when quoted, expands as one word |
| `$?` | Exit status of the last executed command |
| `$$` | Process ID (PID) of the current shell |

### Question 20 — Predict the Values

Command:
```bash
./backup.sh file1.txt file2.txt file3.txt
```

Answers:

1. `$0` = `./backup.sh`
2. `$1` = `file1.txt`
3. `$2` = `file2.txt`
4. `$3` = `file3.txt`
5. `$#` = `3`

### Question 21 — Standard Streams

| Stream | Full name | File Descriptor | Default |
|---|---|---|---|
| stdin | Standard Input | 0 | Keyboard |
| stdout | Standard Output | 1 | Terminal |
| stderr | Standard Error | 2 | Terminal |

### Question 22 — Redirection Operators

**1.**
```bash
ls > filelist.txt
```
Redirects standard output into `filelist.txt`. Overwrites existing content.

**2.**
```bash
ls >> filelist.txt
```
Appends standard output to `filelist.txt` without deleting existing content.

**3.**
```bash
ls /does/not/exist 2> errors.txt
```
Redirects standard error into `errors.txt`.

**4.**
```bash
ls /etc/passwd /does/not/exist > combined.txt 2>&1
```
Redirects both standard output and standard error into `combined.txt`.

**5.**
```bash
sort < names.txt
```
Uses `names.txt` as standard input for the `sort` command.

### Question 23 — Write the Correct Redirection

1. Save standard output, overwriting existing content:
```bash
command > output.txt
```

2. Append standard output:
```bash
command >> output.txt
```

3. Save standard error:
```bash
command 2> errors.txt
```

4. Save both standard output and standard error:
```bash
command > combined.txt 2>&1
```

5. Read input from a file:
```bash
command < input.txt
```

### Question 24 — Difference Between Redirection and Pipes

**Redirection:**
```bash
command > output.txt
```
Sends command output into a file instead of the terminal.

**Pipe:**
```bash
command1 | command2
```
Sends the standard output of `command1` to the standard input of `command2`.

Main difference:
- Redirection connects commands to files or other streams.
- A pipe connects the output of one command to another command.

### Question 25 — Predict the Output Destination

Command:
```bash
ls /etc/passwd /does/not/exist > result.txt 2>&1
```

1. Standard output goes to `result.txt`.
2. Standard error also goes to `result.txt`.
3. The redirected output is not displayed in the terminal.
4. `2>&1` redirects file descriptor 2 (stderr) to the current destination of file descriptor 1 (stdout).

---

## PART 4 — FUNCTIONS, SIGNALS AND JOB CONTROL (WEEK 5)

### Question 26 — Function Completion

```bash
#!/bin/bash

check_input() {

    if [ "$#" -eq 1 ]; then
        echo "Success"
        return 0
    else
        echo "Error: Requires exactly one argument."
        return 1
    fi
}

check_input "test"
echo $?
```

### Question 27 — Function Calls and Exit Status

Completed script:

```bash
#!/bin/bash

check_input() {
    if [ "$#" -eq 1 ]; then
        return 0
    else
        return 1
    fi
}

check_input "test"
STATUS_1=$?
echo "Exit Status: $STATUS_1"

check_input "one" "two"
STATUS_2=$?
echo "Exit Status: $STATUS_2"

check_input
STATUS_3=$?
echo "Exit Status: $STATUS_3"
```

The three exit status values:

```text
Exit Status: 0
Exit Status: 1
Exit Status: 1
```

### Question 28 — Local vs. Global Variables

- Global variable: Can be accessed throughout the script, including inside functions.
- Local variable: Exists only within the function where it is declared.

Completed script:

```bash
#!/bin/bash

name="Student"

my_function() {
    local age=20
    echo "$name"
    echo "$age"
}

my_function
```

### Question 29 — Libraries

Command 1:
```bash
source array_lib.sh
```

Command 2:
```bash
. array_lib.sh
```

Both commands execute the contents of `array_lib.sh` in the current shell.

Yes, they are equivalent.

`source` and `.` are used to load functions and variables from another file without creating a separate shell process.

### Question 30 — Arrays

Given:
```bash
COLORS=("Red" "Blue" "Green")
```

1. Print the first element:
```bash
echo "${COLORS[0]}"
```

2. Print all elements:
```bash
echo "${COLORS[@]}"
```

3. Print the number of elements:
```bash
echo "${#COLORS[@]}"
```

### Question 31 — Signals and trap

Completed commands:

```bash
# Set a handler for Ctrl+C
trap 'echo "Interrupted!"' SIGINT

# Restore the default behavior
trap - SIGINT
```

Before restoring:
- Pressing Ctrl+C sends SIGINT.
- The custom handler prints `Interrupted!`.
- The default SIGINT action is overridden.

After restoring:
- The default SIGINT behavior is active again.
- Pressing Ctrl+C normally terminates the script.

### Question 32 — Job Control

```bash
command &
```
Runs a command in the background.

```bash
jobs
```
Lists jobs managed by the current shell.

```bash
fg %1
```
Brings job number 1 to the foreground.

```bash
bg %1
```
Resumes stopped job number 1 in the background.

```bash
kill %1
```
Sends the default termination signal (SIGTERM) to job number 1.

### Question 33 — File Descriptors

Completed script:

```bash
#!/bin/bash

exec 3> output.txt

echo "Hello World" >&3

exec 3>&-
```

1. `3>` opens `output.txt` for writing and assigns it to file descriptor 3.
2. `>&3` redirects the command's standard output to file descriptor 3.
3. `3>&-` closes file descriptor 3.

---

## PART 5 — GIT FUNDAMENTALS (WEEK 6)

### Question 34 — Three Main Git Areas

1. **Working Directory:** The location where files are created and modified.
2. **Staging Area (Index):** The area where changes are prepared before committing.
3. **Git Directory/Repository:** Stores Git data, objects, references, and commit history.

Commands:

1. Working Directory → Staging Area:
```bash
git add
```

2. Staging Area → Git Repository:
```bash
git commit
```

### Question 35 — Git Objects

1. **Blob:** Stores the contents of a file.
2. **Tree:** Stores directory information and references to blobs or other trees.
3. **Commit:** Stores a snapshot reference, parent commit information, author information, and a commit message.
4. **Tag:** Provides a named reference to a Git object, commonly used to identify releases.

### Question 36 — Git Commands

| Command | Purpose |
|---|---|
| `git init` | Initializes a new Git repository |
| `git status` | Shows the state of the working directory and staging area |
| `git add .` | Stages changes in the current directory and subdirectories |
| `git commit -m "Initial commit"` | Creates a commit with the staged changes |
| `git log --oneline` | Displays a short commit history |
| `git diff` | Shows unstaged changes |
| `git diff --staged` | Shows staged changes |
| `git clone URL` | Copies a remote repository locally |
| `git remote -v` | Displays configured remote repositories and their URLs |

### Question 37 — Git Workflow

Correct order:

```bash
git init
git status
git add .
git commit -m "First commit"
```

### Question 38 — git init vs. git clone

**git init:**
```bash
git init
```
Creates a new, empty Git repository in the current directory.

`init` means initialize.

**git clone:**
```bash
git clone URL
```
Copies an existing remote repository to the local computer, including its files and history.

`clone` means make a copy.

Main difference:
- `git init` starts a new repository.
- `git clone` copies an existing repository.

### Question 39 — Git Reset

**1. Soft reset**
```bash
git reset --soft HEAD~1
```
- HEAD: Moves back one commit.
- Staging Area: Keeps changes staged.
- Working Directory: Keeps changes.

**2. Mixed reset**
```bash
git reset --mixed HEAD~1
```
- HEAD: Moves back one commit.
- Staging Area: Resets to match the previous commit.
- Working Directory: Keeps changes as unstaged modifications.

**3. Hard reset**
```bash
git reset --hard HEAD~1
```
- HEAD: Moves back one commit.
- Staging Area: Resets to match the previous commit.
- Working Directory: Discards tracked changes from the reset operation.

### Question 40 — git reset vs. git revert

**git reset:**
```bash
git reset HEAD~1
```
Moves the current branch reference backward and can remove a commit from the branch history.

**git revert:**
```bash
git revert COMMIT_HASH
```
Creates a new commit that reverses the changes introduced by an earlier commit.

Safer for commits already shared with other developers:

`git revert`, because it preserves the existing history and adds a new reversing commit.

### Question 41 — git reflog

1. `git reflog` displays the history of changes to HEAD and local references.
2. It can help recover a previous commit after `git reset --hard` by locating its earlier commit reference and resetting or creating a branch from it.
3. No. It generally cannot recover changes that were never staged or committed.

### Question 42 — Branches and Merge

1. List branches:
```bash
git branch
```

2. Create a branch called `test`:
```bash
git branch test
```

3. Switch to `test`:
```bash
git switch test
```

4. Merge `test` into `main`:
```bash
git switch main
git merge test
```

### Question 43 — Tags

- Lightweight tag: A simple reference to a commit.
- Annotated tag: A tag object containing additional information, such as the tagger, date, and message.

Commands:

Create a lightweight tag:
```bash
git tag v1.0
```

Create an annotated tag:
```bash
git tag -a v1.0 -m "First release"
```

List tags:
```bash
git tag
```

### Question 44 — Fetch, Pull and Push

**Fetch:**
```bash
git fetch origin
```
Downloads changes and references from the remote repository without integrating them into the current branch.

**Pull:**
```bash
git pull origin main
```
Fetches changes and integrates them into the current branch.

**Push:**
```bash
git push origin main
```
Uploads local commits from the `main` branch to the remote repository.

### Question 45 — .gitignore

1. Ignore `.env`:
```gitignore
.env
```

2. Ignore all `.log` files:
```gitignore
*.log
```

3. Ignore the `temp` directory:
```gitignore
temp/
```

What does this command do?

```bash
git rm --cached .env
```

Removes `.env` from Git's tracking (the index) but keeps the file on the local disk.

### Question 46 — Detached HEAD

1. A detached HEAD state occurs when HEAD points directly to a commit instead of pointing to a branch.
2. HEAD points directly to a specific commit.
3. Return to the `main` branch:
```bash
git switch main
```

4. Create a new branch to preserve experimental work:
```bash
git switch -c experiment
```

---

## PART 6 — GITHUB FUNDAMENTALS (WEEK 7)

### Question 47 — Git Configuration

```bash
git config --global user.name "Your Name"

git config --global user.email "you@example.com"

git config --list
```

Purpose:
- `user.name` sets the name associated with your commits.
- `user.email` sets the email associated with your commits.
- `--global` applies these settings to all repositories for your user account.
- `git config --list` displays the configuration settings.

### Question 48 — GitHub Authentication

1. PAT stands for **Personal Access Token**.
2. A PAT is used for HTTPS Git authentication instead of an account password.
3. When Git asks for a password during HTTPS authentication, enter your Personal Access Token.

### Question 49 — Connect a Local Repository to GitHub

Completed sequence:

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin URL
git push origin main
```

`origin` is the conventional name given to the remote repository.

### Question 50 — First Push

```bash
git push -u origin main
```

Purpose:
- Pushes the local `main` branch to the remote repository named `origin`.
- `-u` sets the upstream tracking relationship between the local branch and the remote branch.

This makes future `git push` and `git pull` commands easier to use without specifying the remote and branch every time.

### Question 51 — Troubleshooting

Error:
```text
error: src refspec main does not match any
```

Likely reasons:
- No commit has been created yet.
- The local branch is not named `main`.

Steps to solve:

```bash
git status
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main
```

If the repository already has commits and the branch is correctly named `main`, there is no need to repeat the initial commit.

### Question 52 — git rm vs. git rm --cached

| Command | Removes from Git tracking? | Removes from disk? |
|---|---|---|
| `git rm file.txt` | Yes | Yes |
| `git rm --cached file.txt` | Yes | No |

---

## PART 7 — PRACTICAL CODING CHALLENGES

### Question 53 — Complete a Bash Script

```bash
#!/bin/bash

read -p "Enter a number: " number

if [ "$number" -gt 0 ]; then
    echo "Positive"
elif [ "$number" -lt 0 ]; then
    echo "Negative"
else
    echo "Zero"
fi
```

### Question 54 — Create a Multiplication Table

```bash
#!/bin/bash

read -p "Enter a number: " number

for i in {1..10}; do
    result=$((number * i))
    echo "$number x $i = $result"
done
```

### Question 55 — Argument Counter

```bash
#!/bin/bash

echo "Script name: $0"

echo "Number of arguments: $#"

for arg in "$@"; do
    echo "$arg"
done
```

### Question 56 — File Backup Script

```bash
#!/bin/bash

read -p "Enter filename: " filename

if [ -f "$filename" ]; then
    cp "$filename" "$filename.backup"
    echo "Backup created"
else
    echo "File not found"
fi
```

### Question 57 — Function Validation

```bash
#!/bin/bash

check_input() {
    if [ "$#" -eq 1 ]; then
        echo "Success"
        return 0
    else
        echo "Error: Requires exactly one argument."
        return 1
    fi
}

check_input "test"
echo "Exit Status: $?"

check_input "one" "two"
echo "Exit Status: $?"

check_input
echo "Exit Status: $?"
```

Expected exit statuses:
```text
Exit Status: 0
Exit Status: 1
Exit Status: 1
```

### Question 58 — Redirection Practical

1. Save the output of `ls -l`:
```bash
ls -l > files.txt
```

2. Append the output of `date`:
```bash
date >> files.txt
```

3. Save an error from an invalid path:
```bash
ls /invalid/path 2> errors.txt
```

4. Redirect both output and errors:
```bash
ls /etc/passwd /invalid/path > combined.txt 2>&1
```

### Question 59 — Git Repository Practical

```bash
mkdir project

cd project

git init

touch README.md

git add README.md

git commit -m "First commit"

git log
```

### Question 60 — GitHub Publishing Practical

Assuming the local repository already exists and has at least one commit:

```bash
git remote add origin URL

git branch -M main

git push -u origin main
```

Replace `URL` with the URL of your new GitHub repository.

- `git remote add origin URL`: Connects the local repository to GitHub.
- `git branch -M main`: Renames the current branch to `main`.
- `git push -u origin main`: Pushes the branch and sets its upstream tracking relationship.

---

# END OF ANSWER KEY
