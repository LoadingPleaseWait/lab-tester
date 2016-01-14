#!/bin/bash

# unit test run with ./tester.sh --all self
test_assignment=lab_tester_test_assignment.py
echo "print(input())" > ~/$test_assignment
./tester.sh --user $1 self/ $test_assignment
rm ~/$test_assignment
