ds<-read.csv('hw1_data.csv')
head(ds,2)
ds[1:2,]
ozone<-ds[,1]
ds2<-subset(ds, !is.na(Ozone))
nrow(ds)-nrow(ds2)

mean(ds2$Ozone)
#Extract the subset of rows of the data frame where 
#Ozone values are above 31 and Temp values are above 90.
#What is the mean of Solar.R in this subset?

ds3<-ds2["Ozone">31 & "Temp">90]
ds4<-subset(ds3, !is.na(Solar.R))
mean(ds4$Solar.R)


dsTMonth6 <-ds["Month" == 5 ]

