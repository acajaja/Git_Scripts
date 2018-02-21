#!/bin/bash

if [ "$#" -ne 1 ]
then
    printf "You must supply a stash index!\n"
    exit 0
fi

git stash show -p stash@{$1}

printf "Are you sure you want to apply stash@{$1}? [Y/n]"
while read -r -n 1 -s answer
do
    if [[ $answer == "Y" ]]
    then
        break
    else
        printf "\nNothing Done\n"
        exit 0
    fi
done

ROOT="${BASH_SOURCE%}"
PARENTDIR=$(dirname $ROOT)

printf "\n"

git stash apply stash@{$1} && printf "\nStash $1 applied.\n" && source $PARENTDIR/gitDeleteStash.sh

exit 0
