#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "You must supply a stash index "
    exit 0
fi

echo "Are you sure you want to apply stash@{$1}? [y/n] "
while read -r -n 1 -s answer; do
    if [[ $answer != "y" ]]; then
        echo "Done "
        exit 0
    else
        git stash apply stash@{$1}
        git stash list
        break
    fi
done

exit 0
