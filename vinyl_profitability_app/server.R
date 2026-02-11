# Clean up any NA values in rating
vinyl_data <- vinyl_data |>
  mutate(rating = coalesce(rating, 0)
  )

function(input, output, session) {
  
  # Filter the albums, returning a data frame
  albums <- reactive({
    # Due to dplyr issue #318, we need temp variables for input values
    min_rating <- input$min_rating[1]
    min_price <- input$price_range[1]
    max_price <- input$price_range[2]
    min_want <- input$min_want[1]
    min_have <- input$min_have[1]
    
    # Apply filters
    m <- vinyl_data |> 
      filter(
        rating >= min_rating,
        price >= min_price,
        price <= max_price,
        want >= min_want,
        have >= min_have
      )
    
    # Optional: filter by tier
    if (input$tier != "All") {
      m <- m |>  filter(tier == input$tier)
    }
    
    # Optional: filter by album name
    if (input$album_search != "") {
      m <- m |> filter(grepl(input$album_search, album, ignore.case = TRUE))
    }
    
    # Add unique ID column for hover logic
    m$ID <- 1:nrow(m)
    
    # Add column with high value indicator for legend
    m$high_value <- "No"
    m$high_value[m$tier == "Top Rated"] <- "Yes"
    m$high_value[m$tier == "Mid-Tier (Popular)"] <- "Yes"
    
    m
  })
  
  # Create function for generating tooltip text
  album_tooltip <- function(x) {
    if (is.null(x)) return(NULL)
    if (is.null(x$ID)) return(NULL)
    
    # Pick out the album with this ID
    all_albums <- isolate(albums())
    album <- all_albums[all_albums$ID == x$ID, ]
    
    paste0("<b>", album$album, "</b><br>",
           "Price: $", album$price, "<br>",
           "Rating: ", round(album$rating, 2), "<br>",
           "Want/Have: ", album$want, "/", album$have, "<br>",
           "Tier: ", album$tier
    )
  }
  
  # A reactive expression with the ggvis plot
  vis <- reactive({
    # Labels for axes
    xvar_name <- names(axis_vars)[axis_vars == input$xvar]
    yvar_name <- names(axis_vars)[axis_vars == input$yvar]
    
    # Normally we could do something like props(x = ~price, y = ~popularity),
    # but since the inputs are strings, we need to do a little more work.
    xvar <- prop("x", as.symbol(input$xvar))
    yvar <- prop("y", as.symbol(input$yvar))
    
    albums |>  
      ggvis(x = xvar, y = yvar) |> 
      layer_points(size := 50, size.hover := 200,
                   fillOpacity := 0.2, fillOpacity.hover := 0.5,
                   stroke = ~high_value, key := ~ID) |> 
      add_tooltip(album_tooltip, "hover") |> 
      add_axis("x", title = xvar_name) |> 
      add_axis("y", title = yvar_name) |> 
      add_legend("stroke", title = "High Value Tier", values = c("Yes", "No")) |> 
      scale_nominal("stroke", domain = c("Yes", "No"),
                    range = c("#FF1493", "#00FF7F")) |> 
      set_options(width = 500, height = 500)
  })
  
  vis |>  bind_shiny("plot1")
  
  output$n_albums <- renderText({ nrow(albums()) })
}

