
dat <- c(5, 8, 9, 10, 11, 15, 16, 19, 21, 29, 120)
mean(dat) # [1] 23.90909 -> 저항성
vec <- dat - mean(dat)
sum(vec) # [1] -7.105427e-15  ()=0.000000(15번)-7105427)
### !편차의 합은 0이 됨   -> 잔차
log(3000) - log(1000) ==  log(30) - log(10) # 몇 번 제곱해야 하는가?


install.packages("gapminder", dependencies = T)
library(ggplot2)
library(dplyr)
library(gapminder)
gapminder %>%
    filter(year == 1952 & continent == "Asia") %>% # 아시아 대륙의 1952년인
    ggplot(aes(reorder(country, pop), pop)) + # 미적
    geom_bar(stat = "identity") +
    scale_y_log10() +
    coord_flip() +


head(iris)
iris$Sepal.Width
boxplot(iris$Sepal.Width)
boxplot.stats(iris$Sepal.Width) # -> 재표현

m <- mean(iris$Sepal.Width)
s <- sd(iris$Sepal.Width) # 표준편차 구하는 함수
c(m-3*s, m+3*s) # 이 사이에 있는 값이 정상수치 -> 시각화




iris[, c(1, 2)]
#   Sepal.Length Sepal.Width Petal.Length Petal.Width
# 1            5.1         3.5
# 2            4.9         3.0
# 3            4.7         3.2
# 4            4.6         3.1
# 5            5.0         3.6
# 6            5.4         3.9
# 7            4.6         3.4
# 8            5.0         3.4
# 9            4.4         2.9
# 생략

iris[2:3, c("Sepal.Width", "Sepal.Length")]
#   Sepal.Length Sepal.Width Petal.Length Petal.Width
# 2         3.0          4.9
# 3         3.2          4.7

iris[1:2, -5]

#   Sepal.Length Sepal.Width Petal.Length Petal.Width
# 1          5.1         3.5          1.4         0.2
# 2          4.9         3.0          1.4         0.2


### 데이터셋의 기본 정보 확인

dim(iris) # [1] 150   5
nrow(iris) # [1] 150
ncol(iris) # [1] 5
colnames(iris) 
# [1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"
tail(iris, 2)
#     Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
# 149          6.2         3.4          5.4         2.3 virginica
# 150          5.9         3.0          5.1         1.8 virginica

dim(iris)[2]

iris[, 5] # setosa, versicolor, varginia

unique(iris[, 5])
# [1] setosa     versicolor virginica
# Levels: setosa versicolor virginica

table(iris[, 5])
# setosa versicolor  virginica
#     50         50         50


colSums(iris[, -5])
colMeans(iris[, -5])
rowSums(iris[, -5])
rowMeans(iris[, -5])

head(airquality)
#   Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2
# 3    12     149 12.6   74     5   3
# 4    18     313 11.5   62     5   4
# 5    NA      NA 14.3   56     5   5
# 6    28      NA 14.9   66     5   6
dim(airquality) # [1] 153   6
getwd() # [1] "C:/Users/user/Desktop/All_vscode/Data_Analysis" 오...

write.csv(airquality, 'air.csv', row.names = F )


### 파일 데이터 읽기

read.csv('air.csv', header = T)
head(air)

### if-else문
grade <- "A"
if (grade == "A") {
    bonus <- 100
}else{
    bonus <- 50
}
print(bonus) # 100


### 조건문에 논리 연산자 사용
a <- 10
b <- 20
if(a>5 && b > 10) {
    print(a+b) # [1] 30
}
if(a>5 || b > 30) {
    print(a+b) # [1] 30
}

### if-else 함수
a <- 10
b <- 20
ifelse(a > 5 && b > 10, a + b, 0) # [1] 30
ifelse(a > 5 || b > 30, a + b, 0) # [1] 30

### for문을 이용한 구구단
for(i in 2:9) {
        for(j in 2:9){
            cat(i, ' X ', j, ' = ', i*j, '\n') # '\n' 이 먹히는 print!
        }
    cat('\n')
} # 잘나옴!
  
if(iris$Sepal.Length > 5) {
    print(iris$Sepal.Length)
}


for(i in 1:(nrow(iris))) { # 150
    vec[i] <- ifelse(iris$Sepal.Length < 4, 'L', 'H')
}
vec
iris$vec <- vec

head(iris)
head(iris[, 1:4])

apply(iris[, 1:4], 2, mean) # 반복문
# Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
#     5.843333     3.057333     3.758000     1.199333
apply(iris[, 1:4], 1, mean)

head(iris)


my_max <- function(x, y) {
    return(ifelse( x> y, x, y))
}
my_max(10, 15) # 15
my_max(-1, -10) # -1

# 단일변수 자료(Unvariate data) -> 벡터
# 다중변수 자료(Multivarate data) -> 매트릭스, 데이터 프레임


fav <- c("W", "S", "SP", "S", "S", "F", "F")
print(fav)
table(fav)

table(fav)/length(fav)
#         F         S        SP         W 
# 0.2857143 0.4285714 0.1428571 0.1428571

dat <- round(table(fav)/length(fav),2)*100 # 비율
#  F  S SP  W
# 29 43 14 14

barplot(sort(dat, decreasing = T))
?pie((sort(dat, decreasing = T)))
# ?는 도움말


head(cars)
# 맥 수듄
boxplot(cars$dist, main = '자동차 제동거리')

boxplot(iris$Petal.Length ~ Species, data = iris)
boxplot(iris$Petal.Length , notch = T, col = "skyblue")

head(mtcars)
plot(
    mtcars$wt, mtcars$mpg, col="red",
    pch = "★", main = '산점도', xlab = '무게', ylab = "연비"
)

head(iris)
# iris <- iris[, c(1:5)] # 아까 만든 행 삭제
pairs(iris[-5])

plot(iris$Petal.Width, iris$Petal.Length, col = iris$Species, pch = 20)


### 상관계수의 계산

beers <- c(5, 2, 9, 8, 4, 7, 3, 5, 3, 5)
bal <- c(0.1, 0.03, 0.19, 0.12, 0.04, 0.095, 0.07, 0.06, 0.02, 0.05)
df <- data.frame(beers, bal)
head(df, 2)
plot(bal ~ beers, data = df, col = "Orange")
model <- lm(bal ~ beers, data = df)
abline(model, col = 'red')
cor(df$beers,df$bal) # 상관관계
