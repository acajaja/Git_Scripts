#!/bin/bash

##########
# Author: Clif Jackson
# Email: code@clifjackson.net
# https://www.gnu.org/licenses/gpl.txt
##########

if [ "$#" -ne 1 ]
then
    printf "You must supply a stash index\n"
    exit 0
fi

printf "Would you like to delete this stash now? [Y/n]:"
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

printf "\nAre you sure? [Y/n]:"
while read -r -n 1 -s answer
do
    if [[ $answer == "Y" ]]
    then
        break
    else
        exit 0
    fi
done

printf "\n"

git stash drop stash@{$1} && git stash list

exit 0
