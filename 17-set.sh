#!/bin/bash

#to find error line no.
failure(){
    echo "Failed at $1:$2"
}
trap 'failure ${LINENO} "$BASH_COMMAND" ' ERR