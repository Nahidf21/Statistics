# Sample data
x <- c(91, 80, 99, 110, 95, 106, 78, 121, 106, 100, 97, 82, 100, 83, 115, 104)

# Sample size
n <- length(x)

# Sample mean
mean_x <- mean(x)

# Standard error of the mean
se <- sd(x) / sqrt(n)

# Degrees of freedom
df <- n - 1

# Confidence level
confidence_level <- 0.80

# Calculate the critical value
critical_value <- qt((1 + confidence_level) / 2, df)

# Calculate the margin of error
margin_of_error <- critical_value * se

# Calculate the confidence interval
lower_bound <- mean_x - margin_of_error
upper_bound <- mean_x + margin_of_error

# Display the confidence interval
cat("80% Confidence Interval:", round(lower_bound, 2), "-", round(upper_bound, 2))

results <- t.test(x, conf.level = 0.8) 
results$conf.int