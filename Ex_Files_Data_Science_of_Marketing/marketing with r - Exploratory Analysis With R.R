# import csv file
myExploratoryData <- read.csv("D:/00 - Fabio/Ex_Files_Data_Science_of_Marketing/Exercise_Files/02_02/exploratory-r.csv")

# get a quick snpshots of your data
head(myExploratoryData)

hist(myExploratoryData$cpa)

# shift the names to each row
row.names(myExploratoryData) <- myExploratoryData$keyword

# review that transformation
head(myExploratoryData)

# transform into a matrix
myDataMatrix <- data.matrix(myExploratoryData)

# generate our heatmap
heatmap(myDataMatrix, Rowv=NA ,Colv= NA, scale="column")

