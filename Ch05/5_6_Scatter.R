# 날짜 : 2021-06-29
# 이름 : 박재형
# 내용 : 산점도 - p154

View(mtcars)
wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt,mpg,
     pch = 19,
     col = "red")

ds_iris <- iris[,3:4]
ds_iris

group <- as.numeric(iris$Species)
group

color <- c("red", "green", "blue")

plot(ds_iris,
     pch=16,
     col = color[group])
s