#!/bin/bash

# first program argument is username

# add digits in a pseudorandom number
input=$RANDOM
number=$input
sum=0
echo $number
while [[ $number > 0 ]]; do
  sum=$(($sum+$number % 10))
  number=$(($number / 10))
done
echo "Correct sum is " $sum

# check if program's output contains the sum
echo $input > input.txt
output=$(python3 /home/$1/sum_digits.py < input.txt)
echo $output
if [[ ${output//$(($sum))} != "$output" ]]; then
  # output contained sum
  echo "Correct output"
else
  echo "Incorrect output"
fi
rm input.txt
