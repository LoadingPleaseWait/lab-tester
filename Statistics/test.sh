#!/bin/bash

cat /home/$1/Statistics/stats.py
cd /home/$1/Statistics/
# run the lab
python3 stats.py data.txt output.txt
answer=$(cat output.txt)
echo $answer
# say if student was correct
if [[ ${answer//"50.64"} != "$answer" && ${answer//"51"} != "$answer" && ${answer//"100"} != "$answer" ]]; then
  echo "Correct output"
else
  echo "Incorrect output"
fi
