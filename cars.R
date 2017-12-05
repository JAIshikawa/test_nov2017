library(dplyr)
library(ggplot2)

date("mtcars")
glimpse(mtcars)

mt_cars_summary <- mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean_disp =mean(disp), 
            mean_hp = mean(hp))

#plot the data
ggplot(mtcars, aes(x = disp, y = hp, colour = cyl)) +
  geom_point()