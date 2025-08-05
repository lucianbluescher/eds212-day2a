# load packages ----
library(tidyverse)
library(ggplot2)

# Define function ----
eq1 <- function(x) {
  3 * x^2 + 4
} 

# create data frame with range of values to evaluate function over ----
my_data_range <- data.frame(x = c(1, 100))

# Plot it as a continuous curve over a specific range using `geom_function()` ----
# `geom_function()` automatically evaluates the function over the range of x-values specified in the df and adds the resulting y-values to the plot
ggplot(data = my_data_range, aes(x = x)) + 
  geom_function(fun = eq1