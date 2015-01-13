
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  sidebarPanel(
    selectInput("pollutant",
                "Pollutant:",
                c("Ozone" = "o3",
                "PM2.5" = "pm25"))
  ),
  
  conditionalPanel(
    condition = "input.pollutant == 'o3'",
    radioButtons("threshold", "Threshold:",
                       c("75 ppb" = "75",
                         "70 ppb" = "70",
                         "65 ppb" = "65"),
                       selected = "75")
  ),
  
  mainPanel(
    uiOutput("probMap")
  )
))
