fib <- function(x) {
    return(ifelse(x > 2, fib(x-1) + fib(x-2), abs(x)))
}

range <- function(x) {
    return(1:x-1)
}

fibSeq <- function(x) {
    return(fib(range(x)))
}

t <- as.integer(readline(prompt="Terms? "))

print(fibSeq(t))

plot(range(t), fibSeq(t), type="l")

