# 날짜 : 2021-06-29
# 이름 : 박재형
# 내용 : PieChart - p147


season <- c("winter", "summer", "spring", "summer", "summer", "autumn", "summer", "autumn", "spring")
ds <- table(season)
ds

pie(ds, main = "season", col = terrain.colors(4))
