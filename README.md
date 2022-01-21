Energetic Insurance Programming Skills Test
===========================================

## INTRODUCTION

Firstly, thank you for your interest in working with Energetic Insurance! This package contains many problems and puzzles for you
to solve. You are not necessarily expected to know how to solve all of them; the goal here is to make at least some progress on
some of them.

## BACKGROUND

The purpose of this package is to simplify the data reading process. Instead of, say `read.csv()` to read a csv file, and
`yaml::read_yam()` to read a yaml file, they are all to be unified under a simple generic function `read.file()`. The classes
defined herein all use the S4 type system.

The problems are laid out both in the scripts in the R directory as well as the test files in the tests/testthat directory. The
problems are laid out below; more information is given in the appropriate scripts and test files in comments.

## SETUP

You'll probably need an installation of R, and you may want to install Rstudio on your computer. You can alternatively opt to do
your work on [rstudio cloud](https://rstudio.cloud/).

Once you have access to R, you'll need the the `devtools` and `testthat` packages:

```r
install.packages(c("devtools", "testthat"))
```

At this point, it's recommended to run the testsuite. You can do that in Rstudio or in the R interactive console by running

```r
devtools::test()
```

You'll note that a lot of these tests fail. It's your job to make the tests pass by adding to or modifying the code in the `R/` directory.

## PROBLEMS

The `R` directory has 4 files. These are the ones you'll need to modify:

- `AllGenerics.R` defines all of the generic functions for this package
- `CsvConnection-class.R` defines the CsvConnection class and its methods
- `FileConnection-class.R` defines the FileConnection virtual class and its methods
- `utils.R` defines a few other functions

The `tests/testthat` directory has 2 files:

- `test-CsvConnection-class` defines tests related to the CsvConnection class
- `test-FileConnection-class` defines tests related to the FileConnection class

You probably won't need to edit these files, but you should definitely look at them and understand what they're testing for.

For testing interactively, you can do `devtools::load_all` or set breakpoints in the tests by using `browser()`

While not strictly always necessary, it's recommended to go in order of problem number. Items 1-6 have specific tests for them, beyond that, there are not.

1. `FileConnection-class.R` defines a `FileConnection` class. Make that a virtual class.
2. `FileConnection` has a validity inspector (a function that says whether `FileConnection` is a valid class). You should complete it.
3. `CsvConnection-class.R` defines he CsvConnection class, but it doesn't inherit from FileConnection. You should fix that.
4. `CsvConnection` has an incomplete constructor function. You should complete it.
5. Read a csv file by completing the read.file method for the CsvConnection class
6. Read a csv file by specifying its file path.
7. Create a write.file generic, and write a write.file method for the CsvConnection class. This method can be a pretty simple wrapper for `write.csv()`.
8. Write approriate tests testing the functionality of write.file for a csv file.
9. Choose your favorite standard file format (Excel, yaml, json, hdf5, etc), and repeat steps 3-8. You can use the CsvConnection-class as a guide.

## LAST THOUGHTS

Your work should be your own, but you should definitely use your resources. It's not necessary to complete all of these problems and make all of the tests pass-- these problems were not designed to be easy. Try your best, if you find things aren't working, leave lots of comments in your code of what you've tried to do. If you're completely stuck, especially in the SETUP phase, please reach out to your Energetic contact.