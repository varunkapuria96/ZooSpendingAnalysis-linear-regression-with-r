# Importing necessary libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import statsmodels.api as sm
from statsmodels.stats.outliers_influence import variance_inflation_factor

# Set the working directory
import os

# Read the CSV file into a DataFrame
zoo_spending = pd.read_csv("ZooVisitSpending.csv")

# Print the DataFrame
print(zoo_spending)

# Display DataFrame information
print(zoo_spending.info())

# Display DataFrame summary statistics
print(zoo_spending.describe())

# Function to display histograms for numeric columns
def display_all_histograms(df):
    numeric_cols = df.select_dtypes(include=[np.number])
    for col in numeric_cols.columns:
        plt.figure()
        df[col].plot(kind='hist', title=col)
        plt.show()

# Call the display_all_histograms function
display_all_histograms(zoo_spending)

# Calculate and display the correlation matrix
correlation_matrix = zoo_spending.corr().round(2)
print(correlation_matrix)

# Display a correlation plot
plt.matshow(correlation_matrix, cmap='coolwarm')
plt.colorbar()
plt.xticks(range(len(correlation_matrix.columns)), correlation_matrix.columns, rotation=90)
plt.yticks(range(len(correlation_matrix.columns)), correlation_matrix.columns)
plt.show()

# Perform multiple linear regression
X = zoo_spending[['PartySize', 'MilesFromZoo', 'Member']]
y = zoo_spending['VisitSpending']

X = sm.add_constant(X)  # Add a constant term to the model
model = sm.OLS(y, X).fit()

# Display model summary
print(model.summary())

# Test for multicollinearity using VIF
def calculate_vif(data_frame):
    vif_data = pd.DataFrame()
    vif_data["Variable"] = data_frame.columns
    vif_data["VIF"] = [variance_inflation_factor(data_frame.values, i) for i in range(data_frame.shape[1])]
    return vif_data

independent_variables = zoo_spending[['PartySize', 'MilesFromZoo', 'Member']]
vif_result = calculate_vif(independent_variables)
print(vif_result)