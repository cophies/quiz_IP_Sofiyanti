# library
options(scipen = 123) #agar angka yg ditampilkan tidak scientific
library(tidyverse)
library(plotly)
library(scales)
library(glue)
library(shiny)
library(shinydashboard)


# read data

youtube <- read.csv("youtube.csv")

# data cleansing
