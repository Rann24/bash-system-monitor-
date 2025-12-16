# Automated Linux System Monitor

## Overview
This project is a Bash script that automates the monitoring of system health (CPU, Memory, Disk) and network connectivity. It runs in the background using Cron and logs data to a history file for troubleshooting.

## Key Features
- **Live Monitoring:** Real-time resource usage checks.
- **Connectivity Logic:** Uses `curl` to verify internet access handling.
- **Automated Logging:** Appends data to `system_history.log`.
- **Cron Scheduling:** Designed for 24/7 background execution.
