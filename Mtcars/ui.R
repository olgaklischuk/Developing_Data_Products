#

library(shiny)

# Define UI for application that draws a 
shinyUI(fluidPage(
  titlePanel('Predicted Horsepower from MPG Data'),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput('sliderMPG', 'What is the MPG of the car?', 10, 35, value = 20),
      checkboxInput('showModel1', 'Show/Hide Model 1', value = T),
      checkboxInput('showModel2', 'Show/Hide Model 2',value = T),
      submitButton('Submit') 
    ),
    mainPanel(
      plotOutput('plot1'),
      h3('Predicted Horsepower from Model 1:'),
      textOutput('pred1'),
      h3('Predicted Horsepower from Model 2:'),
      textOutput('pred2')
    )
  )
  
  
    
))
