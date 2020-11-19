# Ex 1
a1 <- c(1:20)
b1 <- c(20:1)
c1 <- c(1:19,20:1) 

# d<- 
e1Aux <- c(4,6,3)
e1 <- rep(eAux,10)

f1 <- rep(e1Aux, 10, len = len(e1Aux)+1)

# Ex 2

eq <- exp(a)*cos(a)


# Ex 3

acc1 <- 0
for (i in 10:100) {
  acc1 <- acc1+ ((i**3)+4*(i**2))
}


acc2 <- 0
for (i in 10:25){
   acc2<-acc2 + ((2**i)/i)+((3**i)/i**3)
}

# Ex 4

xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)


impar <- function(vec){
  impares <- c()
  for (elem in vec){
    if(elem%%2!=0){
      impares <- append(impares, elem)
    }
  }
  return(impares)
}


# a
imparesxVec <- impar(xVec)

# Outra forma fazer

posImpares <- which(xVec%%2!=0)
imparesxVec2 <- xVec[posImpares]

# b
b4 <- c()

n <- 1 
while (n <= length(xVec)) {
  b4<-append(b4,(xVec[n]-yVec[n-1]))
  n=n+1
}

# c
c4 <- c()

n <- 1
while (n < length(xVec)){
  c4 <- append(c4,sin(xVec[n])/cos(yVec[n-1]))
  n = n + 1
}


# d 


# e

e4 <- c()
n <- 250
i <- 1
while (i <= n-1) {
  e4 <- append(e4,(exp(-xVec[i]+1))/(xVec[i]+10))
  i = i + 1
}

# Ex 5

# a
a5 <- which(yVec > 600)

# b

b5 <- yVec[a5]

# c
sortxVec <- sort(xVec)
sortyVec <- sort(yVec)
c5Aux <- which(sortxVec == sortyVec)
c5Position <- which((sortxVec[c5Aux]) > 600)
c5 <-sortxVec[c5Position]

# d
d5 <- c()

for (elem in xVec) {
  eq <-sqrt(abs(elem - mean(xVec)))
  d5 <- append(d5,eq)
}


# e
eAux <- which(yVec <= max(d5)+200)
e5 <- length(yVec[eAux])

# f
f5 <- length(which(xVec%%2 == 0))

# g 
g5 <- sort(xVec)

# h
h5 <- c()
i <- 1
while (i <= length(yVec)) {
  h5 <- append(h5, yVec[i])
  i=i + 3
}

# EX 6

a6Aux <- c()
num <-c(1)
den <-c(1)

i <- 2
while (i <=38) {
  num <- append(num,i)
  den <- append(den,i+1)
  i = i + 2
}
a6Aux  <- append(a6Aux,cumprod(num)/cumprod(den))

a6 <- sum(a6Aux)
