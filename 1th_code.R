getwd()
setwd('./project')
setwd('./1st project')
setwd('./1st project data')
setwd('./4th_Competition')
getwd()

data_2008 <- read.csv(file = 'traindata_seoul.csv')

View(data_2008)

str(object = data_2008)

min_price <- min(data_2008$transaction_real_price)
max_price <- max(data_2008$transaction_real_price)

data2008_1 <- data_2008[data_2008$transaction_year_month <= 200812,]

View(data2008_1)

write.csv(x = data2008_1, file = './4th_Competition2008data.csv')

data2019 <- read.csv(file = 'Apt_price_2019.csv')

View(data2019)

data2019_1 <- data2019[ , -c(5:11,13:17,21,23 )]

View(data2019_1)
data2019_1 <- data2019_1[ , -c(10)]

library(tidyverse)
data2019_1 <- select(data2019_1, X, 시도명, 시군구, 법정동, 아파트, 층, 거래금액, 전용면적, 건축년도, 년, 월, 일)

write.csv(x = data2019_1, file = '2019_apt_data.csv')

data_2008_1 <- read.csv(file = '2008_apt_data.csv')

View(data_2008_1)

data_2008_1 <- data_2008_1[ , -1]

data_2008_1 <- select(data_2008_1, X, city, dong, apt, floor, transaction_real_price, exclusive_use_area, year_of_completion, transaction_year_month, transaction_date)

write.csv(x = data_2008_1, file = '2008_apt_data.csv')




data_2008_1$gu <- '강남구'

data_2008_1[, 'gu'] = '강남구'

data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신교'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '인의'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '필운'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '내수'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '이화'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '명륜'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '창신'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '숭인'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '평창'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '무악'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '익선'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '수송'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '누상'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '내수'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '동숭'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '가락'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '가리봉'] = '구로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '가산'] = '금천구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '가양'] = '강서구'

write.csv(x = data_2008_1, file = '2008_apt_data.csv')

data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '갈현'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '개봉'] = '도봉구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '개포'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '거여'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '견지'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '고덕'] = '강동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '고척'] = '구로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '공덕'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '공릉'] = '노원구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '공항'] = '강서구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '광장'] = '광진구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '구로'] = '구로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '구산'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '구의'] = '광진구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '군자'] = '광진구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '궁동'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '금호'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '길동'] = '강동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '길음'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '낙원'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '남가좌'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '남산'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '남현'] = '관악구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '내발산'] = '강서구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '냉천'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '노고산'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '노량진'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '녹번'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '논현'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '누상'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '답십리'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '당산'] = '영등포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '대림'] = '영등포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '대방'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '대조'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '대치'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '대현'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '대흥'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '도림'] = '영등포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '도봉'] = '도봉구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '도선'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '도원'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '도화'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '독산'] = '금천구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '돈암'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '동교'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '동빙고'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '동선'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '동소문'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '동숭'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '동자'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '동작'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '둔촌'] = '강동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '등촌'] = '강서구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '마곡'] = '강서구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '마장'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '마천'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '마포'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '만리'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '망우'] = '중랑구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '망원'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '면목'] = '중랑구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '명일'] = '강동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '목동'] = '양천구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '문래'] = '영등포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '문배'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '문정'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '미근'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '미아'] = '강북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '반포'] = '서초구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '방배'] = '서초구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '방이'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '방학'] = '도봉구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '방화'] = '강서구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '번동'] = '강북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '보광'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '보문'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '본동'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '봉천'] = '관악구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '부암'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '북가좌'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '북아현'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '불광'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '사근'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '사당'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '사직'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신림'] = '관악구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '산천'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '삼선'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '삼성'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '삼전'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '상계'] = '노원구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '상도'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '상봉'] = '중랑구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '상수'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '상암'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '상월곡'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '상일'] = '강동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '서교'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '서빙고'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '서초'] = '서초구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '석관'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '석촌'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '성내'] = '강동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '성북'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '성산'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '성수'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '송정'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '송파'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '수색'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '수서'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '수유'] = '강북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '순화'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '숭인'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '시흥'] = '금천구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '신공덕'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신길'] = '영등포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신내'] = '중랑구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신당'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신대방'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신도림'] = '구로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신림'] = '관악구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신사'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신설'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신수'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신영'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신월'] = '양천구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신정'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신창'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '신천'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '쌍문'] = '도봉구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '아현'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '안암'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '암사'] = '강동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '압구정'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '양재'] = '서초구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '양평'] = '영등포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '여의도'] = '영등포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '역삼'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '역촌'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '연남'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '연희'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '염리'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '염창'] = '강서구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '영등포'] = '영등포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '영천'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '오금'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '오류'] = '구로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '옥수'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '온수'] = '구로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '용강'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '용답'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '용두'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '용문'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '용산'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '우면'] = '서초구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '우이'] = '강북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '원효로'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '월계'] = '노원구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '을지로'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '응봉'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '응암'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '이문'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '이촌'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '이태원'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '이화'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '익선'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '인의'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '인현'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '일원'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '자양'] = '광진구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '잠실'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '잠원'] = '서초구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '장안'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '장위'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '장지'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '장충'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '전농'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '정릉'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '제기'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '종암'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '중계'] = '노원구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '중곡'] = '광진구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '중동'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '중림'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '중화'] = '중랑구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '증산'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '진관'] = '은평구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '창동'] = '도봉구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '창신'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '창전'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '창천'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '천연'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '천호'] = '강동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '청담'] = '강남구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '청량리'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '청암'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '청운'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '청파'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '충무로'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '충정로'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '토정'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '통인'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '평창'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '풍납'] = '송파구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '필운'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '하계'] = '노원구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 4) == '하왕십리'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '하월곡'] = '성북구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 3) == '한강로'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '한남'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '합정'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '항동'] = '구로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '행당'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '행촌'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '현석'] = '마포구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '현저'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '혜화'] = '종로구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '홍은'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '홍익'] = '성동구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '홍제'] = '서대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '화곡'] = '강서구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '화양'] = '광진구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '황학'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '회기'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '효창'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '후암'] = '용산구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '휘경'] = '동대문구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '흑석'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '흥인'] = '중구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '흑석'] = '동작구'
data_2008_1$gu[substr(data_2008_1$dong, 1, 2) == '산림'] = '중구'

library(tidyverse)
data_2008_1 <- select(data_2008_1, X, city, gu, dong, apt, floor, transaction_real_price, exclusive_use_area, year_of_completion, transaction_year_month, transaction_date)

View(data_2008_1)

data_2008_1$real_price_per_area <- round(x = data_2008_1$transaction_real_price/data_2008_1$exclusive_use_area, digit = 2)
data_2008_1$평당가격 <- round(x = data_2008_1$real_price_per_area*3.3, digit = 2) 

getwd()
setwd('./project')
setwd('./1st project')
setwd('./1st project data')
setwd('./4th_Competition')
write.csv(x = data_2008_1, file = '2008_last.csv')

data2019_1 <- read.csv(file = '2019_apt_data.csv')

data2019_1$거래금액 <- as.factor(data2019_1$거래금액)
data2019_1$거래금액 <- as.numeric(data2019_1$거래금액)

data2019_1$면적당거래금액 <- round(x = data2019_1$거래금액/data2019_1$전용면적, digits = 2)
data2019_1$평당가격 <- round(x = data2019_1$면적당거래금액*3.3,digits = 2)

View(object = data2019_1)
View(data2019_1)

write.csv(x = data2019_1, file = '2019_apt_data.csv')
