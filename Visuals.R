library(tidyverse)
library(palmerpenguins)
library(usethis)
library(gitcreds)

use_git_config(
  user.name = "YisuHou1",
  user.email = "yisu.hou@mail.utoronto.ca"
)

gitcreds_set()

tibble(year = 1700:1988,
       sunspots = as.numeric(datasets::sunspot.year) |> round(0)) |>
  ggplot(aes(x = sunspots)) +
  geom_histogram(fill = "#FF8000", color = "grey20") +
  labs(
    title = "Annual Number of Sunspots From 1700 to 1988",
    x = "Annual Sunspots",
    y = "Year Count"
  )




ggplot(data = penguins,
       aes(x = flipper_length_mm,
           y = body_mass_g)) +
  geom_point(aes(color = species,
                 shape = species),
             size = 31,
             alpha = 0.67) +
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(
    title = "Penguin size, Palmer Station LTER",
    subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
    x = "Flipper length (mm)",
    y = "Body mass (g)",
    color = "Penguin species",
    shape = "Penguin species",
    font = "Comic Sans"
  ) +
  theme_minimal() +
  theme(
    legend.position = c(0.2, 0.7),
    plot.title.position = "plot",
    plot.caption = element_text(hjust = 0, face = "italic"),
    plot.caption.position = "plot",
    plot.title = element_text(size = 100),      # Change title font size
    plot.subtitle = element_text(size = 31),   # Change subtitle font size
    axis.title.x = element_text(size = 28),    # Change X axis title font size
    axis.title.y = element_text(size = 21),    # Change Y axis title font size
    axis.text.x = element_text(size = 2),     # Change X axis text font size
    axis.text.y = element_text(size = 100)      # Change Y axis text font size
  )




