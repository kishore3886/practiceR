simple_lr <- read.csv("Simple_LR.csv")

model_1 <- glm(Diabetes~.,simple_lr,family = "binomial")

#  generalized linear model, binomial says the problem is binary classification

summary(model_1)

  