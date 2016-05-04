#polutant
pollutantmean <- function(directory, pollutant, id = 1:332){
  files <- dir(path=directory, pattern = "*.csv")[id]
  #print(files)
  pollutant_all <- data.frame()
    for(i in seq_along(files)){
      vec <- read.csv(paste(directory,files[i],sep="/"))
      #print (vec[[pollutant]])
      pollutant_all <-rbind( pollutant_all,vec)
    }
  mean(pollutant_all[[pollutant]],na.rm = T)
}

