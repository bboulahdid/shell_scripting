## if - then - elif - then - else - fi:
```bash
if [ condition ]
then
  ...
elif [ another condition ]
then
  ...
else
  ...
fi
```
* Boolean comparison :
  * `-z` : if a variable is empty (`if [ -z $COLOR ] ...`)
  * for strings :
    * `=` : equal (`if [ $COLOR = "blue" ] ...`)
    * `!=` : not equal (`if [ $COLOR != "green" ] ...`)
  * for numbers :
    * `-eq` : equal (`if [ 5 -eq 5 ] ...`)
    * `-ne` : not equal (`if [ 5 -ne 6 ] ...`)
    * `-lt` : less than (`if [ 5 -lt 6 ] ...`)
    * `-gt` : greater than (`if [ 6 -gt 5 ] ...`)
    * `-le` : less than or equal (`if [ 5 -le 5 ] ...`)
    * `-ge` : greater than or equal (`if [ 5 -ge 5 ] ...`)

## while loop:
```bash
while [ condition ]
do
  # code to execute
done
```
* Why `((...))` in `_2_while.sh` file ?
  * To know more about parenthesis & brackets in `bash`:
    * [Using parenthesis to group and expand expressions](https://ss64.com/bash/syntax-brackets.html)
    * [BASH Scripting: Parenthesis Explained](https://linuxconfig.org/bash-scripting-parenthesis-explained)
* Without the comparison operator in the `while` loop condition (`while [ $COUNT ] ...`), we create an infinite loop (use `ctrl + c` to stop the script).
* More `while` loop examples: [Bash While Loop Examples](https://www.cyberciti.biz/faq/bash-while-loop/)

## for loop:
```bash
for item in list
do
  # do something with `item`
done
```
* More `for` loop examples: [Bash For Loop Examples](https://www.cyberciti.biz/faq/bash-for-loop/)

## break & continue:
* both, `while` and `for` loops, support the 2 special instructions `break` and `continue` :
  * `break` causes the current loop to terminate
  * `continues` goes IMMEDIATELY to the top of the loop
