# Data Analysis and Linear Regression Model - Zoo Visit Spending

## Authors
- [Varun Harish Kapuria]([url](https://github.com/varunkapuria96))

## Overview
This R code provides an in-depth analysis of the `ZooVisitSpending.csv` dataset provided in MIS545. The code conducts various data preprocessing tasks and generates a multiple linear regression model to understand the factors affecting zoo visit spending.

## Pre-execution
Before running the code, make sure to check and install the necessary R packages using the following commands:

```R
# Check if packages are installed
# installed.packages()

# If not installed, install the required packages
# install.packages("tidyverse")
# install.packages("dummies", repos = NULL, type = "source")
# install.packages("corrplot")
# install.packages("olsrr")
```

## Usage
- Clone this repository to your local machine.
  
```
git clone https://github.com/yourusername/your-repo-name.git
```

- Set the working directory to the folder where you cloned this repository. You can change this line in the code to match your directory:
```
setwd("C:/your-working-directory")
```

- Open the R script Lab05Group2AgarwalaKapuria.R in your R environment.

- Run the script to execute the data preprocessing tasks and generate the linear regression model.

## Code Description

- The code reads the ZooVisitSpending.csv dataset into a tibble called zooSpending.
- It conducts exploratory data analysis, including displaying data structure and summary statistics.
- The code generates histograms and a correlation matrix plot to visualize the data.
- A multiple linear regression model is created to understand the factors affecting zoo visit spending.
- Model coefficients and summary statistics are displayed.

## Results
- The code provides insights into the dataset and offers a linear regression model to predict zoo visit spending based on input variables.

## Key Questions Answered
1. Within the model, which variables are statistically significant?
- Member, PartySize and, MilesFromZoo are statistically significant
2.  How much of the variance in zoo spending can be explained by the variance in party size, miles from the zoo, and zoo membership?
- 76.5% of variance in zoo spending can be explained by the variance in party size, miles from the zoo, and zoo membership
3. Within the model, how much more/less will zoo spending be with each additional guest in a party?
- With each additional guest, the zoo spending will increase by $9.136
4. Within the model, how much more/less is zoo spending for members compared with non-members? Explain why this might be the case.
- Members spend $14.90 less than a non-member, this might be because of some member-only discounts
5. Within the model, how much more/less will spending be for each additional mile traveled to visit the zoo? Explain why this might be the case.
- For each mile extra traveled, the zoo spending will increase by $0.88. This might be because people who have traveled far have the urge to spend more as they will have the chance to visit the zoo less.
6. Does the model suffer from multicollinearity? If so, what could be done to rectify it? If not, why?
- No, it does not suffer from multicollinearity, as the tolerance values are greater than 0.2 and VIF values are less than 5. To rectify it, we will remove the correlated variables.

