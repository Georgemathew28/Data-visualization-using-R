# Data visualization

View(mtcars)

count = table(mtcars$gear)
View(count)

#Simple Plot

plot(count)

#Simple bar plot

barplot(count)

#bar plot with colors

barplot(count, main = "Simple Bar Plot",
        xlab = "Improvement",
        ylab = "Frequency",
        legend = rownames(count),
        col = c('red','yellow','green'))

pie(count, main = "simple pir plot",
    col = c('red','yellow','green'))

#install packages

#import the packages
library(ggplot2)

salary = read.csv("Salary_Data.csv")

View(salary)

ggplot(salary, aes(x=Experience, y=Salary))+
  geom_point()

ggplot(salary, aes(x=Experience, y=Salary))+
  geom_line()

ggplot(salary, aes(x=Experience, y=Salary))+
  geom_boxplot()

#Histogram
expenses = read.csv("dailyexpenses.csv")
View(expenes)

ggplot(expenses, aes(x= Medical))+
  geom_histogram(binwidth = 5,
                 color = "black",
                 fill = "blue")

#Piechart
pc = read.csv("piechart.csv")

pie <- ggplot(pc, aes(x = "", y=amount, fill = factor(expense))) +
  geom_bar(width = 1, stat = "identity") +
  theme(axis.line = element_blank(),
        plot.title = element_text(hjust=0.5)) +
  labs(fill="expense",
       x=NULL, y=NULL, title="Pie Chart of expenses")

pie + coord_polar(theta = "y", start=0)

