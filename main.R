library(readr)
Employee_Sample_Data <- read_csv("C:/Users/user/Downloads/Employee Sample Data.csv")

install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
install.packages("lessR")
library(lessR)

View(Employee_Sample_Data)


#BOXPLOT
boxplot(Age ~ Ethnicity, data = Employee_Sample_Data, xlab = "Ethnicity",
        ylab = "Age", main = " Box plot")

#HISTOGRAM
hstgrm <- Employee_Sample_Data$Age
hist(hstgrm, main = "Histogram", xlab="Age",ylab="Number of Employees",col = "black",border = "white")


#PIECHART
df <- Employee_Sample_Data
table(df['Department'])
x <- c(96, 158, 120, 125, 241, 120, 140)
colors = c("Green", "Blue", "Red","Yellow","Pink","Black", "Orange")
labels <- c("Accounting", "Engineering", "Finance", "HR", "IT", "Marketing", "Sales")
piepercent<- round(100*x/sum(x), 1)
pie(x, labels = piepercent,main = "Departments in Business", col =colors)
legend("bottomleft", legend = c("Accounting", "Engineering", "Finance", "HR", "IT", "Marketing", "Sales"),
       fill =  c("Green", "Blue", "Red","Yellow","Pink","Black", "Orange"))



#LINE CHART
plot(x,type = "o",xlab="No. of Departments",ylab="Total Employees")

