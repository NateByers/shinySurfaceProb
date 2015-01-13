
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyServer(function(input, output) {
  
  output$probMap <- renderUI({
    if(input$pollutant == "pm25") {
      url <- paste0("https://raw.githubusercontent.com/LADCO/NetAssessApp/eric/www/images/pm25_35.png")
      } else {
        url <- paste0("https://raw.githubusercontent.com/LADCO/NetAssessApp/eric/www/images/",
                      input$pollutant, "_", input$threshold, ".png")
                    }
    tags$img(src= url)
  })
  
})
