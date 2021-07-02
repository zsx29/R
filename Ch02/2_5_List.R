# 날짜 : 2021-06-28
# 이름 : 박재형
# 내용 : List 자료구조 - p78

x1 <- seq(1:5)
x2 <- matrix(1:6, nrow=2)
x3 <- data.frame(col1 = c(1, 2), col2 = c('김유신', '강감찬'))

x1
x2
x3

ls <- list(e1=x1, e2=x2, e3=x3)
ls

ls$e1[3]
ls$e2[1, 2]
ls$e3$col2[1]
