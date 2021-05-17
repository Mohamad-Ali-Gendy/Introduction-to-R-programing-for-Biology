# To get the current working directory
getwd()
# To set your working directory
setwd("/Users/mohal321/Documents/R/Training/")

# Explain the types of separators and loading worksheets
# To load a table using command line
LungData <- read.table(file.choose(), header = T, row.names = 1, sep = "\t",na.strings = "NA",stringsAsFactors = T)
View(LungData)
class(LungData)
attach(LungData)
levels(Stage)
summary(Age)

# To plot a generic histogram of Age
hist(Age)
# To assign number of breaks
hist(Age,breaks = 5)
# To use density instead of frequency
hist(Age, breaks = 5, freq = F)

# To change the color
hist(Age, breaks = 5, col = "red")
hist(Age, breaks = 5,freq = F ,col=c("red","green","blue"))
hist(Age, breaks = 5, freq = F,col=c("red3","salmon","violet","green","turquoise","blue"))
# To know the colors found in basic R
colors()

# To change the title of the histogram
hist(Age, breaks = 5, freq = F,col=c("red3","salmon","violet","green","turquoise","blue"), main = "Trainig Histogram")

# To change the X-axis label
hist(Age, breaks = 5, freq = F,col=c("red3","salmon","violet","green","turquoise","blue"), main = "Training Histogram",xlab = "Patients' Age")

# To change the Y-axis label
hist(Age, breaks = 5, freq = F,col=c("red3","salmon","violet","green","turquoise","blue"), main = "Training Histogram",xlab = "Patients' Age",ylab = "Density distribution of Age")

# To rotate the labels on the Y-axis
hist(Age, breaks = 5, freq = F,col=c("red3","salmon","violet","green","turquoise","blue"), main = "Training Histogram",xlab = "Patients' Age",ylab = "Density distribution of Age",las=1)
# To rotate the labels on the X-axis
hist(Age, breaks = 5, freq = F,col=c("red3","salmon","violet","green","turquoise","blue"), main = "Training Histogram",xlab = "Patients' Age",ylab = "Density distribution of Age",las=2)
# To return the rotate values on the axis
hist(Age, breaks = 5, freq = F,col=c("red3","salmon","violet","green","turquoise","blue"), main = "Training Histogram",xlab = "Patients' Age",ylab = "Density distribution of Age",las=0)

# To show the distribution with line graph we use lines and density functions
lines(density(Age))
# To omit the missing values
Age_omitted <- na.omit(Age)
# Now let's use the lines function with density of Age_omitted
lines(density(Age_omitted))
# To change the color of the line
lines(density(Age_omitted), col= "navy")
# To change the width of the line
lines(density(Age_omitted), col= "navy", lwd=2)

# To change the limits of the Y-axis
hist(Age, freq = F,col=c("red3","salmon","violet","green","turquoise","blue"), main = "Training Histogram",xlab = "Patients' Age",ylab = "Density distribution of Age",las=0,ylim = c(0,0.04))
# Now let's redraw the line again
lines(density(Age_omitted), col= "navy", lwd=2)

# You can save the plot using the export function
# In the next videos we will know how to save using commands

q()
