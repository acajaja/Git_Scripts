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

## Hooks
The `hooks` folder (so far) contains a `pre-commit` hook that:

- Runs unit tests
- Runs the PHP linter
- Runs the PHP Code Sniffer
- Runs the PHP Code Sniffer Fixer if it finds fixable errors
- Runs the PHP Compatibility check against the specified version

To use it, copy in to `<YOUR-REPO-ROOT>/.git/hooks`.
