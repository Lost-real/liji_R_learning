#library(getopt)
library(RColorBrewer)
library (ggplot2)
#library(tidyverse)
bmp(file ="Os3utr300bp10539out1merge1sortedreplacefillupcut300bpzhuanzhi-1.bmp",width =600*3,height = 750*3,units = "px",res =72*2)
df<- read.csv("Os3utr300bp10539out1merge1sortedreplacefillupcut300bpzhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=conservation))+geom_tile(width=1,height=1)+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
  guide=guide_colourbar(ticks=F, nbin=300,barheight=10, label=T,barwidth=3))+  
  scale_x_continuous(breaks=c(1,100,200,300),
  labels=c("1","100","200","300"))+
  labs(x=" ",y=" ")+
  theme(legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1.02,0.5),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=18,family="serif",face="bold"),
        legend.margin = margin(t = 8, r = 3, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        legend.title = element_text(color = "black", size = 15,vjust=1.8,family="serif",face="bold"),#vjust越大越上
        plot.margin=grid::unit(c(t=0.8,r=3,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text.x=element_text(size=25,face="bold",family = "serif"),
        axis.line.x=element_line(colour="black", size=1.5),
        axis.ticks.y=element_blank(),
        axis.ticks.x=element_line(colour="black"),
        axis.ticks.length=grid::unit(.3, "cm"),
        # panel.grid=element_blank(),
        # title=element_text(hjust=1, face="bold", vjust=11, family="Helvetica"),
        # text=element_text(family="URWHelvetica")
  )
#annotate里面vjust表示垂直移动，数值越大，越靠下，hjust越大越左
# annotate("text", label="Vaccine introduced", x=113, y=1, vjust=5, hjust=3,
# size=I(3), family="Helvetica")


dev.off()
