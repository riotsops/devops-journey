#!/usr/bin/env python3
import os
import subprocess

print("=== System Health Check ===")

result = subprocess.run(['df', '/storage/emulated/0'], 
                       capture_output=True, text=True)

lines = result.stdout.strip().split('\n')
disk_line = lines[1]
columns = disk_line.split()
disk_percent = int(columns[4].replace('%', ''))
print(f"Disk usage: {disk_percent}%")

if disk_percent > 90:
 print("Warning: disk space is almost full")
else:
 print("Safe: disk space isnt full")
