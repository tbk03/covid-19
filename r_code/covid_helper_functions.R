library(dplyr)


sample_n_from_df <- function(df, n){
  
  res <- df %>% 
    sample_n(n)
  res
  
}
