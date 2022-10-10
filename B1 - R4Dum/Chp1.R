#Hello world

 print('Hello world!')     

  #Doing simple math  
 1+2+3+4+5  
##   Using vectors  
  #A vector is the simplest type of data structure in R. 
  #The R manual defines a vector  as “a single entity consisting of a collection of things.
 # A collection of numbers, for  example, is a numeric vector — the first five integer numbers form a numeric vector of length 5. 

c(1,2,3,4,5) 
#[1] 1 2 3 4 5   

## Operators

# An operator is a symbol you  stick between two values to make a calculation. 
#The symbols +, -, *, and / are all operators, and they have the same meaning they do in mathematics. 

## Sequence operator

 # One very handy operator is called sequence, and it looks like a colon (:).
 #  Type the  following in your console:  > 1:5  [1] 1 2 3 4 5    
 # That’s more like it. With three keystrokes, you’ve generated a vector with the values  1 through 5.

1:5


## Vectorized Operations
  
  #   Type the following in your console to calculate the sum of this vector:  > sum(1:5)  [1] 15    
  # Storing and calculating values  Using R as a calculator is very interesting but perhaps not all that useful. 
  # A much  more useful capability is storing values and then doing calculations on these  stored values.  
  # Try the following:  > x <- 1:5  > x  [1] 1 2 3 4 5   
  # In these two lines of code, you first assign the sequence 1:5 to a variable called x.  
  # Then you ask R to print the value of x by typing x in the console and pressing Enter.   

sum(1:5)
mean(1:5)
min(1:5)
max(1:5)
median(1:5)
mode(1:5)


  ## Assignement Operator  
  
#  In R, the assignment operator is <-
x <- 1:5
y <- 10 
x
x + y    

## Value or reference? Reference

x
y

x=y

y<-5
x
y


# The values of the two variables themselves don’t change unless you assign a new  value. 
# You can check this by typing the following:  > x  [1] 1 2 3 4 5  > y  [1] 10    
#Now create a new variable z, assign it the value of x+y, and print its value:  > z <- x + y  > z  [1] 11 12 13 14 15   


#Variables also can take on text values. You can assign the value “Hello” to a vari-  able called h, for example, by presenting the text to R inside quotation marks, like  this:  > h <- “Hello”  > h  [1] “Hello”    You must present text or character values to R inside quotation marks — ei-  ther single or double. R accepts both. So both h <- “Hello” and h <- ‘Hello’  are examples of valid R syntax.  In “Using vectors,” earlier in this chapter, you use the c() function to combine nu-  meric values into vectors. This technique also works for text. Try it:  > hw <- c(“Hello”, “world!”)  > hw  [1] “Hello” “world!”   
# You can use the paste() function to concatenate multiple text elements.
#By default,  paste() puts a space between the different elements, like this:  > paste(“Hello”, “world!”)  [1] “Hello world!”  



#Talking back to the user   