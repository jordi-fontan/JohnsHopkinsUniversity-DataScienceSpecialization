7i4iv2fZWoXBZa9t


> getwd()
[1] "/home/rstudio"

> ls()
[1] "my_char"  "my_data"  "my_na"    "my_name"  "num_vect" "tf"       "x"       
[8] "y"        "z"


> list.files()
> dir()
[1] "Getting Started with Your Lab.rd" "R_Programming.swc"               
[3] "README.rd"                        "testdir"                         
[5] "Week 1"                           "Week 2"                          
[7] "Week 3"                           "Week 4"                          

| You are amazing!

  |===================                                                        |  26%
| As we go through this lesson, you should be examining the help page for each new
| function. Check out the help page for list.files with the command ?list.files.

> ?list.files


> args(list.files)
function (path = ".", pattern = NULL, all.files = FALSE, full.names = FALSE, 
    recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, 
    no.. = FALSE)



> old.dir<-getwd()          # save current wd to old.dir var
> dir.create("testdir")     # create a new dir through dir object
> setwd('testdir'
> file.create("myTest.R")
> list.files()
[1] "mytest.R"  "myTest.R"  "mytest2.R" "mytest3.R"
file.exists("mytest.R")
> file.info("mytest.R")
         size isdir mode               mtime               ctime               atime
mytest.R    0 FALSE  644 2022-11-29 15:52:17 2022-11-29 15:52:17 2022-11-29 15:52:17
          uid  gid   uname  grname
mytest.R 1000 1000 rstudio rstudio

## > > file.info("mytest.R")$mode ----> 644
> file.rename("mytest.R","mytest2.R")
file.copy("mytest2.R","mytest3.R")

file.path("mytest3.R")
>   file.path('folder1','folder2')
[1] "folder1/folder2"
 ?dir.create
 > dir.create(file.path('testdir2','testdir3'), recursive=TRUE)
 > setwd(old.dir)
     