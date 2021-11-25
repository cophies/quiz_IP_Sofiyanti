
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Favorite Youtube Channel"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "category", label = "Select Category",choices = unique(youtube$category_id), selected = "C")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotlyOutput("plotku")
        )
    )
))
