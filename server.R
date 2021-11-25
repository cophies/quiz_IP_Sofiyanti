
library(tidyverse)
library(ggplot2)
library(ggpubr)
library(plotly)
library(scales)
library(glue)
library(shiny)
library(shinydashboard)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$plotku <- renderPlotly({
    youlike <- youtube %>% 
        filter(category_id == input$category) %>% 
        group_by(channel_title) %>% 
        summarise(likes_ratio = mean(likes/views)) %>% 
        arrange(desc(likes_ratio)) %>% 
        head(10)
    plotyou <- ggplot(data = youlike ,mapping = aes(x=likes_ratio, y=channel_title))+
      geom_col(fill = "dodgerblue3") +
      labs(x = "Likes Ratio", 
           y = "Channel Title",
           title = "Top 10 Channel")
    ggplotly(plotyou) 
      
    })
    


})
