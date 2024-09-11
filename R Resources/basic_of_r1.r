a <-12
a
#Vector
v<-c(1,2,3,4)
m<-mean(v)
m
#Setting Variables
x<-3
y<-5
z<-(x+y)^2

#Type
myname<-"Devanjali Patel"
class(x)
class(z)
class(myname)

#Dynamic Allocation
#changing the values stored in x
x = c("RED","BLUE","WHITE")
x
class(x)

#Knowing About Objects
x = c(10,20,30,40,50)
y = c(7,14,21)
x
y
names = c("John","Seetha","Faiz")
m = matrix(1:20 , nrow=5)
lst = list(x,y,names)
df = data.frame(Person= c("Renu","Jyoti","Seema","Gursimar","Anju"))
names
m
lst
df

#mode is used forfinding the class 
mode(x)
mode(m)
class(lst)
class(df)

#Summary() function gives the exploration of the object
summary(lst)
summary(df)
summary(m)

#Sequence
1:10
seq(from = 1, to = 10)
seq(from = 1, to = 20 , by = 2)
seq(from = 50 , to = 20 , by = -5)
seq(from = 100 , to = 1, length.out = 10) #creates the difference of 10 in the sequence
rep(1:5,3)#repeates the sequence from 1 to 5 , 3 times

#Operator
#Operator $
df = data.frame( Person = c("Renu","Jyoti","Seema","Gursimar","Anju"), Height = factor(c("low","medium","low","medium","high")))

begin = 1
end = 10
for (i in begin : end+1) print(i)
#solution 
begin =1 
end =10
for( i in begin : (end+1)) print(i)

#Setting Working Directory
getwd()#gives the current directory
#setwd("#Type the path of the directory here")

#Simple Program
m = matrix(1:20 , nrow= 5 , ncol=4)
total_sum = sum(m)
row_sum = rowSums(m)
col_sum = colSums(m)
row_mean = rowMeans(m)
col_mean = colMeans(m)

print("Sum of all elements", quote=F)
print(m)
print(total_sum)
print(row_sum)
print(col_sum)
print(row_mean)
print(col_mean)

########HELP IN R #########
help(mean)
?mean
args(mean)

x<-c(0:10, 50)
x
xm<-mean(x)
c(xm,mean(x,trim = 0.10))

########################
#Frequently used R objects
#1.Vector 
#2.Fcator
#3.Matrix
#4.List
#5.Data Frame
#6.String
#7.Date

#Vectors
x = 21.5
x = c(10,20, 30 ,40)
z= c("Ahmed","Seeta","Devu")
x
y
z

#
print(x)
x[4]
x[2]
sum(x)
prod(x)
range(x)
mean(x)
median(x)
summary(x)
min(x)
max(x)
sort(x)
sort(x, decreasing = TRUE)
order(x, decreasing = TRUE)

#useful vector functions
x = c(1.234, 5.67 , 490.389 , 56.9)
abs(x)
sqrt(x)
ceiling(x)
floor(x)
trunc(x)
round(x)
signif(x , digits = 2)
log(x)
log10(b)
exp(x)
round(x)

responses = factor(c("Y","Y","N","N","Y"))
responses
as.numeric(responses)
#forced level 
levels = c("Y","N")

########Matrices############3
v = 1:12
arr = array(v,dim = c(3,2,2))
arr

linear_array = array(1:6 , dim = c(1,6))
linear_array

n = array(1:10 , dim = c(5,2))
n
#Matrix: Array of Dimension 2 
m = matrix(1:10 , nrow = 5 , ncol = 2)
m

y = matrix(1:10 , 5 , 2 ,byrow =TRUE)
y

salary = matrix(c(22,15,18 ,25 , 17 ,23 , 18, 16, 21 , 20 ,14 ,24 ),nrow = 4 , ncol = 3, byrow=TRUE)
rownames(salary) = c("Jyoti " , "Kapila" , "Geeta" ,"Shama")
colnames(salary) = c("Jan","Feb","March")
salary

#Accessing the elements of the Matrix
salary[2,3]
salary[1,]
salary[c(1,6,11)]

a = matrix(1:6, nrow = 3)
b = matrix(c(10,12,18,16,11,20) , nrow = 3)
a
b

#Matrix operations
nrow(b)
ncol(b)
dim(b)
#rownames
#colnames
#rowSums
#colSums
#rowMeans
#colMeans
all.equal(a,b)


#############List and DataFrames in R############
mylist  = list(names = c("Rohit" , " Mohit", "Saroj"," Riaz" ,"Neetu"), age = c(14,15,18,20,12) , grades = c("B","B+","A+","A","C"), cities = c("Hisar" ," Bhiwani"," Rohtak" ,"Delhi" ,"Sirsa"))
mylist[["names"]]
mylist$names
mylist
mylist[[1]]

#some useful operations on list
length(mylist)
length(mylist[[3]])
length(mylist[3])

is.list(mylist)

#NESTED LIST#
l1 = list(c("A","B","C"))
l2 = list(c(2,4,6,8,10))
l3 = list(l1,l2)
l3

l4 = list(c("G","E","F"),matrix(1:9 ,nrow =3))
l5 = append(l3,list(l4))
l5

###DATA FRAME IN R ###
Names = c("Harry" ,"Poonam","Nutan","Vibha","Ayushi","Naveen","Rajni","Rajat","Balwant","Salma")
Marks = c(24,25, 18 , 17 , 25 , 15 , 16 , 14 ,13, 19)
Gender = c("f","f","f","f","f","m","f","m","m","f")
Gate = c("y","y","n","y","y","n","y","n","n","y")
mydata = data.frame(Names,Gender,Gate,Marks)
mydata
row.names(mydata) = c("101","102","103","104","105","106","107","108","109","110")
mydata


#empty dataframe
temp = data.frame()

#Accessing Matrix
mydata[3,2]
mydata[,2]
class(mydata[,2])
mydata[1:5, c(1,3)]

mydata[[3]]#gives column name

is.data.frame(mydata)
#to convert list into data frame
#df = as.data.frame(lst)
dim(mydata)
nrow(mydata)
ncol(mydata)

row_names = row.names(mydata)
row_names

col_names = colnames(mydata)
col_names

head(mydata)
tail(mydata)

#Use of Subset Function
subset(mydata, select = Marks)

#tempdf = data.frame(Names = c("Harry" , "Poonam" ,"Nutan" ,"Vibha" ,"Ayushi" ,"Naveen" ,"Rajini" ,"Rajat","Balwant","Salma"), Percentage = c(80,83.33,60, 56.67 ,83.33 ,50 , 53.33 46.66 ,43.33 ,63.33))
#new_frame = merge(mydata,tempdf)

table(mydata$Gender)