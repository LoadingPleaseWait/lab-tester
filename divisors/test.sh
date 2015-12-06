#!/bin/bash

# first program argument is username

# divisors for a pseudorandom number
input=$RANDOM
echo $input > input.txt # put input in a temporary file
cat /home/$1/divisors.py
echo
output=$(python3 /home/$1/divisors.py < input.txt)
echo $input
divisors=""
correct=true
# let's actually compute the divisors ourselves
for((i=1;$i < $(($input / 2 + 1));i+=1)); do
  if [[ $(($input % $i)) == 0 ]]; then
    divisors="$divisors $i"
    if [[ ${output//"$i"} == "$output" ]]; then
      # output didn't contain i
      correct=false # get rekt n00b
    fi
  fi
done
echo "Divisors are" $divisors
echo $output
if [[ "$correct" == true ]]; then
  # output contained all the divisors
  echo "Correct output"
else
  echo "Incorrect output"
fi
rm input.txt
