# 🛠️ Bash Scripts for DevOps

This repository contains practical Bash scripts for system monitoring and automation tasks, useful for DevOps learning and daily operations.

---

## 🔧 Scenario: System Health Check Script

### 🎯 Objective:
To automate system monitoring using Bash. This script performs a basic system check that can be scheduled with `cron` or run manually to monitor server health.

### 📋 What it does:
- Logs the current date/time.
- Pings `google.com` to check internet connectivity.
- Checks disk usage with `df -h`.
- Finds the top 5 largest files in `/home`.
- Creates a compressed backup of a directory.
- Saves all results in `system_report.log`.

---

## 📁 Files

| File | Description |
|------|-------------|
| `system-check.sh` | Main Bash script to perform health check |
| `README.md` | Project description and scenario explanation |

---

## 🧠 Skills practiced:
- Bash scripting
- Disk monitoring
- Network diagnostics
- File backup using `tar`
- Logging and automation

---

## 🚀 Usage

```bash
chmod +x system-check.sh
./system-check.sh
