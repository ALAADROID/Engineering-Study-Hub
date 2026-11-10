# SYSTEM PROGRAMMING — MOCK MIDTERM

**Instructions:** Answer all questions. Complete missing code, correct errors, write commands, explain outputs, and compare concepts where requested.

---

## PART 1 — LINUX PERMISSIONS (WEEK 3)

### Question 1 ★ — Convert Numeric to Symbolic

Convert each permission number into symbolic notation.

| Numeric | Symbolic |
|---|---|
| 755 | _________ |
| 644 | _________ |
| 700 | _________ |
| 750 | _________ |
| 777 | _________ |
| 640 | _________ |
| 421 | _________ |
| 600 | _________ |

### Question 2 ★ — Convert Symbolic to Numeric

Convert each permission into a three-digit numeric value.

| Symbolic | Numeric |
|---|---|
| `rwxr-xr-x` | ______ |
| `rw-r--r--` | ______ |
| `rwx------` | ______ |
| `rwxr-----` | ______ |
| `rw-r-----` | ______ |
| `rwxrwxrwx` | ______ |

### Question 3 ★ — Understand chmod

Given this command:

```bash
chmod u=rwx,g=r,o= file.txt
```

1. What permissions does the owner receive?
2. What permissions does the group receive?
3. What permissions do others receive?
4. What does `=` mean in this command?
5. Does this command add permissions or set them exactly?

### Question 4 — Complete the Commands

Fill in the missing parts.

```bash
# Give the owner execute permission
chmod ______ file.txt

# Remove write permission from the group
chmod ______ file.txt

# Give everyone read permission
chmod ______ file.txt

# Set owner = rwx, group = r-x, others = ---
chmod ______ file.txt
```

### Question 5 — Understand ls -l

Consider:

```text
-rwxr-xr-- 1 student users 1200 file.txt
```

Identify:

1. File type.
2. Owner permissions.
3. Group permissions.
4. Others' permissions.
5. Owner name.
6. Group name.

### Question 6 — Package Management ★

Explain the difference between:

1. `sudo apt update`
2. `sudo apt upgrade`
3. `sudo apt remove`
4. `sudo apt purge`
5. `sudo apt autoremove`

Write the command to update package information and then upgrade installed packages.

---

## PART 2 — BASH CONDITIONS AND LOOPS (WEEK 4)

### Question 7 — Complete the if Statement

Complete the missing parts to check whether a number is greater than or equal to 18.

```bash
#!/bin/bash

read -p "Enter your age: " age

if [ "$age" ______ 18 ]; then
    echo "Adult"
______ 
    echo "Minor"
____
```

### Question 8 — Numeric Comparison

Match each operator with its meaning.

| Operator | Meaning |
|---|---|
| `-eq` | __________ |
| `-ne` | __________ |
| `-gt` | __________ |
| `-ge` | __________ |
| `-lt` | __________ |
| `-le` | __________ |

### Question 9 — Find the Errors

The following script contains mistakes. Rewrite it correctly.

```bash
#!/bin/bash

read -p "Enter a number: " number

if ["$number" -gt 10]; then
    echo "Greater than 10"
else
    echo "10 or less"
fi
```

### Question 10 — File Testing

Complete the conditions.

```bash
# Check whether a regular file exists
if [ ______ "data.txt" ]; then
    echo "Regular file exists"
fi

# Check whether a directory exists
if [ ______ "backup" ]; then
    echo "Directory exists"
fi

# Check whether a file is readable
if [ ______ "data.txt" ]; then
    echo "File is readable"
fi
```

### Question 11 — Case Statement

Complete the missing parts.

```bash
#!/bin/bash

read -p "Enter your choice (1-3): " choice

______ "$choice" in
    1)
        echo "Start"
        ______
    2)
        echo "Settings"
        ______
    3)
        echo "Exit"
        ______
    *)
        echo "Invalid choice"
        ______
____
```

### Question 12 — For Loop

Complete the script to print numbers from 1 to 10.

```bash
#!/bin/bash

______ i in {1..10}; do
    echo "$i"
______
```

### Question 13 — While Loop

Complete the script to print numbers from 1 to 5.

```bash
#!/bin/bash

i=1

______ [ "$i" -le 5 ]; do
    echo "$i"
    ((i++))
______
```

### Question 14 — Until Loop

Complete the script to print numbers until the number becomes greater than 5.

```bash
#!/bin/bash

i=1

______ [ "$i" -gt 5 ]; do
    echo "$i"
    ((i++))
______
```

### Question 15 — break and continue

What is the difference between `break` and `continue`?

What does `break 2` do inside nested loops?

### Question 16 — Predict the Output

Write the exact output.

```bash
#!/bin/bash

for i in {1..5}; do
    if (( i == 3 )); then
        continue
    fi

    echo "$i"
done
```

### Question 17 — Even and Odd Numbers

Complete the script to determine whether a number is even or odd.

```bash
#!/bin/bash

read -p "Enter a number: " number

if (( number ______ 2 == 0 )); then
    echo "Even"
else
    echo "Odd"
fi
```

### Question 18 — Nested Loops

Predict which values are printed.

```bash
#!/bin/bash

for a in {1..3}; do
    for b in {1..3}; do

        if (( a == 2 && b == 2 )); then
            break 2
        fi

        echo "$a $b"

    done
done
```

---

## PART 3 — USER INPUT AND REDIRECTION (WEEK 4)

### Question 19 — Special Parameters

Explain what each parameter represents.

| Parameter | Meaning |
|---|---|
| `$0` | __________ |
| `$1` | __________ |
| `$2` | __________ |
| `$#` | __________ |
| `$@` | __________ |
| `$*` | __________ |
| `$?` | __________ |
| `$$` | __________ |

### Question 20 — Predict the Values

The script is executed as follows:

```bash
./backup.sh file1.txt file2.txt file3.txt
```

What are the values of:

1. `$0`
2. `$1`
3. `$2`
4. `$3`
5. `$#`

### Question 21 — ★ Standard Streams

Complete the table.

| Stream | Full name | File Descriptor | Default |
|---|---|---|---|
| stdin | __________ | ___ | __________ |
| stdout | __________ | ___ | __________ |
| stderr | __________ | ___ | __________ |

### Question 22 — ★ Redirection Operators

Explain what each command does.

```bash
ls > filelist.txt
```

```bash
ls >> filelist.txt
```

```bash
ls /does/not/exist 2> errors.txt
```

```bash
ls /etc/passwd /does/not/exist > combined.txt 2>&1
```

```bash
sort < names.txt
```

### Question 23 — ★ Write the Correct Redirection

Write a command for each requirement.

1. Save standard output in `output.txt`, overwriting existing content.
2. Append standard output to `output.txt`.
3. Save standard error in `errors.txt`.
4. Save both standard output and standard error in `combined.txt`.
5. Read input from `input.txt`.

### Question 24 — Difference Between Redirection and Pipes

Explain the difference between:

```bash
command > output.txt
```

and

```bash
command1 | command2
```

### Question 25 — Predict the Output Destination

Consider:

```bash
ls /etc/passwd /does/not/exist > result.txt 2>&1
```

1. Where does standard output go?
2. Where does standard error go?
3. Does the terminal display the redirected output?
4. What is the purpose of `2>&1`?

---

## PART 4 — FUNCTIONS, SIGNALS AND JOB CONTROL (WEEK 5)

### Question 26 — Function Completion

Complete the function. It must accept exactly one argument.

```bash
#!/bin/bash

check_input() {

    if [ "$#" -eq 1 ]; then
        echo "Success"
        ______ 0
    else
        echo "Error: Requires exactly one argument."
        ______ 1
    fi
}

check_input "test"
echo $?
```

### Question 27 — Function Calls and Exit Status

Complete the missing code.

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

What are the three exit status values?

### Question 28 — Local vs. Global Variables

Explain the difference between local and global variables.

Complete the script:

```bash
#!/bin/bash

name="Student"

my_function() {
    ______ age=20
    echo "$name"
    echo "$age"
}

my_function
```

### Question 29 — Libraries

What is the purpose of the following commands?

```bash
source array_lib.sh
```

```bash
. array_lib.sh
```

Are these commands equivalent?

### Question 30 — Arrays

Given:

```bash
COLORS=("Red" "Blue" "Green")
```

Write the expressions to:

1. Print the first element.
2. Print all elements.
3. Print the number of elements.

### Question 31 — Signals and trap

Complete the commands.

```bash
# Set a handler for Ctrl+C
trap 'echo "Interrupted!"' ______

# Restore the default behavior
trap ______ SIGINT
```

Explain what happens when Ctrl+C is pressed before and after restoring the default behavior.

### Question 32 — Job Control

Explain the purpose of:

```bash
command &
jobs
fg %1
bg %1
kill %1
```

### Question 33 — File Descriptors

Complete the script.

```bash
#!/bin/bash

exec 3> output.txt

echo "Hello World" ______

exec 3>&-
```

1. What does `3>` do?
2. What does `>&3` do?
3. What does `3>&-` do?

---

## PART 5 — GIT FUNDAMENTALS (WEEK 6)

### Question 34 ★ — Three Main Git Areas

Name and explain the three main Git areas.

Also explain which command moves changes from:

1. Working Directory to Staging Area.
2. Staging Area to Git Repository.

### Question 35 — Git Objects

Explain the purpose of each Git object.

1. Blob
2. Tree
3. Commit
4. Tag

### Question 36 — Git Commands

Explain what each command does.

```bash
git init
git status
git add .
git commit -m "Initial commit"
git log --oneline
git diff
git diff --staged
git clone URL
git remote -v
```

### Question 37 — Git Workflow

Arrange the commands in the correct order to create a repository and save the first commit.

```bash
git commit -m "First commit"
git status
git init
git add .
```

### Question 38 — git init vs. git clone

Explain the difference between:

```bash
git init
```

and

```bash
git clone URL
```

What does `init` mean? What does `clone` mean?

### Question 39 — Git Reset

Explain the difference between:

1. `git reset --soft HEAD~1`
2. `git reset --mixed HEAD~1`
3. `git reset --hard HEAD~1`

What happens to HEAD, the staging area, and the working directory in each case?

### Question 40 — git reset vs. git revert

Explain the difference between these commands and identify which is safer for undoing a commit that has already been shared with other developers.

```bash
git reset HEAD~1
git revert COMMIT_HASH
```

### Question 41 — git reflog

1. What does `git reflog` display?
2. How can it help after accidentally running `git reset --hard`?
3. Can it recover uncommitted changes that were never staged or committed?

### Question 42 — Branches and Merge

Write commands to:

1. List branches.
2. Create a branch called `test`.
3. Switch to `test`.
4. Merge `test` into `main`.

### Question 43 — Tags

Explain the difference between lightweight and annotated tags.

Complete the commands:

```bash
# Create a lightweight tag
git tag ______

# Create an annotated tag
git tag -a ______ -m "First release"

# List tags
git tag
```

### Question 44 — Fetch, Pull and Push

Explain the difference between:

```bash
git fetch origin
git pull origin main
git push origin main
```

### Question 45 — .gitignore

Given these requirements, write the appropriate `.gitignore` entries.

1. Ignore `.env`.
2. Ignore all `.log` files.
3. Ignore the `temp` directory.

What does `git rm --cached .env` do?

### Question 46 — Detached HEAD

1. What is a detached HEAD state?
2. What does HEAD point to in this state?
3. How do you return to the `main` branch?
4. How can you create a new branch to preserve experimental work?

---

## PART 6 — GITHUB FUNDAMENTALS (WEEK 7)

### Question 47 — Git Configuration

Complete the commands.

```bash
git config --global user.name "__________"
git config --global user.email "__________"
git config ______
```

What is the purpose of configuring a username and email?

### Question 48 — GitHub Authentication

1. What does PAT stand for?
2. Why is a Personal Access Token used for HTTPS Git operations?
3. When Git asks for a password, what should you enter?

### Question 49 — Connect a Local Repository to GitHub

Complete the sequence.

```bash
git init
git add .
git commit -m "Initial commit"
git remote add ______ URL
git push ______ ______
```

What does `origin` represent?

### Question 50 — First Push

Explain the purpose of:

```bash
git push -u origin main
```

What does the `-u` option do?

### Question 51 — Troubleshooting

You receive this error:

```text
error: src refspec main does not match any
```

What is a likely reason for this error, and what steps should you take before pushing?

### Question 52 — git rm vs. git rm --cached

Complete the table.

| Command | Removes from Git tracking? | Removes from disk? |
|---|---|---|
| `git rm file.txt` | ______ | ______ |
| `git rm --cached file.txt` | ______ | ______ |

---

## PART 7 — PRACTICAL CODING CHALLENGES

### Question 53 — Complete a Bash Script

Complete the missing parts. The script must read a number and print whether it is positive, negative, or zero.

```bash
#!/bin/bash

read -p "Enter a number: " number

if [ "$number" -gt 0 ]; then
    echo "Positive"
______ [ "$number" -lt 0 ]; then
    echo "Negative"
____
    echo "Zero"
____
```

### Question 54 — Create a Multiplication Table

Write a Bash script that:

1. Asks the user for a number.
2. Uses a loop from 1 to 10.
3. Prints the multiplication table.
4. Uses arithmetic expansion.

### Question 55 — Argument Counter

Write a Bash script that:

1. Accepts command-line arguments.
2. Displays the number of arguments.
3. Prints every argument separately.
4. Displays the script name.

### Question 56 — File Backup Script

Complete a script that checks whether a file exists and copies it to a backup file.

```bash
#!/bin/bash

read -p "Enter filename: " filename

if [ ______ "$filename" ]; then
    cp "$filename" "$filename.backup"
    echo "Backup created"
else
    echo "File not found"
fi
```

### Question 57 — Function Validation

Write a complete Bash script containing a function named `check_input`.

Requirements:
1. The function accepts exactly one argument.
2. If exactly one argument is provided, print a success message and return `0`.
3. Otherwise, print an error message and return `1`.
4. Call the function with one argument, two arguments, and zero arguments.
5. Print the exit status after every call.

### Question 58 — Redirection Practical

Write commands that:

1. Save the output of `ls -l` in `files.txt`.
2. Append the output of `date` to `files.txt`.
3. Save an error from an invalid `ls` path in `errors.txt`.
4. Redirect both output and errors into `combined.txt`.

### Question 59 — Git Repository Practical

Write the complete command sequence to:

1. Create a directory called `project`.
2. Enter the directory.
3. Initialize Git.
4. Create a file called `README.md`.
5. Stage the file.
6. Commit it with the message `First commit`.
7. Display the commit history.

### Question 60 — GitHub Publishing Practical

Write the commands to connect an existing local Git repository to a new GitHub repository and push its `main` branch for the first time.

---

**END OF MOCK MIDTERM**
