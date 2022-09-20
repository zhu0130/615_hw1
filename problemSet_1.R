myName <- "Haocheng Zhu"
#1
#a
v1<-c(1:20)
#b
v2<-c(20:1)
#c
v3<-seq(1,20,2)
#d
v44<-c(3,7,11)
v4<-rep(v44,times=10)
#e
v5 <- rep(c(3,7,11),length=31)
v5
#2
tmp <- seq(3,6,by=0.1)
x1 <- exp(tmp)*sin(tmp)
x1
#3
sum1=0
for(i in 10:100){
  sum1=sum1+i^3+4*i^2
}
sum1
#4
#a
labela<-rep('label',times=30)
item<-c(1:30)
str1<-paste(labela,item)
str1
#b
labelb<-rep('function',times=30)
str2<-paste0(labelb,item)
str2
## ex5
vs <- paste(c('1',"function",'NA', seq(1,5,2), 0.125),collapse = ',')
vs

## Matrix
## ex6
A <- matrix(1:9, ncol = 3, nrow = 3)
A
m1_ans <- A%*%A%*%A
m1_ans

## ex7
a <- c(rep(12,17))
b <- c(rep(-12,17))
c <- a
B <- matrix(c(a,b,c),nrow=17,ncol=3)
B_trans<- t(B)
m2_ans <- B_trans%*%B
m2_ans

## ex8
AMat <- matrix(0,nr=5, nc=5)
A <- abs(col(AMat)-row(AMat))+1
y <- c(7,-1,-3,5,17)
m3_ans<-solve(A,y)
m3_ans

#9(a)
xv <- seq(0.0, 1.0, by= 0.1); xv

function1 <- function(xv)
{
  xv^(1:length(xv))
}

func1_ans = function1(xv)


#9(b)
function2 <- function(xv)
{
  (xv^(1:length(xv))/(1:length(xv)))
}

func2_ans = function2(xv)

#9(c)
function3 <- function(x,n)
{
  1+sum((x^(1:n))/(1:n))
}
func3_ans <- function3(xv,length(xv))
func3_ans

#10
cel_to_far<-function(cel){
  far<- cel*1.8+32
  return(far)
}

far_to_cel<-function(far){
  cel<- (far-32)/1.8
  return(cel)
}
## ex11
odd <- function(x) x[ x %% 2 == 1 ]
odd_ans<-odd(1:2000)

#12
calculates <- function(r) {
  sum <- 0
  for (s in 1:r)
    sum <- sum+(s^0.5)/(11+3.5*r^1.2)
  return(sum)
}
sum_ans <- function (n)
{
  formula <- function(r){sum(((1:r)^0.5)/(11+3.5*r^1.2))}
  sum(sapply(n, FUN=formula))
}

sum_ans<-sum_ans(10)
sum_ans

##13
modNumber<-function(x,y){
  while(x%%y!=0)
    x<-x+1
  return(x)
}
## ex14
numberOfWheels <- function(x){
  v <- switch(x, "unicycle"=1, "bike"=2, "car"=4,"truck"=4,"motorcycle"=2,'tricycle'=3)
  return(v)
}


## ex15
myFactorial <- function(x){
  outcome <- factorial(x)
  return(outcome)
}
myFactorial(5)

## ex16
myCustomFactorial <- function(x,y){
  prod(y:x)
}
myCustomFactorial(5,1)

# ex17
customRiverMean <- function(max_length){
  df <- rivers
  y <- (rivers[rivers < max_length])
  output <- mean(y)
  return(output)
}
customRiverMean(200)

#ex18
longTeeth<-c()
length18<-length(ToothGrowth$len)
for (i in 1:length18){
  if(ToothGrowth$len[i]>=15)
    longTeeth<-c(longTeeth,ToothGrowth$len[i])
}
print(longTeeth)

#ex19 
df <- mtcars
a <- apply(df,2,mean)
averageHorsePower <- a[['hp']]
averageWeight <- a[['wt']]

#ex20#######
