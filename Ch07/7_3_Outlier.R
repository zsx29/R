# 날짜 : 2021-06-30
# 이름 : 박재형
# 내용 : 이상치 실습 - p202

library("dplyr")

exam <- read.csv("../file/exam_outlier.csv")
exam

# 이상치를 결측치로 수정
exam$math <- ifelse(exam$math > 100 | exam$math < 0, NA, exam$math)
exam$english <- ifelse(exam$english > 100 | exam$english < 0, NA, exam$english)
exam$science <- ifelse(exam$science > 100 | exam$science < 0, NA, exam$science)


exam[is.na(exam)] <- 0  # [참이면] <- 0 으로 대입한다.
exam



