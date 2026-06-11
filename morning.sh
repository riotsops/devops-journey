#!/bin/bash
PROJECT=~/devops-journey
NAME="riotsops"
echo "Day started!"
echo "Checking devops-journey folder..."
ls $PROJECT
echo "Git status:"
git -C ~/devops-journey status
echo "Ready to learn!"
echo "Current date and time:"
date
echo "Learning DevOps, $NAME!"

HOUR=$(date +%H);
if [ $HOUR -lt 12 ]; then 
  echo "Good Morning, Have a nice day"
elif [ $HOUR -gt 12 -a $HOUR -lt 17 ]; then
 echo "good afternoon"
else
  echo "Good evening, Hope your day went good"
fi

DISK=$(df /storage/emulated/0 | tail -1 | awk {'print $5'} | tr -d '%')
if [ $DISK -gt 90 ]; then
 echo "storage is about to full - clean it"
else
 echo "storage is fine" 
fi

MEM=$(free | grep Mem | awk {'printf "%d", $3/$2 * 100'})
if [ $MEM -gt 90 ]; then
 echo " ram is running out "
else
 echo " Ram is good "
fi

CPU_IDLE=$(top -bn1 | grep "cpu" | awk {'print $5'} | grep -o '[0-9]*' | head -1)
CPU_IDLE=$((CPU_IDLE /8))
if [ $CPU_IDLE -lt 20 ]; then
 echo "CPU IS GETTING USED MORE"
else 
 echo " CPU usage is normal"
fi

