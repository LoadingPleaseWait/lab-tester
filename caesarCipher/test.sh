#!/bin/bash

input=$(pwd)/caesarCipher/python-input.txt # get our input
cd /home/$1/caesarCipher/
cat caesarCipher.py
echo
# run lab in python3
python3 caesarCipher.py < $input
diff randomPara1.txt decrypted5.txt --report-identical-files --ignore-all-space
