# 날짜 : 2021-06-30
# 이름 : 박재형
# 내용 : dplyr 패키지 - p169

install.packages('dplyr')
library(dplyr)

df_exam <- read.csv("../file/exam.csv")
df_exam

View(df_exam)

# select
df_exam %>% select(math)
df_exam %>% select(english)
df_exam

df_math <- df_exam %>%  select(math)
df_math

# filter
df_exam %>%  select(everything()) %>%  filter(class == 1)
df_exam


# 영어점수 60점이상 80점 미만
df_result <- df_exam %>% filter(english >= 60 & english <= 80)
df_result

# SELECT NATH FROM DF_EXAM WHERE CLASS = 1
df_result2 <- df_exam %>% filter(class == 1) %>% select(math)
df_result2

# SELECT * FROM DF_EXAM WHERE MATH > 60 AND MATH < 80
df_result3 <- df_exam %>% filter(math > 60 & math < 80) %>% select(math)
df_result3

# arrange
df_math_asc <- df_exam %>% arrange(math)
df_math_desc <- df_exam %>% arrange(desc(math))
df_math_asc
df_math_desc
# SELECT CLASS, ID, MATH FROM DF_EXAM WHERE MATH >= 60 ORDER BY MATH DESC LIMIT 3
df_result_final <- df_exam %>% select(class, id, math)  %>% filter(math >= 60)%>% arrange(desc(math))%>% head(3)
df_result_final


# mutate (데이터셋에 새로운 칼럼을 추가하는 기능)
df_total <- df_exam %>% mutate(total = math + english + science)
df_total

df_mean <- df_total %>% mutate(mean = total / 3) 
df_mean

df_grade <- df_mean %>% mutate(grade = ifelse(mean >= 80, "A", ifelse(mean >= 70, "B", ifelse(mean >= 60, "C", "F"))))
df_grade

# summarize(데이터 셋의 특정 칼럼으로 요약집계 기능)
df_exam %>% summarise(mean_math = mean(math))
df_exam %>% summarise(mean_english = mean(english))


# group_by(데이터 셋으 집단변수를 이용하여 그룹화)

df_group1 <- df_exam %>% group_by(class) %>% summarise(sum_math = sum(math))
df_group1 <- df_exam %>% group_by(class) %>% summarise(maen_math = mean(math))
df_group1
df_group1





# inner_join 
df_teacher <= data.frame(
  class = c('가', '나', '다', '라', '마'),
  teacher = c(1, 2, 3, 4, 5,) )

df_join <- inner_join(df_exam, df_teacher, by="class")
df_join















