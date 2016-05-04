#corelation
corr <- function(directory, treshold=0){
  cor_df <- complete(directory)
  greather <- cor_df$id[cor_df$nobs>treshold]
  all_docs <- dir(path = directory, pattern = "*.csv")[greather]
  vec <- vector()
  for(i in seq_along(all_docs)){
    x <- read.csv(paste(directory,all_docs[i],sep = "/"))
    vec <- c(vec,cor(x$sulfate[!is.na(x$sulfate) & !is.na(x$nitrate)],x$nitrate[!is.na(x$sulfate) & !is.na(x$nitrate)]))
  }
  vec
}