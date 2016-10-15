require(testthat)
source("../functions/regression-functions.R")
load("../../data/regression.RData")

test_that('Testing RSS of Multiple Regression', {
	expect_that(residual_sum_squares(multreg), equals(summary(multreg)$sigma)^2, tolerance = .05)
})

test_that("Testing TSS of Multiple Regression", {
	expect_that(total_sum_squares(regtv), equals(sum(ad$tv - mean(ad$tv))^2), tolerance = .05)
})

test_that("Testing R Squared of Multiple Regression", {
	expect_that(r_squared(multreg), equals(summary(multreg)$r.squared), tolerance = .05)
})

test_that("Testing F-Stat of Multiple Regression", {
	expect_that(f_statistic(multreg), equals(sumreg$fstatistic[1]), tolerance = .05)
})

test_that("Testing RSE of Multipel Regression", {
	expect_that(residual_standard_error(multreg), equals(regsum$sigma), tolerance = .05)
})
