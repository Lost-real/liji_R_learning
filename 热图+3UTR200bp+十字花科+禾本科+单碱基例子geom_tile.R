library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+AT3G02850.1.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+AT3G02850.1.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
  guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
  labels=c("1","100","200"))+
 # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
        legend.background = element_rect(fill = "grey90",colour = "grey90"),
        legend.position=c(1,0.5),#x越大越右,y越大越上
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
#legend.margin中t,r,b,l表示legend的大小
	    	legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
        legend.title=element_blank(),
		    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
        
		    #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text.x=element_text(size=10,face="bold",family = "serif"),
		    axis.line.x=element_line(colour="black", size=0.4),
		    axis.title.y=element_blank(),
		    axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.ticks.x=element_line(colour="black"),
        axis.ticks.length=grid::unit(.02, "cm"),
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
###############################################################################
library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+AT5G56450.1.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+AT5G56450.1.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
                       guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
                     labels=c("1","100","200"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title=element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=10,face="bold",family = "serif"),
    axis.line.x=element_line(colour="black", size=0.4),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.02, "cm"),
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
###############################################################################
library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+AT2G35940.3.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+AT2G35940.3.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
                       guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
                     labels=c("1","100","200"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title=element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=10,face="bold",family = "serif"),
    axis.line.x=element_line(colour="black", size=0.4),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.02, "cm"),
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
###############################################################################
library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+AT1G26100.1.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+AT1G26100.1.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
                       guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
                     labels=c("1","100","200"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title=element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=10,face="bold",family = "serif"),
    axis.line.x=element_line(colour="black", size=0.4),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.02, "cm"),
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

########################################################################
########################################################################

library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+LOC_Os05g30980.1.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+LOC_Os05g30980.1.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
                       guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
                     labels=c("1","100","200"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title=element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=10,face="bold",family = "serif"),
    axis.line.x=element_line(colour="black", size=0.4),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.02, "cm"),
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
###############################################################################
library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+LOC_Os02g51860.1.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+LOC_Os02g51860.1.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
                       guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
                     labels=c("1","100","200"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title=element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=10,face="bold",family = "serif"),
    axis.line.x=element_line(colour="black", size=0.4),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.02, "cm"),
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
###############################################################################
library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+LOC_Os01g68320.3.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+LOC_Os01g68320.3.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
                       guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
                     labels=c("1","100","200"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title=element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=10,face="bold",family = "serif"),
    axis.line.x=element_line(colour="black", size=0.4),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.02, "cm"),
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
###############################################################################
library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+LOC_Os09g10930.1.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+LOC_Os09g10930.1.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
                       guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
                     labels=c("1","100","200"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title=element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=10,face="bold",family = "serif"),
    axis.line.x=element_line(colour="black", size=0.4),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.02, "cm"),
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
###############################################################################
library(RColorBrewer)
library (ggplot2)
bmp(file ="3UTR200bp+LOC_Os12g38110.1.fasta123zhuanzhi-1.bmp",width =600*3,height = 65*3,units = "px",res =72*3)
df<- read.csv("3UTR200bp+LOC_Os12g38110.1.fasta123zhuanzhi-1.csv")
df$y<-factor(df$y,levels=rev(unique(df$y)))
#df$y%>%factor()%>%fct_inorder()
#pivot_longer(df)
cols <- colorRampPalette(c("dodgerblue2","darkorange2"))(1200)
#guide=guide_colourbar是修改图例，去掉图例的方法：guides(col = F),guides(col = guide_none())
#legend.position()x越大越右,y越大越上边
ggplot(df,aes(x,y,fill=number))+geom_tile(width=1,height=1,colour="grey65")+
  theme_void()+
  scale_fill_gradientn(colours=cols,limits=c(0,1),breaks=seq(0,1),
                       guide=guide_colourbar(ticks=F, nbin=300,barheight=2, label=T,barwidth=0.8))+  
  scale_x_continuous(breaks=c(1,100,200),
                     labels=c("1","100","200"))+
  # labs(x=" ",y=" ")+
  #theme_void()+
  theme(
    legend.background = element_rect(fill = "grey90",colour = "grey90"),
    legend.position=c(1,0.5),#x越大越右,y越大越上
    legend.direction="vertical",
    legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=9,face="bold",family = "serif"),
    #legend.margin中t,r,b,l表示legend的大小
    legend.margin = margin(t = 2.4, r = 1.1, b =2.4, l = 1.8,unit = "pt"),
    #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
    #legend.title = element_text(color = "black", size = 2.5,face="bold",vjust=2),#vjust越大越上
    legend.title=element_blank(),
    plot.margin=grid::unit(c(t=0.25,r=0.9,b=.1,l=0.06), "cm"),
    #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
    #axis.text.y=element_text(size=0.1, family="TimesNewRoman", hjust=1),
    
    #axis.text.x=element_text(size=)表示x轴文本字体的大小
    axis.text.x=element_text(size=10,face="bold",family = "serif"),
    axis.line.x=element_line(colour="black", size=0.4),
    axis.title.y=element_blank(),
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.ticks.x=element_line(colour="black"),
    axis.ticks.length=grid::unit(.02, "cm"),
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

