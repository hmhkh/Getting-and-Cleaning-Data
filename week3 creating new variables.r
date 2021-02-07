#video3 creating variables
#restData <- read.csv("~/Coursera/Course3/restaurants.csv")

restData$nearMe = restData$neighborhood %in% c("Roland Park", "Homeland")
table(restData$nearMe)

restData$zipWrong = ifelse(restData$zipCode < 0,TRUE, FALSE)
table(restData$zipWrong,restData$zipCode <0)

restData$zipGroups = cut(restData$zipCode, breaks = quantile(restData$zipCode))
table(restData$zipGroups, restData$zipCode)

