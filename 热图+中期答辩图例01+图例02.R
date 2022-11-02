#library(getopt)
library(RColorBrewer)
library (ggplot2)
#library(aplot)
#library(tidyverse)
bmp(file ="中期答辩图例01zhuanzhi-1.bmp",width =300*3,height = 80*3,units = "px",res =72*4)
df<- read.csv("中期答辩图例01zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=conservation))+geom_tile(width=1,height=1,colour="grey65")+
theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
  guide=guide_colourbar(ticks=F, nbin=300,barheight=2.7, label=T,barwidth=0.7))+
#scale_x_continuous()和下面的labels是用来手动添加x轴的  
  scale_x_continuous(breaks=c(1,2,3,4,5,6,7,8,9,10),
  labels=c("-10","-9","-8","-7","-6","-5","-4","-3","-2","-1"))+
 # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
        legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1.05,0.45),#x越大越右,y越大越上
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.2,vjust=0.8,size=5,face="bold",family="serif"),
#legend.margin中t,r,b,l表示legend的大小
		    legend.margin = margin(t = 1, r = 0.8, b =2, l = 1.8,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
        legend.title = element_blank(),
		    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
        
		#axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text.x=element_text(size=6,face="bold",family="serif"),
        axis.ticks.x=element_line(colour="black"),
        axis.ticks.length=grid::unit(.03, "cm"),       
		    axis.line.x=element_line(colour="black", size=0.4),
      # axis.text.x=element_blank()
		    axis.title.y=element_blank(),
		    axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
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

##########################################################################
#library(getopt)
library(RColorBrewer)
library (ggplot2)
#library(aplot)
#library(tidyverse)
bmp(file ="中期答辩图例02zhuanzhi-1.bmp",width =300*3,height = 35*3,units = "px",res =72*4)
df<- read.csv("中期答辩图例02zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=conservation))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=c(0,1),
  guide=guide_colourbar(ticks=F, nbin=300,barheight=1.2, label=T,barwidth=0.5))+
  #scale_x_continuous()和下面的labels是用来手动添加x轴的  
  scale_x_continuous(breaks=c(1,2,3,4,5,6,7,8,9,10),
                     labels=c("-10","-9","-8","-7","-6","-5","-4","-3","-2","-1"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1.05,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.5,vjust=0.55,size=3.5,face="bold",family="serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    # legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title = element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=7,face="bold",family="serif"),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.03, "cm"),       
    axis.line.x=element_line(colour="black", size=0.4),
    # axis.text.x=element_blank()
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
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
