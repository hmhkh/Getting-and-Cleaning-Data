#video1 sub setting and sorting
set.seed(12345)
x<-data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
x<-x[sample(1:5),];x$var2[c(1,3)] = NA
x

#subset samples
x[,1]
x[,"var2"]
x[1,1]

#logical subset
x[(x$var1 <= 3 & x$var3 > 11),]
x[(x$var1 <= 3 | x$var3 > 11),]
x[which(x$var2 > 8),]

#sort
sort(x$var1)
sort(x$var1,decreasing = TRUE)
sort(x$var2,na.last = TRUE)

#ordering
x[order(x$var2,x$var1),]

#ordering with plyr
install.packages("plyr", dependencies=T)
require("plyr")
library(plyr)
arrange(x,var1)
arrange(x,desc(var1))

#adding rows and columns
x$var4 <- rnorm(5)
or 
y<-cbind(x, rnorm(5))
y

#also rbind to bind rows
z<-rbind(rnorm(5),y)
z