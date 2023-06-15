y<- sample(1:6, 10000, replace = TRUE)
mean(y)
var(y)
sd(y)
table(y)

dbinom(1,5,.2)
dbinom(2,4,.6)
dbinom(0,3,.7)
dbinom(3,5,.1)
dbinom(2,4,.4)
dbinom(1,3,.9)
## a. P(𝑋=2)when𝑛=10,𝑝=.4
dbinom(2,10,.4)
## b. P(𝑋≤5)when𝑛=15,𝑝=.6
pbinom(5,15,.6)
## c. P(𝑋>1)when𝑛=5,𝑝=.1 
pbinom(1,5,.1)
## d. P(𝑋<10)when𝑛=25,𝑝=.7 
pbinom(10,25,.7)
## e. P(𝑋≥10)when𝑛=15,𝑝=.9 
pbinom(10,15,.9)
## f. P(𝑋=2)when𝑛=20,𝑝=.2
dbinom(2,20,.2)
pbinom(20, 1000,.34)
pbinom(20,1000,.05)
pbinom( 1, 5, 0.005)
1-pbinom( 1, 5, 0.005)

## poisson probability distribution 
ppois(3,1.5)
1 - ppois(q = 6, lambda = 1.5)

1 - dpois(x = 0, lambda = 1.5)

1-ppois(0, 1.5)
## If x is a binomial random variable, compute p(x) for n = 6, x = 1, p = 0.2.
dbinom(1,6,.2)

# Parameters
n <- 10
p <- 0.5

# Find the smallest x such that the cumulative probability of getting x or more correct by guessing is less than 0.10
for (x in 0:n) {
  if (1 - pbinom(x - 1, size = n, prob = p) < 0.10) {
    break
  }
}

# Print the result
print(x)
print("Probability : ")
1-pbinom( 9, 10, 0.1)
1-pbinom( 8, 10, 0.1)
1-pbinom( 7, 10, 0.1)
1-pbinom( 6, 10, 0.1)

 pbinom(8,20,.34) - pbinom(11,20,.34) 
 # Parameters
 n <- 20
 p <- 0.34
 
 # Calculate the cumulative probabilities
 p_11 <- pbinom(11, size = n, prob = p)
 p_8 <- pbinom(8, size = n, prob = p)
 
 # Calculate the desired probability
 p_desired <- p_11 - p_8
 
 # Print the result rounded to six decimal places
 print(round(p_desired, 6))
 1-ppois(7,4.6)
 ## Suppose the number of babies born each hour 
 ##at a hospital follows a Poisson distribution 
 ##with a mean of 4. Find the probability that 
 ##exactly five babies will be born during a 
 ##particular 1-hour period at this hospital.

dpois(5,6.5)
1-dpois(5,4)
# Set the parameters
n <- 75    # Total number of participants
p <- 0.45  # Probability of success (being cured)

# Create a vector to store the probabilities
probabilities <- numeric(n+1)

# Calculate the probabilities for each value of X
for (x in 0:n) {
  probabilities[x+1] <- choose(n, x) * p^x * (1 - p)^(n - x)
}

# Print the probabilities
for (x in 0:n) {
  cat("P(X =", x, ") =", probabilities[x+1], "\n")
}


n<- 75

for (x in 0:n){
  p=pbinom(x,n,.45)
  print(x)
  print(p)
}

pnorm(2.5,0,1)
pnorm(-1.2,0,1)
pnorm(-1.7,0,1)
1-pnorm(1.27,0,1)

pnorm(302,440,60)

# Set the parameters
mean <- 440    # Mean of the distribution
sd <- 60       # Standard deviation of the distribution
x <- 302       # Value for which we want to calculate the probability

# Calculate the probability using pnorm()
probability <- pnorm(x, mean, sd)

# Print the probability
cat("The probability is approximately", probability, "\n")

1-pnorm(12.75,12.45,.30)
# Set the parameters
mean <- 12.45    # Mean of the distribution
sd <- 0.30       # Standard deviation of the distribution
x <- 12.75       # Value for which we want to calculate the probability

# Calculate the probability using pnorm()
probability <- 1 - pnorm(x, mean, sd)

# Print the probability
cat("The probability is approximately", probability, "\n")

dnorm(3.216,0,1)

qnorm(1-.02,3.2,.8)
