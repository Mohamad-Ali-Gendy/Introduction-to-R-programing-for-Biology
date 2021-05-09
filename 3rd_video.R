# This command displays example datasets integrated into R 
data()
#To display iris dataset
iris
# To show the whole dataset
View(iris)
# To show the first 6 rows
head(iris)
# To show the first 20 rows
head(iris,20)
# To show the last 6 rows
tail(iris)
# To show the last20 rows
tail(iris,20)
# To know how many rows and columns
dim(iris)
# To know the type of the dataset 
class(iris)
# To know how many columns in the dataset
ncol(iris)
#To know how many rows in the dataset
nrow(iris)
# To know the names of the vectors in the dataset
names(iris)
# To call a certain vector in the dataset (sepal lenght) use the $
iris$Sepal.Length
# To know the class of your vectors
class(iris$Sepal.Length)
class(iris$Petal.Length)
class(iris$Species)
# To know the variables included in a catergorical vector
levels(iris$Species)
# To attach the dataset to the workspace memory
attach(iris)
# To calculate mean, meadian, SD, var
mean(Sepal.Length)
median(Sepal.Length)
sd(Sepal.Length)
var(Sepal.Length)
# To calculate trimmed mean
mean(Sepal.Length,trim = 0.1)
# To calculate the quantiles
quantile(x = Sepal.Length,probs = c(0.25,0.5,0.75,0.95))
# To calculate the interquartile range of the data between 0.25 and 0.75
IQR(x = Sepal.Length,na.rm=T)
# To calculate column means
colMeans(iris)
# To calculate row mean
rowMeans()
# To subset the dataset using []
Dataset_subset <- iris[,1:4]
head(Dataset_subset)
# To calculate column means
colMeans(Dataset_subset)
# To calculate row mean
rowMeans(Dataset_subset)
# To get a summary
summary(iris)

