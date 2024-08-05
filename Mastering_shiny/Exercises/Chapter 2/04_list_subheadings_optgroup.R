library(shiny)

ui <- fluidPage(
  selectInput(inputId = "plants", label = "Choose your favourite plant genus:", choices = list( #choices are based on a list 
    "Poaceae" = list( #create a list of Poaceae
      "Alloteropsis" = "Alloteropsis",
      "Setaria" = "Setaria",
      "Themeda" = "Themeda"
    ),
    "Asteraceae" = list( #create a list of Asteraceae
      "Flaveria" = "Flaveria",
      "Bidens" = "Bidens",
      "Delairea" = "Delairea"
    ),
    "Brassicaceae" = list( #create a list of Brassicaceae
      "Arabidopsis" = "Arabidopsis",
      "Brassica" = "Brassica",
      "Barbarea" = "Barbarea"
    )
  )),
  textOutput("selected_plant")
)

server <- function(input, output, session) {
  output$selected_plant <- renderText({
    paste("You selected:", input$plants)
  })
}

shinyApp(ui, server)
