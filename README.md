# Linux Server Health Monitoring Script

## 📌 Overview
This project is a Bash-based system monitoring tool that collects and displays key Linux server metrics such as CPU usage, memory usage, disk usage, uptime, and running processes.

The script is designed to simulate basic real-world monitoring tasks performed by Linux administrators.

---

## ⚙️ Features
- CPU usage monitoring
- Memory usage tracking
- Disk usage analysis
- System uptime check
- Process monitoring
- Output formatting using parsing (awk)
- Optional logging of results
- Automation using cron jobs

---

## 🛠️ Technologies Used
- Bash Scripting
- Linux Commands:
  - `top`
  - `free`
  - `df`
  - `uptime`
  - `ps`
- Text Processing:
  - `awk`
  - `grep`
- Cron (for scheduling)

---

## ▶️ How to Run

```bash
chmod +x monitor.sh
./monitor.sh
