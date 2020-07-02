library(tidyverse)
library(ggplot2)

list.files()
apt_data_08vs19 <- read.csv(file = 'apt_08vs09_data전처리_0701')
apt_data_08vs19 <- apt_data_08vs19[, 2:17]

apt_data_2019 <- read.csv(file = 'apt_data_2019_200624.csv')
apt_data_2008 <- read.csv(file = 'apt_data_2008_200624.csv')

gu_Q25_2019 <- apt_data_2019 %>% 
  group_by(시군구) %>%
  summarize(gu_q25_2019 = quantile(평당가격, probs = 0.25))

gu_Q75_2019 <- apt_data_2019 %>% 
  group_by(시군구) %>%
  summarize(gu_q75_2019 = quantile(평당가격, probs = 0.75))

gu_Q25_2019$gu_q25_2019 <- gu_Q25_2019$gu_q25_2019*100
gu_Q75_2019$gu_q75_2019 <- gu_Q75_2019$gu_q75_2019*100

apt_data_08vs19$gu_Q25_2019 <- gu_Q25_2019$gu_q25_2019
apt_data_08vs19$gu_Q75_2019 <- gu_Q75_2019$gu_q75_2019

comp_year19 <- apt_data_2019 %>% 
  group_by(시군구) %>% 
  summarize(m.comp_year = round(mean(x = 건축년도),0))

comp_year08 <- apt_data_2008 %>% 
  group_by(시군구) %>% 
  summarize(m.comp_year08 = round(mean(x = 준공년도),0))


comp_year19 <- comp_year19 %>% 
  rename(m.comp_year19 = m.comp_year)

apt_data_08vs19$m.comp_year08 <- comp_year08$m.comp_year08
apt_data_08vs19$m.comp_year19 <- comp_year19$m.comp_year19


apt_data_2008 <- apt_data_2008[,1:13]
apt_data_2019 <- apt_data_2019[,2:15]

write.csv(x = apt_data_08vs19, file = 'apt_data_08vs09_0702.csv')

brand_apt_08vs19 <- read.csv(file = 'brand_apt_number_2008_and_2019.csv')




