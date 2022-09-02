# Missing values play an important role in statistics and data analysis. 
# Often, missing values must not be ignored, but rather they should be carefully studied to see if there's an underlying pattern or cause for their missingness.



 
# In R, NA is used to represent any value that is 'not available' or 'missing'
# (in the statistical sense). In this lesson, we'll explore missing values  further.

                                                            
# Any operation involving NA generally yields NA as the result. To illustrate,
# let's create a vector c(44, NA, 5, NA) and assign it to a variable x.

 x<-c(44,NA,5,NA)


# Now, let's multiply x by 3
 x*3
# [1] 132  NA  15  NA

 # To make things a little more interesting, lets create a vector containing 1000 draws
 # from a standard normal distribution with y <- rnorm(1000).
 
 y <- rnorm(1000)
 | Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).

> z <- rep(NA, 1000)

| Your dedication is inspiring!

  |=========================                                             |  35%
| Finally, let's select 100 elements at random from these 2000 values
| (combining y and z) such that we don't know how many NAs we'll wind up with
| or what positions they'll occupy in our final vector -- my_data <-
| sample(c(y, z), 100).

> my_data <- sample(c(y, z), 100)

| Keep up the great work!

  |============================                                          |  40%
| Let's first ask the question of where our NAs are located in our data. The
| is.na() function tells us whether each element of a vector is NA. Call
| is.na() on my_data and assign the result to my_na.

> is.na(my_data)
  [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE
 [13] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE
 [25]  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE
 [37]  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE
 [49] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE
 [61]  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
 [73] FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE
 [85] FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE
 [97]  TRUE  TRUE FALSE FALSE

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type
| info() for more options.

| Assign the result of is.na(my_data) to the variable my_na.

> my_na<-is.na(my_data)

| Keep up the great work!

  |================================                                      |  45%
| Now, print my_na to see what you came up with.



|======================================                                |  55%
| In our previous discussion of logical operators, we introduced the `==`
| operator as a method of testing for equality between two objects. So, you
| might think the expression my_data == NA yields the same results as is.na().
| Give it a try.
