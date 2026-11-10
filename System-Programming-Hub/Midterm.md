# MIDTERM QUICK REVISION

## WEEK 3 — Linux Permissions & Package Management

### 1. File Permissions — VERY IMPORTANT (مهم للامتحان)

Three permission groups:
- `u` = User/Owner
- `g` = Group
- `o` = Others

Three permissions:
- `r` = Read = 4
- `w` = Write = 2
- `x` = Execute = 1
- `-` = No permission = 0

**Numeric (Octal) Permissions**

Add the permission values:

| Permission | Calculation | Number |
|---|---:|---:|
| `rwx` | 4+2+1 | 7 |
| `rw-` | 4+2 | 6 |
| `r-x` | 4+1 | 5 |
| `r--` | 4 | 4 |
| `-wx` | 2+1 | 3 |
| `-w-` | 2 | 2 |
| `--x` | 1 | 1 |
| `---` | 0 | 0 |

Example:
- `chmod 754 file.txt`
- Owner = 7 = `rwx`
- Group = 5 = `r-x`
- Others = 4 = `r--`

**Symbolic Permissions**

```bash
chmod u=rwx,g=r,o= file.txt
```

Meaning:
- Owner gets `rwx`
- Group gets `r`
- Others get no permissions

Operators:
- `=` → Set permissions exactly.
- `+` → Add permissions.
- `-` → Remove permissions.

Examples:

```bash
chmod u+x file.txt
chmod g-w file.txt
chmod o=r file.txt
chmod a+r file.txt
```

**Convert between numeric and symbolic permissions.** Be able to do both directions.

Useful commands:

```bash
ls -l file.txt       # Display permissions
chmod 755 file.txt   # Set numeric permissions
chmod u+x file.txt   # Add execute permission
chown user file.txt  # Change owner
```

### 2. Users and Groups

- UID = User ID.
- GID = Group ID.
- `/etc/passwd` = User account information.
- `/etc/shadow` = Password-related information.

```bash
whoami
id
groups
sudo useradd username
sudo userdel username
sudo usermod username
sudo passwd username
sudo groupadd groupname
```

### 3. Package Management — IMPORTANT (مهم للامتحان)

```bash
sudo apt update
sudo apt upgrade
apt search package
apt show package
sudo apt install package
sudo apt remove package
sudo apt purge package
sudo apt autoremove
```

Meanings:
- `apt update` = Refresh available package information.
- `apt upgrade` = Upgrade installed packages.
- `apt install` = Install a package.
- `apt remove` = Remove a package but keep its configuration files.
- `apt purge` = Remove a package and its configuration files.
- `apt autoremove` = Remove unnecessary dependencies.

`dpkg` = Low-level tool that manages `.deb` packages.

---

## WEEK 4 — Bash Conditions, Loops & Input/Output

### 1. Conditional Statements

Basic structure:

```bash
if [ CONDITION ]; then
    commands
elif [ CONDITION ]; then
    commands
else
    commands
fi
```

**Numeric comparison operators**

| Operator | Meaning |
|---|---|
| `-eq` | Equal |
| `-ne` | Not equal |
| `-gt` | Greater than |
| `-ge` | Greater than or equal |
| `-lt` | Less than |
| `-le` | Less than or equal |

Example:

```bash
if [ "$age" -ge 18 ]; then
    echo "Adult"
else
    echo "Minor"
fi
```

**String comparisons**

```bash
[ "$a" = "$b ]    # Equal (correct form: [ "$a" = "$b" ])
[ "$a" != "$b" ] # Not equal
[ -z "$a" ]       # Empty string
[ -n "$a" ]       # Non-empty string
```

**File tests**

| Test | Meaning |
|---|---|
| `-e` | File or path exists |
| `-f` | Regular file |
| `-d` | Directory |
| `-r` | Readable |
| `-w` | Writable |
| `-x` | Executable |
| `-s` | File is not empty |

Example:

```bash
if [ -f "test.txt" ]; then
    echo "File exists"
fi
```

### 2. Case Statement

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

`*)` = Default case.  
`;;` = Ends a case option.

### 3. Loops

**For loop**

```bash
for i in {1..5}; do
    echo "$i"
done
```

**While loop**

```bash
i=1
while [ "$i" -le 5 ]; do
    echo "$i"
    ((i++))
done
```

**Until loop** — Repeats until the condition becomes true.

```bash
i=1
until [ "$i" -gt 5 ]; do
    echo "$i"
    ((i++))
done
```

**C-style loop**

```bash
for ((i=1; i<=5; i++)); do
    echo "$i"
done
```

- `break` = Exit the loop.
- `continue` = Skip the current iteration.
- `break 2` = Exit two nested loops.
- `number % 2` = Remainder after division. Used to check even/odd numbers.

Example:

```bash
if (( number % 2 == 0 )); then
    echo "Even"
else
    echo "Odd"
fi
```

### 4. Handling User Input

```bash
read name
read -p "Enter your name: " name
read -s password
read -t 5 answer
read -r line
```

- `read` = Read user input.
- `-p` = Display a prompt.
- `-s` = Hide typed input.
- `-t` = Set a timeout.
- `-r` = Read input without interpreting backslashes.

**Special Parameters**

| Parameter | Meaning |
|---|---|
| `$0` | Script name |
| `$1` | First argument |
| `$2` | Second argument |
| `$#` | Number of arguments |
| `$@` | All arguments separately |
| `$*` | All arguments as one string when quoted |
| `$?` | Exit status of previous command |
| `$$` | Current shell process ID |

Example:

```bash
./backup.sh file1.txt file2.txt
```

Inside the script:
- `$0` = `./backup.sh`
- `$1` = `file1.txt`
- `$2` = `file2.txt`
- `$#` = `2`

### 5. Input and Output Redirection — VERY IMPORTANT (مهم للامتحان)

Three standard streams:

| Stream | File Descriptor | Default |
|---|---:|---|
| stdin | 0 | Keyboard/input |
| stdout | 1 | Terminal |
| stderr | 2 | Terminal |

**Redirection operators**

```bash
command > output.txt
```
Redirect stdout; overwrite the file.

```bash
command >> output.txt
```
Redirect stdout; append to the file.

```bash
command 2> errors.txt
```
Redirect stderr to a file.

```bash
command > combined.txt 2>&1
```
Redirect stdout and stderr to the same file.

```bash
command < input.txt
```
Take stdin from a file.

Remember:
- `>` = Overwrite.
- `>>` = Append.
- `2>` = Redirect errors.
- `<` = Redirect input.
- `2>&1` = Send stderr to wherever stdout is currently going.

**Pipes**

```bash
ls -l | sort
cat /etc/passwd | grep "$USER"
```

`|` sends the output of one command as the input of another.

---

## WEEK 5 — Functions, Signals & File Descriptors

### 1. Functions and Parameters

Function structure:

```bash
check_input() {
    if [ "$#" -eq 1 ]; then
        echo "Success"
        return 0
    else
        echo "Error: Requires exactly one argument."
        return 1
    fi
}
```

Calling the function:

```bash
check_input "test"
echo $?
```

- `function_name` = Function name.
- `$#` = Number of arguments passed to the function.
- `$1` = First argument.
- `$@` = All arguments.
- `return 0` = Success.
- `return 1` = Failure.
- `$?` = Exit status of the last command/function.

**Important practical question from the notes:** Create `check_input`, accept exactly one argument, print success or error, return `0` or `1`, call it with one, two, and zero arguments, and print each exit status.

### 2. Local and Global Variables

```bash
name="Ali"       # Global variable

my_function() {
    local age=20  # Local variable
    echo "$age"
}
```

- Global variable = Available throughout the script.
- Local variable = Available only inside its function.

### 3. Libraries and Arrays

`source` runs another script in the current shell.

```bash
source array_lib.sh
```

Equivalent:

```bash
. array_lib.sh
```

Array example:

```bash
COLORS=("Red" "Blue" "Green")

echo "${COLORS[0]}"
echo "${COLORS[@]}"
echo "${#COLORS[@]}"
```

- `${COLORS[0]}` = First element.
- `${COLORS[@]}` = All elements.
- `${#COLORS[@]}` = Number of elements.

### 4. Signals and trap

- Signal = A notification sent to a process.
- `SIGINT` = Signal 2, usually Ctrl+C.
- `SIGHUP` = Signal 1.

```bash
trap 'echo "Interrupted!"' SIGINT
```

This catches Ctrl+C and runs the message instead of immediately terminating the script.

```bash
trap - SIGINT
```

Restores the default SIGINT behavior.

**Important practical pattern from the lab:**

1. Define a signal-handler function.
2. Set `trap function_name SIGINT`.
3. Run a loop.
4. Press Ctrl+C and observe that the script continues.
5. Use `trap - SIGINT`.
6. Run another loop and press Ctrl+C; the script terminates.

### 5. Job Control

```bash
command &
jobs
fg %1
bg %1
kill %1
```

- `&` = Run a command in the background.
- `jobs` = List background jobs.
- `fg` = Bring a job to the foreground.
- `bg` = Continue a stopped job in the background.
- `kill` = Send a signal to a process/job.

### 6. File Descriptors and exec

Every process normally starts with:

- FD 0 = stdin
- FD 1 = stdout
- FD 2 = stderr

`exec` can change file-descriptor redirections for the current shell.

Example:

```bash
exec 3> output.txt
echo "Hello" >&3
exec 3>&-
```

- `3>` = Open file descriptor 3 for writing.
- `>&3` = Send output to FD 3.
- `3>&-` = Close FD 3.

---

## WEEK 6 — Git Fundamentals

### 1. Version Control Systems (VCS)

Version Control System = Tracks changes to files over time.

Three types:

- Local VCS = Stores versions on one computer.
- Centralized VCS = Uses one central server.
- Distributed VCS = Every user can have a complete repository copy.

Git is a distributed version control system.

### 2. The Three Git Areas — VERY IMPORTANT (مهم للامتحان)

<pre>
Working Directory
       |
       | git add
       v
Staging Area (Index)
       |
       | git commit
       v
Git Directory (.git)
</pre>

1. **Working Directory:** Files you are currently editing.
2. **Staging Area (Index):** Changes selected for the next commit.
3. **Git Directory (.git):** Stores repository history and Git data.

Commands:

```bash
git add file.txt
git commit -m "First commit"
```

- `git add` = Moves selected changes into the staging area.
- `git commit` = Saves a snapshot of staged changes in the repository.

A commit is a snapshot of the staged project at that moment.

### 3. Git Objects

| Object | Meaning |
|---|---|
| Blob | Stores file content |
| Tree | Stores directory structure and references to files/subdirectories |
| Commit | Stores a snapshot reference, author, message, parent commit and metadata |
| Tag | Gives a name/reference to a specific commit |

**Hash:** A unique identifier calculated from Git object content. A commit hash identifies a commit.

### 4. Basic Git Commands — Know What Each One Does

```bash
git --version
```
Check the installed Git version.

```bash
git init
```
`init` means **initialize**. Creates a new, empty Git repository in the current directory by creating `.git`.

```bash
git status
```
Shows modified, staged, and untracked files.

```bash
git add .
```
Stages all changes in the current directory.

```bash
git commit -m "message"
```
Creates a commit with a message.

```bash
git log
git log --oneline
```
Displays commit history; the second version shows a compact list.

```bash
git diff
```
Shows unstaged changes.

```bash
git diff --staged
```
Shows staged changes.

```bash
git show
```
Displays details of a commit or Git object.

```bash
git branch
git switch main
git switch -c new-branch
```
List branches, switch to a branch, or create and switch to a new branch.

```bash
git merge branch-name
```
Combines another branch into the current branch.

### 5. Clone and Remote Repositories

```bash
git clone https://github.com/user/repo.git
```

`clone` means **copy a repository**. It:
- Creates a local directory.
- Downloads repository files and commit history.
- Creates the `.git` directory.
- Checks out the default branch.
- Automatically sets the remote name `origin`.

```bash
git remote -v
```
Displays remote repository URLs.

```bash
git remote add origin URL
```
Connects the local repository to a remote repository named `origin`.

### 6. Undoing Changes

```bash
git restore file.txt
```
Discards unstaged changes to a tracked file.

```bash
git restore --staged file.txt
```
Removes a file from staging but keeps its changes in the working directory.

**git reset**

| Option | Effect |
|---|---|
| `--soft` | Undo commit; keep changes staged |
| `--mixed` | Undo commit; keep changes unstaged (default) |
| `--hard` | Undo commit and discard changes |

```bash
git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1
```

`HEAD~1` = The previous commit.

**git revert**

```bash
git revert COMMIT_HASH
```

Creates a new commit that reverses an earlier commit.

Important difference:
- `reset` moves the branch backward and can rewrite history.
- `revert` creates a new commit and preserves existing history.

Use `revert` for commits already shared with others.

### 7. git reflog

```bash
git reflog
```

Displays recent movements of `HEAD` (where Git's current reference has pointed).

Useful for finding commits after an accidental reset.

```bash
git reset --hard HEAD@{1}
```

Can restore the previous position shown in the reflog. It can recover committed work, not uncommitted changes that were never staged or committed.

### 8. Tags

A tag is a reference to a specific commit. Unlike a branch, it does not move as new commits are added.

```bash
git tag v1.0
```
Creates a lightweight tag.

```bash
git tag -a v1.0 -m "First release"
```
Creates an annotated tag with metadata and a message.

```bash
git tag
git show v1.0
```
List tags and show tag information.

---

## WEEK 7 — GitHub Fundamentals

### 1. Git Installation and Identity

```bash
git --version
sudo apt update
sudo apt install git
```

Configure identity before committing:

```bash
git config --global user.name "Your Name"
git config --global user.email "email@example.com"
git config --list
```

Every commit stores author and committer information. This information contributes to the commit hash.

### 2. GitHub Remote Operations

```bash
git push origin main
```
Uploads local commits to the remote `main` branch.

```bash
git push -u origin main
```
Uploads the branch and sets upstream tracking, so future push/pull commands can use the default connection.

```bash
git fetch origin
```
Downloads remote changes but does not merge them into the current branch.

```bash
git pull origin main
```
Fetches remote changes and integrates them into the current branch.

**Difference:**
- `fetch` = Download only.
- `pull` = Fetch + integrate.
- `push` = Upload local commits.

### 3. .gitignore

`.gitignore` tells Git which untracked files to ignore.

Example:

```text
.env
*.log
temp/
```

- `.env` = Ignore a file named `.env`.
- `*.log` = Ignore files ending in `.log`.
- `temp/` = Ignore the `temp` directory.

```bash
git check-ignore -v .env
```
Shows which ignore rule matches a file.

```bash
git rm --cached .env
```
Stops tracking `.env` but keeps the file on disk.

**Difference:**
- `git rm file` = Removes from Git and from disk.
- `git rm --cached file` = Removes from Git tracking only; keeps the file on disk.

### 4. Detached HEAD

Detached HEAD means HEAD points directly to a commit instead of a branch.

```bash
git checkout COMMIT_HASH
```

Return to a branch:

```bash
git switch main
```

Keep work made in detached HEAD:

```bash
git switch -c rescue-branch
```

### 5. GitHub Authentication

GitHub HTTPS operations use a Personal Access Token (PAT) instead of the account password when Git requests a password.

- Username prompt = GitHub username.
- Password prompt = Personal Access Token.

### 6. Common Git Workflow

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin REPOSITORY_URL
git push -u origin main
```

Meaning:
1. Create a local repository.
2. Stage files.
3. Save a commit.
4. Connect the GitHub remote.
5. Upload the branch.

---

# HIGH-PRIORITY EXAM CHECKLIST

1. Convert permissions between symbolic and numeric notation.
2. Understand `chmod u=rwx,g=r,o= file.txt`.
3. Know the difference between `=`, `+`, and `-` in chmod.
4. Know `sudo apt update` vs. `sudo apt upgrade`.
5. Know stdin (0), stdout (1), stderr (2).
6. Know `>`, `>>`, `2>`, `2>&1`, and `<`.
7. Understand numeric comparisons, loops, and special parameters (`$#`, `$@`, `$?`).
8. Write a function that checks the number of arguments and returns `0` or `1`.
9. Understand `trap SIGINT` and `trap - SIGINT`.
10. Understand the three Git areas and the difference between `git add` and `git commit`.
11. Know Blob, Tree, Commit, and Tag.
12. Understand what `git init`, `git clone`, `git reset`, `git revert`, and `git reflog` do.
13. Know `fetch` vs. `pull` vs. `push`.
14. Know `.gitignore` and `git rm --cached`.

**Practical code patterns to recognize:** missing conditions, missing loop statements, missing function arguments, missing `return` values, incorrect redirection operators, and missing Git commands in a sequence.
