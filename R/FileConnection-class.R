
## Problem 2: this function is the FileConnection's inspector;
## it determines whether the class is valid. We want to make sure
## that each FileConnection references only one file; add some code
## below to make that happen. To make this function signal the class
## is invalid, add an error message to the "errors" character vector
checkFileConnection <- function(object) {
    errors <- character()

    num_files_listed <- length(object@path)

    
    if (length(errors) > 0) errors else TRUE
}


## Problem 1: Modify FileConnection so that it is a virtual class. Virtual
## classes are meant to be a template, they can have slots and generic functions
## can have methods for them, but you can't make objects out of a virtual class.
FileConnection <- setClass("FileConnection", slots = c(
    path = "character"
))
setValidity("FileConnection", checkFileConnection)
