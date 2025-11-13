# simulate data for a linear regression model

set.seed(123)  # For reproducibility
n <- 100  # Number of observations
x1 <- rnorm(n, mean = 5, sd = 2)  # Predictor variable 1
x2 <- rnorm(n, mean = 10, sd = 3)  # Predictor variable 2
epsilon <- rnorm(n, mean = 0, sd = 1)  # Random error term

# Coefficients
beta0 <- 2  # Intercept
beta1 <- 3  # Coefficient for x1
beta2 <- -1  # Coefficient for x2
# Response variable
y <- beta0 + beta1 * x1 + beta2 * x2 + epsilon

# estimation via lm
model <- lm(y ~ x1 + x2)
summary(model)
