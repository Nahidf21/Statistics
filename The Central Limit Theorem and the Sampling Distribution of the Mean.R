## Data from an actual phishing attack against an organization were considered in an 
## article. The interarrival times, i.e., the time differences in seconds for 267 fraud 
## box e-mail notifications, were recorded and saved in the phish.csv file on our github site. 
## Assume that the interarrival times represent the population of interest.

phish <- read.csv("https://raw.githubusercontent.com/EricBrownTTU/ISQS5346/main/phish.csv", header = TRUE)
phish

## a. Find the mean and standard deviation of the population of interrarival times.

mean_phish= mean(phish[,1])
std_phish=sd(phish[,1])
mean_phish
std_phish

## b. Now consider a random sample of 𝑛 = 40 interarrival times selected from the
##population. Describe the shape of the sampling distribution of 𝑥 ̅. Theoretically, what are𝜇𝑥 ̅ and𝜎𝑥 ̅?

sample_mean= mean_phish

sample_sd= std_phish/sqrt(40)
sample_mean
sample_sd

## c. Find P(𝑥 ̅ < 90)
pnorm(90,sample_mean,sample_sd)

## d. Use R to select 50 random samples (with replacement) of 𝑛 = 40 interarrival 
##times from the population and calculate each value of 𝑥 ̅. Form a histogram of
#these 𝑥 ̅ values. Does the shape appear normal?

mydata <- data.frame(matrix(nrow = 50, ncol = 1))

for (i in 1:50){
  temp <- sample(phish[,1], 40, replace = TRUE) 
  mydata[i,1] <- mean(temp)
}
hist(mydata[,1])


## e. Find the mean and standard deviation of your 30 𝑥 ̅ values. Do these values approximate 𝜇𝑥 ̅ and 𝜎𝑥 ̅ respectively?

mean(mydata[,1])
## [1] 97.64507
sd(mydata[,1])
## [1] 13.75511


