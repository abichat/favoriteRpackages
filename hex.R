library(hexSticker)
library(tidyverse)
library(showtext)

font_add_google("Love Ya Like A Sister", "lylas")

tbl <-
  tibble(t = seq(0, 2 * pi, 0.1)) %>%
  mutate(x = 16 * sin(t) ^ 3,
         y = 13 * cos(t) - 5 * cos(2 * t) - 2 * cos(3 * t) - cos(4 * t))

p <-
  ggplot(tbl) +
  aes(x, y) +
  geom_polygon(fill = "red", alpha = 0.7) +
  coord_equal() +
  scale_x_continuous(name = NULL, labels = NULL) +
  scale_y_continuous(name = NULL, labels = NULL) +
  theme_bw()

sticker(subplot = p, 
        s_x = 1, s_y = .89, s_width = 1, s_height = 1.2,
        package = "favoriteRpackages", 
        p_x = 1, p_y = 1.5, p_color = "black", p_size = 4, p_family = "lylas",
        h_fill = "#c3c1f8", h_color = "#ED6F69",
        url = "github.com/abichat/favoriteRpackages", 
        u_x = 1, u_y = 0.06, u_color = "black", u_size = 1.33, u_family = "lylas",
        filename = "hex.png")
