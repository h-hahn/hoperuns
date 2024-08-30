ui <- fluidPage(
  
  tags$h1("Hope's Running Log"),
  
  # tabsetPanel ----
  tabsetPanel(
    
    # scatterplot tab ----
    tabPanel(title = "Running Chart",
             
             # running sidebarLayout ----
             sidebarLayout(
               
               # sidebarPanel ----
               sidebarPanel(
                 
                 # sliderInput distance ----
                 sliderInput(inputId = "distance_slider_input",
                             label = "Distance",
                             min = 0,
                             max = max(running_data$DISTANCE),
                             value = c(0, max(running_data$DISTANCE)))
               ), # END input sidebarPanel
               
               # mainPanel ----
               mainPanel(
                 
                 plotOutput(outputId = "running_scatterplot_output")
                 
               ) # END mainPanel
               
             ) # END sidebarLayout
             
    ), # END tabPanel
    
    # info tab ----
    tabPanel(title = "Info Tab",
             
             "info here"
             
    ) # END info tab
    
  ) # END tabsetPanel
  
)# END fluidPage