#!/bin/bash

# first program argument is username

# figure out if pseudorandom number is a perfect number
input=$RANDOM
echo $input > input.txt # put input in a temporary file
cat /home/$1/perfect_numbers.py
echo
output=$(python3 /home/$1/perfect_numbers.py < input.txt)
echo $input
sum=0
correct=true
# let's actually compute the sum of the divisors ourselves
for((i=1;$i < $(($input / 2 + 1));i+=1)); do
  if [[ $(($input % $i)) == 0 ]]; then
    sum=$(($i + $sum))
  fi
done
# figure out if they were correct or not with the word not
if [[ sum != $input ]]; then
  if [[ ${output//"not"} == "$output" ]]; then
    correct=false
  fi
elif [[ ${output//"not"} != "$output" ]]; then
  correct=false
fi
echo "Sum is" $sum
echo $output
if [[ "$correct" == true ]]; then
  # output contained all the divisors
  echo "Correct output"
else
  echo "Incorrect output"
fi
rm input.txt
