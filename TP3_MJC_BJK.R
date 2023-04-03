library(tidyverse)
dataset=read.csv("Diamonds.csv")

#Explore the data

glimpse(dataset)
head(dataset)
length(dataset)
names(dataset)
summary(dataset)

#Missing value check

colSums(is.na(dataset))

########## EXPERIMENT 1 ############

#Splitting the data into two sets

library('caTools')
names(dataset)
split=sample.split(dataset$price,SplitRatio = .8)
train=subset(dataset,split=TRUE)
test=subset(dataset,split=FALSE)

#Multiple linear regression training

names(dataset)
mlr=lm(formula=price~.,data=train)
summary(mlr)

#Width is not a good indicator

#Mean square error
summ=summary(mlr)
mse=(mean(summ$residuals^2))
paste('The mean square error for this data set is:',mse)

#R-square
summary(mlr)

#This model has an Rsquared value of 91.95%, good model

#testing set prediction
y_pred=predict(mlr,newdata = test)
data=data.frame(test$price,y_pred)
head(data)

#The model is somewhat close on some instances

new=read.csv('Diamonds_Validation.csv')
new_x=new[c(1,2,3,4,5,7,8,9)]
new_x

data.frame(new[c(6)],predict(mlr,newdata=new_x))

# The validation data set is indicative of success like the R-squared

########## EXPERIMENT 2 ############

#Splitting the data into two sets

names(dataset)
split=sample.split(dataset$price,SplitRatio = .9)
train=subset(dataset,split=TRUE)
test=subset(dataset,split=FALSE)

#Multiple linear regression training

names(dataset)
mlr=lm(formula=price~.,data=train)
summary(mlr)

#Width is not a good indicator

#Mean square error
summ=summary(mlr)
mse=(mean(summ$residuals^2))
paste('The mean square error for this data set is:',mse)

#R-square
summary(mlr)

#This model has an Rsquared value of 91.95%, good model

#testing set prediction
y_pred=predict(mlr,newdata = test)
data=data.frame(test$price,y_pred)
head(data)

#The model is somewhat close on some instances

new=read.csv('Diamonds_Validation.csv')
new_x=new[c(1,2,3,4,5,7,8,9)]
new_x

data.frame(new[c(6)],predict(mlr,newdata=new_x))

# The validation data set is indicative of success as the R-squared is

########## EXPERIMENT 3 ############

#Splitting the data into two sets

names(dataset)
split=sample.split(dataset$price,SplitRatio = .6)
train=subset(dataset,split=TRUE)
test=subset(dataset,split=FALSE)

#Multiple linear regression training

names(dataset)
mlr=lm(formula=price~.,data=train)
summary(mlr)

#Width is not a good indicator

#Mean square error
summ=summary(mlr)
mse=(mean(summ$residuals^2))
paste('The mean square error for this data set is:',mse)

#R-square
summary(mlr)

#This model has an Rsquared value of 91.95%, good model

#testing set prediction
y_pred=predict(mlr,newdata = test)
data=data.frame(test$price,y_pred)
head(data3)

#The model was not close with test

new=read.csv('Diamonds_Validation.csv')
new_x=new[c(1,2,3,4,5,7,8,9)]
new_x

data.frame(new[c(6)],predict(mlr,newdata=new_x))

# The validation data set is not as indicative of success as the R-squared is





