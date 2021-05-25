# To load the dataset
LungData <- read.table(file.choose(), header = T, sep = "\t", row.names = 1, stringsAsFactors = T, na.strings = "NA")
attach(LungData)
View(LungData)

# To create a single boxplot
boxplot(KRAS)

# To create multiple boxplots
boxplot(KRAS, SNAI1, TGFB1, CDKN1A)

# To specify a name for each box
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"))

# To change the color
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"),col="red")
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"),col=c(2,3,4,5))

# To change the range (either to include extreme points or set a limit relative to IRQ)
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"),col=c(2,3,4,5),range = 0)

# To change the Y-axis limit
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"),col=c(2,3,4,5),range = 0,ylim=c(0,6))

# To add Y-axis label
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"),col=c(2,3,4,5),range = 0,ylim=c(0,6), ylab="Expression level")

# To add notch
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"),col=c(2,3,4,5),range = 0,ylim=c(0,6), ylab="Expression level", notch = T)

# To flip the plot
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"),col=c(2,3,4,5),range = 0,ylim=c(0,6), ylab="Expression level", notch = T, horizontal = T)

# To add title 
boxplot(KRAS, SNAI1, TGFB1, CDKN1A, names = c("KRAS","SNAI1","TGFB1","CDKN1A"),col=c(2,3,4,5),range = 0,ylim=c(0,6), ylab="Expression level", notch = T, horizontal = F, main="Training Boxplot")

# To subset the data (CDKN1A) using Age
boxplot(CDKN1A[ Age > 60], CDKN1A[Age < 60], names = c("Older group","Younger group"), xlab="CDKN1A", ylab="Expression level")

# To subset the data (CDKN1A) using Smoke status
boxplot(CDKN1A[Smoke=="Yes"], CDKN1A[Smoke=="No"], names=c("Smoker","Non-smoker"), xlab="CDKN1A",ylab="Expression level")

# To use the variable width in comparing the two conditions
boxplot(CDKN1A[Smoke=="Yes"], CDKN1A[Smoke=="No"], names=c("Smoker","Non-smoker"), xlab="CDKNA1",ylab="Expression level",varwidth = T)

# To use two variables (Smoke and Age) to subset the data(CDKN1A)
boxplot(CDKN1A[Smoke=="Yes" & Age > 60], CDKN1A[Smoke=="No" & Age > 60], names=c("Smoker","Non-smoker"), xlab="CDKN1A",ylab="Expression level")

# To subset the data (CDKN1A) using levels within a variable
# Let's have a look at the variable Stage
class(Stage)
levels(Stage)
boxplot(CDKN1A~Stage)

# To create stratified boxplots using multiple variables (Categorical or continuous)
# For example let's use the stage and Age 
boxplot(CDKN1A~Stage*Smoke)

# To change the colors for each group (Smokers vs Non-smokers)
# We can create a vector of colors for each group
No <- rep(2, times=9)
Yes <- rep(3, times=9)
boxplot(CDKN1A~Stage*Smoke, col=c(No,Yes))

# Quiz...Change the main title, add proper colors and rotate the values on Y-axis

