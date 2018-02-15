#!/bin/bash

# You can use this a few different ways but regardless it MUST be executable (rwx):
# 1. Call it directly by cd'ing to the directory it is in and:
#       shell> ./gitApplyStash.sh <NUM>
# 2. If you have a folder in your $PATH where this script lives:
#       shell> gitApplyStash.sh <NUM>
# 3. Create an alias in your shell profile (.bash_profile, .bashrc, etc):
#       alias gtstshaply=/YOUR/PATH/TO/THIS/FILE/gitApplyStash.sh
#       shell> gtstshaply <NUM>
#####

if [ "$#" -ne 1 ]; then
    echo "You must supply a stash index "
    exit
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
