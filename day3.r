# 회귀모형, 상관분석!

### 선 그래프의 작성

month <- 1:12
late <- c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)
late2 <- c(4, 6, 5, 9, 8, 1, 12, 4, 5, 3, 1, 7)

plot(x = month, y = late, type = "l", lty = 1, lwd = 1, col = "orange", ylim = c(0, 20))

### 복수 선 그래프의 작성
lines(x = month, y = late2, lty = 'solid', col = "blue", lwd = 5)


# sd: 표준펴낯
morning <- rnorm(100000, mean = 6, sd = 1)
length(morning)
hist(morning)

head(iris)
dim(iris)
idx <- sample(1:NROW(iris), NROW(iris)* 0.7, replace = F)
idx
iris[idx, ] # 중복되지 않는 데이터