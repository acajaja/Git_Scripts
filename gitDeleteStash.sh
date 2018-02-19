#!/bin/bash

gitDeleteStash()
{
    if [ "$#" -ne 1 ]
    then
        echo "You must supply a stash index
"
    else
        echo -n "Are you sure? [Y/n]:"
        while read -r -n 1 -s answer
        do
            if [[ $answer = [Yn] ]]
            then
                [[ $answer = [Y] ]] && retval=0
                [[ $answer = [Nn] ]] && retval=1
                break
            fi
        done

        if [ retval ]
        then
            echo "
"
            git stash drop stash@{$1}
            git stash list
        fi
    fi
}
