
library(RColorBrewer)
library (ggplot2)
#library(tidyverse)
bmp(file ="十字花科5UTR 5和3 mismatch of bulges1-1.bmp",width =700*2,height = 700*2,units = "px",res =72*2)
df<- read.csv("十字花科5UTR 5和3 mismatch of bulges1-1.csv")
# df$y<-factor(df$y,levels=rev(unique(df$y)))
# df$y<-factor(df$y,levels=unique(df$y))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("white","orangered2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,color="black")+
  theme_classic()+
  scale_fill_gradientn(colours=cols,limits=c(0,250),breaks=seq(0,250,50),
                       # labels=c("0","10^0.0","10^0.5","10^1.0","10^1.5","10^2.0","10^2.5","10^3.0"),
                       guide=guide_colourbar(ticks=T,ticks.colour = "black", nbin=300,barheight=13, label=T,barwidth=2))+  
  # scale_x_continuous(limits=c(0,17),breaks=seq(1,16,1),
  # labels=c("GC","CG","AU","GU","UG","UA","GG","AC","CA","CC","AG","GA",
  #                             "CU","AA","UC","UU"))+
  # scale_y_continuous(limits=c(0,17),breaks=seq(1,16,1),
  #                    labels=c("CG","GC","UG","UA","AU","GU","CC","CA","GG","AC","AG","CU",
  #                             "GA","UC","UU","AA"))+
  # scale_x_continuous(limits=c(0,28),breaks=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,
  #                                            15,16,17,18,19,20,21,22,23,24,25,26,27),
  #                    labels=c("1","2","3","4","5","6","7","8","9","10","11",
  #                             "12","13","14","15","16","17","18","19","20",
  #                             "21","22","23","24","25","26","27"))+

# scale_x_continuous(limits=c(0,27),breaks=seq(0,27,1),
#                    labels=c("0","1","2","3","4","5","6","7","8","9","10","11",
#                             "12","13","14","15","16","17","18","19","20",
#                             "21","22","23","24","25","26","27"))+

# scale_y_discrete(breaks=c(1,2,3,4),labels=c("U","G","C","A"))+
# scale_y_discrete(breaks=c(1,2,3,4),labels=c("U","G","C","A"))+
# scale_y_continuous(limits=c(0,27),breaks=c(1,5,10,15,20,25),labels=c("1","5","10","15","20","25"))+
labs(x="5' Mismatches",y="3' Mismatches")+
  theme(legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1.05,0.5),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=15,face="bold",family="serif"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8),#vjust越大越上
        legend.title = element_blank(),
        plot.margin=grid::unit(c(t=0.8,r=4.3,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=15,face="bold",family="serif"),
        axis.title=element_text(size=25,face="bold",family="serif"),
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

#######################################################################
library(RColorBrewer)
library (ggplot2)
#library(tidyverse)
bmp(file ="禾本科5UTR 5和3 mismatch of bulges1-1.bmp",width =700*2,height = 700*2,units = "px",res =72*2)
df<- read.csv("禾本科5UTR 5和3 mismatch of bulges1-1.csv")
# df$y<-factor(df$y,levels=rev(unique(df$y)))
# df$y<-factor(df$y,levels=unique(df$y))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("white","orangered2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,color="black")+
  theme_classic()+
  scale_fill_gradientn(colours=cols,limits=c(0,250),breaks=seq(0,250,50),
                       # labels=c("0","10^0.0","10^0.5","10^1.0","10^1.5","10^2.0","10^2.5","10^3.0"),
                       guide=guide_colourbar(ticks=T,ticks.colour = "black", nbin=300,barheight=13, label=T,barwidth=2))+  
  # scale_x_continuous(limits=c(0,17),breaks=seq(1,16,1),
  # labels=c("GC","CG","AU","GU","UG","UA","GG","AC","CA","CC","AG","GA",
  #                             "CU","AA","UC","UU"))+
  # scale_y_continuous(limits=c(0,17),breaks=seq(1,16,1),
  #                    labels=c("CG","GC","UG","UA","AU","GU","CC","CA","GG","AC","AG","CU",
  #                             "GA","UC","UU","AA"))+
  # scale_x_continuous(limits=c(0,28),breaks=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,
  #                                            15,16,17,18,19,20,21,22,23,24,25,26,27),
  #                    labels=c("1","2","3","4","5","6","7","8","9","10","11",
  #                             "12","13","14","15","16","17","18","19","20",
  #                             "21","22","23","24","25","26","27"))+

# scale_x_continuous(limits=c(0,27),breaks=seq(0,27,1),
#                    labels=c("0","1","2","3","4","5","6","7","8","9","10","11",
#                             "12","13","14","15","16","17","18","19","20",
#                             "21","22","23","24","25","26","27"))+

# scale_y_discrete(breaks=c(1,2,3,4),labels=c("U","G","C","A"))+
# scale_y_discrete(breaks=c(1,2,3,4),labels=c("U","G","C","A"))+
# scale_y_continuous(limits=c(0,27),breaks=c(1,5,10,15,20,25),labels=c("1","5","10","15","20","25"))+
labs(x="5' Mismatches",y="3' Mismatches")+
  theme(legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1.05,0.5),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=15,face="bold",family="serif"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8),#vjust越大越上
        legend.title = element_blank(),
        plot.margin=grid::unit(c(t=0.8,r=4.3,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=15,face="bold",family="serif"),
        axis.title=element_text(size=25,face="bold",family="serif"),
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