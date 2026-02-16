library(ggplot2)
library(colorBlindness)

bikes <- data.frame(
  temp_feel = rnorm(100),
  count = rnorm(100),
  humidity = rnorm(100),
  is_weekend = TRUE
)

# Define dubois colors and scale as they are needed for g1
dubois_colors <- function(...) {
  dubois_cols <- c(
    `black`    = "#000000",
    `purple`   = "#582f6c",
    `violet`   = "#94679C",
    `pink`     = "#ef849f",
    `softred`  = "#f4b7a7",
    `iceblue`  = "#bccbf3",
    `palegrey` = "#e4e4e4"
  )
  cols <- c(...)
  if (is.null(cols))  return (dubois_cols)
  dubois_cols[cols]
}

dubois_pal_c <- function(palette = "dark", reverse = FALSE, ...) {
  dubois_palettes <- list(
    `dark`    = dubois_colors("black", "purple", "violet", "pink"),
    `light`   = dubois_colors("purple", "violet", "pink", "palegrey")
  )
  pal <- dubois_palettes[[palette]]
  pal <- unname(pal)
  if (reverse) pal <- rev(pal)
  grDevices::colorRampPalette(pal, ...)
}

scale_color_dubois_c <- function(palette = "dark", reverse = FALSE, ...) {
  pal <- dubois_pal_c(palette = palette, reverse = reverse)
  ggplot2::scale_color_gradientn(colours = pal(256), ...)
}

g1 <- 
  ggplot(subset(bikes, is_weekend == TRUE),
         aes(x = temp_feel, y = count, 
             color = humidity)) +
  geom_point(alpha = .7) +
  scale_color_dubois_c()

print("Calling cvdPlot(g1)")
colorBlindness::cvdPlot(g1)
print("Finished cvdPlot(g1)")
