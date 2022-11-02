#参考网址：https://www.jianshu.com/p/e554af9341fb
#参考视频:https://www.bilibili.com/video/av205035308/?vd_source=07879989db353493e76487f679609922

library(ggsignif)
library(ggplot2)

df<-read.csv("At5utr200bp6braTE14492t_test检验1柱状图+误差线.csv")
ggplot(data=df,aes(x=Conservation,y=TE))+
  stat_summary(geom="bar",fun=mean,aes(fill=Conservation))+
  stat_summary(geom="errorbar",fun=mean,
               fun.min = function(x)mean(x)-sd(x)/sqrt(length(x)),
               fun.max = function(x)mean(x)+sd(x)/sqrt(length(x)),
               width=0.5)+
  geom_signif(comparisons = list(c("a1","b1"),c("a1","c1"),c("a1","d1")
              ),test='t.test',y_position=c(0.9,1.2,1.5),
              map_signif_level=T
                              )


