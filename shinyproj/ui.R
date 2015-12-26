library(shiny)
library(ggplot2)
shinyUI(pageWithSidebar(
  headerPanel("Plot Exponentials"),
  
  sidebarPanel(
    sliderInput('exponent', 'Change the Exponent', value=1, min=0, max=5, step=0.05),
  
    numericInput('set', 'Set Line', 0, min=0, max=5, step=1)
    
  ),
  mainPanel(
    h3('Plot Results'),
    plotOutput('exp'),
    textOutput("text1")
  )
  
))