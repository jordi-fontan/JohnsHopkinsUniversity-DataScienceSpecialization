| In this lesson, we'll see how to extract elements from a vector based on some
| conditions that we specify.
                                                      
| For example, we may only be interested in the first 20 elements of a vector,
| or only the elements that are not NA, or only those that are positive or
| correspond to a specific variable of interest. By the end of this lesson,
| you'll know how to handle each of these scenarios.

| I've created for you a vector called x that contains a random ordering of 20
| numbers (from a standard normal distribution) and 20 NAs. Type x now to see
| what it looks like.


 [1]           NA           NA           NA  2.123558259 -0.011228553
 [6]           NA           NA -0.189730700           NA -0.370897806
[11]           NA  0.870920198           NA           NA -0.553156246
[16]           NA  0.479295503 -0.465482265           NA           NA
[21]  0.008353781  1.849364881           NA  0.586993976 -2.351686246
[26]  1.712768087 -0.506934944           NA  0.668557340 -1.004185409
[31]           NA  0.003252776           NA -0.717996724 -0.669413813
[36]           NA           NA           NA -0.666168129           NA


| The way you tell R that you want to select some particular elements (i.e. a
| 'subset') from a vector is by placing an 'index vector' in square brackets
| immediately following the name of the vector.
| For a simple example, try x[1:10] to view the first ten elements of x.

> 
> x[1:10]
 [1]          NA          NA          NA  2.12355826 -0.01122855          NA
 [7]          NA -0.18973070          NA -0.37089781

| Recall that `!` gives us the negation of a logical expression, so !is.na(x)
| can be read as 'is not NA'. Therefore, if we want to create a vector called y
| that contains all of the non-NA values from x, we can use y <- x[!is.na(x)].
| Give it a try.

> y<- x[!is.na(x)]

> y
 [1]  2.123558259 -0.011228553 -0.189730700 -0.370897806  0.870920198
 [6] -0.553156246  0.479295503 -0.465482265  0.008353781  1.849364881
[11]  0.586993976 -2.351686246  1.712768087 -0.506934944  0.668557340
[16] -1.004185409  0.003252776 -0.717996724 -0.669413813 -0.666168129

| That's correct!

  |==================== 


| Index vectors come in four different flavors -- logical vectors, vectors of
| positive integers, vectors of negative integers, and vectors of character
| strings -- each of which we'll cover in this lesson.

| Let's start by indexing with logical vectors. One common scenario when
| working with real-world data is that we want to extract all elements of a
| vector that are not NA (i.e. missing data). Recall that is.na(x) yields a
| vector of logical values the same length as x, with TRUEs corresponding to NA
| values in x and FALSEs corresponding to non-NA values in x.

| What do you think x[is.na(x)] will give you?

1: A vector of length 0
2: A vector with no NAs
3: A vector of TRUEs and FALSEs
4: A vector of all NAs

> x[is.na(x)]
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 
   |====================                                                 
| Now that we've isolated the non-missing values of x and put them in y, we can
| subset y as we please.

  |======================                                          
| Recall that the expression y > 0 will give us a vector of logical values the
| same length as y, with TRUEs corresponding to values of y that are greater
| than zero and FALSEs corresponding to values of y that are less than or equal
| to zero. What do you think y[y > 0] will give you?

1: A vector of TRUEs and FALSEs
2: A vector of length 0
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of all the negative elements of y

  |=======================                                               |  33%
| Type y[y > 0] to see that we get all of the positive elements of y, which are
| also the positive elements of our original vector x.

> y[y>0]
[1] 2.123558259 0.870920198 0.479295503 0.008353781 1.849364881 0.586993976
[7] 1.712768087 0.668557340 0.003252776


| You might wonder why we didn't just start with x[x > 0] to isolate the
| positive elements of x. Try that now to see why.

> 
> x[x>0]
 [1]          NA          NA          NA 2.123558259          NA          NA
 [7]          NA          NA 0.870920198          NA          NA          NA
[13] 0.479295503          NA          NA 0.008353781 1.849364881          NA
[19] 0.586993976 1.712768087          NA 0.668557340          NA 0.003252776
[25]          NA          NA          NA          NA          NA


| Since NA is not a value, but rather a placeholder for an unknown quantity,
| the expression NA > 0 evaluates to NA. Hence we get a bunch of NAs mixed in
| with our positive numbers when we do this.
> x[!is.na(x) & x > 0]
[1] 2.123558259 0.870920198 0.479295503 0.008353781 1.849364881 0.586993976
[7] 1.712768087 0.668557340 0.003252776

| Perseverance, that's the answer.


| In this case, we request only values of x that are both non-missing AND
| greater than zero.


| In this case, we request only values of x that are both non-missing AND
| greater than zero.

...

  |================================                                      |  46%
| I've already shown you how to subset just the first ten values of x using
| x[1:10]. In this case, we're providing a vector of positive integers inside
| of the square brackets, which tells R to return only the elements of x
| numbered 1 through 10.

...

  |==================================                                    |  49%
| Many programming languages use what's called 'zero-based indexing', which
| means that the first element of a vector is considered element 0. R uses
| 'one-based indexing', which (you guessed it!) means the first element of a
| vector is considered element 1.


| Can you figure out how we'd subset the 3rd, 5th, and 7th elements of x? Hint
| -- Use the c() function to specify the element numbers as a numeric vector.

> x[c(3,5,7)]
[1]          NA -0.01122855          NA
| Excellent job!

  |======================================                                |  54%
| It's important that when using integer vectors to subset our vector x, we
| stick with the set of indexes {1, 2, ..., 40} since x only has 40 elements.
| What happens if we ask for the zeroth element of x (i.e. x[0])? Give it a
| try.

> x[0]
numeric(0)

 As you might expect, we get nothing useful. Unfortunately, R doesn't prevent
| us from doing this. What if we ask for the 3000th element of x? Try it out.

> x[3000]
[1] NA

| You're the best!

 
| Again, nothing useful, but R doesn't prevent us from asking for it. This
| should be a cautionary tale. You should always make sure that what you are
| asking for is within the bounds of the vector you're working with.




| What if we're interested in all elements of x EXCEPT the 2nd and 10th? It
| would be pretty tedious to construct a vector containing all numbers 1
| through 40 EXCEPT 2 and 10.

...

  |=============================================                         |  64%
| Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us
| ONLY the 2nd and 10th elements of x, x[c(-2, -10)] gives us all elements of x
| EXCEPT for the 2nd and 10 elements.  Try x[c(-2, -10)] now to see this.

> x[c(-2,-10)]
 [1]           NA           NA  2.123558259 -0.011228553           NA
 [6]           NA -0.189730700           NA           NA  0.870920198
[11]           NA           NA -0.553156246           NA  0.479295503
[16] -0.465482265           NA           NA  0.008353781  1.849364881
[21]           NA  0.586993976 -2.351686246  1.712768087 -0.506934944
[26]           NA  0.668557340 -1.004185409           NA  0.003252776
[31]           NA -0.717996724 -0.669413813           NA           NA
[36]           NA -0.666168129           NA

| You are really on a roll!

  |===============================================                       |  67%
| A shorthand way of specifying multiple negative numbers is to put the
| negative sign out in front of the vector of positive numbers. Type x[-c(2,
| 10)] to get the exact same result.

x[-c(2,10)]
 [1]           NA           NA  2.123558259 -0.011228553           NA
 [6]           NA -0.189730700           NA           NA  0.870920198
[11]           NA           NA -0.553156246           NA  0.479295503
[16] -0.465482265           NA           NA  0.008353781  1.849364881
[21]           NA  0.586993976 -2.351686246  1.712768087 -0.506934944
[26]           NA  0.668557340 -1.004185409           NA  0.003252776
[31]           NA -0.717996724 -0.669413813           NA           NA
[36]           NA -0.666168129           NA

| You got it!

  |================================================                      |  69%
| So far, we've covered three types of index vectors -- logical, positive
| integer, and negative integer. The only remaining type requires us to
| introduce the concept of 'named' elements.

| So far, we've covered three types of index vectors -- logical, positive
| integer, and negative integer. The only remaining type requires us to
| introduce the concept of 'named' elements.

...

  |==================================================                    |  72%
| Create a numeric vector with three named elements using vect <- c(foo = 11,
| bar = 2, norf = NA).

> 
> vect<-c(foo=11,bar=2, norf=NA)

| You are really on a roll!

  |====================================================                  |  74%
| When we print vect to the console, you'll see that each element has a name.
| Try it out.

> vect
 foo  bar norf 
  11    2   NA 

| Great job!

  |======================================================                |  77%
| We can also get the names of vect by passing vect as an argument to the
| names() function. Give that a try.

| So far, we've covered three types of index vectors -- logical, positive
| integer, and negative integer. The only remaining type requires us to
| introduce the concept of 'named' elements.

...

  |==================================================                    |  72%
| Create a numeric vector with three named elements using vect <- c(foo = 11,
| bar = 2, norf = NA).

> 
> vect<-c(foo=11,bar=2, norf=NA)

| You are really on a roll!

  |====================================================                  |  74%
| When we print vect to the console, you'll see that each element has a name.
| Try it out.

> vect
 foo  bar norf 
  11    2   NA 

| Great job!

 | So far, we've covered three types of index vectors -- logical, positive
| integer, and negative integer. The only remaining type requires us to
| introduce the concept of 'named' elements.

...

  |==================================================                    |  72%
| Create a numeric vector with three named elements using vect <- c(foo = 11,
| bar = 2, norf = NA).

> 
> vect<-c(foo=11,bar=2, norf=NA)

| You are really on a roll!


| When we print vect to the console, you'll see that each element has a name.
| Try it out.

> vect
 foo  bar norf 
  11    2   NA 

> names(vect)
[1] "foo"  "bar"  "norf"

| That's correct!

 
| Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do
| that now.

| Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do
| that now.

> vect2<-c(11,2,NA)

| All that hard work is paying off!

  |=========================================================             |  82%
| Then, we can add the `names` attribute to vect2 after the fact with
| names(vect2) <- c("foo", "bar", "norf"). Go ahead.

> names(vect2)<- c("foo", "bar", "norf")

| You are quite good my friend!

  |===========================================================           |  85%
| Now, let's check that vect and vect2 are the same by passing them as
| arguments to the identical() function.


> identical(vect,vect2)
[1] TRUE

| You nailed it! Good job!

  |=============================================================         |  87%
| Indeed, vect and vect2 are identical named vectors.

...

  |===============================================================       |  90%
| Now, back to the matter of subsetting a vector by named elements. Which of
| the following commands do you think would give us the second element of vect?

1: vect["2"]
2: vect[bar]
3: vect["bar"]

Selection: 3


> vect["bar"]
bar 
  2 

| Likewise, we can specify a vector of names with vect[c("foo", "bar")]. Try it
| out.

| Likewise, we can specify a vector of names with vect[c("foo", "bar")]. Try it
| out.

> vect[c("foo", "bar")]
foo bar 
 11   2 

| All that hard work is paying off!

  |====================================================================  |  97%
| Now you know all four methods of subsetting data from vectors. Different
| approaches are best in different scenarios and when in doubt, try it out!

