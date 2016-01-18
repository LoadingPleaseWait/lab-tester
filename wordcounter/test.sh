#!/bin/bash

input="$(pwd)/wordcounter/python-input.txt"
cd /home/$1/wordCounterLab/
# run the lab by importing it in python console
output=$(python3 -c "import wordcounter;wordcounter.wordCounter();quit()" < $input)
echo $output
count=$(wc -w analysis2.txt)
count=${count/" analysis2.txt"/} # take out the " analysis2.txt" part
echo "Actual word count:" $count
# say if student was correct
if [[ ${output/$count/} != $output ]]; then
  echo "Correct output"
elif [[ $output < $count && $(($count - $output)) -le $(($count / 10)) ]]; then
  # only -10% off
  echo "Close enough"
elif [[ $output > $count && $(($output - $count)) -le $(($count / 10)) ]]; then
  # only +10% off
  echo "Close enough"
else
  echo "Incorrect output"
fi
