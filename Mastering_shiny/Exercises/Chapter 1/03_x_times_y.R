#Create an app that lets a user input two numbers (1-50 for x and y) and then outputs x * y
library(shiny)
ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  sliderInput("y", label = "and y is", min = 1, max = 50, value = 5),
  "then, x times y is",
  textOutput("product")
)
server <- function(input, output, session) {
  output$product <- renderText({
    product <- input$x * input$y
    product  })
}
shinyApp(ui, server)
