####STRINGS####

s="my first string"
nchar(s)

my_string = c("First" ,"Second" ,"Third" ,"Fourth")
nchar(my_string)
length(my_string)

paste("R" , "programming" ,"is","easy")
paste("R","programming","is" ,"easy", sep = "+")
paste("R","programming","is","easy",sep = "    ")

my_names = c("Seeta","Devanjali","Patanjali","Is","Great")
my_string = c('First','Second','Third','Fourth')
paste(my_names,my_string)
paste("Seetha",my_string)

substr("Hello my friend",start = 1, stop = 5)
substr("Hello my friend",start = 10, stop = 15)
substr



########HANDLING DATE AND TIME################

today = Sys.Date()
today
class(today)

#converting 
today = as.Date("2017-09-05")
today
today = as.Date("05-09-2017", format ="%d-%m-%y")
today

today = as.Date("05/09/2017" , format = "%d/%m/%y")
today

today
class(today)


#To get system time
Sys.time()
class(Sys.time())

#Measuring Time Difference
t1 = Sys.time()
for (i in 1:100000)
  I = i+1
t2 = Sys.time()
t2-t1


##############CONDITIONAL STATEMENTS AND LOOPS IN R###############
#1.If
#2.If-Else
#3.If Else , If Else
#4.Switch

salary = c(25000,20000,15000,45000)
names(salary) = c("Pooja","Poonam","Kapila","Jyoti")

if(salary["Jyoti"] > salary["Pooja"]){
  print("Jyoti is senior than Pooja")
}


for(i in 1:5){
  print(i)
}

i = 1
while(i <= 5){
  print(i)
  i=i+1
}

i=1
repeat {print(i)
  i=i+1
  if(i>5){
    break
}
}

v = round(runif(10 ,1 , 10))
v
for( i in 1: length(v)){
  if (i == 7){
    break
  }
  print(v[i])
}


#LCM (LEAST COMMON MULTIPLE)

lcm = function(x,y)
{
  if(x>y)
    larger = x
  else
    larger = y
  while(TRUE){
    if (larger%%x == 0 & larger%%y == 0){
      lcm = larger
      break
    }
    larger = larger+1
  }
  return(lcm)
}

a = lcm(7,14)
a


###############WRITING FUNCTIONS IN R################################

#Defining A FUNCTION
cube = function(x) x*x*x
class(cube)

a = cube(5)
a

b = matrix(1:10 , nrow = 5)
my_ans = cube(b)
my_ans


a = list(v1 = c(2,4,8) , v2 = c(3,6,12,24))
my_ans = lapply(a, function(x) x*x*x)
class(my_ans)
my_ans

cube = function(x) {x*x*x}
cube(6)

my_function = function(a,b,c){
  s = a+b+c
  p = a*b*c
  lst = list(sum = s , prod = p)
  return(lst)
}

l = my_function(2,3,4)
l

v = 1:20
m = matrix(v,5,4)
m

m = matrix(ncol = 5 , nrow =4 , data = v , byrow = T)
m

m = matrix(data = v , nrow = 4 , ncol =5 ,dimnames = list(c("a","b","c","d"), c("e","f","g","h","i")))
m

##Passing arguments to a function

a = 10
b = 5
swap = function(a,b){
  temp =a
  a=b
  b=temp
  cat("a=",a,"\n","b=",b)}
print(a)
print(b)
swap(a,b)
print(a)
print(b)


