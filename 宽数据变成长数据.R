# library (ggplot2)
library(tidyverse)
library (reshape2)#数据转换
# library(RColorBrewer)
# library(aplot)
df<- read.csv("5UTR200bp+AT1G48920.1.fasta123reverse_200bp_zhuanzhi.csv")

df %>%
  pivot_longer(!x,
               names_to="y",
               values_to="number")->df1
# df1$y=as.integer(df1$y)
# df1$y <- df1$y %>% separate(y, c("y"), "[x]",remove = TRUE)
write.csv(df1,file="5UTR200bp+AT1G48920.1.fasta123reverse_200bp_zhuanzhi-1.csv")
