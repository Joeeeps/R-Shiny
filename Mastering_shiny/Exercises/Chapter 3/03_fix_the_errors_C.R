#given the UI, fix the simple errors found in the three server functions below
library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

server3 <- function(input, output, server) {
  output$greeting <- reactive(paste0("Hello ", input$name))
} 
shinyApp(ui, server3) 

#correct output$greting to output$greeting
#act reactive() so it contains paste0("Hello ", input$name)