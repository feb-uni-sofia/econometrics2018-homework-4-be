## Homework 4, Problem 2
library(ggplot2)
crime <- read.delim('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/crime.csv', stringsAsFactors = FALSE)
str(crime)

## a)
fit <- lm(C ~ HS, data = crime)
summary(fit)
## seems like if there is 1% increase in people completing high school, 
## the crime rate would increase with 1.486
## if the percent of people completing high school is 0, then the crime rate would be -50.857

## b)
ggplot(data = crime, aes(x = HS, y = C)) +
  geom_point() +
  geom_smooth(method = "lm")

## c)
fit1 <- lm(C ~ HS + U, data = crime)
summary(fit1)
## if there is a 1% increase in people completing high school, 
## now we see that the crime rate would decrease with -0.5834
## and we see that the crime rate is positively related to the urbanization 
## and with an increase in it, the crime rate increases as well
## if we test the hypothesis the HS is insignificant
## the explanation of the change in the sign of HS is the Simpson's paradox: 
## in point a) the urbanization effect  was transferred onto HS 
## and that's why the results weren't logical

## d)
## crime rate is usually bigger in more populated cities where more educated people live
## this makes the results misleading if the model is not interpreted carefully

## e)
fit2 <- lm(C ~ HS + U + I, data = crime)
summary(fit2)
## ftest <- var.test(HS ~ I, data = crime, conf.level = 0.95)
## we haven't done F-tests in exercise so that's the best we've got :)
