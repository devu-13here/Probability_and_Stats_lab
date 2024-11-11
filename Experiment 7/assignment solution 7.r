# Q1
n <- 100
df <- n-1
tdist <- rt(n, df)
print(tdist)
hist(tdist, main = "T distribution", xlab = "Input")


# Q2
n <- 100
df <- c(2, 10, 25)
chisqdist <- rchisq(n, df)
print(chisqdist)


# Q3
x <- seq(-6, 6, length = 100) # starting point , end point , length given i.e 100
df <- c(1, 4, 10, 30)
tdist1 <- dt(x, df[1])
tdist4 <- dt(x, df[2])
tdist10 <- dt(x, df[3])
tdist30 <- dt(x, df[4])

plot(x, tdist30, xlab = "Input", ylab = "Distribution", , main = "T Distribution", type = "l")

plot(x, tdist30, xlab = "Input", ylab = "Distribution", , main = "T Distribution", type = "l")
lines(x, tdist10, col="blue")
lines(x, tdist4, col="red")
lines(x, tdist1, col="green")
legend(x = "topright", legend = c("DF1","DF4","DF10","DF30"), fill = c("green","red","blue","black"), bg = "lightblue")

#To find the area between two points [2,5]
df<- 30

area <- pt(5,df) - pt(2,df)
area


# Q4
# (i)
x <- 0.95
df1 <- 10
df2 <- 20
qfdist1 <- qf(x, df1, df2, lower.tail = TRUE)
print(qfdist1)

# (ii)
x <- 1.5
df1 <- 10
df2 <- 20
ar1 <- pf(x, df1, df2, lower.tail = TRUE)
print(ar1)
ar2 <- pf(x, df1, df2, lower.tail = FALSE)
print(ar2)
print(ar1+ar2)

# (iii)
P <- c(0.25, 0.5, 0.75, 0.999)
df1 <- 10
df2 <- 20
qfdist2 <- qf(P, df1, df2)
print(qfdist1)

# (iv)
n <- 1000
df1 <- 10
df2 <- 20
fdist <- rf(n, df1, df2)
hist(fdist, main = "F distribution", xlab = "Input")



#P DISTRIBUTION 
#CHI DISTRIBUTION




#Practise Problems similar to these questions

#Q.1
n <- 100
df <- n-1
tdis <- rt(n,df)
print(tdis)
hist(tdis, main ="T Distribution" , xlab = "Input")


#Q.2
n <- 100
df <- c(2,10,25)
chidist <- rchisq(n,df)
print(chidist)

#Q.3
x <- seq(-6 , 6 , length = 100)
df <- c(1,4 ,10,30)
tdist1 <- dt(x,df[1])
tdist4 <- dt(x,dt[2])
tdist10 <- dt(x,dt[3])
tdist30 <- dt(x,dt[4])

plot(x, tdist30 , xlab = "Input" , ylab = "Distribution"  , main = "T Distribution" , type ="l")

plot(x, tdist30 , xlab = "Input" , ylab = "Distribution" , main = "T Distribution" ,type ="l")
line(x, tdist10 , color = "green ")
line(x, tdist4)




#TO FIND THE AREA UNDER THE CURVE X ki value fix kar do and use pt function
#To find the area between two points [2,5]
#between b-a  , else <= then we neeed to incude the points


#percenticle -> qf 