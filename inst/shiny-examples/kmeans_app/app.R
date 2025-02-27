library(shiny)
library(KMeansPackagePalash)  # Load your package

# Define the UI
ui <- fluidPage(
  titlePanel("K-Means Clustering"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("clusters", "Number of Clusters:", min = 1, max = 10, value = 3)
    ),
    mainPanel(
      plotOutput("clusterPlot")  # Ensure this matches the output ID in the server
    )
  )
)

# Define the server logic
server <- function(input, output) {
  output$clusterPlot <- renderPlot({  # Ensure this matches the output ID in the UI
    data <- iris[, 1:4]
    result <- calculate_kmeans(data, centers = input$clusters)  # Use input$clusters
    plot_kmeans(result, data)
  })
}

# Run the app
shinyApp(ui, server)
