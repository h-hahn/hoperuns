# load packages ----
library(shiny)
library(shinyWidgets)
library(palmerpenguins)
library(tidyverse)

running_data <- read_csv("data/running_log.csv") %>%
  mutate(DATE = as.Date(DATE, format = "%m/%d/%y"))

