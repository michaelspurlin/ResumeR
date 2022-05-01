library(vitae)
library(here)
library(tidyverse)

#bring in the resume data
df <- read.csv(here("resume.csv"))


#Adding a unique identifier for each bullet
position_data <- df %>% 
  mutate(id = 1:n()) 

position_data %>% 
  select(
    id, 
    bullet_1,
    bullet_2,
    bullet_3,
    bullet_4,
    bullet_5,
    bullet_6,
    bullet_7,
    bullet_8,
    bullet_9)



#make the table longer by desriptions

pivoted_positions %>% 
  select(
    role, 
    bullet_num, 
    description)
  