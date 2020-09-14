## @knitr functions
test_function <- function(x){
  x + 1
}

num_distinct_values <- function(df, var_name){
  n_distinct(df[var_name])
}

get_cases_per_week <- function(df, case_col, na.rm = TRUE, ...){
  ## ... used to pass additional variable names for grouping
  case_col <- enquo(case_col)
  
  df %>%
    group_by(week_commencing, ...) %>%
    summarise(cases_per_week = sum(!!case_col, na.rm = na.rm))
}