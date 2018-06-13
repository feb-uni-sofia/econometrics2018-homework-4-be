## Homework 4, Problem 1

library(dplyr)

## Read the data
houseWork <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/houseWork.csv')
str(houseWork)

## a)

countMa <- length(which(houseWork$sex == 'm')) 
countFe <- length(which(houseWork$sex == 'f'))

## b)

scoreM <- houseWork[houseWork$sex == 'm', 'hours']
avgMH <- mean(scoreM)

scoreF <- houseWork[houseWork$sex == 'f', 'hours']
avgFH <- mean(scoreF)

## c)

houseWork <- within(houseWork, {female <- ifelse(houseWork$sex == 'f','TRUE','FALSE')})
houseWork <- within(houseWork, {male <- ifelse(houseWork$sex == 'm','TRUE','FALSE')})

## d)

fit <- lm(hours ~ female, data = houseWork)

## e)

# The estimated coefficients show that the overall working hours per week, not depending on the female hours, are 
# equal to 32.81. And if the house work of females increased with 1% the hours of work per week would decrease with
# -14.46.

## f)

## g)

## h)

## i)

## j)
