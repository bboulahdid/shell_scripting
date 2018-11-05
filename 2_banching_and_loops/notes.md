## if - then - elif - then - else - fi :
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
* Boolean comparaison :
  * for strings :
    * `=` : equal (`if [ $COLOR = "blue" ] ...`)
    * `!=` : not equal (`if [ $COLOR != "green" ] ...`)
    * `-z` : if empty (`if [ -z $COLOR ] ...`)
  * for numbers :
    * `-eq` : equal (`if [ 5 -eq 5 ] ...`)
    * `-ne` : not equal (`if [ 5 -ne 6 ] ...`)
    * `-lt` : less than (`if [ 5 -lt 6 ] ...`)
    * `-gt` : greater than (`if [ 6 -gt 5 ] ...`)
    * `-le` : less than or equal (`if [ 5 -le 5 ] ...`)
    * `-ge` : greater than or equal (`if [ 5 -ge 5 ] ...`)

## While loop :
