# To load the dataset
LungData <- read.table(file.choose(), header = T, sep = "\t", row.names = 1, stringsAsFactors = T, na.strings = "NA")
attach(LungData)
View(LungData)

# To plot the relation between two different genes
plot(KRAS,SNAI1, pch=16)
plot(KRAS,CDKN1A, pch=16)

# To test the correlation of with parametric test 
cor(KRAS,SNAI1,method = "pearson")
cor(KRAS,CDKN1A,method = "pearson")

# To test the correlation with non-parametric test
cor(KRAS,SNAI1,method = "spearman")
cor(KRAS,CDKN1A,method = "spearman")

# To calculate the associated p-value
cor.test(KRAS,SNAI1,method = "spearman",exact = F,alternative = "two.sided")
cor.test(KRAS,CDKN1A,method = "spearman",exact = F,alternative = "two.sided")

# To test the whole dataset
cor(LungData,use = "complete.obs",method = "spearman")
cor(LungData[,4:12],use = "complete.obs",method = "spearman")

# To visualize the correlation table
# First create an object with the correlation table
Cor_table <- cor(LungData[,4:12],use = "complete.obs",method = "spearman")
# Create a heatmap for visualization
heatmap(Cor_table)
