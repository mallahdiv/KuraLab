#!/bin/bash



ps -e --format ppid,pid,%cpu,%mem,cmd

git add file5_3.sh
git commit -m "Dia5_3"
git push

echo "Task is completed!"
