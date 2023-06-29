t_statistic <- 2.14
df <- 238 - 1  # degrees of freedom, which is sample size minus 1

# calculate the one-tailed p-value
one_tailed_p <- pt(-abs(t_statistic), df) 

# double the one-tailed p-value to get the two-tailed p-value
two_tailed_p <- 2 * one_tailed_p
print(two_tailed_p)

z_statistic <- -1.35

# calculate the one-tailed p-value
p_value <- pnorm(z_statistic)
print(p_value)


alpha <- 0.01  # significance level
df <- 10 + 10 - 2  # degrees of freedom

# find the critical value for a one-tailed test
critical_value <- qt(1 - alpha, df)
print(critical_value)

mean_difference <- 0.53
sd_difference <- 0.06
n <- 50

t_statistic <- mean_difference / (sd_difference / sqrt(n))
print(t_statistic)

# Load the library
library(stats)

# Create the contingency table
contingency_table = matrix(c(25, 15, 20, 33), nrow=4, byrow=TRUE)
colnames(contingency_table) = c("Very", "Moderate", "Slightly", "Not very")
rownames(contingency_table) = c("Yes", "No")

# Calculate the chi-square value
chi_square_value = chisq.test(contingency_table)$statistic

# Calculate the degrees of freedom
degrees_of_freedom = (4-1)*(2-1)

# Calculate the critical value
critical_value = qchisq(1-0.05, degrees_of_freedom)

# Print the results
print(paste("Chi-square value:", chi_square_value))
print(paste("Critical value:", critical_value))

# If the chi-square value is greater than the critical value, we can reject the null hypothesis
if (chi_square_value > critical_value) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}


alpha <- 0.05
df <- 3

critical_value <- qchisq(1 - alpha, df)
print(critical_value)
