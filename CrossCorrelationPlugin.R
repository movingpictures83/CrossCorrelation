library('stats')

input <- function(inputfile) {
   mydata <<- read.csv(inputfile, header=FALSE);
}


run <- function() {
   mydata <<- mydata[,-1];
   results <<-  ccf(mydata[1],mydata[2]);
}

output <- function(outputfile) {
   write.table(results$acf, file=outputfile);
}


