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
# You can check this by typing the following: 


> x  [1] 1 2 3 4 5  > y  [1] 10    
#Now create a new variable z, assign it the value of x+y, and print its value:  > 
x<-c(1,2,3)
y<-10
z <- x + y  # 
z
    


#### Variables also can take text values. 


# You must present text or character values to R inside quotation marks 
# either single or double. R accepts both.

h <- 'Hello'  
h  
i<-"ilolo"
i

# Before we used the c() function to combine numeric values into vectors.
# This technique also works for text. 
 
hw <- c('Hello', 'world!') 
hw     

  #### Paste Function
  
  # You can use the paste() function to concatenate multiple text elements.
#By default,  paste() puts a space between the different elements, 

paste('Hello', 'world!')  




######## Talking back to the user   
##### readline() function


#  You can write R scripts that have some interaction with a user. 
# To ask the user  questions, you can use the readline() function. 
 h <- 'Hello'  
 yourname <- readline('What is your name?')  
 paste(h, yourname) 
 
 
 # it would be much better to send these three lines of code simultaneously 
 # to R and get them evaluated in  one go. In the next section, 
 
 #####    Sourcing a Script 
# Until now, you’ve worked directly in the R console and issued individual 
# com-  mands in an interactive style of coding.
 # In other words, you issue a command, R re-  sponds, you issue the next command, 
 # R responds, and so on. 
 
 # In this section, you kick it up a notch and tell R to perform several commands
 # one  after the other without waiting for additional instructions. 
 # Because the R function  to run an entire script is source(), 
 # R users refer to this process as sourcing a script.  
 # To prepare your script to be sourced, you first write the entire script in an editor
 # window. In RStudio, for example, the editor window is in the top-left corner 
 # of the  screen (refer to Figure 2-5). Whenever you press Enter in the editor window,
 # the  cursor moves to the next line, as in any text editor. 
 # Type the following lines of code in the editor window.
 # Notice that the last line con-  tains a small addition to the code you saw earlier:
 # the print() function. 
h <- 'Hello' 
yourname <- readline('What is your name?') 
print(paste(h, yourname))  
# 
# Send an individual line of code from the editor to the console. Click the line of  code you want to run, and then press Ctrl+R in RGui. In RStudio, you can  press Ctrl+Enter or click the Run button.  Send a block of highlighted code to the console. Select the block of code you  want to run, and then press Ctrl+R (in RGui) or Ctrl+Enter (in RStudio).  Send the entire script to the console (which is called sourcing a script). In  RGui, click anywhere in your script window, and then choose Edit⇒Run all.  In RStudio, click anywhere in the source editor, and press Ctrl+Shift+Enter or 
# click the Source button. 

### Getting Help

?paste
help(paste)

### Managing workspace

ls() # list variables


### Remove vars

print(x)
rm(x)
print(x)
x<-1:5
print(x)

## Saving vars and workspace

save(x)
save.image() # saves entire workspace

## Working Directory

getwd()
setwd('c://sharedData')
getwd()
setwd('c://sharedData//projects//edu//JHU-DSS')
getwd()

## saving workspace/var

save(yourname, file='yourname.rda')  
rm(yourname)
print(yourname)

load('yourname.rda')  
print(yourname)
