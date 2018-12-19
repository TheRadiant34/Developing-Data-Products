#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
# Define server 
shinyServer(function(input, output) {
  
## a formula text that is reactive to changes in variables
  formulaText<- reactive({
          paste(input$yvar,"~", input$xvar)
  })
## formula caption  
  output$caption<- renderText({
          formulaText()
})
## model to get slope and intercept coefficients  
  linearReg<- reactive({
          lm(as.formula(formulaText()), data = trees)
})
## Output of slope if the the box is checked  
  output$slopeOut<- renderText({
          ifelse(input$slope, linearReg()[[1]][2], "")
})
## Output of intercept if the box is chekced  
  output$intOut<- renderText({
          ifelse(input$intercept, linearReg()[[1]][1], "")
  })
## Rendering the plot  
  output$treePlot <- renderPlot({
   x_axis <- input$xvar
   y_axis <- input$yvar
## ggplot
   gg <- ggplot(data =trees, aes_string(x = x_axis, y = y_axis))
   gg<- gg + geom_point()
## The adding of a line if line box is checked   
   check_line <- ifelse(input$line, plot(gg + geom_smooth( method = "lm")), plot(gg))
   
  })
  
})
