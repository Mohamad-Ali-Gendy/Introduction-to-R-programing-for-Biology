x <- seq(from=1, to=20, by=0.5)
x

matrix(data = c(1,5,64,55,10,51,45,85),nrow = 3,ncol = 2,byrow = T)

matrix(data = c(1,5,64,55,10,51,45,85),nrow = 3,ncol = 2,byrow = F)

data.frame(data = c(1,5,64,55,10,51,45,85,60),nrow = 3,ncol = 2,byrow = F)

Gene_data <- data.frame(Gene_name=c("KRAS","P53","EGFR"), Value=c(50,32,65), Status=c("Up","Down","Up"),smoke=c("Yes","No","Yes"),row.names = 1)
Gene_data

