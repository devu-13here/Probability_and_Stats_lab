# input from the user.

fibonacci<-function(n){
  if(n==1){
    print(0)
  }else if(n==2){
    print(c(0,1))
  }else{
    a = 0
    b = 1
    print(a)
    print(b)
    for(i in 3:n){
      c <- a+b
      print(c)
      a<-b
      b<-c
    }
  }
}
fibonacci(as.integer(readline("Enter the number of terms")))

#Question 4
# Write an R program to make a simple calculator which can add, subtract, multiply
# and divide.

add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}
divide <- function(x, y) {
  if (y != 0) {
    return(x / y)
  } else {
    return("Cannot divide by zero")
  }
}
calculator <- function() {
  cat("Select operation:\n")
  cat("1. Add\n")
  cat("2. Subtract\n")
  cat("3. Multiply\n")
  cat("4. Divide\n")
  
  choice <- as.integer(readline("Enter choice (1/2/3/4): "))
  
  if (choice >= 1 && choice <= 4) {
    num1 <- as.numeric(readline("Enter first number: "))
    num2 <- as.numeric(readline("Enter second number: "))
    result <- switch(choice,
                     "1" = add(num1, num2),
                     "2" = subtract(num1, num2),
                     "3" = multiply(num1, num2),
                     "4" = divide(num1, num2))
    
    cat("Result: ", result, "\n")
  } else {
    cat("Invalid choice\n")
  }
}
calculator()



sample(c(rep("Gold",20),rep("Silver",30),rep("bronze",50)),10)

sample(c("s","f"),10, replace = TRUE, prob = c(0.9,0.1))


birthdayparadox <- function(n){ 
  return(1-(364/365)**(n*(n-1)/2)) #(364/365)^(nC2)
}
cat(birthdayparadox(23)) #(a)

smallest_n <- function(){ 
  p=1
  for(i in 1:365){
    p = p*(365-i)/365
    if(1-p>=0.5){
      return(i+1)
    }
  }
}
cat(smallest_n()) #(b)



dataset<-iris
head(dataset,10) #a
str(dataset) #b
range(dataset$Sepal.Length) #c
mean(dataset$Sepal.Length) #d
median(dataset$Sepal.Length) #e
quantile(dataset$Sepal.Length,0.25) #f
quantile(dataset$Sepal.Length,0.75)
IQR(dataset$Sepal.Length)
variance <- var(dataset$Sepal.Length) #g
sd <- sqrt(variance)
cat(variance," ",sd)
summary(dataset) #i



mode_vector <- function(v){
  uniq<-unique(v)
  uniq[which.max(tabulate(match(v,uniq)))]
}
print(mode_vector(c(1,7,3,4,5,6,7,1,2,4,6,4,3,4,3,4,4,2,2,2)))
x = 0:1:31
plot(dbinom(x,31,0.447))