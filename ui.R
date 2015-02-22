shinyUI(pageWithSidebar(
    titlePanel('Explore Car feature relationships'),
    sidebarPanel(
        selectInput('xcol', 'X Variable', names(mtcars)),
        selectInput('ycol', 'Y Variable', names(mtcars),
                    selected=names(mtcars)[[2]]),
        selectInput('col', 'Colour', c(names(mtcars)[[2]], names(mtcars)[[8]], names(mtcars)[[9]], names(mtcars)[[10]], names(mtcars)[[11]])),
        helpText("Play around with the features from 
                 the mtcars dataset.
                 Make your own plot. Choose which
                 variable you want to put on the
                 x-axes and y-axes.
                 And then choose to colour the points
                 showing one of five factor variables.
                 All the available feutures are:
                 1. mpg	= Miles/(US) gallon
                 2.	cyl = Number of cylinders
                 3.	disp= Displacement (cu.in.)
                 4.	hp	= Gross horsepower
                 5.	drat= Rear axle ratio
                 6. wt	= Weight (lb/1000)
                 7. qsec= 1/4 mile time
                 8. vs	= V/S engine type
                 9. am	= Transmission (0 = automatic, 1 = manual)
                 10.gear= Number of forward gears
                 11.carb= Number of carburetors")
    ),
    mainPanel(
        plotOutput('plot1')
    )
    
))