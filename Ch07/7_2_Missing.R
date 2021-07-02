# 날짜 : 2021-06-30
# 이름 : 박재형
# 내용 : 결측치 실습 - p200

library('dplyr')

df_exam <- read.csv("../file/exam_na.csv")
df_exam

View(df_exam)


# 결측치 존재여부 확인
is.na(df_exam)

# 결측지를 가지는 행을 제거
df_new <- df_exam %>% filter(!is.na(math) & !is.na(english) & !is.na(science))
df_new

is.na(df_new)


# 기본통계분석
df_new %>% mutate(total = math + english + science, mean = total/3) %>% arrange(desc(total))

# 