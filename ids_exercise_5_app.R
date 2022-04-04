#You will create an app to compare states’ daily number of COVID cases per 100,000 over time. 
#The x-axis will be date. 
#You will have an input box where the user can choose which states to compare (selectInput()), 
#a slider where the user can choose the date range, 
#and a submit button to click once the user has chosen all states they’re interested in comparing.
#The graph should display a different line for each state, 
#with labels either on the graph or in a legend. 
#Color can be used if needed.

library(tidyverse)     # for data cleaning and plotting
library(gardenR)       # for Lisa's garden data
library(lubridate)     # for date manipulation    # for adding animation layers to ggplots
library(transformr)    # for "tweening" (gganimate)
library(gifski)        # need the library for creating gifs but don't need to load each time
library(shiny)         # for creating interactive apps
ui <- fluidPage("United States’ daily number of COVID cases per 100,000 over time")
selectInput("state",
            "State",
            choices = list(state))
sliderInput(inputId = "year",
            label = "Year Range", 
            min = 2019,
            max = 2022,
            sep = "")
submitButtom(text = "Submit")
server <- function(input, output) {covid19 <- read_csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv")
}
shinyApp(ui = ui, server = server)
