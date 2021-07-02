# 날짜 : 2021-06-30
# 이름 : 박재형
# 내용 : 파생변수 실습 - p215


library("dplyr")

exam <- read.csv("../file/exam.csv")
exam

# 파생변수 total
exam$total <- exam$math + exam$english + exam$science
exam
exam$mean <- (exam$math + exam$english + exam$science) / 3
exam

exam$grade <- ifelse(exam$mean >= 85, "A",
              ifelse(exam$mean >= 75, "B", 
              ifelse(exam$mean >= 65, "C", 
              ifelse(exam$mean >= 55, "D", "F"))))
exam
