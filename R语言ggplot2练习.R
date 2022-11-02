library(gcookbook) # 加载gcookbook是为了使用climate数据集
library(dplyr)
library(ggplot2)


cabbage_exp


# 在条形图顶端下方
ggplot(cabbage_exp, aes(x = interaction(Date, Cultivar), y = Weight)) + 
  geom_col() + 
  geom_text(aes(label = Weight), vjust = 1.5, colour = "white")

# 在条形图顶端上方
ggplot(cabbage_exp, aes(x = interaction(Date, Cultivar), y = Weight)) + 
  geom_col() + 
  geom_text(aes(label = Weight), vjust = -0.2)
