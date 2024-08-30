server <- function(input, output) {
  
  # filter data ----
  filtered_running <- reactive({
    
    running_data %>% 
      filter(DISTANCE >= input$distance_slider_input[1] & DISTANCE <= input$distance_slider_input[2])
    
  })
  
  # render the scatterplot output ----
  output$running_scatterplot_output <- renderPlot({
    
    # add ggplot code here
    ggplot(filtered_running(),
           aes(x = DATE, y = PACE,
               color = DISTANCE)) +
      scale_colour_gradient(low = "orange", high = "blue") +
      geom_point() +
      theme_minimal() +
      theme(axis.line = element_line(colour = "black"),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            panel.border = element_blank(),
            panel.background = element_blank(),
            axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1) )
      
  })
  
} # END server
