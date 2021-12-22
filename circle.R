plot(c(-1, 1), c(-1, 1), type = "n")

r = 1
x = 0
y = 0
t = seq(0, 2 * pi, length = 200)

lines(x = r * cos(t) + x, y = r * sin(t) + y)

