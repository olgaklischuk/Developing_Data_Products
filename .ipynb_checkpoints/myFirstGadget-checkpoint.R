#ShinyGadgets 1.1-1.2

library(shiny)
library(miniUI)


myFirstGadget <- function(){
  ui <- miniPage(
    gadgetTitleBar('Gadget'))
  
  server <- function(input, output, session){
       
      # The Done button
      observeEvent(input$done, {
        stopApp()
      })
    }
  runGadget(ui, server)
}
myFirstGadget()


multiplyNumbers <- function(numbers1, numbers2){
  ui<-miniPage(
    gadgetTitleBar('Multiplication'),
    miniContentPanel(
      selectInput('num1', 'First Number', choices = numbers1),
      selectInput('num2', 'Second Number', choices = numbers2)
    )
  )
  server<-function(input, output, session){
    observeEvent(input$done, {
      num1 <- as.numeric(input$num1)
      num2 <- as.numeric(input$num2)
      stopApp(num1 = num2)
    })
    runGadget(ui, server)
  }
}

multiplyNumbers(numbers1 = 1:121, numbers2 = 1:121)
