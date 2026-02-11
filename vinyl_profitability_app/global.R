library(ggvis)
library(dplyr)
library(shinythemes)

# Read the vinyl data from CSV
vinyl_data <- read.csv("discogs_vinyl_data_clean.csv")

# Variables that can be put on the x and y axes
axis_vars <- c(
  "Price" = "price",
  "Rating" = "rating",
  "Have Count" = "have",
  "Want Count" = "want",
  "Popularity" = "popularity"
)