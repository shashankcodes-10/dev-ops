# 🎫 Jira & Jira Tickets

---

## What is Jira?

Jira is a project management and issue tracking tool developed by Atlassian.

It helps teams:

* Track tasks
* Report bugs
* Plan features
* Manage sprints
* Monitor project progress

Jira is commonly used by:

* Software Developers
* DevOps Engineers
* QA Engineers
* Product Managers
* Scrum Masters

---

# Why Do Companies Use Jira?

Imagine a team of 20 developers working on the same project.

Without Jira:

```text
Developer A: Working on login page
Developer B: Working on dashboard
Developer C: Fixing bug
Developer D: Updating database
```

Nobody knows:

* Who is working on what
* Which tasks are completed
* Which bugs are pending
* What should be deployed

Jira solves this problem.

---

# What is a Jira Ticket?

A Jira Ticket is a work item assigned to a team member.

Example:

```text
PROJECT-101
Implement Login Page
Status: In Progress
Assigned To: Shashank
Priority: High
```

Every task, bug, or feature usually has its own ticket.

---

# Types of Jira Tickets

## Story

New feature implementation.

Example:

```text
DEV-101
Create Login Page
```

---

## Bug

Fix an issue.

Example:

```text
DEV-102
Login Button Not Working
```

---

## Task

General work item.

Example:

```text
DEV-103
Update Documentation
```

---

## Epic

Large feature containing multiple stories.

Example:

```text
Epic:
User Authentication

Stories:
DEV-101 Login
DEV-102 Registration
DEV-103 Forgot Password
```

---

# Typical Jira Workflow

```text
To Do
   ↓
In Progress
   ↓
Code Review
   ↓
Testing
   ↓
Done
```

Example:

```text
DEV-101 Login Page

Status:
To Do
   ↓
In Progress
   ↓
Code Review
   ↓
Done
```

---

# Jira and Git Together

In most companies, developers create branches using the Jira ticket number.

Example Ticket:

```text
DEV-101
Implement Login Page
```

Branch:

```bash
git switch -c DEV-101-login-page
```

---

# Commit Messages with Jira

Most teams include the ticket number in commit messages.

Example:

```bash
git commit -m "DEV-101 Add login page UI"
```

Benefits:

* Easier tracking
* Better auditing
* Automatic Jira linking

---

# Pull Request with Jira

Example:

```text
Branch:
DEV-101-login-page

Pull Request:
DEV-101 Add Login Page
```

GitHub and Jira can automatically connect the PR to the ticket.

---

# Real World Workflow

## Step 1: Pick Ticket

```text
DEV-101
Implement Login Page
```

---

## Step 2: Create Branch

```bash
git switch -c DEV-101-login-page
```

---

## Step 3: Write Code

```bash
git add .
git commit -m "DEV-101 Add login page"
```

---

## Step 4: Push Branch

```bash
git push origin DEV-101-login-page
```

---

## Step 5: Create Pull Request

```text
PR:
DEV-101 Add Login Page
```

---

## Step 6: Code Review

Reviewer checks:

* Code Quality
* Security
* Best Practices

---

## Step 7: Merge

```bash
git merge DEV-101-login-page
```

or

```bash
git rebase main
```

depending on company workflow.

---

## Step 8: Move Ticket to Done

```text
DEV-101
Status: Done
```

---

# Agile Sprint Example

Sprint Duration:

```text
2 Weeks
```

Assigned Tickets:

```text
DEV-101 Login Page
DEV-102 Registration
DEV-103 Forgot Password
DEV-104 Fix Session Bug
```

Developers complete tickets and move them across the Jira board.

---

# Jira Terms Every Developer Should Know

| Term         | Meaning                 |
| ------------ | ----------------------- |
| Project      | Collection of tickets   |
| Ticket       | Single work item        |
| Epic         | Large feature           |
| Story        | Feature request         |
| Bug          | Issue to fix            |
| Task         | General work            |
| Sprint       | Fixed development cycle |
| Backlog      | Pending work            |
| Assignee     | Person responsible      |
| Status       | Current progress        |
| Story Points | Effort estimation       |

---

# Why DevOps Engineers Use Jira

DevOps teams commonly use Jira for:

* Infrastructure Requests
* CI/CD Tasks
* Cloud Migrations
* Deployment Activities
* Incident Tracking
* Production Bugs

Example:

```text
DEVOPS-101
Setup Jenkins Pipeline

DEVOPS-102
Create AWS EC2 Environment

DEVOPS-103
Configure Terraform Infrastructure
```

---

# Interview Question

### Q: How is Jira used with Git?

Answer:

"Jira is used for project and task tracking. Each task is represented by a Jira ticket. Developers create feature branches based on ticket numbers, commit code with the ticket ID, create Pull Requests for review, and update the Jira ticket status as work progresses. This provides complete traceability from requirement to deployment."
