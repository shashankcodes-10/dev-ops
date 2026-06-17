# Git & GitHub Complete Beginner Guide

## 📖 Introduction

### Who Created Git?

Git was created by Linus Torvalds in 2005 to manage the development of the Linux Kernel. Git is a Distributed Version Control System (DVCS) that helps developers track changes in their code and collaborate efficiently.

### Who Created GitHub?

Tom Preston-Werner, Chris Wanstrath, and PJ Hyett launched GitHub in 2008 as a cloud platform for hosting Git repositories and collaborating with developers worldwide.

---

# 📂 Traditional File System vs Version Control System

## Traditional File System

Without Git, developers often save multiple copies of files:

```text
project-final
project-final-v2
project-final-latest
project-final-final
project-final-final-new
```

Problems:

* No history tracking
* Difficult collaboration
* Risk of overwriting code
* Hard to revert mistakes

---

## Version Control System (VCS)

Git maintains a complete history of changes.

```text
Commit 1 → Commit 2 → Commit 3 → Commit 4
```

Benefits:

* Track every change
* Collaborate with teams
* Restore previous versions
* Create branches for experimentation
* Merge code safely

---

# 🌳 Git Workflow

```text
Working Directory
        ↓
      git add
        ↓
Staging Area
        ↓
    git commit
        ↓
   Git Repository
```

---

# ⚙️ Git Configuration

## Set Username

```bash
git config --global user.name "Your Name"
```

### Use Case

Used to identify who created commits.

---

## Set Email

```bash
git config --global user.email "your@email.com"
```

### Use Case

Links commits to your GitHub account.

---

# 🚀 Initialize Repository

## git init

```bash
git init
```

### Use Case

Creates a new Git repository in the current folder.

Example:

```bash
mkdir project
cd project
git init
```

---

# 🔍 Check Repository Status

## git status

```bash
git status
```

### Use Case

Shows:

* Untracked files
* Modified files
* Staged files
* Current branch

---

# 📦 Restore Changes

## git restore

```bash
git restore file.txt
```

### Use Case

Discard local modifications in a file.

Before:

```text
Hello World
Added New Line
```

After restore:

```text
Hello World
```

---

## git restore --staged

```bash
git restore --staged file.txt
```

### Use Case

Removes file from staging area without deleting changes.

Workflow:

```bash
git add file.txt
git restore --staged file.txt
```

---

# 🗑️ Stop Tracking Files

## git rm --cached

```bash
git rm --cached file.txt
```

### Use Case

Stops Git from tracking a file but keeps it locally.

Commonly used with `.gitignore`.

Example:

```bash
git rm --cached .env
```

---

# 📜 View Commit History

## git log

```bash
git log
```

### Use Case

Shows detailed commit history.

---

## git log --oneline

```bash
git log --oneline
```

### Use Case

Displays a compact commit history.

Example:

```text
a1b2c3 Initial Commit
d4e5f6 Added Login Page
g7h8i9 Fixed Bug
```

---

# 🌿 Branch Management

## View Branches

```bash
git branch
```

### Use Case

Lists all local branches.

---

## Create and Switch Branch

## git checkout -b

```bash
git checkout -b dev
```

### Use Case

Creates and switches to a new branch.

Equivalent to:

```bash
git branch dev
git checkout dev
```

---

## Switch Branch

## git checkout

```bash
git checkout main
```

### Use Case

Move to another branch.

---

## Modern Alternative

## git switch

```bash
git switch dev
```

### Use Case

Modern and cleaner way to switch branches.

Create and switch:

```bash
git switch -c feature
```

---

# 🔐 GitHub Authentication

GitHub no longer supports passwords for Git operations.

Two popular methods:

## Personal Access Token (PAT)

### What is PAT?

A Personal Access Token acts as a password replacement.

Example:

```text
ghp_xxxxxxxxxxxxxxxxxxx
```

### Use Case

Used with HTTPS repositories.

Clone:

```bash
git clone https://github.com/username/repository.git
```

When prompted:

```text
Username: GitHub Username
Password: Personal Access Token
```

---

## SSH Authentication

### Generate SSH Key

```bash
ssh-keygen -t ed25519 -C "your@email.com"
```

---

### Start SSH Agent

```bash
eval "$(ssh-agent -s)"
```

---

### Add SSH Key

```bash
ssh-add ~/.ssh/id_ed25519
```

---

### Copy Public Key

```bash
cat ~/.ssh/id_ed25519.pub
```

Add the key to GitHub SSH Settings.

---

### Test Connection

```bash
ssh -T git@github.com
```

---

# 🌐 Remote Repository Commands

## View Remote

```bash
git remote -v
```

### Use Case

Displays configured remote repositories.

---

## Add Remote

```bash
git remote add origin <repository-url>
```

Example:

```bash
git remote add origin https://github.com/user/project.git
```

### Use Case

Connect local repository to GitHub.

---

## Change Remote URL

```bash
git remote set-url origin <new-url>
```

### Use Case

Update repository URL.

Example:

```bash
git remote set-url origin git@github.com:user/project.git
```

---

# ☁️ Push Changes

## git push origin

```bash
git push origin main
```

### Use Case

Uploads local commits to GitHub.

---

# 📥 Pull Changes

## git pull origin

```bash
git pull origin main
```

### Use Case

Downloads latest changes and merges them.

---

# 📋 Clone Repository

## git clone

```bash
git clone https://github.com/user/project.git
```

### Use Case

Creates a local copy of an existing repository.

---

# 🍴 Forking

## What is Forking?

A Fork creates your own copy of someone else's repository under your GitHub account.

```text
Original Repository
        ↓
      Fork
        ↓
Your GitHub Account
```

### Use Case

* Open Source Contributions
* Learning Projects
* Experimentation

---

# 🔄 Sync Fork

A fork can become outdated when the original repository changes.

### Add Upstream

```bash
git remote add upstream https://github.com/original/repository.git
```

---

### Fetch Changes

```bash
git fetch upstream
```

---

### Merge Changes

```bash
git merge upstream/main
```

---

### Push Updated Fork

```bash
git push origin main
```

---

# 🚫 .gitignore

## What is .gitignore?

A file used to tell Git which files or folders should not be tracked.

Example:

```gitignore
node_modules/
.env
dist/
*.log
```

### Use Case

Avoid pushing:

* Secrets
* API Keys
* Build files
* Dependencies
* Logs

Example:

```bash
git rm --cached .env
echo ".env" >> .gitignore
git add .gitignore
git commit -m "Ignore environment file"
```

---

# 🎯 Summary

Git helps developers:

* Track code changes
* Collaborate effectively
* Create branches safely
* Revert mistakes
* Maintain project history

GitHub helps developers:

* Host repositories
* Collaborate globally
* Manage pull requests
* Automate workflows
* Contribute to open-source projects

Happy Coding! 🚀
