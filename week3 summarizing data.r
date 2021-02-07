#video2 summarizing data
restData <- read.csv("~/Coursera/Course3/restaurants.csv")
head(restData,n=3)
tail(restData,n=3)
summary(restData)

str(restData)

quantile(restData$councilDistrict,na.rm = TRUE)
quantile(restData$councilDistrict,probs = c(0.5,0.75,0.9))

table(restData$zipCode,useNA = "ifany")
table(restData$councilDistrict,restData$zipCode)

sum(is.na(restData$policeDistrict))
any(is.na(restData$policeDistrict))
all(restData$zipCode > 0)

colSums(is.na(restData))
all(colSums(is.na(restData))==0)

table(restData$zipCode %in% c("21212","21213"))

#Filter Data Frame
restData[restData$zipCode %in% c("21212","21213"),]

#cross tab
data("UCBAdmissions")
DF=as.data.frame(UCBAdmissions)
summary(DF)
xt <- xtabs(Freq ~ Gender + Admit,data = DF)
xt

#flat tables
wb <- warpbreaks$replicate <- rep(1:9, len=54)
xt = xtabs(breaks ~.,data = wb)
xt
ftable(xt)

object.size(xt)



