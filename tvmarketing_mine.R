
tvmarketing<- read.csv("tvmarketing.csv")
summary(tvmarketing)
head(tvmarketing)

#plot
plot(tvmarketing$TV,tvmarketing$Sales)

set.seed(100)

#get the sample indices
traning_tv_indices<- sample(1:nrow(tvmarketing),0.7*nrow(tvmarketing))
#now get the data and store it in train.tvmarketing

train.tvmarketing = tvmarketing[traning_tv_indices,]

#ramining data in test.tvmarketing 
test= tvmarketing[-traning_tv_indices,]

model<- lm(Sales~TV,data =train.tvmarketing )
summary(model)

cor(mtcars$mpg,mtcars$wt)
model2 <- lm(mtcars$mpg~mtcars$wt, data = mtcars)
summary(model2)


# predict the model

Predict_1 <- predict(model, test[-2])
predict_1<- predict(model,test[-2])

