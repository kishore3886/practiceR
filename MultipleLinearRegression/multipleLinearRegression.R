
advertising<- read.csv("advertising.csv")

head(advertising)
# 3 independent variables and one dependent variable

str(advertising)

#building a mdoel
model_1 <- lm(advertising$Sales~.,data=advertising)
summary(model_1)

news<- advertising[,c(3,4)]
news_model<- lm(advertising$Sales~advertising$Newspaper,data=advertising)
summary(news_model)

cors<- cor(advertising[,-4])
summary(cors)

View(round(cors))
# Remove the Newspaper variable, as it was insignificant in the multiple variable model

model_2 <- lm(Sales~.-Newspaper,data=advertising)

summary(model_2)
