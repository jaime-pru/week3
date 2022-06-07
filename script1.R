library(fivethirtyeight)
library(tidyverse)

data("steak_survey", package="fivethirtyeight")

sdat <- na.omit(steak_survey) %>%
  filter(region=="Mountain")

ggplot(sdat) + 
  geom_bar(aes(x = steak_prep, fill = female), position="dodge") +
  ggtitle(paste0("Steak Preparation Preference by Gender for ","Mountain"," Region"))