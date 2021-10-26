library(shiny)
source('./counter.R')

counterServer <- function(id) {
  moduleServer(
    id,
    serverCount
  )
}

ui <- fluidPage(
  counterButton("counter1", "Counter #1")
)

server <- function(input, output, session) {
  counterServer("counter1")
}

shinyApp(ui, server)