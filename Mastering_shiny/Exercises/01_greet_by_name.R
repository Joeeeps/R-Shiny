#Create an app that greets user by name

library(shiny) # load in shiny

ui <- fluidPage( #fluid page forms the UI
  textInput(input = "name", label = "What's your name?"), #save THIS text input under "name", and the label is used to prompt the question "What's your name?"
  textOutput("greeting") #comma is important after textInput to register this output under "greeting"... without this line then there would be no indication to visualise the output
) #also the brackets contain both textInput and textOutput to keep things consistent

server <- function(input, output, session) { #server basics, we load our desired input, our desired output and indicate it is the current session
  output$greeting <- renderText({ #for our greeting output the server backend will process it with the linked paste0 command... we assign it here
	paste0("Hello ", input$name) #and this paste0 command includes both "Hello" and input$name, which takes the reactive expression "name" from our textInput and includes it as part of the output
  })
 
}
shinyApp(ui, server)

#currently suffering a bug on RStudio that wipes all my code... had to reupdate this upload with what I copy and pasted into write up 
