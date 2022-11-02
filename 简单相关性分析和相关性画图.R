bmp("weihuihui.bmp",width=600*3,height=600*3,res=72*3)
setwd("B:/Lost/R/Rfile")
data1=read.table('liji1.txt',header=TRUE,sep='')
library(car)
scatterplot(pA~pF,data=data1,spread=FALSE,smoother.args=list(lty=2),
            pch=19,main="The correlation of pF and pA",xlab="Conservation",ylab="TE")
warnings()

data2=read.table("cor0.4~0.8.csv",header=TRUE,sep=",")
library(stats)
a <- lm(TE ~ Conservation+I(Conservation^2),data=data2)
summary(a)

#相关性分析
data2=read.table("cor_20220715Ath5UTRcut200bp使用版.csv",header=TRUE,sep=",")
cor(data2,method = "pearson")
