install.packages("neuralnet", dependencies = T)
library(neuralnet)

library(keras)
library(pytoach)

head(infert)
df <- infert[, 2:6]
df
table(df$case)
model <- neuralnet(case~. , data = df, hidden = c(2,3))
model
plot(model)

compute(model, df[1,])
# $neurons 뉴런
# $neurons[[1]]
#     age parity induced spontaneous
# 1 1  26      6       1           2

# $neurons[[2]]
#   [,1]        [,2]       [,3]
# 1    1 2.25462e-78 0.04918434

# $neurons[[3]]
#   [,1]      [,2]      [,3]      [,4]
# 1    1 0.4656624 0.3697179 0.8017674


# $net.result
#        [,1]
# 1 0.2006513


