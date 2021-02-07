install.packages("dplyr")
library(dplyr)

reviews <- read.csv("https://github.com/DataScienceSpecialization/courses/blob/master/03_GettingData/04_01_editingTextVariables/data/reviews.csv")
solutions <- read.csv("https://github.com/DataScienceSpecialization/courses/blob/master/03_GettingData/04_01_editingTextVariables/data/solutions.csv")

quiz <- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv")
which((quiz$ACR == 3 & quiz$AGS == 6))[1:3]

camera <- read.csv("https://data.nola.gov/api/views/va3u-jspg/rows.csv")