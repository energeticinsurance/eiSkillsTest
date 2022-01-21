test_that("Problem 3: CSV connection that inherits FileConnection", {
    ## see CsvConnection-class.R. There's a CsvConnection class; modify it so it inherits
    ## from FileConnection.
    csv <- new("CsvConnection", path = "test")  # it's better practice to use a constructor instead of calling "new"
    expect_s4_class(csv, "FileConnection")
})

test_that("Problem 4: CSV connection constructor", {
    ## instead of calling "new" all over your code, it's better practice
    ## to use a constructor function. It can be called anything but it's best
    ## to name it the same as your class.
    csv <- CsvConnection(path = "test")
    expect_s4_class(csv, "FileConnection")
})

test_that("Problem 5: Read a CSV file using the generic function", {
    ## The whole point of this is to have a single function, "read.file",
    ## that can read data from any common file type into R. Modify the method in
    ## CsvConnection so that it calls read.csv to load up the data.
    test_dat <- tempfile(fileext = ".csv")
    on.exit(unlink(test_dat))
    write.csv(iris, test_dat)
    csv <- CsvConnection(path = test_dat)
    iris_dat <- read.file(csv)
    expect_equal(ncol(csv), 5)
})

test_that("Problem 6: Read a CSV file by calling the path", {
    ## this test is very similar to the above, but insteaf of calling read.file
    ## on the CsvConnection, it's called on the file path; which is a character
    ## string. As such, the character method is dispatched, which is defined in
    ## utils.R but it's incomplete.
    test_dat <- tempfile(fileext = ".csv")
    on.exit(unlink(test_dat))
    write.csv(iris, test_dat)
    iris_dat <- read.file(test_dat)
    expect_equal(ncol(csv), 5)
})
