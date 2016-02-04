#!/bin/bash

cd /home/$1/fileAverage/
cat dropLow.py
echo
# run lab in python3
python3 -c "import dropLow; dropLow.dropLow(); quit();"
diff averages.txt sol_avg.txt --report-identical-files --ignore-all-space
