# utf8files
A package to read and write files with UTF-8 encoding in Micro$oft Window.

## Installation
```
devtools::install_github("kitman0804/utf8files")
library(utf8files)
```

## Functions
* `writeUTF8`
* `readUTF8`

##Known problems
* Chinese characters cannot be displayed properly in `.csv` files. It is preferable to write the files in `.txt` (default, `sep = "\t"`). 

## Reference
* [Write file as UTF-8 encoding in R for Windows](https://tomizonor.wordpress.com/2013/04/17/file-utf8-windows/)
* [Unicode conversion and export in R](http://stackoverflow.com/questions/16028658/unicode-conversion-and-export-in-r)

