rm(list=ls())
getwd()
setwd("B:/Lost/R/R_file")

BiocManager::install("ggpur")
library(ggplot2)
# library(ggpubr)
df=read.csv("拟南芥5-3UTR长度分布.csv")
ggplot(df,aes(x=At5UTR,y=..density..))+
geom_histogram(bins=200,alpha=0.3,color="orangered3")+
theme_classic()+
# geom_density(data=phynotype,aes(x=RSRDS,..density..),size=0.4)+  
theme(axis.text = element_text(face = 'bold',color = 'black',
                               size = 12,hjust = 0.5,family = "Times New Roman"),
axis.title = element_text(face = 'bold',color = 'black',size = 13,
                          hjust = 0.5,family = "Times New Roman"),
legend.position = 'right',
legend.text = element_text(face = 'bold',color = 'black',size = 10,
      hjust = 0.5,family = "Times New Roman"),
legend.title = element_text(face = 'bold',color = 'black',
size = 12,hjust = 0.5,family = "Times New Roman"),
axis.line.y = element_line(colour="grey20", size=1),
axis.line.x = element_line(colour="grey20", size=1))+
scale_x_continuous(expand = c(0, 0),limits = c(0,1100), breaks = seq(0,1000,100))
# scale_y_continuous(expand = c(0, 0),limits = c(0,0.4), breaks = seq(0,0.4,0.1))
  

gghistogram(df,x="5UTR",y="..density..",palette = c("dark green"),
            rug=T,add="mean",bins=200)

# ggdensity(df,x="length",y="..density..",color = "x",fill="x",palette = c("dark green"),
#           rug=T,add="mean")
ggdensity(df,x="length",y="..density..",palette = c("dark green"),
          rug=T,add="mean")
head(df)
ggscatter(df,x="x",y="y",color = "x",palette = c("grey","dark green"))
df01=read.csv("20220425cor6ATrealUTR保守和TE原始.csv")
# ggscatter(df01,x="conservation",y="TE")

cor(df01)

rm(list=ls())
getwd()
setwd("B:/Lost/R/R_scripts")
library(ggplot2)
library(ggpubr)
a <- seq(-3.2,3); b <- seq(-3.2,3)
df02=read.csv("6ATrealUTRConservationTE原始.csv")
ggdensity(df02,x="y",y="..density..",color = "x",fill="x",palette = c("grey","dark green"),
          rug=T,add="mean")
# ggscatter(df02,x="Conservation",y="TE",xlim=c(0.3,0.7),ylim=c(1.2,5))
ggscatter(df02,x="rna22",y="poly22",color="category03",palette = c("red","grey"))+
  geom_line(data=data.frame(a,b), mapping=aes(x=a, y=b))
ggplot(df02,aes(x=rna22,y=poly22)+
  geom_point(palette = c("black","blue","red"),fill="category02")+
  geom_line(data=data.frame(a,b), mapping=aes(x=a, y=b))
abline(a=0,b=1)
head(df02)


library(tidyverse)
rm(list=ls())
getwd()
# setwd("B:/Lost/R/R_scripts")

df03=read.csv("the correlation of between the frequence of stem and the rank of stem.csv")

cor(df03)
# head(df03)
# ggscatter(df03,x="rna22",y="poly22",color="category",palette = c("red","grey"))+
#   geom_line(data=data.frame(a,b), mapping=aes(x=a, y=b))
ggscatter(df03,x="conservation",y="TE")

??gghisogram
       
