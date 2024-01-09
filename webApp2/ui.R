#Randomizer

library(shiny)

# Define UI for application that draws random numbers
shinyServer(fluidPage(
  
    # Application title
    titlePanel("Plot random Numbers"),

    # Sidebar with a slider input
    sidebarLayout(
        sidebarPanel(
            numericInput('numeric', 'How Many Random Numbers should be Plotted',
                         value = 1000, min = 1, max = 1000, step = 1),
            sliderInput('sliderX', 'Pick Minimum amd Maximum X Values', 
                        -100, 100, value = c(-50, 50)),
            sliderInput('sliderY', 'Pick Minimum amd Maximum X Values',
                        -100, 100, value = c(-50,50)),
            checkboxInput('show_xlab', 'Show/Hide X axis Label', value = T),
            checkboxInput('show_ylab', 'Show/Hide Y axis Label', value = T),
            checkboxInput('show_title', 'Show/Hide Title')
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3('Graph of Random Plots'),
            plotOutput("plot1")
        )
    )
  )
)