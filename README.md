# lab-tester
Test students' computer science assignments [![Build Status](https://travis-ci.org/LoadingPleaseWait/lab-tester.svg?branch=master)](https://travis-ci.org/LoadingPleaseWait/lab-tester)

### Usage
To test a student's assignment use a command like:

`./tester.sh -u student_name sample-output-directory assignment-file`

or

`./tester.sh --all student_name sample-output-directory assignment-file`

The assignment file will need to be written in python3 and be put in the
`/home/student_name/` directory. The sample input and output will need to be put
files called output.txt and input.txt.

### Installation
Download the latest version on the [releases page](https://github.com/LoadingPleaseWait/lab-tester/releases).
Extract the archive anywhere.

### License
This program is licensed under the [GPL v3](http://www.gnu.org/licenses).

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but without any warranty; without even the implied warranty of
merchantability or fitness for a particular purpose.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
