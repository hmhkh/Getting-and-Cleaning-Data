library(XML)
library(httr)

url <- "https://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"
r = GET(url)
html <- htmlTreeParse(r, useInternalNodes = T)

xpathSApply(html, "//title", xmlValue)

xpathSApply(html, "//td[@id='title']", xmlValue)

tables <- readHTMLTable(html)

tables[[2]]
