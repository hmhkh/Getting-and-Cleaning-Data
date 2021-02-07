if(!file.exists("data")){dir.create("data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/cameras.xlsx",method="curl")
dateDownloaded <- date()

Sys.setenv(JAVA_HOME="C:\\Program Files\\Java\\jre7") # for 64-bit version 
Sys.setenv(JAVA_HOME="C:\\Program Files (x86)\\Java\\jre7") # for 32-bit version
library(rJava)

install.packages(xlsx)
library(xlsx)

cameradata <- read.xlsx("~/Coursera/Course3/data/cameras.xlsx",sheetIndex = 1, header = TRUE)
head(cameradata)