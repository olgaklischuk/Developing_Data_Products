library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Visualize Many Models"),

    # Sidebar with Intercept and Slope slider
    sidebarLayout(
        sidebarPanel(
           h3('Slope'),
           textOutput('slopeOut'),
           h3('Intercept'),
           textOutput('inOut')
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("plot1", brush = brushOpts(
              id = 'brush1'
            ))
        )
    )
)
