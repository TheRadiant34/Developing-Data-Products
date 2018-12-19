#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Black Cherry Trees"),
        
        # Sidebar with 2 inputs for 1 of 3 variables 
        sidebarLayout(
                sidebarPanel(
                        selectInput("xvar", "Variable X", 
                                    c("Diameter(in)" = "Girth",
                                      "Height(ft)" = "Height",
                                      "Volume(cu.ft)" = "Volume")),
                        selectInput("yvar", "Variable Y", 
                                    c("Diameter(in)" = "Girth",
                                      "Height(ft)" = "Height",
                                      "Volume(cu.ft)" = "Volume")),
                ## Checkbox for line in plot, slope, and intercept.
                ## textOutput for slope and intercept values
                        checkboxInput("line", "Show line", FALSE),
                        checkboxInput("slope", "Slope", FALSE),
                        textOutput("slopeOut"),
                        checkboxInput("intercept", "Intercept", FALSE),
                        textOutput("intOut")
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        ## formula being used
                        h3(textOutput("caption")),
                        ## plot
                        plotOutput("treePlot")
                )
        )
))