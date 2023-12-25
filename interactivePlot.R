#Gadget 1.3
library(shiny)
library(miniUI)

pickTrees <- function(){
  ui <- miniPage(
    gadgetTitleBar('Select Points by Dragging your Mouse.'),
    miniContentPanel(
      plotOutput('plot', height = '100%', brush = 'brush')
      )
    )
  
  server <- function(input, output, session){
    
    # 
    output$plot <-renderPlot(  {
      plot(trees$Girth, trees$Volume, main = 'Trees!',
           xlab = 'Girth', ylab = 'Volume')
    })
    observeEvent(input$done, {
      stopApp(brushedPoints(trees,input$brush,
                            xvar = 'Girth', yvar = 'Volume'))
    })
  }
  
  runGadget(ui, server)
}

pickTrees()
#   Girth Height Volume
# 16  12.9     74   22.2
# 17  12.9     85   33.8
# 18  13.3     86   27.4
# 19  13.7     71   25.7
# 20  13.8     64   24.9
# 21  14.0     78   34.5
# 22  14.2     80   31.7
# 23  14.5     74   36.3
# 24  16.0     72   38.3
# 25  16.3     77   42.6
# 26  17.3     81   55.4