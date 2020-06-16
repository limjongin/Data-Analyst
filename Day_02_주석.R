
a <- c(1, 2)
*a객체에 정실수 벡터값 1,2를 할당
class(x = a)
*a객체의 벡터 종류 확인(실수)
a
*a객체 값 출력
b <- c(1L, 2L)
*b객체에 정수 벡터값 1,2를 할당
class(x = b)
*b객체의 벡터값 종류 확인(정수)
b
*b객체 값 출력

sum(x = a)
*x객체 벡터값 더하기, 3(실수이기 때문에 가능)
sum(x = b)
*x객체에 벡터값 더하기, 3(정수이기 때문에 가능)

c <- c('hello', 'world')
*c객체에 문자열 벡터값 hell, world 할당
class(x = c)
*c객체 벡터값 확인(문자열)
sum(x = c)
*c객체 벡터값 더하기, 오류(문자열은 불가능)

d <- c(FALSE, TRUE)
*d객체에 로직 벡터값 TRUE, FALSE 할당
class(x = d)
*d객체의 벡터값 종류 확인(로직)
sum(d)
*d객체의 벡터값 더하기, 1(TRUE의 개수가 나옴)

x <- c(F, T, T, T, F, F, T, F, T, F, F)
*x객체에 로직 벡터값 F,T,T,T,F,F,T,F,T,F,F 할당
sum(x)
*x객체의 벡터값 더하기, 5(TRUE 벡터값이 5개)

as.integer(x = d)
*x객체의 로직벡터값을 정수로 변환
e <- as.factor(x = c)
*c객체의 문자열 벡터값을 범주형 벡터값으로 변형하여 e객체에 할당
class(x = e)
*e객체의 벡터값 종류 확인
e
*e객체의 벡터값 출력
c
*c객체의 벡터값 출력, "hello", "world"

as.integer(x = e)
*e객체의 범주형 벡터값을 정수형 백터값으로 변경
sum(e)
*e객체의 벡터값 더하기
sum(as.integer(x = e))
*e객체의 벡터값 더하기


letters[1]
*R내장 소문자 문자열 벡터값의 첫번째 원소 출력
letters[c(1, 3, 5, 7, 9, 11, 13, 15)]
*R내장 소문자 문자열 벡터값의 1,3,5,7,9,11,13,15 번째 원소 출력
letters[seq(from = 1, to = 26, by = 2)]
*R내장 소문자 문자열 벡터값의 1~26번 째 중 홀수자리 값만 출력

loc <- seq(from = 3, to = 26, by = 3)
*loc객체에 1~26까지 3의 배수만 나열
letters[loc]
*R내장 소문자 문자열 벡터값에 loc객체 할당
LETTERS[loc]
*R내장 대문자 문자열 벡터값에 loc객체 할당

letters[loc] <- LETTERS[loc]
*loc가 할당된 R내장 소문자 문자열에 loc가 할당된 R내장 대문자 문자열 값 할당 
letters
*위 과정을 거친 문자열 출력, a,b,C,d,e,F,g,h,I....

vec <- c('한국', '일본', '중국', '미국', '중국', '한국', '미국', '한국', '일본')
*vec객체에 문자열 벡터값 한국,일본,중국,미국,중국,한국,미국,한국,일본 할당

fct1 <- factor(x = vec)
*fct1 객체에 vec객체를 범주형 벡터값으로 변경하여 할당
fct1
*fct1 출력, 미국,일본,중국,한국
as.integer(x = fct1)
*fct1의 범주형 벡터값을 정수형으로 변경

fct2 <- factor(x = vec, 
               levels = c('한국', '미국', '중국', '일본'))
*fct2객체에 정수형 벡터값을 가진 vec객체를 순서를 지정하여 할당
fct2
*fct2출력, 한국,미국,중국,일본

fct3 <- factor(x = vec, 
               levels = c('한국', '미국', '중국', '일본'),
               labels = c('대한민국', '미합중국', '중화민국', '일본나라'))
*fct3객체에 범주형 벡터값을 가진 vec객체를 원소순서와 원소내용을 지정하여 할당
fct3
*대한민국, 미합중국, 중화민국, 일본나라
as.factor()
*벡터의 종류를 범주형으로 변경

vec[9] <- '대만'
*vec객체의 9번쨰 자리에 문자열 원소값 대만 할당
vec
*한국, 일본, 중국, 미국, 중국, 한국, 미국, 한국, 대만

fct1[9] <- '대만'
*fct1의 9번째 자리에 문자열 원소값 대만 할당
fct1
*fct1 출력, 한국, 일본, 중국, 미국, 중국, 한국, 미국, 한국, <NA>


fct4 <- as.character(x = fct1)
*fct4객체에 fct1의 벡터값을 문자열로 변환하여 할당
fct4
*fct4 출력, 한국,일본,중국,미국,중국,한국,미국,한국,<NA>
fct4[9] <- '대만'
*fct4객체의 9번째 원소에 문자열 벡터값 대만 할당
fct4
*fct4출력, 한국,일본,중국,미국,중국,한국,미국,한국,대만
as.factor(x = fct4)
*fct4	의 문자열 벡터값을 범주형 벡터값으로 변경

fct1
*fct1 출력
levels(fct1) <- c('한국', '미국', '중국', '일본', '대만')
*fct1의 범주형 벡터값 levels에 한국, 미국, 중국, 일본, 대만 값 추가
fct1
*fct1출력
fct1[9] <- '대만'
*범주형 벡터값을 가진 fct1객체의 9번째에 문자열 벡터값 대만 추가
fct1
*fct1값 출력, 한국,미국,중국,일본,대만


f <- c(d, e)
f
class(x = f)

f <- c(f, 3)
f
class(x = f)

f <- c(f, '4')
f
class(x = f)

sum(f)
as.integer(f)
as.numeric(f)
f


letters[1]

a <- c('a', 'b', 'c', 'd', 'e')
a
a[c(1, 3, 5)]
a[c(TRUE, FALSE, TRUE, FALSE, TRUE)]


1:5
a <- letters[1:5]
a
b <- LETTERS[6:10]
b

a
a[]
c()
c <- letters[1:10]
c[1]

a[-1]
a[-c(1,2)]
b <- a[-c(1,2)]
b

a[1] <- 'A'
a
a[2] <- 'B'
a

a <- c(0, 2, 4)
b <- c(1, 2, 3)
a + b
a - b
a * b
a / b

a %% b
a %/% b
a ^ b
(1:10)^2

c <- seq(from = 1, to = 11, by = 2)
d <- seq(from = 3, to = 12, by = 4)
a
c
a + c

a
b
a > b
a >= b
a < b
a <= b
a == b
a != b

a
b
a & b
a | b
!a
!b

A <- matrix(data = 1:12, nrow = 3)
*1~12까지의 데이터값을 갖는 행렬을 3행으로 만들어 A에 할당
A
*A출력
class(x = A)
*A의 종류 확인, metrix, array

B <- matrix(data = 1:12, nrow = 3, byrow = T)
*1~12까지의 데이터값을 갖는 행렬을 3행 4열로 생성하여 B에 할당(T는 TRUE로 자동 생성)
B
*B출력

C <- matrix(data = 1:12,
            nrow = 3,
            ncol = 4,
            dimnames = list(letters[1:3],
                            LETTERS[4:7]))
*1~12까지의 데이터값을 갖는 행렬을 3행, 4열로 생성하여 C에 할당하되, 행의 이름은 소문자 R내장 문자열 a,b,c / 열의 이름은 대문자 R내장 문자열 D,E,F,G
C
*C출력

A
A[1, ]
A[1:2, ]
A[, 1]
A[, 1:2]
A[1, 1]
A[2, 3]
A[1:2, 1:2]

A[-1, ]
A[-c(1, 2), ]
A[, -1]
A[, -c(1, 2)]
A[-1, -1]

A
A[1, ] <- 95:98
A
A[, 1] <- 31:33
A

A[1, 1] <- 55
A

A[1, 1] <- 55.5
A

A[1, 1] <- '55.5'
A
A <- as.numeric(A)
matrix(data = A, nrow = 3)

c <- c('hello', 'world')
e <- c('this', 'is', 'me')

paste(c, e)
paste(c, collapse = ' ')
paste(e, collapse = ' ')
paste(paste(c, collapse = ' '),
      paste(e, collapse = ' '))


lst <- list(a = 'a', b = 'b', c = 'c')
*lst객체에 a,b,c의 원소값 리스트 생성
lst
*lst 출력
unlist(lst)
*lst의 원소값을 모두 벡터의 원소로 변환


num <- 1:5
*num이라는 객체에 1~5의 값 할당
char <- LETTERS[6:10]
*char라는 객체에 R내장 대문자 문자열 원소값 F,G,H,I,J 할당
logi <- rep(x = c(T, F), each = 3)
*logi라는 객체에 로직형 벡터값 TRUE와 FALSE를 3번씩 반복하여 할당
lst1 <- list(a = num, b = char, c = logi)
*lst1이라는 객체에 a,b,c객체를 리스트하여 할당
str(object = lst1)
*lst1객체 구조 확인

lst2 <- list(num, char, logi, lst1)
*lst2객체에 num, char, logi, lst1객체를 리스트하여 할당
str(object = lst2)
*lst2구조 확인
class(x = lst2)
*lst2	종류 확인

lst1[[1]]
*리스트는 겹대괄호를 사용하여 인덱싱
lst1$a
*객체에 원소명이 있을 경우 $원소명으로 인덱싱

lst2[[1]]
lst2$a

lst2[2]

lst2[[4]]$b[2:4]
lst2[[4]][[2]][2:4]

matrix(data = 1:12, nrow = 3)

options('stringsAsFactors')

df <- data.frame(num, char, logi)
*df라는 객체에 데이터 프레임, num/char/logi의 원소를 할당, 각 원소 열의 길이가 다르면 만들어지지 않음
num <- 1:6
*num을 1~6까지
char <- letters[1:6]
*char를 a~f까지

df1 <- data.frame(num, char, logi)
*df1이라는 객체에 num, char, logi의 원소를 할당한 데이터 프레임 할당
str(object = df1)
*df1의 구조 확인
View(x = df1)
*df1 테이블로 보기

df2 <- data.frame(num, char, logi, 
                  stringsAsFactors = TRUE)
str(object = df2)

df2
df2[1, ]
df2[1:2, ]
df2[, 1]
df2[, c(1, 3)]
df2[, -c(1, 3)]

class(df2)
class(df2[1, ])
class(df2[, 1])
class()
class()

lst2

df2[, 1]
df2[, 'num']
df2[, c('num', 'char')]
df2$num

df2['num']
df2[['num']]

df2[-1, ]
df2[, -1]
df2[-1, -1]
df2

df3 <- df2[-1, -1]
df3

df2$char <- as.character(df2$char)
df2$char <- LETTERS[1:6]
df2$char

df2$char[1:3]
df2$char[1:3] <- c('가', '나', '다')

df2$char
