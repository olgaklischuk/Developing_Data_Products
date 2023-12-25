library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Tabs"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
          textInput('box1', 'Enter Tab 1 Text:', value  = 'Tab 1!'),
          textInput('box2', 'Enter Tab 2 Text:', value  = 'Tab 2!'),
          textInput('box3', 'Enter Tab 3 Text:', value  = 'Tab 3!')
        ),

        # Show a plot of the generated distribution
        mainPanel(
           tabsetPanel(type = 'tabs', 
           tabPanel('Tab1', br(), textOutput('out1')),
           tabPanel('Tab2', br(), textOutput('out2')),
           tabPanel('Tab3', br(), textOutput('out3')))
        )
    )
)
)