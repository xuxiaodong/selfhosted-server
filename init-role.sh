#!/bin/bash

NAME=$1
BASE_DIR=$(readlink -f $(dirname "$0"))/roles

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <role_name>"
    exit 1
fi

if [[ -d $BASE_DIR/$NAME ]]; then
    nvim $BASE_DIR/$NAME/tasks/main.yml
else
    mkdir -p $BASE_DIR/$NAME/{files,templates,tasks,handlers}
    tree $BASE_DIR/$NAME
fi

exit 0
