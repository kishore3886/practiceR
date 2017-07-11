
housing_data<- read.csv("Housing.csv")

head(housing_data)

housing_model<- lm(housing_data$price~., data=housing_data)

View(housing_data)
summary(housing_model)
#take only significant variables and build a model
housing_data_significant<- housing_data[,c(1,4,5,9,10,11,12)]
head(housing_data_significant)
#take 70% of the data into training and 30% into test
housing_training_indices<- sample(1:nrow(housing_data_significant),0.7*nrow(housing_data_significant))
housing_data_training<- housing_data_significant[housing_training_indices,]
housing_data_test<- housing_data_significant[-housing_training_indices,]

# lets build a linear model

housing_data_significant_model<- lm(price~.,data=housing_data_significant)
summary(housing_data_significant_model)
#now predict the values based on model we biult with the tesing data
housing_predict <- predict(housing_data_significant_model,housing_data_test[4,5,9,10,11,12])  
 
#-----------------------Let's do it in a structured way-----------------------------------------------------------------------

View(housing_data)
#introduce dummy variables
#main road has 2 levels, now changes then into 1's and 0's
levels(housing_data$mainroad)<-c(1,0)

as.numeric(levels(housing_data$mainroad)<-c(1,0))

summary(housing_data$mainroad)
