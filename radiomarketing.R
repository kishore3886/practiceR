

radio_data<- read.csv("radiomarketing.csv")

radioindices<- sample(1:nrow(radio_data),0.7*nrow(radio_data))

radio_data_training<- radio_data[radioindices,]
radio_data_testing <- radio_data[-radioindices,]

#build model

radio_model<- lm(Sales~Radio,data=radio_data_training)
summary(radio_model)

radio_predicted_sales<- predict(radio_model,radio_data_testing[-2])
radio_data_testing[-2]

radio_data_testing$predicted_sales<- radio_predicted_sales

r<- cor(radio_data_testing$Sales,radio_data_testing$predicted_sales)
r^2
