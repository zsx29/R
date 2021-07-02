#날짜 : 2021/06/29
#이름 : 박재형
#내용 : Ch04.제어문과 함수 - 조건문 교재 p110

##################
#교재예제 실습하기
##################

#교재 p110 실습 - if() 사용하기
x <- 50;
y <- 4;
z <- x * y
if(z >= 40){
  cat("z의 결과는 40이상입니다.\n")
  cat("z", z)
}else{
  cat("z의 결화는 40 미만입니다. x * y = ", z,"\n")
}

score <- scan()
score
#교제 실습 - if() 사용으로 입력된 점수의 학점 구하기

if(score >= 90){
  result = "a"
}else if(score >= 80){
  result = "b"
}else if(score >= 70){
  result = "c"
}else{
  result = "f"
}

cat("학점운", result)
print(result)

#교재 p111 실습 - if ~ else if 형식으로 학점 구하기

#교재 p112 실습 - ifelse() 사용하기
score <- scan()

ifelse(score >= 80, "우수", "노력력")
ifelse(score <= 80, "우수", "노력")

#교재 p112 실습 - ifelse() 응용하기

#교재 p113 실습 - ifelse() 에서 논리연산자 사용하기
#교재 p113 실습 - switch() 를 사용하여 사원명으로 급여정보 보기
switch("id" ,id = "park", pwd="1234", age="25", name="홍길동")

empname <- scan(what ="")

empname
switch(empname,
       park=250,
       lee=200,
       kim=400,
       foo=405)



#교재 p114 실습 - 벡터에서 which() 사용:index 값을 반환
name <- c("park", "lee", "kim")
which(name == "park")


#교재 p114 실습 - 데이터프레임에서 which() 사용
no <- c(1:5)
name <- c("홍길동", "강감찬", "이순신", "장보고", "김춘추")
score <- c(85, 50, 24, 94, 23)
exam <- data.frame(학번 = no, 이름 = name, 점수 =score)
exam
which(exam$이름 == "강감찬")
exam[4,2]







































