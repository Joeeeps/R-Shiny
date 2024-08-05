
#Create an app that lets a user input a number (1-50) and then outputs number * 5
library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  "then x times 5 is",
  textOutput("product")
)

server <- function(input, output, session) {
  output$product <- renderText({
	input$x * 5 #solution was to add "input$" prior to "x", as it needed to be linked to the input
  })
}

shinyApp(ui, server)

