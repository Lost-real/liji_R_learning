

getwd()
setwd("B:\\Lost\\R\\R_scripts")
library (ggplot2)
library(tidyverse)
library (reshape2)#数据转换
library(RColorBrewer)
# library(aplot)
df<- read.csv("At5utr200bp6braTE14492merge1sortedreplacefillupreversezhuanzhi.csv")

df %>%
pivot_longer(!x,
             names_to="y",
             values_to="conservation")->df1
# df1$y=as.integer(df1$y)
# df1$y <- df1$y %>% separate(y, c("y"), "[x]",remove = TRUE)
write.csv(df1,file="At5utr200bp6braTE14492merge1sortedreplacefillupreversezhuanzhi-1.csv")


# bmp(file ="Os5utrlast200bpout1merge1sortedreplacefilluplast200bpzhuanzhi-3.bmp",width =1300*1,height = 600*1,units = "px",res =72*1)

df1<- read.csv("Os5utrlast200bpout1merge1sortedreplacefilluplast200bpzhuanzhi-1.csv")
df1$y<-factor(df1$y,levels=unique(df1$y))
# df1$y%>%factor()%>%fct_inorder()
# df1$y=factor(df1$y,levels=c("x_1","x_2","x_3","x_4","x-5","x_6","x_7","x_8","x_9","x_10","x_11","x_12"))
cols <- colorRampPalette(c("white","black","red"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
#scale_x_continuous(breaks=seq(2,3,by=1),labels=c("-4","1"))定义x轴,注意breaks=seq()可以花式
#定义坐标轴刻度和上面的数字
ggplot(df1,aes(x,y,fill=conservation))+
  geom_tile(width=1,height=1)+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(-6,6),
  breaks=seq(-6,6),guide=guide_colourbar(ticks=T, nbin=300,
  ticks.linewidth=0.5,ticks.colour="blue",frame.colour="black",
              barheight=8,label=T,barwidth=0.3))+  
  scale_x_continuous(breaks=c(1,101,200),
                     labels=c("-200","-100","-1"))+
  #labs(x="",y="")+
  #ggtitle("") +
#注释axis.ticks.length=grid::unit(.1, "cm")表示x轴刻度线的长度  
  theme(legend.background = element_rect(fill = "grey90",colour = NULL),
        legend.position=c(.7,0.5),#legend.position=c(1,0.5)中x越大越右,y越大越上
        legend.direction="vertical",
        legend.text=element_text(colour="grey20",hjust=0.7,vjust=0.4),
        legend.title = element_text(color = "black", size = 8,vjust=5),
        legend.margin = margin(t = 10, r = 3, b =8, l = 5,unit = "pt"),
       # legend.key = element_rect(fill = "blue"),
#plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        plot.margin=grid::unit(c(t=.1,r=1,b=.1,l=0.1), "cm"),
        #plot.title = element_text(hjust = 0.5, color = "red", face = "italic"),
        #plot.background = element_rect(fill = "white", color = "white", size = 10),
#注释axis.text.y=element_text(size=)表示y坐标轴上数字的大小,字体,family可选字体有scans,mono
        #axis.text.y=element_text(size=7, family="Helvetica", hjust=1),
#注释：注意：y轴上数字消失的方法，而不是size=0
        axis.text.y=element_blank(),
#axis.text.x=element_text(size=)表示x轴上数字的大小
        axis.text.x=element_text(size=10,colour = "black"),
#注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
        axis.title.x = element_text(size=13,color = "black", face = "italic",
        hjust = 0.5,vjust = 17),
        #axis.title.y = element_text(size=0,color = "black", face = "italic",
        #hjust = 0.5,vjust = 0.01),
        axis.title.y=element_blank(),
        axis.line.x=element_line(colour="grey20", size=1),
        axis.line.y=element_line(colour="grey20", size=0),
        axis.ticks.y=element_blank(),
        axis.ticks.x=element_line(colour="grey20"),
#注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
        axis.ticks.length.x=grid::unit(.2, "cm"),
        #panel.background=element_rect(fill="white",colour="black",size=2),
#panel.background中colour用来调整四个边框的颜色,fill用来调整边框内的颜色
        #panel.border = element_blank(),
#另外,legend.title=element_blank()可以去除标题的文字。
        #panel.grid.major = element_blank(),
#panel.grid.major用来去掉背景中大的网格
        #panel.grid.minor = element_blank()
#panel.grid.minor用来去掉背景中小的网格
)



dev.off()


