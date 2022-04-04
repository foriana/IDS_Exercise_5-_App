#You will create an app to compare states’ daily number of COVID cases per 100,000 over time. 
#The x-axis will be date. 
#You will have an input box where the user can choose which states to compare (selectInput()), 
#a slider where the user can choose the date range, 
#and a submit button to click once the user has chosen all states they’re interested in comparing.
#The graph should display a different line for each state, 
#with labels either on the graph or in a legend. 
#Color can be used if needed.

library(tidyverse)     # for data cleaning and plotting
library(lubridate)     # for date manipulation    # for adding animation layers to ggplots
library(shiny)         # for creating interactive apps
ui <- fluidPage("United States’ daily number of COVID cases per 100,000 over time",
selectInput("state",
            "State",
            choices = list("state")),
sliderInput(inputId = "date",
            label = "Date Range", 
            min = as.Date("2020-01-21", "%Y-%m-%d"),
            max = as.Date("2022-04-03", "%Y-%m-%d"),
            value = as.Date("2020-01-21","%Y-%m-%d" ),
            sep = ""),
submitButton(text = "Submit"))

server <- function(input, output) {output$timeplot <- renderPlot({
  covid19 <- read_csv("us-states.csv")
  covid19 <- covid19 %>%
    mutate(year = ydate(date))
  covid19 %>% 
    filter(state == input$state, 
           date == input$date) %>% 
    ggplot(aes(x = date, 
               y = case)) +
    geom_line(color = input$state) 
})
  

}
shinyApp(ui = ui, server = server)
