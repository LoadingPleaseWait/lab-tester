#!/bin/bash

# first program argument is username

cat /home/$1/fileSorter/fileSorter.py
input="$(pwd)/fileSorter/python-input.txt"
cd /home/$1/fileSorter/
# run the lab
output=$(python3 fileSorter.py < $input)
echo $output
# say if student was correct
diff wordsSorted.txt solution.txt --report-identical-files --ignore-all-space
