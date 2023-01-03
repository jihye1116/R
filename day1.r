plot(iris$Sepal.Length,iris$Sepal.Width, pch=19, col=iris$Species )
boxplot(iris$Sepal.Length)


###
head(cars)
#   speed dist
# 1     4    2
# 2     4   10
# 3     7    4
# 4     7   22
# 5     8   16
# 6     9   10

model <- lm(dist~speed, data=cars)

print(cars)

summary(model)
# Call:
# lm(formula = dist ~ speed, data = cars)

# Residuals:
#     Min      1Q  Median      3Q     Max 
# -29.069  -9.525  -2.272   9.215  43.201 

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept) -17.5791     6.7584  -2.601   0.0123 *  
# speed         3.9324     0.4155   9.464 1.49e-12 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Residual standard error: 15.38 on 48 degrees of freedom
# Multiple R-squared:  0.6511,	Adjusted R-squared:  0.6438 
# F-statistic: 89.57 on 1 and 48 DF,  p-value: 1.49e-12


###
6 + 10 # [1] 16
x <- 1:9 # [1] 1 2 3 4 5 6 7 8 9
y <- 99 # [1] 99
print(y)

install.packages("ggplot2", dependencies = T) # ggplot2 package 설치

###
log2(2) # [1] 1
25^(1/2) # [1] 5
6 + 10 # [1] 16
 '+'(6,8) # [1] 14
ifelse(1 > 2, 'big', 'small') # [1] "small"
max(5,3,2) # [1] 5

### 벡터 생성
x <- c(1, 2, 3) # combination
y <- c("a", "b", "c")
z <- c(TRUE, TRUE, FALSE, TRUE)
c('a', 'b', 'c') -> z
z = c(T, T, F, F)
x <- 1:10:10
x #  [1]  1  2  3  4  5  6  7  8  9 10

### 일정한 간격의 숫자로 이루어진 백터 생성
seq(1, 10, 1) #  [1]  1  2  3  4  5  6  7  8  9 10

### 반복된 숫자로 이루어진 벡터 생성
a <- rep(1, times=5)
a # [1] 1 1 1 1 1
rep(c(1,3,5), times=3) # [1] 1 3 5 1 3 5 1 3 5
rep(c(1,3,5), each=3) # [1] 1 1 1 3 3 3 5 5 5

### 벡터의 원소값에 이름 지정
score <- c(90, 80, 70)
# names(score)
names(score) <- c("홍길동", "심지혜", "김삿갓")
score 

# 홍길동 심지혜 김삿갓
#    90     80    70


### 벡터에서 원소값 추출

d <- c(1, 4, 6, 9)
d[1] #[1] 1
d[2] #[1] 4
d[c(1, 3, 4)] #[1] 1 6 9
d[2:3] #[1] 4 6
d[-2] #[1] 1 6 9
d[-c(2,3)] #[1] 1 9


### 벡터에서 원소값 변경
a <- c(1, 3, 5, 7)
a # [1] 1 3 5 7
a[2] <- 9
a[c(3, 4)] <- c(10,20)
a # [1]  1  9 10 20

### 벡터의 숫자값 연산
rep(c(1,3,5), each=3) # [1] 1 1 1 3 3 3 5 5 5
x <- c(1, 4, 3, 7, 8)
x # [1] 1 4 3 7 8
x * 2 # [1]  2  8  6 14 16
c(1, 4, 3, 7, 8) * c(2, 2, 2, 2, 2) # [1]  2  8  6 14 16

### 벡터에 적용 가능한 함수
x <- 1:12
sum(x) # [1] 78
mean(x[1:5]) # [1] 3
length(x) # [1] 10
sort(x) # [1]  1  2  3  4  5  6  7  8  9 10
sort(x, decreasing = T) # [1] 10  9  8  7  6  5  4  3  2  1

### 벡터에 논리연산자 작용
x <- 1:10
x >= 5
x[x >= 5] #  [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

x <- 10:50
x[x >= 40] # [1] 40 41 42 43 44 45 46 47 48 49 50

x <- 1:10
x[x>5 & x<8]
x[5:8]

### 리스트
x < c(90, 34, 89, 22)
lst <- list(name = "홍길동", age = 34, status = TRUE, score = x)
lst[1]
# $name
# [1] "홍길동"

lst[[4]]
# $score
#  [1]  1  2  3  4  5  6  7  8  9 10
lst$age # [1] 34


### 팩터

x <- c("A", "B", "O", "B")
f <- factor(x)
x[2] # [1] "B"
levels(f) # [1] "A" "B" "O"
as.integer(f) # [1] 1 2 3

# 매트릭스
# 1차원 데이터: 몸무게 데이터와 같이 단일 주제의 데이터 -> 벡터
# 2차원 데이터: 키, 뭄무게, 나이와 같이 여러 주제의 데이터 -> 매트릭스, 데이터프레임
# 매트릭스: 2차원의 모든 데이터 값이 동일
# 데이터 프레임: 2차원의 자료형이 다른 컬럼들로 구성

### 매트릭스 만들기
m <- matrix(1:20, nrow = 4, ncol = 5) # m <- matrix (1:20, nrow = 4)
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    1    5    9   13   17
# [2,]    2    6   10   14   18
# [3,]    3    7   11   15   19
# [4,]    4    8   12   16   20

m <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    1    2    3    4    5
# [2,]    6    7    8    9   10
# [3,]   11   12   13   14   15
# [4,]   16   17   18   19   20


### 매트릭스에서 값 추출
x <- matrix(1:20, ncol = 5)
x[2, 3] # [1] 10
x[3, ] # [1]  3  7 11 15 19
x[, 2] # [1] 5 6 7 8


### 매트릭스에서 여러 개의 값 추출
x <- matrix(1:20, ncol = 5)
x[2, 1:3] # [1]  2  6 10

x[1:2, c(1,2,4)]
#      [,1] [,2] [,3]
# [1,]    1    5   13
# [2,]    2    6   14

# 매트릭스의 행과 열에 이름 지정
x <- matrix(1:4, ncol = 2)
rownames(x) <- c("row1", "row2")
colnames(x) <- c("col1", "col2")
x
#      col1 col2
# row1    1    3
# row2    2    4


# 데이터프레임
# 서로 다른 형태의 데이터를 2차원의 형태로 표현하는 자료구조
# 모양은 매트릭스와 차이가 없지만, 동일한 자료형이 아닌 열단위로 다른 자료형을 저장할 수 있어 데아터 분석에서 활용도가 높음.
f
### 데이터프레임 만들기
city <- c("seoul", "washington", "hongkong")
ranking <- c(1, 3, 2)
df <- data.frame(city, ranking) # df <- data.frame(city, ranking, stringsAsFactors = TRUE)
str(df)
# 'data.frame':   3 obs. of  2 variables:
#  $ city   : chr  "seoul" "washington" "hongkong"
#  $ ranking: num  1 3 2


### iris 데이터프레임

head(iris)
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa

tail(iris, 3)
#     Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
# 148          6.5         3.0          5.2         2.0 virginica
# 149          6.2         3.4          5.4         2.3 virginica
# 150          5.9         3.0          5.1         1.8 virginica

str(iris)
# 'data.frame':   150 obs. of  5 variables:
#  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
#  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
#  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
#  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
#  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

sd(iris$Sepal.Length)
# [1] 0.8280661

iris[iris$Sepal.Length<5 & iris$Sepal.Length>=3,]
#     Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
# 2            4.9         3.0          1.4         0.2     setosa
# 3            4.7         3.2          1.3         0.2     setosa
# 4            4.6         3.1          1.5         0.2     setosa
# 7            4.6         3.4          1.4         0.3     setosa
# 9            4.4         2.9          1.4         0.2     setosa
# 10           4.9         3.1          1.5         0.1     setosa
# 12           4.8         3.4          1.6         0.2     setosa
# 13           4.8         3.0          1.4         0.1     setosa
# 14           4.3         3.0          1.1         0.1     setosa
# 23           4.6         3.6          1.0         0.2     setosa
# 25           4.8         3.4          1.9         0.2     setosa
# 30           4.7         3.2          1.6         0.2     setosa
# 31           4.8         3.1          1.6         0.2     setosa
# 35           4.9         3.1          1.5         0.2     setosa
# 38           4.9         3.6          1.4         0.1     setosa
# 39           4.4         3.0          1.3         0.2     setosa
# 42           4.5         2.3          1.3         0.3     setosa
# 43           4.4         3.2          1.3         0.2     setosa
# 46           4.8         3.0          1.4         0.3     setosa
# 48           4.6         3.2          1.4         0.2     setosa
# 58           4.9         2.4          3.3         1.0 versicolor
# 107          4.9         2.5          4.5         1.7  virginica
