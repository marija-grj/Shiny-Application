library(shiny)
library(plotly)
library(dplyr)

data = read.csv("https://raw.githubusercontent.com/marija-grj/YACD/main/data/OxCGRT_latest.csv")
data <- data[data$Date<"2021-04-05",]
data$Date <- as.Date(data$Date, "%Y-%m-%d")

shinyServer(function(input, output) {
    output$plot <- renderPlotly({
        data_country <- data %>% 
            filter(CountryName == input$country) %>% 
            select("Date",paste(input$agg,input$field, sep=""))
        plot_ly(data_country, 
                x=data_country$Date, 
                y=data_country[,2], 
                type="scatter", 
                mode="line") %>% 
            layout(hovermode = "x",
                   title=paste(input$agg,input$field,"in",input$country))
    })
  
})
