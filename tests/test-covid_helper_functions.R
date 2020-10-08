library(testthat)

source("../r_code/covid_helper_functions.R")


# Tests for sample_n_from_df
test_df1 <- tibble(a = rnorm(50), b = rnorm(50))
n <- 10

test_that("n rows returned", {
  expect_equal(nrow(sample_n_from_df(test_df1, n)), 10)}
)

test_that("2 columns returned", {
  expect_equal(ncol(sample_n_from_df(test_df1, n)), 2)}
)

