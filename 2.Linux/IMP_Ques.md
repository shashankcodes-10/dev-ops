

## DevOps Linux Server Monitoring & Automation

### Objective

This week focused on Linux system administration and automation. The tasks covered user management, SSH security, file permissions, log analysis, volume management, and process monitoring—core skills required for DevOps engineers managing Linux production servers.

---

# 1. User & Group Management

## Understanding Linux User Management

Linux stores user and group information in:

* `/etc/passwd` – User account information
* `/etc/group` – Group information
* `/etc/shadow` – Encrypted passwords

### Tasks Performed

### Create a User

```bash
sudo useradd -m -s /bin/bash john
```

### Set Password

```bash
sudo passwd john
```

### Create Group

```bash
sudo groupadd devops_team
```

### Add User to Group

```bash
sudo usermod -aG devops_team john
```

### Grant Sudo Access

```bash
sudo usermod -aG sudo john
```

### Verify User Information

```bash
id john
groups john
```

### Restrict SSH Access

Edited SSH configuration:

```bash
sudo nano /etc/ssh/sshd_config
```

Added:

```text
DenyUsers john
```

Validate configuration:

```bash
sudo sshd -t
```

Restart SSH:

```bash
sudo systemctl restart ssh
```

Verification:

```bash
sudo sshd -T | grep denyusers
```

---

# 2. File & Directory Permissions

### Create Workspace Directory

```bash
sudo mkdir /devops_workspace
```

### Create File

```bash
touch /devops_workspace/project_notes.txt
```

### Set Ownership

```bash
sudo chown john:devops_team project_notes.txt
```

### Set Permissions

Owner: Read, Write

Group: Read

Others: No Access

```bash
chmod 640 project_notes.txt
```

Verification:

```bash
ls -l project_notes.txt
```

Expected Output:

```text
-rw-r----- 1 john devops_team project_notes.txt
```

---

# 3. Log File Analysis with Grep, AWK & Sed

## Download Log File

```bash
wget <log-file-url>
```

### Search for Errors

```bash
grep -i "error" logfile.txt
```

Observation:

No direct occurrences of the word "error" were found.

### Search Authentication Failures

```bash
grep -i "fail" logfile.txt
```

### Extract Fields with AWK

Example:

```bash
awk '{print $1,$2,$3}' logfile.txt
```

Used to extract timestamps and analyze log structure.

### Redact IP Addresses

```bash
sed -E 's/[0-9]{1,3}(\.[0-9]{1,3}){3}/[REDACTED]/g' logfile.txt
```

Explanation:

* `[0-9]{1,3}` → Matches one to three digits
* `\.` → Matches a literal dot
* `(...){3}` → Repeats three times

Result:

```text
192.168.1.1
```

became:

```text
[REDACTED]
```

### Find Most Frequent Entries

```bash
sort logfile.txt | uniq -c | sort -nr | head -10
```

---

# 4. Volume Management & Disk Usage

## Verify Attached Volumes

```bash
lsblk
```

Output:

```text
nvme0n1
nvme1n1
```

Observations:

* `nvme0n1` = Root EBS Volume
* `nvme1n1` = Additional 10GB EBS Volume

### Check Filesystem

```bash
sudo file -s /dev/nvme1n1
```

### Create Mount Point

```bash
sudo mkdir /data
```

### Format Volume

```bash
sudo mkfs.ext4 /dev/nvme1n1
```

### Mount Volume

```bash
sudo mount /dev/nvme1n1 /data
```

### Verify Mount

```bash
df -h
```

```bash
mount | grep data
```

```bash
lsblk
```

Output:

```text
nvme1n1 10G disk /data
```

### Create File on Mounted Volume

```bash
sudo touch /data/file1
```

### Unmount Volume

```bash
cd ~
sudo umount /data
```

Learned:

* Cannot unmount if currently inside the mounted directory.
* Error:

```text
target is busy
```

occurs when the mount point is in use.

---

# 5. Process Management & Monitoring

### Start Background Process

```bash
ping google.com > ping_test.log &
```

### View Background Jobs

```bash
jobs
```

### Find Process

```bash
ps -ef | grep ping
```

### Monitor Using Top

```bash
top
```

### Monitor Using Htop

```bash
htop
```

### View Log Output

```bash
tail -f ping_test.log
```

### Kill Process

```bash
kill <PID>
```

or

```bash
pkill ping
```

### Verify Process Termination

```bash
ps -ef | grep ping
```

```bash
jobs
```

---

# Key Learnings

* Linux user and group administration
* SSH access control using `sshd_config`
* File ownership and permission management
* Log analysis using Grep, AWK, and Sed
* Regular expressions for log sanitization
* AWS EBS volume attachment and mounting
* Understanding `/dev`, block devices, and mount points
* Background process management
* Monitoring processes using `ps`, `top`, and `htop`
* Safe process termination and verification


