library(shiny)
library(ggplot2)
shinyUI(pageWithSidebar(
  headerPanel("Plot Exponentials"),
    
    
  sidebarPanel(
    
    sliderInput('exponent', 'Change the Exponent', value=1, min=0, max=5, step=0.5),
  
    numericInput('set', 'Set Line', 0, min=0, max=5, step=1)
    
  ),
  mainPanel(
    h3('Instructions:'),
    
    h5('This application compares two exponential lines. Change the dotted line, while keeping the solid line constant to see how the exponent changes the line.'),
    h5('1. The dotted line is determined by the slider "Change the Exponent."'),
    h5('2. The solid line is static and is set by "Set Line"'),
    
    h3('Plot Results'),
    plotOutput('exp'),
    textOutput("text1")
  )
  
))