# To load the dataset
LungData <- read.table(file.choose(), header = T, sep = "\t", row.names = 1, stringsAsFactors = T, na.strings = "NA")
attach(LungData)
View(LungData)

# To get an overall view of different relations present within the dataset
plot(LungData)
# Examine the relation between KRAS, SNAI1 and CDKN1A

# To plot an example of positive relation
plot(KRAS,SNAI1)

# To plot an example of negative relation
plot(KRAS,CDKN1A)

# To change the plotting character
plot(KRAS,SNAI1, pch=16)

# To change the plotting color
plot(KRAS,SNAI1,pch=16,col=2)

# To plot the male patients only
plot(KRAS[Sex=="Male"],SNAI1[Sex=="Male"],pch=16,col=2)

# To plot only female patients
plot(KRAS[Sex=="Female"],SNAI1[Sex=="Female"],pch=16,col=2)

# To combine male and female data in a single plot, we shall use the points command
plot(KRAS[Sex=="Male"],SNAI1[Sex=="Male"],pch=16,col=2)
points(KRAS[Sex=="Female"],SNAI1[Sex=="Female"],pch=16,col=3)

# To change the X-axis and Y-axis labels and main title
plot(KRAS[Sex=="Male"],SNAI1[Sex=="Male"],pch=16,col=2,xlab = "KRAS Expression",ylab = "SNAI1 Expression", main = "Training Scatter Plot")
points(KRAS[Sex=="Female"],SNAI1[Sex=="Female"],pch=16,col=3)

# To add a legend indicating males and females
legend(x = 3.3,y = 3,legend = c("Male","Female"),bty = "n",pch = 16,col = c(2,3))

# To add a regression line
# First we need to claculate the lm function....We shall explain it throughly in later videos
regression_line <- lm(SNAI1~KRAS)
# Second we need to plot the line using the abline command
abline(regression_line)

# To save the scatter plot using the command line, we shall perform all the command again preceeded by pdf comman.
# We have to make sure that we adjusted the working directory
pdf(file = "Scatter Plot.pdf")
plot(KRAS[Sex=="Male"],SNAI1[Sex=="Male"],pch=16,col=2,xlab = "KRAS Expression",ylab = "SNAI1 Expression", main = "Training Scatter Plot")
points(KRAS[Sex=="Female"],SNAI1[Sex=="Female"],pch=16,col=3)
legend(x = 3.3,y = 3,legend = c("Male","Female"),bty = "n",pch = 16,col = c(2,3))
abline(regression_line)
dev.off()

