x <- c(91, 80, 99, 110, 95, 106, 78, 121, 106, 100, 97, 82, 100, 83, 115, 104 )
mean(x)

qnorm(1-(1-.90)/2)
qt(1-(1-.95)/2,60-1)
sd(x)
length(x)

qt((1-.025),15)

t.test(x,conf.level = .8)

t.test(x,conf.level = .95)

biodeg <- read.csv("https://raw.githubusercontent.com/EricBrownTTU/ISQS5346/main/biodeg.csv", header = TRUE)
colnames(biodeg)[1] <- "Dioxide"

results <- t.test(biodeg$Dioxide[biodeg$Oil == "Yes"], conf.level = 0.95) 
results$conf.int

results2 <- t.test(biodeg$Dioxide[biodeg$Oil == "No"], conf.level = 0.95) 
results2$conf.int

x <- c(1, 0, 0, 1, 2, 0, 1, 1, 0, 0, 0, 1, 0, 2, 0, 2, 2, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1,
       0, 2, 0, 0, 1, 1, 0, 0, 0, 1)

results <- prop.test(table(x != 1), conf.level = 0.8)
results
library(binom)
binom.confint(15, 50, conf.level = 0.8, methods = "asymptotic")

qnorm((1-(1-.90)/2))
