library(shiny)
library(ggplot2)
shinyServer(
  function(input, output) {
    output$exp <- renderPlot({
      mult <- input$exponent
      setting <- input$set
      x <- {1:20}
      y1 <- x
      y1 <- {x^setting}
      y2 <- {x^mult}
      dat <- data.frame(x,y1,y2)
      g <- ggplot(dat, aes(x))
      g + geom_point(aes(y=y2)) + geom_line(aes(y=y1))
        
    })   
    output$text1 <- renderText({ 
      paste("You are currently comparing x^",input$set, "(solid line) to x^", input$exponent, "(dots).")
    })
  }
)