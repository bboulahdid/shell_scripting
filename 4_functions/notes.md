## Functions basics:
```bash
function funcNameX() {
  # Do something
}

# OR (The keyword `function` is optional):
funcNameY() {
  # Do something
}

# Like any other linux command, functions are called without the `()`
funcNameX
funcNameY
```
* Functions must be defined before they can be called (otherwise, we'll have `command not found` error)

## Using parameters:
* We can pass parameters to functions similar to the way we pass them to scripts by using the parameter symbols
```bash
hello() {
  echo "Hello $1"
}

hello Boubker
# Output: "Hello Boubker"
```
* We use local variables (using the keyword `local`) inside functions to give parameters a meaning
```bash
hello() {
  local FNAME=$1
  echo "Hello $FNAME"
}

hello Boubker
# Output: "Hello Boubker"
```
* Local variables are not defined outside there functions.

## Piping:
* The way to connect the output of one program to the input of another program without any temporary file.
```bash
# Get all files / folders in current directory, sort them in reverse order and return the first 3 results
FILES=$(ls | sort -r | head -3)
```
