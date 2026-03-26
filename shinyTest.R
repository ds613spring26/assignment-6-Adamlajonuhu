library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "color",
        label = "Color",
        choices = c("Red", "Yellow", "Green", "Blue")
      )
    ),
    mainPanel(
      plotOutput("color_plot")
    )
  )
)

server <- function(input, output) {
  output$color_plot <- renderPlot({
  plot(1:100, 1:100, col = input$Color, pch=19)
  })
}

shinyApp(ui, server)