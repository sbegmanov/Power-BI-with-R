library(ggplot2)

ggplot(plot.data, aes(x = carat, y = price)) +
  geom_point(aes(color = clarity)) +
  scale_x_continuous() +
  scale_y_continuous() +
  scale_color_discrete()