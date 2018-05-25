complete <- function(directory = "C:/Users/kbhave/datasciencecoursera/specdata", id = 1:332) {
  data <- data.frame()
  for (i in id) {
    path <- paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv" , sep = "")
    data1 <- read.csv(path, as.is = TRUE, header = TRUE)
    nobs <- sum(complete.cases(data1))
    data2 <- data.frame(i,nobs)
    
    data <- rbind(data, data2)
  }
  return(data)
}