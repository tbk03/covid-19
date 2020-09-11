## @knitr functions
test_function <- function(x){
  x + 1
}

num_distinct_values <- function(df, var_name){
  n_distinct(df[var_name])
}