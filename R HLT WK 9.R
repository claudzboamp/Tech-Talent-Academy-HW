print("hello world")


#You are a data analyst at an organisation. You have been given a data set and 
#asked to create a meaningful data visualization using this data.
#Using the ggplot in-built data sets in RStudio and the qplot function,
#get your creative juices flowing and create a meaningful and impactful data 
#visualization using your preferred data set.

install.packages("ggplot2")
library(ggplot2)

data("presidential")

?presidential

presidential

#scatter plot
ggplot2::mpg
geom = "point"
qplot(data = mpg, x = cty, y=hwy, geom = "point",color = class)


#displ on x axis and hwy on y axis 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

#adding color to data points 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "red")

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "purple")

#changing size of data points 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))


#alpha changes transparency of points 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class)) 

#changing data points shape 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))



data ("txhousing")
?txhousing
ggplot2::txhousing
#bar chart
geom = "bar"
ggplot(data = txhousing, aes(x= listings, y = sales)) +
  geom_bar(stat = "identity", width = 0.5)

ggplot(data = txhousing, aes(x= month, y = sales)) +
  geom_bar(stat = "identity", width = 1)

#change colors 
ggplot(data = txhousing, aes(x= month, y = sales)) +
  geom_bar(stat = "identity", color = "pink",  fill = "white")

ggplot(data = txhousing, aes(x= month, y = sales)) +
  geom_bar(stat = "identity", colorb = "grey",  fill = "pink")
#ask about colorb and how it didn't change color....

#minimal theme + blue fill color 
ggplot(data = txhousing, aes(x= month, y = sales)) +
  geom_bar(stat = "identity",  fill = "steelblue")
theme_minimal()
#ask what the minimal theme does? 

?luv_colours
ggplot2::luv_colours

ggplot2::mpg
qplot(data =mpg, x=cty, y=hwy, geom = "point", color = class)

ggplot2::diamonds
?diamonds

qplot(data =diamonds, y = clarity, geom ="bar", fill = cut)

fill = cut()


#Additional Tasks
#1, Write an R program to create three vectors a, b, c with 5 integers. 
#Combine the three vectors to become a 3×5 matrix where each column represents a vector. 
#Print the content of the matrix. Plot a graph and label correctly. 

my_veca <- c(5,4,3,2,1)
my_vecb <- c(2,4,6,8,10)
my_vecc <- c(3,6,9,12,15)

#combining vectors
allvectors <- c(my_veca,my_vecb,my_vecc)
allvectors

print(allvectors)

matrix(1:15, nrow = 3, ncol = 5)

#plotting vectors

plot(allvectors, type = "o", col = "green", pch = 15)

#turning off annotation and axes labels

plot(allvectors, type = "b", col = "green", pch = 1, xaxt = "n",
     xlab = "Index", ylab = "allvectors")

plot(allvectors, type = "o", col = "green", pch = 1, xaxt = "n",
     xlab = "Index", ylab = "allvectors")

#adding range and annotation for x and y axis

axis(1, at=1:15, labels(allvectors))


#Adding Titles
title(xlab = "month", ylab ="profit", main = "Montly Profit Report",
       col.main ="blue")


data <- seq(1:15)
my_matrix <- matrix(data, nrow = 3, ncol = 5)
my_matrix
print(data)

#2Write a R program to create a Data frames which contain details of 5 employees 
#and display the details.  (Name, Age, Role and Length of service).

Name <- c("Linda", "Chris", "Claudette", "Justice", "Kofi")
Role <- c("Marketing Director, Engineer", "Product Manager", "Doctor", "Associate Director")
LOS <- c(10, 8, 6, 12, 9)
employee1 <- list(name ="Linda", age =38, role = "Marketing Director", LOS =10)
print(employee1)
employee2 <- list(name ="Chris", age =35, role ="Engineer", LOS =8)
print(employee2)
employee3 <- list(name ="Claudette", age =27, role ="Product Manager", LOS =6)
print(employee3)
employee4 <- list(name ="Justcie", age =32, role ="Doctor", LOS=12)
print(employee4)
employee5 <- list(name = "Kofi", age=33, role ="Associate Director", LOS= 9)
print(employee5)

#3,Import the GGPLOT 2 library and plot a graph using the qplotfunction.
#X axis is the sequence of 1:20 and the y axis is the x ^ 2.  Label the graph 
#appropriately. install.packages("ggplot2", dependencies = TRUE)

install.packages("ggplot2")
library(ggplot2) 

x <- c(1:20)
y <- c(x ^ 2)

plot(x,y)

plot(x, y, type ="o") 

title(xlab = "time", ylab = "speed", main = "Speed vs Time Graph")


#4,Create a simple bar plot of five subjects

marks = c(70, 95, 80, 74,90)
barplot(marks,
        main = "Comparing marks of 5 subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("English", "Science", "Math.", "History.", "Computer Science"),
        col = "pink",
        horiz = FALSE)


#5,Write a R program to take input from the user (name and age) and display the values. 
name2 <- readline("Enter your name")
paste("Welcome", name2)

age2 <-readline("Enter your age")
27
paste("I am", age2)


#6,Write a R program to create a sequence of numbers from 20 to 50 and find the 
#mean of numbers from 20 to 50 and  sum of numbers.

print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 50:")
print(mean(20:50))
print("Sum of numbers from 20 to 50:")
print(sum(51:91))

#7,Write a R program to create a vector which contains 10 random integer values 
#between -50 and +50

vector = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(vector)


#Optional Challenge 

#Write a R program to get the first 10 Fibonacci numbers.

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)


#2.Write a R program to print the numbers from 1 to 100 and print 
#"Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print 
#"FizzBuzz" for multiples of both.

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}














