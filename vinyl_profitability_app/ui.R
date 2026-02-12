
# For dropdown menu
actionLink <- function(inputId, ...) {
  tags$a(href='javascript:void',
         id=inputId,
         class='action-button',
         ...)
}

fluidPage(
  theme = shinytheme("cyborg"),
  tags$style("
  .ggvis-output.recalculating { --shiny-fade-opacity: 1; }
  .ggvis-tooltip { background-color: black !important; 
                   color: white !important; 
                   border: 2px solid white !important; }
  .irs-bar { background: #FF1493 !important; border: none !important; }
  .irs-handle { background: black !important; }
  .irs-single, 
  .irs-from, 
  .irs-to { background: black !important; 
            color: white !important; }
             "),
  titlePanel("Vinyl Profitability Explorer"),
  fluidRow(
    column(3,
           wellPanel(
             h4("Filter"),
             sliderInput("min_rating", "Minimum Rating",
                         0, 5, 0, step = 0.1),
             sliderInput("price_range", "Price Range ($)",
                         0, 200, c(0, 200), step = 5),
             sliderInput("min_want", "Minimum Want Count",
                         0, 1000, 0, step = 10),
             sliderInput("min_have", "Minimum Have Count",
                         0, 5000, 0, step = 100),
             selectInput("tier", "Tier",
                         c("All", "Top Rated", "Mid-Tier (Popular)", "Niche/Underground", "Low Priority")
             ),
             textInput("album_search", "Album name contains (e.g. Beatles)")
           ),
           wellPanel(
             selectInput("xvar", "X-axis variable", axis_vars, selected = "price"),
             selectInput("yvar", "Y-axis variable", axis_vars, selected = "popularity"),
             tags$small(paste0(
               "",
               "",
               ""
             ))
           )
    ),
    column(9,
           ggvisOutput("plot1"),
           wellPanel(
             span("Number of albums selected:",
                  textOutput("n_albums")
        )
      )
    )
  )
)
