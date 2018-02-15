# Git Scripts
A collection of Bash scripts to automate certain repetitive Git operations.

# Usage

You can use these scripts a few different ways but regardless they MUST be executable (rwx):

1. Call it directly by cd'ing to the directory it is in and:  
```BASH
shell> ./gitApplyStash.sh <NUM>
```

2. If you have a folder in your $PATH where this script lives:  
```BASH
shell> gitApplyStash.sh <NUM>
```

3. Create an alias in your shell profile (.bash_profile, .bashrc, etc):  
```BASH
alias gtstshaply=/YOUR/PATH/TO/THIS/FILE/gitApplyStash.sh
shell> gtstshaply <NUM>
```
