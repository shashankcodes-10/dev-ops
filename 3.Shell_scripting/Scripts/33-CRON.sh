What is Cron?

Cron is a Linux scheduler.

It allows you to run scripts automatically.

Examples:

Run backup every day at 2 AM
Clean logs every Sunday
Check disk space every hour
Restart a service every night

Instead of:

bash backup.sh

manually,

Linux runs it automatically.

The Command
crontab -e

This opens your personal cron schedule.

You add entries like:

* * * * * command
Cron Format
* * * * *
| | | | |
| | | | +---- Day of week (0-7)
| | | +------ Month (1-12)
| | +-------- Day of month (1-31)
| +---------- Hour (0-23)
+------------ Minute (0-59)
Example 1
* * * * * echo "Hello"

Means:

Every minute

Example 2
0 * * * * command

Means:

Every hour at minute 0

Examples:

1:00
2:00
3:00
Example 3
0 2 * * * backup.sh

Means:

Every day at 2:00 AM

Example 4
0 9 * * 1 script.sh

Means:

Every Monday at 9:00 AM

View Cron Jobs
crontab -l
Remove Cron Jobs
crontab -r

Be careful — this removes all your cron jobs.

Real DevOps Example

Suppose you have:

disk_check.sh

You want it to run every hour.

Cron entry:

0 * * * * /home/shashank/disk_check.sh