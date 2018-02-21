# Git Scripts
A collection of Bash scripts to automate certain repetitive Git operations.

# Usage

You can use these scripts a few different ways.
* they MUST be executable (rwx)
* you MUST call it from inside a Git repo

1. If you have a folder in your $PATH where this script lives:  
```BASH
shell> gitApplyStash.sh <NUM>
```

2. Create an alias in your shell profile (.bash_profile, .bashrc, etc):  
```BASH
alias gtstshaply=/YOUR/PATH/TO/THIS/FILE/gitApplyStash.sh
shell> gtstshaply <NUM>
```

Reload your profile by typing:
```BASH
. ~/<FILE_NAME>
```
