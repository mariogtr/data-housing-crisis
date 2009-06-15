# Download each file and save with nice name

base_url <- "ftp://www.bls.census.gov/pub/cps/march/"
path <- c(
  "2008" = "asec2008_pubuse.dat.gz", 
  "2007" = "asec2007_pubuse_tax2.dat.gz", 
  "2006" = "asec2006_pubuse.pub.gz", 
  "2005" = "asec2005_pubuse.pub.gz",
  "2004" = "asec2004.pub.gz", 
  "2003" = "asec2003.pub.gz", 
  "2002" = "mar02supp.dat.gz", 
  "2001" = "mar01supp.dat.gz", 
  "2000" = "mar00supp.cps.gz")
  

url <- paste(base_url, path, sep = "")
destfile <- paste("march-supplement/", names(path), ".txt.gz", sep = "")

library(plyr)
m_ply(cbind(url, destfile), download.file)