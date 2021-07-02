# 날짜 : 2021-06-29
# 이름 : 박재형
# 내용 : BoxPlot - p148

# 박스상자 기본
View(cars)

dist <- cars[,2]
dist
class(dist)

boxplot(dist, main="제동거리")
boxplot.stats(dist)

iris
boxplot(data = iris,
        Sepal.Length ~ Species)
