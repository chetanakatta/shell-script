#!/bin/bash

COURSE="Devops from current script"

echo "Before calling the script, course: $COURSE"
echo "Process id of current shell script: $$"
#1st method
#./16-other-scriptsh -->>pid of 2 are diff & variable values after calling the script is diff
#2nd method
source ./16-other-scriptsh #-->> pid of 2 are same & variable values after calling the script is same
echo "After calling the script, course: $COURSE"
