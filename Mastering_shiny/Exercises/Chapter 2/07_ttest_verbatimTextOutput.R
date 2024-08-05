library(shiny)
ui <- fluidPage(
  verbatimTextOutput("ttest_output")
)

server <- function(input, output, session) {
  output$ttest_output <- renderPrint({
    t.test(1:5, 2:6)
  })
}

shinyApp(ui, server)
