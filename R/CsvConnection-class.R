## There'd be no point in having a virtual FileConnection class if we don't
## have any implementations. This file is for you to define a CsvConnection class.
## It should have a class definition, a constructor function, and a method for read.file (see AllGenerics.R)

setClass("CsvConnection"
## 3. Make this class inherit from FileConnection
)

## 4. Make a Constructor function. Constructor functions take arguments and call new() on the class you're
## instantiating
CsvConnection <- function(path) {
    stop("Not yet implemented!")
}

## Problem 5: make this method read data from the csv file using
## read.csv on the file's path slot
setMethod("read.file", "CsvConnection", function(file, ...) {
    stop("Not yet implemented!")
})
