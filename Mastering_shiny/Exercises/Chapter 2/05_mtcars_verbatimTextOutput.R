library(shiny)

ui <- fluidPage(
  verbatimTextOutput("summary_output")
)

server <- function(input, output, session) {
  output$summary_output <- renderPrint({
    summary(mtcars)
  })
}

shinyApp(ui, server)
