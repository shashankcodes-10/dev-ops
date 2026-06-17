# Git Commands Roadmap (Beginner → GitHub Push)

Follow these commands in order when starting a new Git project.

---

## 1. Configure Git (One Time Setup)

### Set Username

```bash
git config --global user.name "Your Name"
```

Use: Sets the author name for commits.

### Set Email

```bash
git config --global user.email "your@email.com"
```

Use: Sets the author email for commits.

### Verify Configuration

```bash
git config --list
```

Use: Displays current Git configuration.

---

## 2. Initialize Repository

### Create Git Repository

```bash
git init
```

Use: Converts current folder into a Git repository.

---

## 3. Check Repository Status

### View File Status

```bash
git status
```

Use: Shows untracked, modified, and staged files.

---

## 4. Add Files to Staging Area

### Add Specific File

```bash
git add file.txt
```

Use: Stages a single file.

### Add All Files

```bash
git add .
```

Use: Stages all changes.

---

## 5. Create Commit

### Commit Changes

```bash
git commit -m "Commit Message"
```

Use: Saves staged changes to Git history.

---

## 6. View Commit History

### Detailed History

```bash
git log
```

Use: Shows complete commit history.

### Short History

```bash
git log --oneline
```

Use: Shows compact commit history.

---

## 7. Restore Changes

### Discard File Changes

```bash
git restore file.txt
```

Use: Reverts file to last committed state.

### Unstage File

```bash
git restore --staged file.txt
```

Use: Removes file from staging area.

---

## 8. Stop Tracking File

### Untrack File

```bash
git rm --cached file.txt
```

Use: Removes file from Git tracking but keeps it locally.

---

## 9. Branch Management

### View Branches

```bash
git branch
```

Use: Lists local branches.

### Create Branch

```bash
git branch dev
```

Use: Creates new branch.

### Create and Switch Branch

```bash
git checkout -b dev
```

Use: Creates and switches to branch.

### Switch Branch

```bash
git checkout main
```

Use: Moves to another branch.

### Modern Alternative

```bash
git switch dev
```

Use: Switches branch.

### Create and Switch (Modern)

```bash
git switch -c feature
```

Use: Creates and switches branch.

---

## 10. Connect GitHub Repository

### View Remote

```bash
git remote -v
```

Use: Displays connected remote repositories.

### Add Remote

```bash
git remote add origin <repo-url>
```

Use: Connects local repository to GitHub.

Example:

```bash
git remote add origin https://github.com/user/project.git
```

### Change Remote URL

```bash
git remote set-url origin <new-url>
```

Use: Updates repository URL.

---

## 11. Push Code to GitHub

### First Push

```bash
git push -u origin main
```

Use: Pushes code and sets upstream branch.

### Regular Push

```bash
git push origin main
```

Use: Uploads latest commits to GitHub.

---

## 12. Download Changes

### Pull Latest Changes

```bash
git pull origin main
```

Use: Downloads and merges latest changes.

---

## 13. Clone Existing Repository

### Clone Repository

```bash
git clone <repo-url>
```

Use: Creates local copy of GitHub repository.

Example:

```bash
git clone https://github.com/user/project.git
```

---

# Daily Git Workflow

```bash
# Check Status
git status

# Add Changes
git add .

# Commit Changes
git commit -m "Your Message"

# Push Changes
git push origin main
```

---

# Branch Workflow

```bash
# Create Branch
git switch -c feature/login

# Work on Code
git add .
git commit -m "Add Login Feature"

# Push Branch
git push origin feature/login
```

---

# Complete Beginner Flow

```bash
git config --global user.name "Your Name"

git config --global user.email "your@email.com"

git init

git status

git add .

git commit -m "Initial Commit"

git remote add origin <repo-url>

git push -u origin main
```

This is the minimum Git workflow every developer should know before learning advanced topics like Merge, Rebase, Stash, Cherry-Pick, Revert, Reset, and Pull Requests.
