#날짜 : 2021/06/30
#이름 : 박재형
#내용 : Ch06.데이터 조작 - reshape2 패키지 실습 교재 p184

#교재 p184 실습 - reshape2 패키지 설치와 데이터 가져오기
install.packages("reshape2")
library(reshape2)
data <- read.csv("../Rwork-2nd/Part-II/data.csv")
data
View(data)





#교재 p185 실습 - 넓은 형식으로 변경하기
wide <- dcast(data, Customer_ID ~ Date, sum)
wide


#교재 p186 실습 - 넓은 형식의 데이터를 긴 형식으로 변경하기
long <- melt(wide, id = "Customer_ID")
long

name <- c("Customer_ID", "Date", "Buy")
colnames(long) <- name
head(long)

wide
long
head(long)

#교재 p186 실습 - smiths 데이터셋 확인하기
data("smiths")
smiths

long <- melt(id = 1:2, smiths)
long

dcast(long, subject + time ~ ...)

data("airquality")
str(airquality)
airquality

names(airquality) <- toupper(names(airquality))
head(airquality)

air_melt <- melt(airquality, id = c("MONTH", "DAY"), na.rm = TRUE)
head(air_melt)

names(air_melt) <- tolower(names(air_melt))
acast <- acast(air_melt, day ~ month ~ variable)
acast

acast(air_melt, month ~ variable, sum, margins = T)
