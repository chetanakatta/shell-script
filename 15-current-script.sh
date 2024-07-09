#!/bin/bash

COURSE="Devops from current script"

echo "Before calling the script, course: $COURSE"
echo "Process id of current shell script: $$"
source ./16-other-script.sh
echo "After calling the script, cours: $COURSE"
