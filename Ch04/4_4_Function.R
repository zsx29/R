#날짜 : 2021/06/29
#이름 : 박재형형
#내용 : Ch04.제어문과 함수 - 함수 교재 p118

##################
#교재예제 실습하기
##################

#교재 p118 실습 - 매개변수가 없는 사용자 함수 
f1 <- function(){
  cat("매개변수가 없는 함수")
}
f1()

#교재 p118 실습 - 결과를 반환하는 사용자 함수 정의하기
f3 <- function(x,y){
  add <- x+y
  return(add)
}

add <- f3(20, 30)
add



#교재 p121 실습 - 피타고라스식 정의 함수 만들기
pytha <- function(s, t){
  a <- s ^ 2 - t ^ 2
  b <- 2 * s * t
  c <- s ^ 2 + t ^ 2
  cat("피타고라스 정리 : 3개의 변수", a, b, c)
}
pytha(3, 1)

#교재 p121 실습 - 구구단 출력함수 만들기
i <- c(2:9)
j <- c(1:9)

gugu <- function(i, j){
  for(x in i){
    cat("**", x, "단**\n")
    for(y in j){
      cat(x, "*", y, " = ",x * y, "\n")
    }
    cat("\n")
  }
}

gugu(i,j)
#교재 p122 실습 - 결측치를 포함하는 자료를 대상으로 평균구하기
na <- function(x){
  print(x)
  print(mean(x, na.rm = T))
}

data = ifelse(!is.na(x), x, 0)
print(data)
print(mean(data))

#-------------------------------------------------
coin <- function(n){
  r <- runif(n, min = 0, max = 1)
  result <- numeric()
  for(i in 1:n){
    if(r[i] <= 0.5){
      result[i] <- 0
    }else{
      result[i] <- 1
    }
  }
    return(result)
}
coin(10)

montiCoin <- function(n){
  cnt = 0
  for(i in 1:n){
    cnt <- cnt + coin(1)
  }
  result <- cnt / n
  return(result)
}

montiCoin(10231)

#교재 p126 실습 - 기술통계량 관련 내장함수 사용하기
install.packages(RSADBE)
library(RSADBE)
data("Bug_Metrics_Software")
Bug_Metrics_Software[,,1]


# 연습문제
name <- c("유관순", "홍길동", "이순신", "신사임당")
gender <- c("F", "M", "M", "F")
price <- c(50, 65, 45, 75)
table <- data.frame(이름 = name, 성별 = gender, 가격 = price)
table

ifelse(price >= 65, "best", "normal"){
  result <- price
}
result




















