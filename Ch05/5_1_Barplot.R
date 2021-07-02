# 날짜 : 2021-06-29
# 이름 : 박재형
# 내용 : barplot 막대차트 - p140

# 기본 막대차트
count <- c(1, 2, 3, 4, 5)
barplot(count)


score <- c(50, 25, 32, 21, 66)
names(score) <- c("김유신", "홍길동", "강감찬", "장보고", "김춘추")
barplot(score)

# 범주형 막대차트
season <- c("winter", "summer", "spring", "summer", "summer", "autumn", "summer", "autumn", "spring")

season
ds <- table(season)
ds

barplot(ds, main = "Season",
        col = rainbow(4))

barplot(ds, main = "Season",
        col = terrain.colors(4))

barplot(ds, main = "Season",
        col = terrain.colors(4),
        xlab = "계절",
        ylab = "빈도수",
        horiz = T)

# 누적 막대그래프
df_sample <- read.csv("../file/sample_population.csv")
df_sample

matrix_sample <- as.matrix(df_sample)
matrix_sample

barplot(matrix_sample, main = "population", col = rainbow(3),
        beside = T,
        legend.text = c("0~14세", "15~64세", "65~")
        )


        





































