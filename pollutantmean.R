pollutantmean <- function(directory = "C:/Users/kbhave/datasciencecoursera/specdata", pollutant, id = 1:332) {
  
  data <- data.frame()
  for (i in id) {
    path <- paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv" , sep = "")
    data1 <- read.csv(path, as.is = TRUE, header = TRUE)
    
    data <- rbind(data, data1)
  }
  return(mean(data[ ,pollutant], na.rm = TRUE))
}

