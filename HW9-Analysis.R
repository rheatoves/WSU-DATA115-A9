
library(ISLR)
library(ggplot2)
library(MASS)

educationdf <- read.csv("education_income.csv")

scatter <- ggplot(educationdf, aes(x=X.State, y=Median.HH.Income)) +
  geom_point(fill="slateblue", alpha =0.1) +
  ggtitle("Median Household Income")
    

linearEI <- lm(Median.HH.Income ~ X.State, educationdf)

bestfit <- ggplot(educationdf, aes(x=X.State, y=Median.HH.Income)) +
  geom_point(fill="slateblue", alpha =0.1) +
  geom_smooth(method="lm", formula=y~x, color='green')

family <- ggplot(educationdf, aes(x=X.State, y=Median.Family.Income)) +
  geom_point(fill="slateblue", alpha =0.1) +
  ggtitle("Median Family Income")
