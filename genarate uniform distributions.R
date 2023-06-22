# It will genarate uniform distributions 
n<-1
mydata<- rep(0,1000)
for (i in 1:1000){
  x<-runif(n)
  mydata[i]<-mean(x)
}

mydata
hist(mydata)

#It will generate normal distributions 

n<-2
data<- rep(0,1000)

for (i in 1:1000 ){
  x<- runif(n)
  data[i]<-mean(x)
}
data
hist(data)