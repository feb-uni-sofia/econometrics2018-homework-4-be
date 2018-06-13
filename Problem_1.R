## Homework 4, Problem 1

library(dplyr)

## Read the data
houseWork <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/houseWork.csv')
str(houseWork)

## a)

countM <- length(which(houseWork$sex == 'm')) 
countF <- length(which(houseWork$sex == 'f'))

## b)

scoreM <- houseWork[houseWork$sex == 'm', 'hours']
avgMH <- mean(scoreM)

scoreF <- houseWork[houseWork$sex == 'f', 'hours']
avgFH <- mean(scoreF)

## c)

houseWork <- within(houseWork, {female<-ifelse(houseWork$sex == 'f','TRUE','FALSE')})
houseWork <- within(houseWork, {male<-ifelse(houseWork$sex == 'm','TRUE','FALSE')})

## d)

fit <- lm(hours ~ female, data = houseWork)

## e)

## f)

## g)

## h)

## i)

## j)
