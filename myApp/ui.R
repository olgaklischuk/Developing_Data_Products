library(shiny)
#
# Define UI for simple application
shinyUI(fluidPage(
  titlePanel('Data Science FTW'),
  sidebarLayout(
      sidebarPanel(
        h1('Move the Slider!'),
        sliderInput('slider2', 'Slide Me!', 0, 100, 0)),
      
        mainPanel(
        h3('Main Panel Text'),
        textOutput('text1')
        )
      )


  #Define UI for application that draws a histogram
    # # Application title
    # titlePanel("Old Faithful Geyser Data"),
    # 
    # # Sidebar with a slider input for number of bins
    # sidebarLayout(
    #     sidebarPanel(
    #         sliderInput("bins",
    #                     "Number of bins:",
    #                     min = 1,
    #                     max = 50,
    #                     value = 30)
    #     ),
    # 
    #     # Show a plot of the generated distribution
    #     mainPanel(
    #         plotOutput("distPlot")
    #     )
    # )
  )
)

#Alt + S + W + Return
