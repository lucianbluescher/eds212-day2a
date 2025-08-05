#......................Derivitive Practice.......................

# create an expression
my_expression <- expression(5 * x^2)

# find the dervitive of the expression with respect to x
my_derivative <- D(expr = my_expression, name = "x")
my_derivative

# evaluate derivative at x = 2.8
x <- 2.8

#evaluate!
eval(my_derivitive)

#....................Another example with D()....................
# find derivitive with respect to x
my_derivative <- D(expr = expression(3.1 * x^4 - 28 * x), name = "x")
my_derivative

# create and store a funciton
fx <- expression(x^2)

# find the derivative with respect to x
df_dx <- D(expr = fx, name = "x")
df_dx

x <- 10
eval(df_dx)

gz = expression(2*z^3 - 10.5*z^2 + 4.1)

dg_dz = D(expr = gz, name = "z")

# Return dg_dz ----
dg_dz

ty = expression((2*y^3+1)^4 - 8*y^3)
dt_dy = D(expr = ty, name = "y")


# Return dt_dy ----
dt_dy

# find the slope of T(y) at a range of values

# Create a vector of y values from -0.4 to 2.0, by increments of 0.1 ----
y <- seq(from = -0.4, to = 2.0, by = 0.1)

# Evaluate the slope of T(y) at each of those values ----
eval(dt_dy)
