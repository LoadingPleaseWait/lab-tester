#!/bin/bash

# first parameter should be username second should be key-directory third is assignment-file
function test {
  if [[ -d $2/test.sh ]]; then
    # run custom test
    echo $(./test.sh $1)
  else
    python3 /home/$1/$3 < $2/input.txt # actually run the program

    # compare output to sample output
    output=$(python3 /home/$1/$3 < $2/input.txt)
    answer=$(cat $2/output.txt)
    if [[ "$output" == "$answer" ]]; then
      echo "Output matches"
    else
      echo "Output does not match"
    fi
  fi
}

if [[ $1 = "--help" || $1 = "-h" ]]; then
  echo "Usage: ./tester.sh [option] key-directory assignment-file"
elif [[ $1 = "--user"  || $1 = "-u" ]]; then
  test $2 $3 $4
else
  # loop through home directory and test assignment-file for all users
  for user in "/home/*"
  do
    username=$(echo $user)
    username=${username/"/home/"/} # just the username not the full path
    echo $username
    test $username $2 $3
  done
fi
