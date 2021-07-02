# 날짜 : 2021-06-29
# 이름 : 박재형
# 내용 : 데이터 불러오기 - p95

# (1)컬럼명이 없는 파일 불러오기
student <- read.table("../file/student.txt")
student
class(student)

# (2)컬럼명이 있는 파일 불러오기
student2 <- read.table("../file/student1.txt", header = T)
student2
class(student)

# (3)구분자가 있는 파일 불러오기
student3 <- read.table("../file/student2.txt", sep=";", header = T)
student3

# (4)결측치를 포함하는 파일 불러오기기
student4 <- read.table("../file/student3.txt", sep=";", header = T, na.strings = '-')
student4

# (5)csv파일 불러오기
student5 <- read.table("../file/student4.txt", sep=";", header = T, na.strings = '-')
student5

# Excel 불러오기
install.packages("readxl")
library(readxl)

student_excel <- read_excel("../file/studentexcel.xlsx")
student_excel

r