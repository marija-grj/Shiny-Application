library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Covid-19 statistics"),
  
  # Sidebar 
  sidebarLayout(
    sidebarPanel(
        selectInput("country", "Country", 
                    c("Colombia","Finland","Germany","Greece","India","Portugal","Romania","Switzerland"),
                    selected = "Finland"),
        radioButtons("field", "Field",
                     choices = list("Cases" = "Cases", 
                                    "Deaths" = "Deaths"),
                     inline = TRUE,
                     selected = "Cases"),
        radioButtons("agg", "Aggregation",
                     choices = list("Cumulative" = "Confirmed", 
                                    "Daily" = "Daily"),
                     inline = TRUE,
                     selected = "Confirmed")
    ),
    
    # Main panel
    mainPanel(
        plotlyOutput("plot")
    )
  )
))
