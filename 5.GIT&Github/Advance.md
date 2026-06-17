# 🚀 Advanced Git & GitHub

---

# 🔀 Pull Requests (PR)

## What is a Pull Request?

A Pull Request (PR) is a request to merge changes from one branch into another.

Example:

```text
feature/login
       ↓
Pull Request
       ↓
main
```

## Workflow

```bash
git switch -c feature/login
# Make changes

git add .
git commit -m "Add login page"

git push origin feature/login
```

Then create a Pull Request on GitHub.

## Use Case

* Code Review
* Team Collaboration
* CI/CD Validation
* Approval Before Merge

---

# 💾 Git Stash

## Save Current Work Temporarily

```bash
git stash
```

## Use Case

You are working on a feature and suddenly need to switch branches.

Example:

```bash
git stash
git switch main
```

---

## View Stashes

```bash
git stash list
```

---

## Restore Latest Stash

```bash
git stash pop
```

## Use Case

Continue your unfinished work later.

---

# ↩️ Git Revert

## Undo a Commit Safely

```bash
git revert <commit-hash>
```

Example:

```bash
git revert abc123
```

## Use Case

When a bad commit has already been pushed to GitHub.

Creates a new commit that undoes previous changes.

Before:

```text
A --- B --- C
```

After:

```text
A --- B --- C --- D
                  ↑
              Revert
```

## Best For

* Shared branches
* Production fixes
* Team projects

---

# 🔄 Git Reset

Git Reset moves HEAD to another commit.

---

## Soft Reset

```bash
git reset --soft HEAD~1
```

### Result

* Commit removed
* Changes preserved
* Changes staged

### Use Case

Wrong commit message or want to combine commits.

---

## Mixed Reset (Default)

```bash
git reset HEAD~1
```

### Result

* Commit removed
* Changes preserved
* Changes unstaged

### Use Case

Need to rework files before committing again.

---

## Hard Reset

```bash
git reset --hard HEAD~1
```

### Result

* Commit removed
* Changes deleted

### Use Case

Discard unwanted work completely.

⚠️ Dangerous command.

---

# 🍒 Git Cherry-Pick

## Copy Specific Commit

```bash
git cherry-pick <commit-hash>
```

Example:

```bash
git cherry-pick abc123
```

## Use Case

Bring only one commit from another branch.

Example:

```text
main:
A --- B

dev:
A --- B --- C --- D
```

Need only D?

```bash
git cherry-pick D
```

Result:

```text
main:
A --- B --- D'
```

Perfect for hotfixes.

---

# 🔗 Git Merge

## Merge One Branch Into Another

```bash
git merge dev
```

## Use Case

Combine complete history from another branch.

Before:

```text
main:
A --- B --- C

dev:
A --- B --- D --- E
```

After:

```text
A --- B --- C -------- M
       \              /
        D --- E -----/
```

---

# 🔄 Git Rebase

## Replay Commits On Top Of Another Branch

```bash
git rebase main
```

## Use Case

Update your feature branch with latest main changes.

Before:

```text
main:
A --- B --- C

dev:
A --- B --- D --- E
```

After Rebase:

```text
A --- B --- C --- D' --- E'
```

Cleaner history.

---

# ⚔️ Git Merge vs Git Rebase

## Git Merge

```text
A --- B --- C -------- M
       \              /
        D --- E -----/
```

### Advantages

* Preserves complete history
* Safe for shared branches
* Easy collaboration

### Disadvantages

* Extra merge commits
* History becomes cluttered

---

## Git Rebase

```text
A --- B --- C --- D' --- E'
```

### Advantages

* Clean history
* Easier to read logs
* Linear commit structure

### Disadvantages

* Rewrites commit history
* Dangerous on shared branches

---

## Industry Rule

### Shared Branch

Use:

```bash
git merge
```

### Personal Feature Branch

Use:

```bash
git rebase main
```

---

# 🌳 Branching Strategies

A branching strategy defines how teams organize branches.

---

# 1️⃣ GitHub Flow (Most Common Today)

```text
main
 │
 ├── feature/login
 ├── feature/cart
 └── feature/payment
```

Workflow:

```text
Create Branch
      ↓
Develop
      ↓
Pull Request
      ↓
Review
      ↓
Merge to Main
```

## Use Case

* Startups
* SaaS Products
* DevOps Teams
* Continuous Deployment

### Advantages

* Simple
* Fast
* Easy to learn

### Most popular modern workflow.

---

# 2️⃣ Git Flow

```text
main
 │
 ├── develop
 │      │
 │      ├── feature/*
 │      └── release/*
 │
 └── hotfix/*
```

## Use Case

Large enterprise applications.

### Advantages

* Structured
* Separate release cycle

### Disadvantages

* Too many branches
* Complex for small teams

---

# 3️⃣ Trunk-Based Development

```text
main
 │
 ├── feature1
 ├── feature2
 └── feature3
```

Branches live for a very short time.

Changes merged daily.

## Used By

* Google
* Facebook
* Netflix
* Modern DevOps teams

### Advantages

* Fewer merge conflicts
* Faster releases

---

# 4️⃣ Release Branch Strategy

```text
main
 │
 ├── release-v1
 ├── release-v2
 └── release-v3
```

## Use Case

Applications supporting multiple versions simultaneously.

Example:

```text
v1.0 (still supported)
v2.0 (current)
v3.0 (development)
```

---

# 🏆 Most Used Branching Strategies Today

### 1. GitHub Flow ⭐

Most common for:

* Startups
* Cloud Projects
* DevOps Teams
* CI/CD Pipelines

### 2. Trunk-Based Development ⭐

Most common for:

* Large Tech Companies
* High Deployment Frequency Teams

### 3. Git Flow

Still used in:

* Enterprise Applications
* Legacy Systems

---

# 🎯 Advanced Git Cheat Sheet

```bash
# Stash Changes
git stash
git stash pop

# Revert Commit
git revert <hash>

# Reset Commit
git reset --soft HEAD~1
git reset HEAD~1
git reset --hard HEAD~1

# Cherry Pick
git cherry-pick <hash>

# Merge Branch
git merge dev

# Rebase Branch
git rebase main

# Create PR
git push origin feature-branch

# View Graph
git log --oneline --graph --all
```

## Recommended Learning Order

1. Git Basics
2. Branching
3. Pull Requests
4. Merge
5. Rebase
6. Stash
7. Reset
8. Revert
9. Cherry-Pick
10. Branching Strategies

Master these concepts and you'll be comfortable with Git workflows used by most software and DevOps teams.
