library(RColorBrewer)
library (ggplot2)
#library(tidyverse)
bmp(file ="十字花科5’UTR 5closing pair and 3'closing pair of bulges2-1.bmp",width =750*2,height = 750*2,units = "px",res =72*2)
df<- read.csv("十字花科5’UTR 5closing pair and 3'closing pair of bulges2-1.csv")
# df$y<-factor(df$y,levels=rev(unique(df$y)))
# df$y<-factor(df$y,levels=unique(df$y))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("white","orangered2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,color="black")+
  theme_classic()+
  scale_fill_gradientn(colours=cols,limits=c(0,800),breaks=seq(0,800,200),
  # labels=c("0","","10^0.5","10^1.0","10^1.5","10^2.0","10^2.5","10^3.0"),
  guide=guide_colourbar(ticks=T,ticks.colour = "black", nbin=300,barheight=11, label=T,barwidth=2))+  
  scale_y_continuous(limits=c(0,17),breaks=seq(1,16,1),
                   labels=c("G:C","C:G","A:U","U:A","G:U","U:G","A:C","U:U","G:A","G:G","C:C","C:A",
                            "A:G","A:A","C:U","U:C"))+
  scale_x_continuous(limits=c(0,17),breaks=seq(1,16,1),
                     labels=c("A:U","U:A","G:C","C:G","U:G","G:U","A:C","A:G","C:A","C:U","G:A",
                              "U:U","A:A","C:C","G:G","U:C"))+
  labs(x="5' Closing Pair",y="3' Closing Pair")+
  theme(legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1,0.5),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=15,family = "serif",face="bold"),
		legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8),#vjust越大越上
		legend.title = element_blank(),
		plot.margin=grid::unit(c(t=0.8,r=4.2,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
		    # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=13,face="bold",family = "serif"),
		    axis.title=element_text(size=20,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
# 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
        # title=element_text(hjust=1, face="bold", vjust=11, family="Helvetica"),
        # text=element_text(family="URWHelvetica")
		)
dev.off()

#########################
library(RColorBrewer)
library (ggplot2)
#library(tidyverse)
bmp(file ="禾本科5’UTR 5closing pair and 3'closing pair of bulges2-1.bmp",width =750*2,height = 750*2,units = "px",res =72*2)
df<- read.csv("禾本科5’UTR 5closing pair and 3'closing pair of bulges2-1.csv")
# df$y<-factor(df$y,levels=rev(unique(df$y)))
# df$y<-factor(df$y,levels=unique(df$y))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("white","orangered2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,color="black")+
  theme_classic()+
  scale_fill_gradientn(colours=cols,limits=c(0,800),breaks=seq(0,800,200),
                       # labels=c("0","","10^0.5","10^1.0","10^1.5","10^2.0","10^2.5","10^3.0"),
                       guide=guide_colourbar(ticks=T,ticks.colour = "black", nbin=300,barheight=11, label=T,barwidth=2))+  
  scale_y_continuous(limits=c(0,17),breaks=seq(1,16,1),
                     labels=c("G:C","C:G","A:U","U:A","G:U","U:G","A:C","U:U","G:A","G:G","C:C","C:A",
                              "A:G","A:A","C:U","U:C"))+
  scale_x_continuous(limits=c(0,17),breaks=seq(1,16,1),
                     labels=c("A:U","U:A","G:C","C:G","U:G","G:U","A:C","A:G","C:A","C:U","G:A",
                              "U:U","A:A","C:C","G:G","U:C"))+
  labs(x="5' Closing Pair",y="3' Closing Pair")+
  theme(legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1,0.5),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=15,family = "serif",face="bold"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8),#vjust越大越上
        legend.title = element_blank(),
        plot.margin=grid::unit(c(t=0.8,r=4.2,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=13,face="bold",family = "serif"),
        axis.title=element_text(size=20,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
        # title=element_text(hjust=1, face="bold", vjust=11, family="Helvetica"),
        # text=element_text(family="URWHelvetica")
  )
dev.off()