# Install the BlandAltmanLeh package
install.packages("BlandAltmanLeh")

# Load the BlandAltmanLeh package
library(BlandAltmanLeh)


# Load the data into a dataframe
df <- data.frame(
  Subject_ID = c("PLM01", "PLM02", "PLM03", "PLM04", "PLM05", "PLM07", "PLM08", "PLM09", "PLM10", "PLM11", "PLM12", "PLM14", "PLM15"),
  Sex = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Male", "Male", "Male", "Female"),
  Ischemic_V1 = c(11.78, 12.63, 32.27, 19.94, 14.83, 19.43, 19.61, 26.9, 21.27, 16.82, 18.06, 34.87, 11.21),
  Ischemic_V2 = c(17.34, 28.29, 37.64, 21.64, 14.71, 23.02, 18.39, 29.66, 29.7, 18.13, 13.46, 4.38, 16.14),
  PLM_V1 = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 100, 120, 110),
  PLM_V2 = c(15, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180, 195)
)

# Perform correlation analysis between Ischemic_V1 and Ischemic_V2
correlation <- cor(df$Ischemic_V1, df$Ischemic_V2)
# Print the correlation coefficient
print(correlation)

### Correlation for PLMs

correlation <- cor(df$PLM_V1, df$PLM_V2)

# Print the correlation coefficient
print(correlation)

# Create Bland-Altman plot for Ischemic_V1 and Ischemic_V2
bland.altman.plot(df$Ischemic_V1, df$Ischemic_V2, xlab = "Mean", ylab = "Difference")

# Create Bland-Altman plot for PLM_V1 and PLM_V2
bland.altman.plot(df$PLM_V1, df$PLM_V2, xlab = "Mean", ylab = "Difference")



# Load the BlandAltmanLeh package
library(BlandAltmanLeh)

# Load the BlandAltmanLeh package
library(BlandAltmanLeh)

# Create example data
df <- data.frame(
  Subject_ID = c("PLM01", "PLM02", "PLM03", "PLM04", "PLM05", "PLM07", "PLM08", "PLM09", "PLM10", "PLM11", "PLM12", "PLM14", "PLM15"),
  Sex = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Male", "Male", "Male", "Female"),
  Ischemic_V1 = c(11.78, 12.63, 32.27, 19.94, 14.83, 19.43, 19.61, 26.9, 21.27, 16.82, 18.06, 34.87, 11.21),
  Ischemic_V2 = c(17.34, 28.29, 37.64, 21.64, 14.71, 23.02, 18.39, 29.66, 29.7, 18.13, 13.46, 4.38, 16.14),
  PLM_V1 = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 100, 120, 110),
  PLM_V2 = c(15, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180, 195)
)

# Create Bland-Altman plot for Ischemic_V1 and Ischemic_V2
bland.altman.plot(df$Ischemic_V1, df$Ischemic_V2, xlab = "Mean", ylab = "Difference", main = "Bland-Altman Plot")
# Add correlation value as text
correlation <- cor(df$Ischemic_V1, df$Ischemic_V2)
text(x = mean(df$Ischemic_V1), y = max(df$Ischemic_V2) - 0.2 * (max(df$Ischemic_V2) - min(df$Ischemic_V2)),
     labels = paste("Correlation:", round(correlation, 2)), pos = 3)

# Create Bland-Altman plot for PLM_V1 and PLM_V2
bland.altman.plot(df$PLM_V1, df$PLM_V2, xlab = "Mean", ylab = "Difference", main = "Bland-Altman Plot")
# Add correlation value as text
correlation <- cor(df$PLM_V1, df$PLM_V2)
text(x = mean(df$PLM_V1), y = max(df$PLM_V2) - 0.2 * (max(df$PLM_V2) - min(df$PLM_V2)),
     labels = paste("Correlation:", round(correlation, 2)), pos = 1)


# Create Bland-Altman plot for Ischemic_V1 and Ischemic_V2
bland.altman.plot(df$Ischemic_V1, df$PLM_V1, xlab = "Mean", ylab = "Difference", main = "ora")
# Add correlation value as text
correlation <- cor(df$Ischemic_V1, df$PLM_V1)
text(x = mean(df$Ischemic_V1), y = max(df$PLM_V1) - 0.2 * (max(df$PLM_V1) - min(df$PLM_V1)),
     labels = paste("Correlation:", round(correlation, 2)), pos = 2)
