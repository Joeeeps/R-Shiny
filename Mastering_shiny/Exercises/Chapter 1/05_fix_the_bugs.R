library(shiny)
library(ggplot2)

datasets <- c("economics", "faithfuld", "seals")

ui <- fluidPage(
  selectInput("dataset", "Dataset", choices = datasets), #make dataset the Input, "Dataset" as a label, and the choices from the datasets values
  verbatimTextOutput("summary"), #summary is the output text for the summary data
  plotOutput("plot") #plot is the plotting output for the plot data... replace tableOutput with plotOutput
)

server <- function(input, output, session) { 
  dataset <- reactive({
    get(input$dataset, "package:ggplot2") 
  })
  output$summmary <- renderPrint({ #fix typo here 
    summary(dataset())
  })
  output$plot <- renderPlot({
    plot(dataset()) # add additional brackets to dataset, which calls the dataset data rather than the reactive plot
  }, res = 96)
}

shinyApp(ui, server)

#Bug 1 - replace 'tableOutput("plot")' with "plotOutput("plot") as we want a plot not a table
#Bug 2 - typo of "summary" as "summry" on line 16, fix it 
#Bug 3 - output$plot calls dataset rather than the reactive object