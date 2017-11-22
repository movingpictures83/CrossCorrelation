library('stats')

input <- function(inputfile) {
  x <<- scan(paste(inputfile,"1.txt",sep=''));
  y <<- scan(paste(inputfile,"2.txt",sep=''));
}


run <- function() {
   results <<-  ccf(x,y);
}

output <- function(outputfile) {
   sink(outputfile, append=TRUE);
   cat("LAG\tACF\n");
   #fileConn <- file(outputfile);
   for (index in 1:length(results$lag)) {
      cat(paste(toString(results$lag[index]), "\t", toString(results$acf[index]), "\n"));
   }
   #writeLines(paste("Dickey-Fuller:\t", toString(results$statistic),
   #           "\n", "Method:\t", results$method,
   #           "\n", "Lag Order:\t", results$parameter,
   #           "\n", "P-Value:\t", toString(results$p.value)), fileConn);
   sink();
   #close(fileConn);
}


