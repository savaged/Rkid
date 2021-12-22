# Depends on csv file with course data like the following
#
#   "Tee","CourseRating","SlopeRating","Par"
#   "Yellow",34.9,129,35
#   "White",70.1,126,68
#   "Yellow",67.9,121,68
#
#   (see https://bit.ly/3FmJAKA)
#
# Aslo depends on csv file with player handicap index data like the following
#
#   "Player", "HandicapIndex"
#   "DS", 17.1
#   "MS", 11.4
#   "PB", 22.6
#
# The handicap allowance is based on the game format (see https://bit.ly/3mnCRJ4)

#setwd('~/Desktop/geek/R')

# constants for driving the result
teeSelection <- 2
handicapAllowance <- 0.95

# data
courseData <- read.csv('golf-course-data.csv')
playerHandicapIndexData <- read.csv('golf-player-handicap-index-data.csv')

# calc
selectedTees <- courseData[teeSelection,]
courseHandicap <- playerHandicapIndexData$HandicapIndex * (selectedTees$SlopeRating / 113) + (selectedTees$CourseRating - selectedTees$Par)
playingHandicap <- round(courseHandicap * handicapAllowance, 1)

# output
print(cbind(playerHandicapIndexData, "PlayingHandicap" = playingHandicap))
