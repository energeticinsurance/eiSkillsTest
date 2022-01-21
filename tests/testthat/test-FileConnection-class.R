test_that("Problem 1: Is FileConnection a virtual class", {
    ## A virtual class is one that you can't instantiate; currently FileConnection
    ## is a regular class. Modify the class so this test passes as written.
    file_path <- tempfile()
    on.exit(unlink(file_path))
    expect_error(FileConnection(path = file_path), "virtual class")
})

test_that("Problem 2: Does FileConnection have the proper validity checks?", {
    ## Look at the Inspector function for FileConnection. If you add in a conditional
    ## in there, the checks should pass

    ## We have to create a temporary subclass; you can't create an object
    ## to test using FileConnection itself!
    TestConnection <- setClass("TestConnection", contains = "FileConnection")
    on.exit(rm(TestConnection))
    on.exit(removeClass("TestConnection"))
    my_connection <- TestConnection(path = "afile")
    expect_s4_class(my_connection, "FileConnection")  ## this should pass as is

    ## you'll have to modify the inspector function so this test passes; ie,
    ## calling TestConnection with a path argument length longer than 1 yields an
    ## error
    expect_error(TestConnection(path = c("two", "elements")))
})
