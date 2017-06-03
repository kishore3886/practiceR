seed=1234
digits=4
for(i in 1:100)
{
  seed_square<-seed*seed
  seed_square_string<- toString(seed_square) 
  size<-nchar(seed_square_string)
  if(size/2!=0)
  {
    seed_square_string=paste("0",seed_square_string) 
    size=size+1
  }
  else
  {}
  start = floor(size/2)
  end_seed = start+digits-1
  end=start+1
  #for seed to the next random numer generating
  seed_char<-substr(seed_square_string, start, end_seed)
  #random number
  rand_number_char<-substr(seed_square_string, start, end)
  print(seed_char)
  seed<-as.numeric(seed_char)
  rand_Local<- as.numeric(rand_number_char)
  
  rand_num_df [i]<-rand_Local    
}
rand_num_df

median_Random<- function(){
  
  random_Numbers_median_Local=0
  #s<- length(random_Numbers)
  #to find median first sort the vector 
  #copied into other data frame , as we will be performing manipulations on global variable
  sorted_Random_Numbers<-rand_num_df
  #Decreasing order 
  for (i in 1:99)
  {
    for (j in 1:99)
    {
      if (sorted_Random_Numbers[j] > sorted_Random_Numbers[j+1])
      {
        swap = sorted_Random_Numbers[j];
        sorted_Random_Numbers[j]   = sorted_Random_Numbers[j+1];
        sorted_Random_Numbers[j+1] = swap;
      }
    }
    
  }
  #sorting Done  
  if((s %% 2) == 0){
    a<-s/2;
    b<-a+1
    random_Numbers_median_Local=(sorted_Random_Numbers[a]+to_sort[b])/2
  }
  if(!(s %% 2) == 0){
    a<-ceiling(s/2) ;
    random_Numbers_median_Local=sorted_Random_Numbers[a]
  }
  
  return(random_Numbers_median_Local)
  
}



median_Random_val<-median_Random()
