#!/bin/bash

python3 /home/$1/$3 < $2/input.txt # actually run the program

# compare output to sample correct output
output=$(python3 /home/$1/$3 < $2/input.txt)
answer=$(cat $2/output.txt)
if [[ "$output" == "$answer" ]]; then
  echo "Output matches"
else
  echo "Output does not match"
fi
