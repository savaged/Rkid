#
# Calculate compound interest
#
# A = P(1+r/n)^nt
#
# e.g.
#    P = 2000, r = 2%, n = quarterly, t = 3 years
#    A = 2000 * (1 + 0.02/12)¹²
#    A = 2123.356
#
# i = principal (i.e. initial amount)
# r = percentage rate
# n = number of times per time period (i.e. quarterly or 4 times per year)
# t = time (i.e. years)
#
# Usage: print(fnA(2000, 2, 4, 3))
#
fnA <- function(P, r, n, t) {
    return(P * (1 + ((r / 100) / n)) ^ (n * t))
}

