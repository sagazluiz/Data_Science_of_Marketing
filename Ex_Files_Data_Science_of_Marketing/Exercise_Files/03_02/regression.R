# Connect to our data
myRegressionData <- read.csv("D:/00 - Fabio/Ex_Files_Data_Science_of_Marketing/Exercise_Files/03_02/regression-r.csv")

# Plot our data (broadcast & sales)
plot(myRegressionData$BROADCAST, myRegressionData$NET.SALES)

# Fit a line
myLm <- lm(myRegressionData$NET.SALES ~ myRegressionData$BROADCAST)

# Visualize the line
lines(myRegressionData$BROADCAST,myLm$fitted)


# Show our coefficients 
myLm$coefficients

# intercept = doing nothing
# slope = relation between for each unit increase in broadcast it will increas 12,141 in net sales