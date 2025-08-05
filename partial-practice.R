# load packages ----
library(tidyverse)
library(ggplot2)
library(ARTofR)

rm(list = ls())

# Define function ----
eq1 <- function(x) {
  3 * x^2 + 4
} 

# create data frame with range of values to evaluate function over ----
my_data_range <- data.frame(x = c(1, 100))

# Plot it as a continuous curve over a specific range using `geom_function()` ----
# `geom_function()` automatically evaluates the function over the range of x-values specified in the df and adds the resulting y-values to the plot
ggplot(data = my_data_range, aes(x = x)) + 
  geom_function(fun = eq1)

#..................example plotting derivatives..................
# Store the function C(t) ----
ct <- function(t) {
  t^3
}

# create data frame with range of values to evaluate function over ----
my_data_range <- data.frame(t = c(-5, 5))

# Plot it ----
ggplot(data = my_data_range, aes(x = t)) + 
  geom_function(fun = ct)

# Find the derivative ----     
dc_dt <- D(expr = expression(t^3), name = "t")
dc_dt 

# Store the derivative as a function ----
dc_dt_fun <- function(t) {
  3 * t ^2
}

# Then plot them together ----
ggplot(data = my_data_range, aes(x = t)) + 
  geom_function(fun = ct, color = "red") +
  geom_function(fun = dc_dt_fun, color = "blue")
#......................partial derivatives.......................

# Create the expression ----
f_xyz <- expression(2 * x * y - 3 * x^2 * z^3)

# Partial with respect to x ----
df_dx <- D(expr = f_xyz, name = "x")
df_dx

# Partial with respect to y ----
df_dy <- D(expr = f_xyz, name = "y")
df_dy

# Partial with respect to z ---- 
df_dz <- D(expr = f_xyz, name = "z")
df_dz


