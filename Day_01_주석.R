sen <- 'hello world!'
*sen이라는 객체에 문자열 hello world는 문자열을 할당
print(x = sen)
*sen이라는 객체에 할당된 문자열을 출력
print(sen)
*sen이라는 객체에 할당된 문자열을 출력
sen
*sen이라는 객체에 할당된 문자열을 출력하나 print 개념과 다름

class(x=sen)
*sen이라는 벡터가 갖는 원소의 속성(문자열 or 정수 or 실수 or etc)
length(x=sen)
*sen이라는 벡터가 갖는 원소의 개수
nchar(x=sen)
*sen이라는 벡터가 갖는 원소의 길이

a <- 1;print(x=a)
*세미콜론(;)을 사용하면 명령어를 이어서 작성할 수 있다
*a라는 벡터에 1이라는 정수를 할당
b <- 2;print(x=b)
*b라는 벡터에 2라는 정수를 할당
a <- b
*a라는 벡터에 b의 원소를 할당
b <- 3
*b의 원소를 3으로 변경

`1a` <- 3
*1a라는 객체에 3이라는 원소를 할당
print(x=`1a`)
*1a에 할당된 원소를 출력
c(TRUE, FALSE)
*c = contain의 의미로 원소를 직접 입력하여 벡터를 생성함, 함수
c('TRUE', 'FALSE')
*c함수를 이용하여 문자열 TRUE, FALSE 원소를 갖는 벡터를 생성
c(T, F)
*문자열 TRUE, FALSE가 아닌 TRUE, FALSE 원소를 갖는 벡터를 생성
c(1L, 2L, 3L)
*정수 1, 2, 3 원소를 포함하는 벡터를 생성
c(1, 2, 3)
*실수형 1, 2, 3 원소를 포함하는 벡터를 생성
c('a', 'b', 'c', 'd', 'e')
*문자열 a, b, c, d, e 포함하는 벡터를 생성
c('가', '다', '나', '라', '하')
*문자열 가, 다, 나, 라, 하를 포함하는 벡터를 생성
*벡터는 원소가 입력된 순서를 유지한다!

a <- c('가', '다', '나', '라', '하')
*a라는 벡터에 문자열 가, 다, 나, 라, 하라는 원소를 할당
b <- c('a', 'b', 'c', 'd', 'e')
*b라는 벡터테 문자열 a, b, c, d, e라는 원소를 할당
c <- c(a, b)
*c라는 벡터에 벡터 a, b에 대한 모든 원소를 할당
*이때도 원소가 입력된 순서를 유지한다

seq(1, 3, 1)
*seq함수는 연속된 숫자를 생성하는 함수이다.
seq(from = 1, to = 3, by =1)
*1에서 시작하여 3까지 1의 간격으로 나열하라는 의미.
seq(from = 3, to = 1, by =-1)
*3에서 1까지 -1의 간격으로 나열하라는 의미
1:3
3:1
sum(1:10000)
*1~10000까지 더하기

seq(from =1, to = 10, by = 0.5)
*1~10까지 0.5간격으로 나열.
seq(from =1, to = 10, length.out = 19)
*1~10까지 19개의 숫자의 길이만큼 간격을 설정하여 나열.
seq(from = 80, to = 60, length.out = 365)
*80~60까지 365개의 숫자의 길이만큼 간격을 설정하여 나열.

rep(x = 1:3, times = 5)
*rep함수는 반복하는 함수이며, times를 사용했을 때 1~3까지 5번 반복한다.
rep(x = 1:3, each = 5)
*1~3까지 반복하되, 각 원소마다 5번씩 반복하라는 의미.

rep_len(x=1:3, length.out = 9)
*1~3을 반복하되 9개의 숫자만큼만 나열
rep_len(x=1:3, length.out = 10)
*1~3을 반복하되, 10개의 숫자만큼만 나열

letters
*R에 내장되어있는 문자벡터 알파벳 소문자 26자리가 있음
LETTERS
*R에 내장되어있는 문자벡터 알파벳 대문자 26자리가 있음
class(x=letters)
*내장벡터 소문자의 원소종류가 무엇인가에 대한 명령어
length(x=letters)
*내장 벡터 원소의 갯수가 몇개인가
nchar(x=letters)
*내장 벡터의 각각의 원소의 갯수가 몇개인가

terms <- c('I', 'am', 'a', 'boy')
*c함수로 묶여있는 각 원소를 하나의 단어처럼 묶어서 보이게 만듬
class(x=terms)
*terms가 갖고 있는 원소의 종류는 무엇인가? charactor
length(x=terms)
*terms가 갖고 있는 원소의 갯수는 몇개인가? 4개
nchar(x=terms)
*terms가 갖고 있는 각 원소의 갯수는 어떠한가? 1, 2, 1, 3

paste('I', 'am', 'a', 'boy', sep=' ')
*paste함수는 각 문자열을 묶되, 하나의 문자열로 만들어주며, sep 함수를 이용하여 문자열로 변경해준다.
paste(terms, collapse = ' ')
*terms에 있는 원소들을 paste함수를 이용하여 묶을 때에는 collapse명령어를 사용해야한다!!

grep(pattern = 'a', x = terms)
*grep함수는 각 원소 별로 특정 패턴을 가지고 있는지 확인할 수 있다.
*a를 포함하고 있는 원소는 무엇인가?
grepl(pattern = 'a', x=terms)
*a를 포함하고 있는 원소가 있으면 TRUE, 없으면 FALSE
grep(pattern = 'a', x=terms, value = TRUE)
*a를 포함하고 있는 원소가 무엇인지 표기.
gsub(pattern = 'a', replacement = 'b', x = terms)
*a를 포함하고 있는 원소에서 a를 b로 변경