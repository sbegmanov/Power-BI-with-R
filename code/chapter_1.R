library(tidyverse)
library(scales)
library(ggplot2)
library(dplyr)
library(stats)
library(ggthemes)

plot.data <- diamonds %>%
  filter(color == "D") %>%
  sample_n(200)

ggplot(data = plot.data, aes(x = carat, y = price)) +
  geom_point(aes(color = clarity)) +
  labs(
    title = "Diamonds",
    subtitle = "Carat vs Price by Clarity",
    caption = "Scatter"
  ) +
  scale_x_continuous(name = "Size in Carats") +
  scale_y_continuous(
    name = "Price ($)",
    labels = dollar_format()
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    plot.caption = element_text(hjust = 0)
  )






