# 날짜 : 2021-06-28
# 이름 : 박재형
# 내용 : DateFrame 자료구조 - p71



# 데이터프레임 생성
no <- c(1, 2, 3)
name <- c('park', 'kim', 'lee')
pay <- c(150, 250, 300)
vemp <- data.frame(No = no, Name=name, Pay=pay)
vemp

m <- matrix(
  c(1, "hong", 150,
    2, "lee", 250,
    3, "park", 300), 3, by=T
)
memp <- data.frame(m)
memp

getwd()

txtemp <- read.table('emp.txt', header = 1, sep="")  # 제목 있음, 컬럼 공백 구분
txtemp

df2$name[1]
df2$name[3]

member_df$uid[1]
member_df$uid[3]
member_df$name[2]

#데이터프레임 필수 내장함수
iris
class(iris)   # 데이터 유형 확인
View(iris)    # 데이터프레임을 표 형태로 출력
head(iris)    # 데이터프레임 상위 6개 출력
tail(iris)    # 데이터프레임 하위 6개 출력
str(iris)     # 데이터프레임 자료유형 확인
dim(iris)     # 데이터프레임 행렬구조 확인
names(iris)   # 데이터프레임 속성(컬럼명) 확인
summary(iris) # 데이터프레임 요약통계 확인


iris[,-5]
aggregate(iris[,-5], by=list(iris$Species), mean)
aggregate(iris[,-5], by=list(iris$Species), max)



















