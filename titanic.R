#####################################################################################
#Title: Sinking of the Titanic
#Author: Joshua Zeldin
#Start Date: 2017.02.27
#####################################################################################

#####################################################################################
#Reading and Overview of the Data
#####################################################################################

library("rpart")

#####################################################################################
#Reading and Overview of the Data
#####################################################################################

train <- read.csv("data/train.csv")
test <- read.csv("data/test.csv")
full  <- bind_rows(train, test)
str(full)
summary(full)

#####################################################################################
#Add New Values to the Dataset
#####################################################################################

#We can take the first letter of the Cabin to get the deck
full$Deck<-substr(full$Cabin,1,1)
#There are cabins A-G and a single Cabin T
table(full$Deck)
