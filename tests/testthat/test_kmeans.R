library(testthat)
library(KMeansPackagePalash)  # Use your package name here

test_that("calculate_kmeans works correctly", {
  data <- iris[, 1:4]
  result <- calculate_kmeans(data, centers = 3)
  expect_equal(length(result$cluster), nrow(data))
  expect_equal(nrow(result$centers), 3)
})

test_that("plot_kmeans works correctly", {
  data <- iris[, 1:4]
  result <- calculate_kmeans(data, centers = 3)
  plot <- plot_kmeans(result, data)
  expect_s3_class(plot, "ggplot")
})
