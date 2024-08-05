#Create an app that lets a user input a number (0-100) with the slider moving for '5'
#Add a play button to the input widget so it scrolls through automatically

library(shiny)

ui <- fluidPage(
  sliderInput("x", label = NULL, min = 0, max = 100, value = 30, step = 5, #setting steps 
              animate = animationOptions(interval = 50, loop = TRUE)) #animationOptions() is part of the animate input, interval time in ms
)

  server <- function(input, output, session) {
  }
  
  shinyApp(ui, server)
  