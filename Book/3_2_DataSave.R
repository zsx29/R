# 날짜 : 2021-06-29
# 이름 : 박재형
# 내용 : 데이터 저장하기 - p101

View(Titanic)
write.csv(Titanic, "../file/titanic.csv", row.names = F, quote = F)
