#' Calculate K-Means Clusters
#'
#' This function calculates K-means clusters for a given dataset.
#'
#' @param data A numeric matrix or data frame.
#' @param centers The number of clusters.
#' @return A list containing the K-means result.
#' @export
calculate_kmeans <- function(data, centers) {
  if (!is.numeric(centers) || centers <= 0) {
    stop("The number of centers must be a positive integer.")
  }
  result <- kmeans(data, centers = centers)
  return(result)
}

