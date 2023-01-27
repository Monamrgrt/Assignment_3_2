#Q3.3.2
#make_art() function that allows users to produce random art with 2 arguments
install.packages("RColorBrewer")
library(RColorBrewer)
library(ggplot2)

make_art <- function(seed, n) {
  set.seed(seed)
  x <- seq(from = -3*pi, to = 3*pi, length.out = 5000)
  y1 <- sin(x*runif(n)) + rnorm(5000, mean = 0, sd = runif(1,0.1,1))
  y2 <- cos(x*runif(n)) + rnorm(5000, mean = 0, sd = runif(1,0.1,1))
  data <- data.frame(x = x, y = y1, y2 = y2,
                     color = colorRampPalette(brewer.pal(8, "Dark2"))(5000))
  ggplot(data) +
    geom_path(aes(x, y, color = color, group = cut_number(x, runif(1,20,100)))) +
    geom_path(aes(x, y2, color = color, group = cut_number(x, runif(1,20,100)))) +
    scale_color_identity() +
    theme_void() +
    theme(legend.position = "none")
}
make_art(2, 40) #showing the differences in art
make_art(44, 1)