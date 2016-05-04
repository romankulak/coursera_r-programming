#functions
columnmean <- function(x, removeNA=TRUE){
  nc <- ncol(x)
  means <- numeric(nc)
  for (i in 1:nc){
    means[i] <- mean(x[,i], na.rm = removeNA)
  }
  means
}
columnmean(airquality, F)

myplot <- function(x,y,type='l',...){
  plot(x,y,type = type,...)
}
myplot(c(1,2,3),c(4,6,2))

make.powwer <- function(n) {
  pow <- function(x){
    x^n
  }
  pow
}
cube <- make.powwer(3)
cube(2) # 8
ls(environment(cube)) # 'n' 'pow'
get("n", environment(cube)) #3

#y <- 10
f <- function(x){
  y <- 2
  y^2+g(x) # g uses global y here
}
g <- function(x){
  x*y
}
f(3) #34 (uses local y)
g(1) #10 (uses global y)

x <- 1:10
if(x > 5) {
  x <- 0
}

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}







