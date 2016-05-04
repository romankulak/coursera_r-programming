#complete
complete <- function(directory, id=1:332){
  df <- data.frame(id=id, nobs=0)
  all_df <- dir(path=directory, pattern = "*.csv")[id]
  for (i in seq_along(all_df)){
    x <- read.csv(paste(directory,all_df[i],sep = "/"))
    df[i,1] <- id[i]
    df[i,2] <- length(x[[2]][!is.na(x[[2]]) & !is.na(x[[3]])])
  }
  df
}