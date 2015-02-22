library(shiny)
library(datasets)
library(ggplot2)

shinyServer(function(input, output) {   
    output$plot1 <- renderPlot({
            .e <- environment()
            cardata <- data.frame(x = mtcars[[input$xcol]], y = mtcars[[input$ycol]])
            p <- ggplot(cardata, aes(x = x, y = y), environment = .e) + 
            geom_point(aes(colour = factor(mtcars[[input$col]]))) + xlab(input$xcol) + 
            ylab(input$ycol) + scale_colour_discrete(name = input$col)
            print(p)  
    })
    
})
