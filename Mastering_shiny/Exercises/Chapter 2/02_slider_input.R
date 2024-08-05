#Create an app with the desired sliderInput() 

library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "When should we deliver?", min = as.Date("2020-09-16"), max = as.Date("2020-09-23"), value = as.Date("2020-09-17"), timeFormat = "%F"),
  textOutput("product") #sliderInput documentation forgot to tell users how to input date values... this is what as.Date() is for
)

server <- function(input, output, session) {
}

shinyApp(ui, server)