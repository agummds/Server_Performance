# Server Performance Statistics Script

This project provides a simple Bash script (`server-stats.sh`) to analyze basic server performance statistics on a Linux system.

The script is designed to run on most Linux servers and containers and displays CPU usage, memory usage, disk usage, and top resource-consuming processes.

---

## 📊 Features

- Total CPU usage
- Total memory usage (used vs free with percentage)
- Total disk usage (used vs free with percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

---

## 🛠 Requirements

### Recommended Environment
- Linux (Ubuntu, Debian, or other GNU/Linux distributions)
- Bash or POSIX-compatible shell

### Required Packages
For full functionality, the following packages should be installed:

```bash
procps
util-linux
