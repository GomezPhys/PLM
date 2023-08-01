### Required packages
library(readxl) ## To load excel sheet
library(dplyr) # Data grammar and manipulation
# Load the BlandAltmanLeh package
library(BlandAltmanLeh)
library(psych) #descriptives
library(kableExtra) #tables
library(ggplot2) #data visualization
library(ggpubr)#data visualization
library(ggprism)##makes plots look like graphad
library(table1) #for descriptives
library(rstatix) # Shapiro Wilk and effect size



Df <- read_excel("~/VOP_Data_MG.xlsx")
View(Df)
## Convert from character to factor data
Df$Sex <- as.factor(Df$Sex) ### this is for descriptives sheet##
Df$Condition <- as.factor(Df$Condition)

## Order conditions
Df$Condition <- ordered(Df$Condition,
                        levels = c("Ischemic_V1", "Ischemic_V2",
                                   "PLM_V1","PLM_V2"))
################# DATA NORMALITY TEST ###############

# Perform correlation analysis between Ischemic_V1 and Ischemic_V2
correlation <- cor(Df$Ischemic_V1, Df$Ischemic_V2)
# Print the correlation coefficient
print(correlation)


### Correlation for PLMs

correlation <- cor(df$PLM_V1, df$PLM_V2)

# Print the correlation coefficient
print(correlation)

correlation <- cor(df$PLM_V1, df$Ischemic_V1)
print(correlation)

correlation <- cor(df$Ischemic_V2, df$PLM_V2)
print(correlation)




# Create Bland-Altman plot for Ischemic_V1 and Ischemic_V2
bland.altman.plot(df$Ischemic_V1, df$Ischemic_V2, xlab = "Mean", ylab = "Difference")

# Create Bland-Altman plot for PLM_V1 and PLM_V2
bland.altman.plot(df$PLM_V1, df$PLM_V2, xlab = "Mean", ylab = "Difference")


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
     labels = paste("Correlation:", round(correlation, 2)), pos = 3)

# Create Bland-Altman plot for Ischemic_V1 and PLM_V1
bland.altman.plot(df$Ischemic_V1, df$PLM_V1, xlab = "Mean", ylab = "Difference", main = "Ischemic v1 vs PLM v1")
# Add correlation value as text
correlation <- cor(df$Ischemic_V1, df$PLM_V2)
text(x = mean(df$Ischemic_V1), y = max(df$PLM_V1) - 0.2 * (max(df$PLM_V1) - min(df$PLM_V1)),
     labels = paste("Correlation:", round(correlation, 1)), pos = 4)


# Create Bland-Altman plot for Ischemic_V2 and PLM_V2
bland.altman.plot(df$Ischemic_V2, df$PLM_V2, xlab = "VOP", ylab = "PLM", main = "Ischemic v2 vs PLM v2")
# Add correlation value as text
correlation <- cor(df$Ischemic_V2, df$PLM_V2)
text(x = mean(df$Ischemic_V2), y = max(df$PLM_V2) - 0.2 * (max(df$PLM_V2) - min(df$PLM_V2)),
     labels = paste("Correlation:", round(correlation, 1)), pos = 4)
