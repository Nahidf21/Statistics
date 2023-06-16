
z_score<- function(X,u,sd){
  z= (X-u)/sd
}

for (x in c(20,30,2.27,15,35,25)){
  print(paste("Z Score of",x)) 
  print(z_score(x,30,4))
}

probability_f  <- function(x){
  probability=  pnorm(x,0,1)
  print(probability)
}
## In Standard normal distribution u=0, sd=1
## a. P(𝑍 > 1.46)
1-probability_f(1.46)
## b. P(𝑍 < −1.56)
print(probability_f(-1.56))
## c. P(0.67 ≤ 𝑍 ≤ 2.41)
probability_f(2.41)-probability_f(.67)
## d. P(−1.96 < 𝑍 < −0.33)
probability_f(-0.33)-probability_f(-1.96)
## e. P(𝑍 ≥ −2.33)
1-probability_f(-2.33)
## f. P(𝑍 < 2.33)
probability_f(2.33)



## a. P(𝑋 ≤ 𝑥0) = 0.8413
qnorm(.8413,50,3)
## b. P(𝑋 > 𝑥0) = 0.025
qnorm(1-.025,50,3)
## c. P(𝑋>𝑥0)=0.95
qnorm(p = 1 - 0.95, mean = 50, sd = 3)
## d. P(41≤𝑋≤𝑥0)=0.8630
qnorm(.8643499, 50,3)
## e. 10% of the values of 𝑋 are less than 𝑥0
qnorm(.1, 50,3)
## f. 1% of the values of 𝑋 are greater than 𝑥0
qnorm(1-.01, 50,3)

## a. When at rest, what is the probability that an expert shooter has an MVIC value of 120 or less?
pnorm(120,160.3,19.6)

## b. After repeated shooting sessions, what is the probability that an expert shooter has an MVBIC
## value of 120 N or less?
pnorm(120,133.5,19.6)

## c. What MVIC value will be exceeded by 75% of the expert shooters when at rest?
qnorm(.75,160.3,19.6)

pnorm(173.52,160.3,19.6)

## d. Repeat part (c) for expert shooters following repeated shooting sessions.

qnorm(.75,133.5,19.6)

## e. If you observe an expert shooter with an MVA value of 120 N or less, what can you infer about
## when – at rest or after repeated shooting sessions – the measurement was taken?

at_rest = pnorm(120,160.3,19.6)
paste("at_rest ",  at_rest)
after_repited = pnorm(120,133.5,19.6)
paste("after_repited", after_repited)
100*(after_repited-at_rest)
## From this observetion its clear that after practice the shooter improve his
## MVIC accuracy 22.55%

pnorm(10,10,.2)

pnorm(10.60,10,.2)
