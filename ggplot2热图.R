


library (ggplot2)
library(tidyverse)
library (reshape2)#数据转换
library(RColorBrewer)
library(aplot)
df<- read.csv("try01转置03.csv")

df %>%
pivot_longer(!x,
             names_to="y",
             values_to="conservation")->df1
# df1$y=as.integer(df1$y)
# df1$y <- df1$y %>% separate(y, c("y"), "[x]",remove = TRUE)
write.csv(df1,file = "try01转置03-1.csv")
bmp(file ="b.bmp",width =1300*1,height = 600*1,units = "px",res =72*1)
df1<- read.csv("try01转置03-1.csv")
#下面这个方法是把y轴因子reverse
# df1$y<-factor(df1$y,levels=rev(unique(df1$y)))
df1$y<-factor(df1$y,levels=unique(df1$y))
# df1$y%>%factor()%>%fct_inorder()
# df1$y=factor(df1$y,levels=c("x_1","x_2","x_3","x_4","x-5","x_6","x_7","x_8","x_9","x_10","x_11","x_12"))
cols <- colorRampPalette(c("white","black","red"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
#scale_x_continuous(breaks=seq(2,3,by=1),labels=c("-4","1"))定义x轴,注意breaks=seq()可以花式
#定义坐标轴刻度和上面的数字
p1<-ggplot(df1,aes(x,y,fill=conservation))+geom_tile(colour="yellow",width=1,height=1)+
  theme_classic()+scale_fill_gradientn(colours=cols,limits=c(-6,6),
  breaks=seq(-6,6),guide=guide_colourbar(ticks=T, nbin=300,
  ticks.linewidth=0.5,ticks.colour="blue",frame.colour="black",
              barheight=8, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(2,4),labels=c("-4","1"))+
  labs(x="xx",y="yy")+
  ggtitle("") +
#注释axis.ticks.length=grid::unit(.1, "cm")表示x轴刻度线的长度  
  theme(legend.background = element_rect(fill = "grey90"),
        legend.position=c(1,0.9),#legend.position=c(1,0.5)中x越大越右,y越大越上
        legend.direction="vertical",
        legend.text=element_text(colour="grey20",hjust=0.5,vjust=0.5),#vjust越大越下，hjust越大越右
        legend.title = element_text(color = "black", size = 15,vjust=0.9),#vjust越大越上
        legend.margin = margin(t = 10, r = 5, b =8, l = 5,unit = "pt"),
        legend.key = element_rect(fill = "blue"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        plot.margin=grid::unit(c(t=.1,r=0.3,b=.1,l=0.1), "cm"),
        plot.title = element_text(hjust = 0.5, color = "red", face = "italic"),
        plot.background = element_rect(fill = "white", color = "white", size = 10),
        #注释axis.text.y=element_text(size=)表示y轴上数字的大小,字体
        axis.text.y=element_text(size=7, family="Helvetica", hjust=1),
        #注释：注意：y轴上数字消失的方法，而不是size=0
        #axis.text.y=element_blank(),
        #axis.text.x=element_text(size=)表示x轴上数字的大小
        axis.text.x=element_text(size=10,colour = "black"),
#axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
        axis.title.x = element_text(size=13,color = "black", face = "italic",
        hjust = 0.5,vjust = 17),
        axis.title.y = element_text(size=0,color = "black", face = "italic",
        hjust = 0.5,vjust = 0.01),
        axis.line.x=element_line(colour="grey20", size=1),
        axis.line.y=element_line(colour="grey20", size=0),
        axis.ticks.y=element_blank(),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank())
        #title=element_text(hjust=0.5, face="bold", vjust=5, family="Helvetica"),
        #text=element_text(family="URWHelvetica"))
  #annotate里面vjust表示垂直移动，数值越大，越靠下，hjust越大越左
  # annotate("text", label="Vaccine introduced", x=1, y=1, vjust=5, hjust=3,
  #          size=I(3), family="Helvetica")

df2<- read.csv("try01转置02-1色条.csv")
# df2$y<-factor(df2$y,levels =(df2$y))
p2<-ggplot(df2,aes(x=x,y=y))+
  geom_tile(aes(fill=group))+
scale_x_continuous(expand = c(0,0))+
  theme(panel.background = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        axis.text.x = element_blank(),
#axis.text.y=element_blank(),#axis.text.y=element_blank(),y轴坐标轴上的数字消失,注意：y轴上数字消失的方法，而不是size=0
        #注释axis.text.y=element_text(size=)表示y轴上数字的大小,字体
        axis.text.y=element_text(size=7, family="Helvetica", hjust=1),
       
       
        legend.text=element_text(colour="grey20",hjust=30,vjust=0.5),#hjust越大越右vjust越大越下
        legend.position = "left",
        legend.title = element_blank()
        )+
  scale_fill_manual(values = c("green","blue","red","yellow"))
p1%>%
  insert_left(p2,width = 0.05)






ggplot(df1,aes(x,y,fill=value))+geom_tile(colour="white",width=3,height=1.5)+
  theme_bw()+scale_fill_gradientn(colours=cols,limits=c(-6,6),
                     breaks=seq(-6,6),
                     guide=guide_colourbar(ticks=F, nbin=20,
                      barheight=10, label=T,barwidth=2))+  
scale_x_continuous(expand=c(0,0), breaks=seq(0,150, by=1))+
geom_segment(x=200, xend=200, y=0, yend=100, size=.9, lineend = "round")+
  labs(x="", y="", fill="")+ggtitle("liji") +
  theme(legend.position=c(0.8,0.5),
        legend.direction="vertical",
        legend.text=element_text(colour="grey20"),
#plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离
        plot.margin=grid::unit(c(.5,.5,.1,1), "cm"),
#axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        axis.text.y=element_text(size=0, family="Helvetica", hjust=1),
#axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text.x=element_text(size=0),
        axis.line.x=element_line(colour="grey20", size=1),
        axis.ticks.y=element_blank(),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.1, "cm"),
        panel.grid=element_blank(),
        title=element_text(hjust=1, face="bold", vjust=11, family="Helvetica"),
        text=element_text(family="URWHelvetica"))+
#annotate里面vjust表示垂直移动，数值越大，越靠下，hjust越大越左
  annotate("text", label="Vaccine introduced", x=113, y=10, vjust=5, hjust=3,
                    size=I(3), family="Helvetica")

