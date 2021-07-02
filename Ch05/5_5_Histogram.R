# 날짜 : 2021-06-29
# 이름 : 박재형
# 내용 : 연속그래프 막대그램 - p152

dist <- cars[,2]
dist

hist(dist, col = terrain.colors(6))

# iris 데이터 히스토그램
hist(iris$Sepal.Width,
     xlim = c(2.0, 4.5),
     xlab = "꽃받침 너비",
     main = "꽃받침 너비 분포도")
