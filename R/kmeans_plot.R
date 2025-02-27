#' Plot K-Means Clusters
#'
#' This function plots the results of a K-means clustering.
#'
#' @param kmeans_result The result object from `calculate_kmeans`.
#' @param data The original dataset used for clustering.
#' @return A ggplot object.
#' @export
plot_kmeans <- function(kmeans_result, data) {
  if (!inherits(kmeans_result, "kmeans")) {
    stop("The input must be a kmeans result object.")
  }
  data$Cluster <- as.factor(kmeans_result$cluster)
  ggplot2::ggplot(data, ggplot2::aes(x = data[, 1], y = data[, 2], color = Cluster)) +
    ggplot2::geom_point(size = 3) +
    ggplot2::theme_minimal() +
    ggplot2::labs(title = "K-Means Clustering", x = "X", y = "Y")
}

