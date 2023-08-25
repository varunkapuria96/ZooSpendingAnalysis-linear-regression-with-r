# Data Analysis and Linear Regression Model - Zoo Visit Spending

## Authors
- [Varun Harish Kapuria](https://github.com/varunkapuria96)

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
