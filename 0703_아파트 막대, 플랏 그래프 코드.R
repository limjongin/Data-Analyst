getwd()
setwd('/Users/imjong-in/Nano Degree/project/1st project/1st project data/4th_Competition')


library(tidyverse)
library(ggplot2)

apt_08vs19 <- read.csv(file = 'apt_data_08vs19_0702.csv')


range(x=apt_08vs19$gap)

#막대그래프 그리기
par(family = 'AppleGothic')
y <- rbind(apt_08vs19$medians08, apt_08vs19$median19)
barplot(y, 
        names.arg = apt_08vs19$시군구, 
        col = 2:3,
        ylim = c(0, 8000), 
        xlab = "시군구", 
        ylab = "평당가격중위값",
        beside = T,
        cex.axis = 0.7,
        cex.names = 0.7,
        main = '08vs19서울시 아파트 평당가격 중위값')
#범례추가
legend('topright', title = '년도', legend = c(2008, 2019), fill = 2:3, cex = 0.7)

gap_median <- apt_08vs19 %>% 
  arrange(apt_08vs19$gap)

plot(x= sort(gap_median$gap),
     ylab = '서울시 아파트 평당 중위값',
     xlab = '시군구',
     pch = 19,
     col = 'black',
     main = '11년 간 구별 서울시 아파트 가격 증가')


text(x = sort(x=gap_median$gap),
     labels = gap_median$시군구,
     pos = 3,
     cex = 0.8,
     col = 'gray30')

abline(h = mean(gap_median$gap),
       col = 'red',
       lty = 2)

str(object = apt_08vs19)
