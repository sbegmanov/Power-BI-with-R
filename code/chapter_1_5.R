library(tidyverse)
library(ggplot2)
library(dplyr)

set.seed(1)
plot.data <- diamonds %>%
  filter(color == "D") %>%
  sample_n(200)

# multiple layers: geom_point() for scatter plot, geom_smooth() to add Reg. line with CI
ggplot(plot.data, aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "geom_point & geom_smoooth") +
  theme_minimal()
