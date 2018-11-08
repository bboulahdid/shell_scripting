## .sh files :
* `.sh` files are executable by default.
* To make a file excutable, use the command `chmod 755 <file-name>.sh` :
  * `755` ?
    > everyone can read & execute it but ONLY the owner can write it

## Executing a script :
* Run `./<file-name>.sh` To the execute the script :
  * Why `./` ?
    > Linux looks for commands on the path (not on the current directory). We put `./` to tell the system where to the find the command (which is on the current directory here).

## Comments :
* `#` for single line comments.

## Shebang :
* We want our scripts to run as we designed them, that was the `shebang` is for.
* It must be the first line in a script, or it will be ignored like a comment.
* Some examples :
  * `#!/usr/bin/env bash` for bash
  * `#!/usr/bin/env python` for a python script
  * `#!/usr/bin/env node` for node
* If we run a script with the wrong env (e.g. `#!/usr/bin/env XXX`), an error will be displayed (e.g. `/usr/bin/env: ‘XXX’: No such file or directory`).

## Variables :
* Must begin with a letter or _
* Except the first, any character can be a number.
* Variable names are case sensitive.
* Usually all uppercase (not mandatory though).
* `FIRST_NAME=Boubker` : spaces are NOT allowed on either side of the equal sign.
* `FIRST_NAME= Boubker` : `FIRST_NAME` will be empty (the space is a valid value) & `Boubker` will be interpreted as a command.
* If we want a space in a variable, we must wrap its value in either single `''` or double quotes `""` (e.g. `NAME="Boubker Boulahdid"`) :
  * Inside `""` variables are evaluated (e.g. `NAME="$FIRST_NAME Boulahdid"` -> `Boubker Boulahdid`).
  * With `''` variables are NOT evaluated (e.g. `NAME='$FIRST_NAME Boulahdid'` -> `$FIRST_NAME Boulahdid`).

## Parameters :
* `bash` passes parameters via some special symbols :
  * `$0` : the name of the command / script (path included)
  * `$1` : the first parameter
  * `$2` : the second parameter...
  * `$@` : a list of all parameters
  * `$?` : the LAST exit code the system has received
* With the new version of `bash`, we add `{}` : `${0}, ${1}...`.
* It's considered best practice to assign parameters values to variables to give them a meaningful name (e.g. `NAME=$1`).
* To run a command inside a string in your script, wrap it inside `$()` (e.g. `$(date)` -> `Fri Oct 26 11:26:30 UTC 2018`).
* Always terminate your script with an exit code :
  * `exit 0` means success
  * Anything other than `0` indicates an error
