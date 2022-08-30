#######  Colon operator

1:20 # 1 to 20
pi:10 # 3.14..,4.14.., ........, 9.14..

15:1 # 15, 14, 13,........,1
 

?`:`  # help for operators needs back tips

 ####### Seq

seq(1,20) # 1 to 20
seq(0, 10, by=0.5)   # 0, 0.5, 1, ...
seq(5, 10, length=30) # from 5 to 10 30 steps
my_seq <- seq(5, 10, length=30) # same
length(my_seq) # lenght of a sequence
1:length(my_seq) # we can use functions
seq(along.with = my_seq) # same as above....not recommended
seq_along(my_seq)  # same, built in function

########## Rep

rep(0,times=40) ## 0 ten times

rep(c(0,1,2), times=10) ## 0,1,2, 0,1,2, .... ten times
rep(c(0, 1, 2), each = 10) ## 0,0,.....x10 ...0, 1, ....x10,1,2,....x10,2
