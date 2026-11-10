# SYSTEM PROGRAMMING — MOCK MIDTERM ANSWER KEY

## Part 1 — Linux Permissions (Q1–Q6)

**Q1.**  
`rwxr-xr--` = `754`

- Owner: `rwx` = 7
- Group: `r-x` = 5
- Others: `r--` = 4

**Q2.**  
`755` = `rwxr-xr-x`

**Q3.**  
```bash
chmod u=rwx,g=r,o= file.txt
```
- `u` = user/owner
- `g` = group
- `o` = others
- `=` = set permissions exactly as specified, replacing the previous permissions.
- Owner: read, write, execute
- Group: read only
- Others: no permissions

**Q4.**  
`=` assigns the specified permissions exactly. It removes permissions not included in the assignment.

**Q5.**
```bash
sudo apt update
```
Updates the package lists from the repositories. It does not install package upgrades.

```bash
sudo apt upgrade
```
Installs available upgrades for installed packages.

**Q6.**
```bash
sudo apt update
sudo apt upgrade
```
Or:
```bash
sudo apt update && sudo apt upgrade
```
`&&` runs the second command only if the first command succeeds.

---

## Part 2 — Bash Conditions and Loops (Q7–Q18)

**Q7.** Basic `if` syntax:
```bash
if [ condition ]; then
    commands
fi
```

**Q8.** `if`, `elif`, and `else`:
```bash
if [ "$number" -gt 0 ]; then
    echo "Positive"
elif [ "$number" -lt 0 ]; then
    echo "Negative"
else
    echo "Zero"
fi
```

**Q9.** Numeric comparison operators:

| Operator | Meaning |
|---|---|
| `-eq` | Equal |
| `-ne` | Not equal |
| `-gt` | Greater than |
| `-lt` | Less than |
| `-ge` | Greater than or equal |
| `-le` | Less than or equal |

**Q10.** String comparison:
```bash
if [ "$name" = "Alaa" ]; then
    echo "Match"
fi
```
`=` checks whether strings are equal. `!=` checks whether they are different.

**Q11.** `case` statement:
```bash
case "$choice" in
    1)
        echo "Option 1"
        ;;
    2)
        echo "Option 2"
        ;;
    *)
        echo "Invalid option"
        ;;
esac
```

**Q12.** `for` loop:
```bash
for i in 1 2 3 4 5; do
    echo "$i"
done
```

**Q13.** `while` loop:
```bash
i=1

while [ "$i" -le 5 ]; do
    echo "$i"
    i=$((i + 1))
done
```

**Q14.** `until` loop:
```bash
i=1

until [ "$i" -gt 5 ]; do
    echo "$i"
    i=$((i + 1))
done
```
An `until` loop continues while its condition is false.

**Q15.**
- `break` exits the current loop.
- `continue` skips the rest of the current iteration and moves to the next iteration.
- `break 2` exits two nested loops.

**Q16.** Print numbers from 1 to 10:
```bash
for i in {1..10}; do
    echo "$i"
done
```

**Q17.** Check whether a number is even or odd:
```bash
if [ $((number % 2)) -eq 0 ]; then
    echo "Even"
else
    echo "Odd"
fi
```
`%` is the modulo operator. It returns the remainder of division.

**Q18.** Read input from the user:
```bash
read -p "Enter your name: " name
echo "Hello, $name"
```

---

## Part 3 — User Input and Redirection (Q19–Q25)

**Q19.** Standard input:
- File descriptor: `0`
- Usually comes from the keyboard.

**Q20.** Standard output:
- File descriptor: `1`
- Usually displays normal program output on the terminal.

**Q21.** Standard error:
- File descriptor: `2`
- Used for error messages.

**Q22.** Redirection operators:

| Operator | Meaning |
|---|---|
| `>` | Redirect output and overwrite a file |
| `>>` | Redirect output and append to a file |
| `<` | Take input from a file |
| `2>` | Redirect standard error |
| `2>>` | Append standard error |
| `&>` | Redirect stdout and stderr in Bash |

**Q23.** Overwrite a file:
```bash
echo "Hello" > output.txt
```

Append to a file:
```bash
echo "Hello again" >> output.txt
```

**Q24.** Redirect standard error:
```bash
command 2> errors.txt
```

Redirect standard output and standard error into the same file:
```bash
command > combined.txt 2>&1
```

**Q25.** Read input from a file:
```bash
command < input.txt
```

The command receives the contents of `input.txt` through standard input.

---

## Part 4 — Functions, Signals, and Job Control (Q26–Q33)

**Q26.** Bash function:
```bash
my_function() {
    echo "Hello"
}

my_function
```

**Q27.** Function return status:
```bash
check_input() {
    if [ "$#" -eq 1 ]; then
        return 0
    else
        return 1
    fi
}
```
- `return 0` means success.
- `return 1` means failure.
- `$#` represents the number of positional parameters.

**Q28.** Function parameters:
```bash
my_function() {
    echo "$1"
    echo "$2"
}

my_function "Hello" "World"
```
- `$1` = first parameter
- `$2` = second parameter
- `$#` = number of parameters
- `$@` = all parameters as separate words
- `$*` = all parameters as a single word when quoted

**Q29.** Local and global variables:

```bash
name="Global"

my_function() {
    local name="Local"
    echo "$name"
}

my_function
echo "$name"
```

Output:
```text
Local
Global
```

`local` limits a variable's scope to the function.

**Q30.** Array:
```bash
fruits=("Apple" "Banana" "Orange")

echo "${fruits[0]}"
echo "${fruits[1]}"
echo "${fruits[@]}"
echo "${#fruits[@]}"
```
- `${fruits[0]}` = first element
- `${fruits[@]}` = all elements
- `${#fruits[@]}` = number of elements

**Q31.** Trap:
```bash
trap 'echo "SIGINT received"' SIGINT
```
This defines a command to run when the script receives `SIGINT`, commonly generated by pressing `Ctrl+C`.

Restore the default behavior:
```bash
trap - SIGINT
```

**Q32.** Job control:
- `command &` runs a command in the background.
- `jobs` lists jobs in the current shell.
- `fg` brings a job to the foreground.
- `bg` resumes a stopped job in the background.
- `Ctrl+Z` suspends the foreground job.
- `Ctrl+C` sends an interrupt signal.

**Q33.** File descriptors and `exec`:

```bash
exec > output.txt
```
Redirects the shell's standard output to `output.txt`.

```bash
exec 2> errors.txt
```
Redirects the shell's standard error to `errors.txt`.

`exec` can also replace the current shell process with another program when used with a command.

---

## Part 5 — Git Fundamentals (Q34–Q46)

**Q34.** The three main Git areas:

1. Working Directory: where files are edited.
2. Staging Area (Index): where changes are prepared for the next commit.
3. Git Directory/Repository: stores repository data and commit history.

**Q35.**
```bash
git init
```
Initializes a new Git repository in the current directory.

**Q36.**
```bash
git status
```
Displays the state of the working directory and staging area.

**Q37.**
```bash
git add file.txt
```
Stages changes to `file.txt`.

```bash
git add .
```
Stages changes in the current directory and its subdirectories.

**Q38.**
```bash
git commit -m "Initial commit"
```
Creates a commit containing the staged changes.

**Q39.** Difference between `git add` and `git commit`:

- `git add` puts changes into the staging area.
- `git commit` saves the staged changes as a commit in the repository.

**Q40.** Git object types:

- Blob: stores file contents.
- Tree: stores directory structure and references to blobs or other trees.
- Commit: stores a snapshot reference, parent information, author information, and commit message.
- Tag: provides a named reference to an object, commonly a commit.

**Q41.** Important entries inside `.git`:

| Entry | Purpose |
|---|---|
| `HEAD` | Identifies the current branch or commit reference |
| `config` | Repository-specific configuration |
| `objects/` | Stores Git objects |
| `refs/` | Stores references such as branches and tags |
| `index` | Stores the staging area |
| `hooks/` | Contains hook scripts |
| `info/` | Contains repository-specific information |

**Q42.**
```bash
git log
```
Displays commit history.

```bash
git log --oneline
```
Displays a shorter commit history.

**Q43.**
```bash
git diff
```
Shows unstaged changes.

```bash
git diff --staged
```
Shows staged changes compared with the last commit.

**Q44.** `HEAD` is a reference to the currently checked-out commit, usually through the current branch.

**Q45.** The staging area is useful because it allows you to choose exactly which changes will be included in the next commit.

**Q46.** Basic Git workflow:
```bash
git init
git status
git add .
git commit -m "Initial commit"
```

---

## Part 6 — GitHub Fundamentals (Q47–Q52)

**Q47.** Difference between Git and GitHub:

- Git is a distributed version control system.
- GitHub is an online platform for hosting and collaborating on Git repositories.

**Q48.** Clone a repository:
```bash
git clone https://github.com/user/repository.git
```
This creates a local repository directory, downloads repository files and history, initializes the `.git` directory, and checks out the default branch.

**Q49.** Remote commands:
```bash
git remote -v
```
Lists remote repositories.

```bash
git remote add origin URL
```
Adds a remote named `origin`.

```bash
git push -u origin main
```
Pushes the local `main` branch and sets its upstream branch.

**Q50.** Difference between `push`, `fetch`, and `pull`:

- `git push`: uploads local commits to a remote repository.
- `git fetch`: downloads remote updates without merging them into the current branch.
- `git pull`: fetches remote updates and integrates them into the current branch.

**Q51.** Authentication:

A Personal Access Token (PAT) can be used for HTTPS authentication instead of a GitHub account password.

**Q52.** Global and local Git configuration:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

Global configuration applies to all repositories for the user.

```bash
git config user.name "Your Name"
```

Local configuration applies only to the current repository.

Check where an email setting comes from:
```bash
git config --show-origin --get user.email
```

---

## Part 7 — Practical Coding Challenges (Q53–Q60)

**Q53.** Script that reads a number and checks whether it is positive, negative, or zero:

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

**Q54.** Script that prints numbers from 1 to 10:

```bash
#!/bin/bash

for i in {1..10}; do
    echo "$i"
done
```

**Q55.** Script that checks whether exactly one parameter was provided:

```bash
#!/bin/bash

if [ "$#" -eq 1 ]; then
    echo "Exactly one parameter provided"
else
    echo "Invalid number of parameters"
fi
```

**Q56.** Function named `check_input` that accepts exactly one parameter:

```bash
#!/bin/bash

check_input() {
    if [ "$#" -eq 1 ]; then
        return 0
    else
        return 1
    fi
}

check_input "$@"

if [ "$?" -eq 0 ]; then
    echo "Valid input"
else
    echo "Invalid input"
fi
```

**Q57.** Script that handles `SIGINT`:

```bash
#!/bin/bash

trap 'echo "You pressed Ctrl+C"' SIGINT

while true; do
    echo "Running..."
    sleep 2
done
```

Restore the default signal behavior:
```bash
trap - SIGINT
```

**Q58.** Script that displays system information:

```bash
#!/bin/bash

echo "Username: $USER"
echo "Home directory: $HOME"
echo "Shell: $SHELL"
echo "Current directory: $PWD"
```

**Q59.** Count files found in a directory using `find` and `wc`:

```bash
#!/bin/bash

find . -type f | wc -l
```

- `find .` searches from the current directory.
- `-type f` selects regular files.
- `wc -l` counts output lines.

**Q60.** Redirect normal output and errors into separate files:

```bash
#!/bin/bash

command > output.txt 2> errors.txt
```

- Standard output goes to `output.txt`.
- Standard error goes to `errors.txt`.

To redirect both into the same file:
```bash
command > combined.txt 2>&1
```

---

**End of Answer Key**
