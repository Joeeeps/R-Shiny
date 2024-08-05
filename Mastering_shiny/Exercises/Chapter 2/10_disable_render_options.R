#Use options in call renderDataTable() so data is displayed but all other controls are suppressed (i.e. remove the search, ordering, and filtering commands)
library(shiny)

ui <- fluidPage(
  dataTableOutput("table")
)

server <- function(input, output, session) {
  output$table <- renderDataTable(
    mtcars,
    options = list(
      pageLength = 5,     # Set the number of rows per page
      dom = 't',          # Only display the table (suppress search, pagination, and other controls)
      ordering = FALSE,   # Disable column ordering
      searching = FALSE   # Disable search box
    )
  )
}

shinyApp(ui, server)
