data<- rnorm(10^4)
hist(data,main="Histogram for normal standard data",
     xlim = c(-4,4),
     freq = FALSE)


data2<- runif(10^4)
hist(data2,main="Histogram for uniform data, 1 point per sample",
     freq=FALSE)


## make a vector for zeros

data3<- rep(0,10^4)

for (i in 1:10^4){
  temp <- runif(2)
  temp <- sum(temp)
  data3[i]<-temp
}
hist(data3,mean="Histogram of uniform data, 2 point per sample",
     freq = FALSE)

## make a vector for zeros
data4<- rep(0,10^4)

for (i in 1:10^4){
  temp <- runif(3)
  temp <- sum(temp)
  data4[i]<-temp
}
hist(data4,mean="Histogram of uniform data, 4 point per sample",
     freq = FALSE)

## make a vector for zeros

data5<- rep(0,10^4)

for (i in 1:10^4){
  temp <- runif(3)
  temp <- sum(temp)
  data5[i]<-temp
}
hist(data5,mean="Histogram of uniform data, 10 point per sample",
     freq = FALSE)


data5<- rep(0,10^4)

for (i in 1:10^4){
  temp <- runif(10)
  temp <- sum(temp)
  data5[i]<-temp
}

qqnorm(data5) 
qqline(data5)

