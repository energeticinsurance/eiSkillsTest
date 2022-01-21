

.openFileBasedOnExtention <- function(file, ...) {
    fileext <- tools::file_ext(file)
    ## make a conditional so that you can call read.file on a character
    ## that represents a file path to a csv file. This function should
    ## (a) create a CsvConnection using your Constructor
    ## (b) call read.file on that CsvConnection object
    stop("Not yet implemented!")
}

setMethod("read.file", "character", .openFileBasedOnExtention)
