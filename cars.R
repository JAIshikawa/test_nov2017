library(dplyr)
library(ggplot2)

date("mtcars")
glimpse(mtcars)

mt_cars_summary <- mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean_disp =mean(disp), 
            mean_hp = mean(hp))

mt_cars_summary