#######  Colon operator

1:20 # 1 to 20
pi:10 # 3.14..,4.14.., ........, 9.14..

15:1 # 15, 14, 13,........,1
 

?`:`  # help for operators needs back tips

 ####### Seq

seq(1,20)
seq(0, 10, by=0.5)
seq(5, 10, length=30) 
my_seq <- seq(5, 10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq) # same as above
seq_along(my_seq)  # same, built in function

## Rep

rep(0,times=40)
