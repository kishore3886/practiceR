bank <- read.csv("https://raw.githubusercontent.com/kshitijjain91/Credit-Risk-Capstone/master/datasets/Demogs_v1.csv")

str(bank)

head(bank)
 head(bank$Income)
 #population
 
 income<- bank$Income
 
 length((income))
 
 #Sample size is n and number of samples is 400
 n=5
 k=400
 
 #take sample of size n and store it in a vector
 
 sample_means= vector(mode="numeric",length=k)
 
 for(sample_num in 1:k){
   
   s<- sample(income,n,replace = F)
   sample_means[sample_num]<-mean(s,na.rm = T)   
 }
 warning()
 head(sample_means,10)

 
 #population mean and sample mean
 
 population_Mean<- mean(income,na.rm = TRUE)
 
 mean_Of_SampleMean<- mean(sample_means,na.rm = TRUE)
 
 population_Mean
 mean_Of_SampleMean
 
 
 #population sd
 
 population_sd<- sd(income,na.rm = TRUE)
 
 population_sd_root_n<-population_sd/sqrt(n)
 std_err<- sd(sample_means,na.rm = TRUE)
 population_sd_root_n
 std_err
 
 sample_means<- data.frame(sample_means)
 
# plot the samples
 
 ggplot(sample_means,aes(sample_means))+geom_density() 
 