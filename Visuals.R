library(tidyverse)
library(palmerpenguins)
library(usethis)
library(gitcreds)

tibble(year = 1700:1988,
       sunspots = as.numeric(datasets::sunspot.year) |> round(0)) |>
  ggplot(aes(x = sunspots)) +
  geom_histogram()




ggplot(data = penguins,
       aes(x = flipper_length_mm,
           y = body_mass_g)) +
  geom_point(aes(color = species,
                 shape = species),
             size = 3,
             alpha = 0.8) +
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(
    title = "Penguin size, Palmer Station LTER",
    subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
    x = "Flipper length (mm)",
    y = "Body mass (g)",
    color = "Penguin species",
    shape = "Penguin species"
  ) +
  theme_minimal() +
  theme(
    legend.position = c(0.2, 0.7),
    plot.title.position = "plot",
    plot.caption = element_text(hjust = 0, face = "italic"),
    plot.caption.position = "plot"
  )

usethis::use_git()
usethis::use_github()



