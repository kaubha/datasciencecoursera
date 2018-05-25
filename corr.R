corr <- function(directory = "C:/Users/kbhave/datasciencecoursera/specdata", threshold = 0){
  corr_vect <- NULL
  for (i in 1:332) {
    path <- paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv" , sep = "")
    data1 <- read.csv(path, as.is = TRUE, header = TRUE)
  
    data <- data1[complete.cases(data1),]
    if (nrow(data) > threshold) {
      corr_vect <- c(corr_vect, cor(data[,"sulfate"], data[, "nitrate"]))
    }
  }
  return(corr_vect)
}