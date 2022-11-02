#library(getopt)
library(RColorBrewer)
library (ggplot2)
#library(aplot)
#library(tidyverse)
bmp(file ="Os5utrlast200bpout1merge1sortedreplacefilluplast200bpzhuanzhi-1.bmp",width =600*3,height = 750*3,units = "px",res =72*4)
df<- read.csv("Os5utrlast200bpout1merge1sortedreplacefilluplast200bpzhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("white","black","red"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=conservation))+geom_tile(width=1,height=1)+
theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(-6,6),breaks=seq(-6,6),
  guide=guide_colourbar(ticks=F, nbin=300,barheight=10, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,51,101,151,200),
  labels=c("-200","-150","-100","-50","-1"))+
 # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
        legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1.05,0.5),#x越大越右,y越大越上
        legend.direction="vertical",
        legend.text=element_text(colour="grey20",hjust=0.7,vjust=0.5),
		legend.margin = margin(t = 8, r = 5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        legend.title = element_text(color = "black", size = 5,vjust=4.5),#vjust越大越上
		plot.margin=grid::unit(c(t=0.8,r=2,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
        axis.text.y=element_blank(),
		#axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text.x=element_text(size=10,face="bold"),
        axis.title.y=element_blank(),
		axis.line.x=element_line(colour="grey20", size=0.8),
        axis.ticks.y=element_blank(),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.2, "cm"),
        #panel.grid=element_blank(),
        #title=element_text(hjust=1, face="bold", vjust=11, family="Helvetica"),
        #text=element_text(family="URWHelvetica"),
	#	panel.grid.major = element_blank(),
	#	panel.grid.minor = element_blank()
		)
  #annotate里面vjust表示垂直移动，数值越大，越靠下，hjust越大越左
 # annotate("text", label="Vaccine introduced", x=113, y=1, vjust=5, hjust=3,
          # size=I(3), family="Helvetica")
dev.off()
