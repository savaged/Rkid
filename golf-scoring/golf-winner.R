# Depends on csv file with title having golfer's names and rows having golf hole numbers

#setwd('~/Desktop/geek/R')

golf.game.data <- read.csv('golf-game-data.csv')
print(names(sort(apply(data[c(2:4)], 2, sum))[1]))

