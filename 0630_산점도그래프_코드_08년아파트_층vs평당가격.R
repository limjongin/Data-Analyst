getwd()
library(tidyverse)
library(dplyr)
library(ggplot2)

apt_per_price_08 <- read.csv(file = 'apt_data_2008_200624.csv')
apt_per_price_08 <- apt_per_price_08[, 1:13]

apt_per_price_08$순위 <-  '4순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '강남'] = '1순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '서초'] = '1순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '송파'] = '1순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '마포'] = '1순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '동작'] = '1순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '성동'] = '1순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '광진'] = '2순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '용산'] = '2순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '강동'] = '2순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 3) == '영등포'] = '2순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '중구'] = '2순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '양천'] = '2순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '서대'] = '3순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '강서'] = '3순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '종로'] = '3순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '동대'] = '3순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '성북'] = '3순위'
apt_per_price_08$순위[substr(apt_per_price_08$시군구, 1, 2) == '관악'] = '3순위'

apt_price_floor <- apt_per_price_08[, c(14,3,6, 13)]

ggplot(data = apt_price_floor, mapping = aes(x = apt_price_floor$평당가격, y = apt_price_floor$층)) + geom_point(aes(color = apt_price_floor$순위))+
  theme(text = element_text(family = 'AppleGothic'))


apt_price_floor <- apt_per_price_08[, c(6,13)]

str(object = apt_per_price_08)

plot(x = apt_per_price_08$평당가격
     y = apt_per_price_08$층)

install.packages('ggplot2')
par(family = "AppleGothic")

