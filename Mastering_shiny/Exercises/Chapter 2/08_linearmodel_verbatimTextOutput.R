library(shiny)
ui <- fluidPage(
  verbatimTextOutput("lm_output")
)

server <- function(input, output, session) {
  output$lm_output <- renderPrint({ #choose the lm_output from UI
    str(lm(mpg ~ wt, data = mtcars)) #call the modelling factors 
  })
}

shinyApp(ui, server)

