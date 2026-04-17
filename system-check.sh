#!/bin/bash
# -------------------------------------------
# Script: system-check.sh
# Purpose: Check system health (computer/server)
# -------------------------------------------

# 1. Write the date and time to the file
echo "===== System Health Report =====" > system_report.log
echo "Date and Time: $(date)" >> system_report.log
echo "" >> system_report.log

# 2. Check internet connectivity (ping google.com)
echo "🔎 Internet Test:" >> system_report.log
ping -c 3 google.com >> system_report.log
echo "" >> system_report.log

# 3. Check disk space
echo "💽 Disk Space:" >> system_report.log
df -h >> system_report.log
echo "" >> system_report.log

# 4. Top 5 largest files in /home
echo "📂 Top 5 largest files in /home:" >> system_report.log
find /home -type f -exec du -h {} + 2>/dev/null | sort -rh | head -5 >> system_report.log
echo "" >> system_report.log

# 5. Create a backup of a directory (replace 'username' with your name)
echo "📦 Creating backup of /home/username ..." >> system_report.log
tar -czf backup_$(date +%F).tar.gz /home/username 2>/dev/null
echo "Backup created: backup_$(date +%F).tar.gz" >> system_report.log

# 6. Top 10 processes by CPU usage
echo "🔥 Top 10 Processes by CPU:" >> system_report.log
ps aux --sort=-%cpu | head -11 >> system_report.log
echo "" >> system_report.log

# 7. Top 10 processes by Memory usage
echo "🧠 Top 10 Processes by Memory:" >> system_report.log
ps aux --sort=-%mem | head -11 >> system_report.log
echo "" >> system_report.log

# End
echo "" >> system_report.log
echo "✅ Check complete!" >> system_report.log
