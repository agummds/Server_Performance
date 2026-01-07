echo " Server Performance Statistics "

# CPU Usage
echo "CPU Usage:"
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "Current CPU Usage: $CPU_USAGE%"

# Memory Usage
echo "Memory Usage:"
MEMORY_USAGE=$(free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB (%.2f%%)\n", $3,$2, $3*100/$2 }')
echo "$MEMORY_USAGE"

# Disk Usage
echo "Disk Usage:"
DISK_USAGE=$(df -h | awk '$NF=="/"{printf "Used: %s / Total: %s (%.2f%%)\n", $3,$2,$5}')
echo "$DISK_USAGE"

# top 5 Processes by CPU Usage
echo "Top 5 Processes by CPU Usage:"
TOP_PROCESSES=$(ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6)
echo "$TOP_PROCESSES"

# top 5 Processes by Memory Usage
echo "Top 5 Processes by Memory Usage:"
TOP_MEM_PROCESSES=$(ps -eo pid,comm,%mem --sort=-%mem | head -n 6)
echo "$TOP_MEM_PROCESSES"