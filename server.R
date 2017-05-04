#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    X <- input$sliderX
    Y <- input$sliderY
    xlab <- ifelse(input$show_xlab, "X Axis", "")
    ylab <- ifelse(input$show_ylab, "Y Axis", "")
    main <- ifelse(input$show_title, "Title", "")
    plot(c(X, 0), c(0, Y), xlab = xlab, ylab = ylab, main = main,
         xlim = c(0, 50), ylim = c(0, 50), "l")
    segments(0, 0, 0, Y)
    segments(0, 0, X, 0)
  })
  output$text1 = renderText(sqrt(input$sliderX^2 + input$sliderY^2))
})
