library(ggplot2)
install.packages("ggthemes")
library(ggthemes)
games<- 75

balls<- c(1,1,1,0,0)
number_of_redballs<-vector(mode="integer",length=games)

for(n in 1:games)
{
  s=sample(balls,4,replace = TRUE)
  number_of_redballs[n]=sum(s)
}

table(number_of_redballs)

qplot(number_of_redballs)+ 
  xlab("number_of_redballs")+ylab("count")+ ggtitle("Distribution")
