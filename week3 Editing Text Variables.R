install.packages("dplyr")
library(dplyr)

library(readxl)
cameraData <- read_excel("Coursera/Course3/data/cameras.xlsx")
tolower(names(cameraData))

splitNames <- strsplit(names(cameraData), "\\.")

mylist <- list(letters = c("a","b","c"), numbers = 1:3, matrix(1:25, ncol = 5))