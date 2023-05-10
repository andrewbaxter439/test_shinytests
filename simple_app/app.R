library(shiny)

ui <- fluidPage(
  h1(paste("Run by", Sys.getenv("USER"))),
  textInput("name", "What is your name?", value = "Friendly User"),
  actionButton("greet", "Greet"),
  textOutput("greeting")
)


server <- function(input, output, session) {
  output$greeting <- renderText({
    req(input$greet)
    paste0(Sys.getenv("greeting"), " ", isolate(input$name), "!")
  })
}

shinyApp(ui, server)