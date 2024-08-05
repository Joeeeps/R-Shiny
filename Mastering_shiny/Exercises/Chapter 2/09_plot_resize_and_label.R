library(shiny)
#Re-create the Shiny plot from section 2.3.3, this time:
#Set height to 300 px 
#Set width to 700 px
#Set 'alt' text so a visually impaired user can tell its a scatterplot
#of five random numbers 
ui <- fluidPage(
  plotOutput("plot", width = "700px", height = "300px")
)
server <- function(input, output, session) {
  output$plot <- renderPlot(plot(1:5, main = "Scatterplot of five numbers"), res = 96)
}
shinyApp(ui, server)

#alt function mentioned in question, but no guide on how to use it, so won't worry too much about it working properly

