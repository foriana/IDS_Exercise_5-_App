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
library(lubridate)     # for date manipulation
library(openintro)     # for the abbr2state() function
library(palmerpenguins)# for Palmer penguin data
library(maps)          # for map data
library(ggmap)         # for mapping points on maps
library(gplots)        # for col2hex() function
library(RColorBrewer)  # for color palettes
library(sf)            # for working with spatial data
library(leaflet)       # for highly customizable mapping
library(ggthemes)      # for more themes (including theme_map())
library(plotly)        # for the ggplotly() - basic interactivity
library(gganimate)     # for adding animation layers to ggplots
library(transformr)    # for "tweening" (gganimate)
library(gifski)        # need the library for creating gifs but don't need to load each time
library(shiny)         # for creating interactive apps

ui <- fluidPage("United States’ daily number of COVID cases per 100,000 over time"), 
selectInput(inputId = "year",
            label = "Year", 
            value = "",
            placeholder = "2019"),
submitButtom(text = "Submit")
server <- function(input, output) {}
shinyApp(ui = ui, server = server)
