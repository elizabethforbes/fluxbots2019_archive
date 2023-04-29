# analyzing day/night ambient T data

library(tidyverse)
library(readxl)
library(lubridate)
library(here)
library(hms)

temp15 <- read_xlsx("data/Jan_Dec2015_dailyrain.xlsx", sheet = "Hourly", col_names = FALSE, skip = 4)
colnames(temp15) <- c("date", "hour", "record", "airT_C", "RH_1", "airT_C2", "RH_2", "sol_kW", "sol_kW2", "mph_S", "wind_dir", "rain_tot_mm")
temp15 <- temp15 %>% 
  select(date, hour, airT_C, airT_C2, RH_1, RH_2) %>% 
  mutate(hour = as_hms(hour))

# plot the hourly data:
temp15 %>% 
  # na.rm() %>% 
  group_by(hour) %>%
  summarise(mean_T = mean(airT_C, na.rm = T),
            sd_T = sd(airT_C, na.rm = T)) %>% 
  ggplot(aes(x=hour, y=mean_T))+
  geom_point()+
  labs(y="mean ambient temp (C)", x=element_blank(), title = "average ambient temp, 2015")+
  geom_errorbar(aes(ymin = mean_T-sd_T, ymax=mean_T+sd_T))+
  theme_classic()+
  ylim(0,40)

