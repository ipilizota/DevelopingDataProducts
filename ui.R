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
  titlePanel("Pythagorean theorem"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderX", "Side length 1",
                  0, 50, value = 3),
      sliderInput("sliderY", "Side length 2",
                  0, 50, value = 4),
      h4("Hypothenuse length"),
      textOutput('text1')
    ),
    mainPanel(
      plotOutput("plot1")
    )
  )
))      