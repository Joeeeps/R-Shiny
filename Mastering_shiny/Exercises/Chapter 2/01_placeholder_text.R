#Create an app that has placeholder text inside the text

library(shiny) # load in shiny

ui <- fluidPage( #fluid page forms the UI
  textInput(input = "name", label = NULL, placeholder = "Your name"), #must set label to NULL and placeholder to "Your name" to get desired embedded input prompt
  textOutput("greeting") 
) 

server <- function(input, output, session) { 
  output$greeting <- renderText({
    paste0("Hello ", input$name) 
  })
  
}
shinyApp(ui, server)
 