#!/bin/bash
LOG_FILE="health.log"

echo "===== SERVER HEALTH REPORT ====="
echo "Date: $(date)"
echo ""

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

echo "CPU Usage: $CPU%"

if (( $(echo "$CPU > 70" | bc -l) )); then
    echo "WARNING: High CPU Usage!"
fi

# Memory
echo ""
echo "---- Memory Usage ----"
free -h | awk 'NR==2{print "Used: " $3 " / Total: " $2}'

# Disk
echo ""
echo "---- Disk Usage ----"
df -h | awk '$NF=="/mnt/c"{print "Used: " $3 " / Total: " $2 " (" $5 ")"}'

# Uptime
echo ""
echo "---- Uptime ----"
uptime -p

# Processes
echo ""
echo "---- Top Processes ----"
ps aux --sort=-%cpu | head -5