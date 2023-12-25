library(shiny)

# Define server logic required to draw a plot
shinyServer(function(input, output, session) {
    model1 <- reactive({
      brushed_data <- brushedPoints(trees, input$brush1,
                                    xvar = 'Girth', yvar = 'Volume')
      if(nrow(brushed_data) < 2) {
        return(NULL)
      }
      lm(Volume~Girth, data = brushed_data)
    }
  )
    output$slopeOutput <- renderText({
      if(is.null(model())){
        'No model Found'
      } else{
        model()[[1]][2]
      }
    })
    
    output$intOut <- renderText({
      if(is.null(model())){
        'No model found'
      } else {
        model()[[1]][1]
      }
    output$plot1 <- renderPLot({
      plot(trees$Girth, trees$Volume, xlab = 'Girth',
           ylab = 'Volume', main = 'Tree Measurements',
           cex = 1.5, pch = 16, bty = 'n')
      if(!is.null(modle())){
        abline(model(), col = 'blue', lwd = 2)
      }
    })
    
    })
    
    

}
)