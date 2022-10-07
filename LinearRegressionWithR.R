# Sanchit Agarwala and Varun Harish Kapuria
# MIS 545 Section 1
# Lab05Group2AgarwalaKapuria.R
# This code is meant to provide an in-depth analysis on the zooSpending,scv
# dataset provided in MIS545 to conduct some data preprocessing tasks,
# and generating a multiple linear regression model.

# Pre-execution --------------------------------------------------------
# By utilizing installed.packages() we can establish if the package is
# installed and if the package isn't in installed can be downloaded using
# install.packages()
# installed.packages()
# install.packages("tidyverse")
# install.packages("dummies", repos = NULL, type="source")
# install.packages("corrplot")
# install.packages("olsrr")

# We can load/run the tidyverse/corrplot/olsrr library using the library()
# command and check if the package is installed can be checked under the
# packages tab on the right of the screen.
library(tidyverse)
library(dummies)
library(corrplot)
library(olsrr)

# By running the setwd() we can set the library as per request and can be
# then retrieved using the getwd() command.
setwd("C:/Users/ual-laptop/Desktop/MIS545/Lab05")
# print(getwd())

# Understanding our data set ------------------------
# Read ZooVisitSpending.csv into a tibble called zooSpending (use the data
# types suggested at the bottom of these assignment instructions).
zooSpending <- read_csv(file = "ZooVisitSpending.csv",
                        col_types = "niil",
                        col_names = TRUE)

# The print() command displays the tireTread1 in the console.
print(zooSpending)

# The str() command displays the structure of tireTread1 in the console
str(zooSpending)

# The summary() command displays the summary of tireTread1 in the console
summary(zooSpending)

# Recreating the displayAllHistograms() function
displayAllHistograms <- function(tibbleDataset) {
  tibbleDataset %>%
    keep(is.numeric) %>%
    gather() %>%
    ggplot() + geom_histogram(mapping = aes(x=value,fill=key),
                              color = "black") +
    facet_wrap (~key, scales = "free") +
    theme_minimal()
}

# Calling the displayAllHistograms() function, passing in zooSpending as an
# argument
displayAllHistograms(zooSpending)

# Display a correlation matrix of zooSpending rounded to two decimal places
round(cor(zooSpending), 2)

# Displaying a correlation plot using the "number" method and limit output to
# the bottom left
corrplot(cor(zooSpending),
         method = "number",
         type = "lower")

# Generating the linear regression model and saving it in an object called
# zooSpendingModel
zooSpendingModel <- lm(data = zooSpending,
                       formula = VisitSpending ~ PartySize +
                         MilesFromZoo + Member)

# Alternative Method of the above
# zooSpendingModel <- lm(data = zooSpending,
#                       formula = VisitSpending ~ .)

# Displaying the beta coefficients for the model on the console
print(zooSpendingModel)

# Displaying the linear regression model results using the summary() function
summary(zooSpendingModel)

# Testing for multicollinearity using the ols_vif_tol() function
ols_vif_tol(zooSpendingModel)
