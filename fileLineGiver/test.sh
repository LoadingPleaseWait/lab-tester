#!/bin/bash

# first program argument is username

cat /home/$1/fileLineGiver/fileLines.py
input="$(pwd)/fileLineGiver/python-input.txt"
cd /home/$1/fileLineGiver/
# run the lab by importing it in python console
output=$(python3 -c "import fileLines; fileLines.lineGiver(); quit();" < $input)
echo $output
correct=$(head -n 3 sherlock.txt | tail -n 1)
echo "Correct: "$correct
# say if student was correct
if [[ ${correct/$output/} != $correct || ${output/$correct/} != $output ]]; then
  echo "Correct output"
else
  echo "Incorrect output"
fi
