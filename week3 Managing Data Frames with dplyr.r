install.packages("dplyr")
library(dplyr)

chicago <- read.csv("https://raw.githubusercontent.com/ozlerhakan/bikeshare/master/chicago.csv")

dim(chicago)

str(chicago)

names(chicago)

chic.f <- filter(chicago, Trip.Duration > 1000 & Start.Time >= "2017-06-01")
chic.f2 <- select(chic.f, X:Start.Station)
head(chic.f2, 10)

chicago <- arrange(chicago, desc(Start.Time))

chicago <- rename(chicago, start = Start.Time , End = End.Time)

chicago <- mutate(chicago, mytrend = Trip.Duration - mean(Trip.Duration, na.rm = TRUE))

mymean <- mean(chicago$Trip.Duration, na.rm = TRUE)

mygroup1 <- summarise(chicago, a=mean(Trip.Duration, na.rm = TRUE), b=max(Trip.Duration), c=median(Trip.Duration))

chicago <- mutate(chicago, year = as.Date(start))

chicago <- mutate(chicago, year2 = as.POSIXlt(year)$year +1900)


