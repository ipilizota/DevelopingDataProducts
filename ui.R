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
  titlePanel("Pythagorean theorem in action"),
  sidebarLayout(
    sidebarPanel(
      h3("Side lengths"),
      sliderInput("sliderX", "Choose side 1 length",
                  0, 50, value = 3),
      sliderInput("sliderY", "Choose side 2 length",
                  0, 50, value = 4),
      h5("Then the length of the hypothenuse is"),
      textOutput('text1')
    ),
    mainPanel(
      h3("Your right triangle"),
      plotOutput("plot1")
    )
  )
))      