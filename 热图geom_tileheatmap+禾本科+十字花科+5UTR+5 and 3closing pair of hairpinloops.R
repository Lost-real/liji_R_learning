#library(getopt)
library(RColorBrewer)
library (ggplot2)
#library(tidyverse)
bmp(file ="十字花科 the closingpair of hairpin loops zhuanzhi-1.bmp",width =750*2,height = 750*2,units = "px",res =72*2)
df<- read.csv("十字花科 the closingpair of hairpin loops zhuanzhi-1.csv")
# df$y<-factor(df$y,levels=rev(unique(df$y)))
df$y<-factor(df$y,levels=unique(df$y))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("white","orangered2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,color="black")+
  theme_bw()+
  scale_fill_gradientn(colours=cols,limits=c(0,7000),breaks=seq(0,7000,1000),
  guide=guide_colourbar(ticks=T, nbin=300,ticks.colour = "black",barheight=12, label=T,barwidth=2))+  
  # scale_x_continuous(breaks=c(1,2,3,4),labels=c("A","C","G","U"))+
  # scale_y_discrete(breaks=c(1,2,3,4),labels=c("A","C","G","U"))+
  labs(x="Closing base pair 5'nt",y="Closing base pair 3'nt")+
  theme(legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1.08,0.5),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=13),
		legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        legend.title = element_blank(),#vjust越大越上
		plot.margin=grid::unit(c(t=0.8,r=4.3,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
		    # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=20,face="bold",family = "serif"),
		    axis.title=element_text(size=25,face="bold",family = "serif"),
        axis.line=element_line(colour="grey10", size=1),
# 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.3, "cm"),
        panel.grid=element_blank()
        # title=element_text(hjust=1, face="bold", vjust=11, family="Helvetica"),
        # text=element_text(family="URWHelvetica")
		)
  #annotate里面vjust表示垂直移动，数值越大，越靠下，hjust越大越左
 # annotate("text", label="Vaccine introduced", x=113, y=1, vjust=5, hjust=3,
          # size=I(3), family="Helvetica")
dev.off()

##########################################################
#library(getopt)
library(RColorBrewer)
library (ggplot2)
#library(tidyverse)
bmp(file ="禾本科 the closing pair of hairpin loops zhuanzhi-1.bmp",width =750*2,height = 750*2,units = "px",res =72*2)
df<- read.csv("禾本科 the closing pair of hairpin loops zhuanzhi-1.csv")
# df$y<-factor(df$y,levels=rev(unique(df$y)))
df$y<-factor(df$y,levels=unique(df$y))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("white","orangered2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,color="black")+
  theme_bw()+
  scale_fill_gradientn(colours=cols,limits=c(0,7000),breaks=seq(0,7000,1000),
                       guide=guide_colourbar(ticks=T, nbin=300,ticks.colour = "black",barheight=12, label=T,barwidth=2))+  
  # scale_x_continuous(breaks=c(1,2,3,4),labels=c("A","C","G","U"))+
  # scale_y_discrete(breaks=c(1,2,3,4),labels=c("A","C","G","U"))+
  labs(x="Closing base pair 5'nt",y="Closing base pair 3'nt")+
  theme(legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1.08,0.5),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=13),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        legend.title = element_blank(),#vjust越大越上
        plot.margin=grid::unit(c(t=0.8,r=4.3,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=20,face="bold",family = "serif"),
        axis.title=element_text(size=25,face="bold",family = "serif"),
        axis.line=element_line(colour="grey10", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.3, "cm"),
        panel.grid=element_blank()
        # title=element_text(hjust=1, face="bold", vjust=11, family="Helvetica"),
        # text=element_text(family="URWHelvetica")
  )
#annotate里面vjust表示垂直移动，数值越大，越靠下，hjust越大越左
# annotate("text", label="Vaccine introduced", x=113, y=1, vjust=5, hjust=3,
# size=I(3), family="Helvetica")
dev.off()