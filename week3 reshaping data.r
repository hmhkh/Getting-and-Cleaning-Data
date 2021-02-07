install.packages("reshape2")
library(reshape2)

#melt
mtcars
mtcars$carname <- rownames(mtcars)
carmelt <- melt(mtcars,id=c("carname","gear","cyl"),measure.vars=c("mpg","hp"))
carmelt
#casting dataframes
#install.packages("data.table")
#library(data.table)

cylData <- dcast(carMelt, cyl~variable)