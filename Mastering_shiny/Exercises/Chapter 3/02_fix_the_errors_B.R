#given the UI, fix the simple errors found in the three server functions below
library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

server2 <- function(input, output, server) {
  greeting <- reactive(paste0("Hello ", input$name)) #add reactive before paste0
  output$greeting <- renderText(greeting()) # change (greeting) to (greeting())
}

shinyApp(ui, server2) 
