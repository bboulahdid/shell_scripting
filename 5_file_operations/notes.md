## Reading files:
* We can read a file into a script using the [read](http://linuxcommand.org/lc3_man_pages/readh.html) command & redirection (check `1_reader.sh` script)

## Writing files:
* The easiest way to write a file is to use redirection (sending the output of a script a file)
  * `>` : override the content of the file if it exists or create à new one
  * `>>` : append to the file if it exists or create à new one
```bash
./reader.sh names.txt > output.txt
```

## File checksums:
* To validate the integrity of our files, we use the [cksum](https://www.computerhope.com/unix/ucksum.htm) command.
