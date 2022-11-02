rm(list=ls())
getwd()
setwd("B:/Lost/R/R_scripts")
library(ggplot2)
library(ggpubr)
df=read.csv("boxplot十字花科中17物种ge6物种同源和非同源.csv")
ggplot(df,aes(x=Type,y=TE,fill=Type))+geom_boxplot()
# ggboxplot(df,x="type",y="TE",color="type")
#花式检测正态分布齐性
#shapiro.test(df$TE)
# shapiro.test(df$TE[df$Conservation=="abc"])
#注意使用shapiro.test进行正态分布齐性检验时:样本大小位于3-5000之间
with(df,shapiro.test(TE[Type=="homologous"]))
with(df,tapply(TE,Type,shapiro.test))

#使用wilcox.test进行差异显著性分析
wilcox.test(TE~Type,df)
# ggdensity(df$TE)
#用ggdensity绘图来看是否符合正态分布齐性
ggdensity(df,x="TE",color = "Type")
#ggdensity做密度图
ggdensity(df,x="TE",color = "Type",fill="Type",palette = c("grey","dark green"),
          rug=T,add="mean")
# ggdensity(df,x="TE",y="..density..",color = "x",fill="x",palette = c("grey","dark green"),
#           rug=T,add="mean")
#gghistogram做直方图,bins的含义
# gghistogram(df,x="TE",color = "Conservation",fill="Conservation",palette = c("grey","dark green"),
          # rug=T,add="mean",bins=300)
#ggscatter做散点图
# ggscatter(df,x="Conservation",y="TE",color = "Conservation",fill="Conservation",palette = c("grey","dark green"),
#             rug=T)
ggscatter(df,x="x",y="y",color = "x",palette = c("grey","dark green"))
#ggplot()+geom_point()做散点图
# ggplot(df,aes(x=Conservation,y=TE))+geom_point()
# ggqqplot(df,x="TE",color="Conservation")
# ggboxplot(df,x="Conservation",y="TE",color = "Conservation",xlab = "Conservation",
#           ylab = "TE",title = "123")

ggboxplot(df,x="x",y="y",color = "y",xlab = "x",ylab = "y",title = "123")

bartlett.test(TE~Type)

#方差齐性检验
#这个方差齐性检验对样本大小无限制
var.test(TE~Type,data=df)
#t检验,参数含有：alternative：greater,less,two.sided或者用各自的首字母t,g,l来替代
t.test(TE~Type,df,alternative="t",var.equal=F)

df=read.csv("0420f~g.csv")
# wilcox.test(TE~Conservation,df)
t.test(TE~Conservation,df,alternative="l",var.equal=F)
