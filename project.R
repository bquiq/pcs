
project.directory <- "C:\\Users\\Brice\\Desktop\\Coursera\\Data Science\\10. Project Capstone"
url <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"
nb <- 1000

setwd(project.directory)
seed<-228


if (!file.exists("final")) {
    download.file(url, dest="rawdata.zip") 
    unzip ("rawdata.zip",overwrite = F)
}

headers<-"file,text"

in.con<- file("final\\en_US\\en_US.twitter.txt","r")
out.con<- file("corpus.txt")
lines <-readLines(con,n=5)
writeLines(lines,out.con)
close(in.con)
close(out.con)


