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

MEM=$(free | grep Mem | awk {'printf "%d", $3/$2'})
if [ $MEM -gt 90 ]; then
 echo " ram is running out "
else
 echo " Ram is good "
fi

