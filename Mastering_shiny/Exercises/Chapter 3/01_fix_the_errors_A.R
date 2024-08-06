#given the UI, fix the simple errors found in the three server functions below
library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

server1 <- function(input, output, server) {
  output$greeting <- renderText({
    paste0("Hello ", input$name)
  })
}

shinyApp(ui, server1) #server1 also works, doesn't have to be strictly server

#original  

#server1 <- function(input, output, server) {
#  input$greeting <- renderText(paste0("Hello ", name)) 
#

#solution
#change input$greeting to output$greeting
#add extra {} for the render text - actually this seems to not modify anything either way
#change name to input$name

