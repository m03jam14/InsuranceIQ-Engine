# Load library for visualization
library(ggplot2)

# Read the dataset from Expenses1.csv
insurance_data <- read.csv("C:/Users/moham/Downloads/Expenses1.csv")

# Check the structure of the data to ensure column names are correct
str(insurance_data)

# Create a scatter plot
ggplot(insurance_data, aes(x = bmi, y = expenses)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue") +
  labs(title = "BMI vs. Medical Expenses",
       x = "BMI",
       y = "Medical Expenses")

# Build simple linear regression model
model <- lm(expenses ~ bmi, data = insurance_data)

# Print detailed summary of the model
cat("\n===== SIMPLE LINEAR REGRESSION MODEL SUMMARY =====\n\n")
summary_output <- summary(model)
print(summary_output)

