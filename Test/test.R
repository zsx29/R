df_exam <- read.csv("../file/exam.csv")
df_exam
data.frame(df_exam)


##
library(dplyr)
df_exam %>% select(math, english, science)


##
df_exam
df_exam %>% filter(class == 1)

## 
df_exam %>% filter(english >= 60 & english < 80) %>% select(english) 

##
df_exam %>% select(class, id, math) %>% filter(math >= 60) %>% arrange(desc(math))

##
df_group <- df_exam %>% group_by(class) %>% summarise(mean_math = mean(math))
df_group

df_exam

##

df_total <- df_exam %>% mutate(total = math + english + science)
df_total

##
df_mean <- df_total %>% mutate(mean = total / 3)
df_mean

##
df_grade <- df_mean %>% mutate(grade = ifelse(mean >= 90, "A",
                                       ifelse(mean >= 80, "B",
                                       ifelse(mean >= 70, "C",
                                       ifelse(mean >= 60, "D", "f")))))
df_grade

