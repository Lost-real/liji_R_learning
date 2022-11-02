
#十字花科5UTR cut200bp
library (ggplot2)
library(RColorBrewer)

##十字花科5utr单碱基位点保守性
bmp(file ="At5utr200bp6braTE14492单个位点保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df1<- read.csv("At5utr200bp6braTE14492单个位点保守性折线图.csv")
p1<-ggplot(df1,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.7),breaks=seq(0,0.7,0.1))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("Conservation"), values = c("cyan3"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p1
dev.off()

#十字花科5utrcut200bp单碱基位点BPP
bmp(file ="At5utr200bp6braTE14492单个位点BPP折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df2<- read.csv("At5utr200bp6braTE14492单个位点BPP折线图.csv")
p2<-ggplot(df2,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("BPP",limits = c(0,0.2),breaks=seq(0,0.2,0.04))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP"), values = c("orangered2"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p2
dev.off()
##############################################################################
############################################################################
#十字花科3utr200bp
library (ggplot2)
library(RColorBrewer)

##十字花科3utrcut200bp单碱基位点保守性
bmp(file ="At3utr200bp6braTE16852单个位点保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df1<- read.csv("At3utr200bp6braTE16852单个位点保守性折线图.csv")
p1<-ggplot(df1,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.7),breaks=seq(0,0.7,0.1))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("Conservation"), values = c("cyan3"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p1
dev.off()

###########################################################################
##十字花科3utr200bp单碱基位点保守性
bmp(file ="At3utr200bp6braTE16852BPP保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df1<- read.csv("At3utr200bp6braTE16852BPP保守性折线图.csv")
p2<-ggplot(df1,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("BPP",limits = c(0,0.2),breaks=seq(0,0.2,0.04))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP"), values = c("orangered2"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p2
dev.off()

##############################
#十字花科3utrcut300bp
library (ggplot2)
library(RColorBrewer)
bmp(file ="At3utr300bp6bra16815单个位点保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df1<- read.csv("At3utr300bp6bra16815单个位点保守性折线图.csv")
p1<-ggplot(df1,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.7),breaks=seq(0,0.7,0.1))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("Conservation"), values = c("cyan3"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p1
dev.off()



bmp(file ="At3utr300bp6bra16815BPP保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df2<- read.csv("At3utr300bp6bra16815BPP保守性折线图.csv")
p2<-ggplot(df2,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("BPP",limits = c(0,0.2),breaks=seq(0,0.2,0.04))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP"), values = c("orangered2"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p2
dev.off()



###################################
##################################
##禾本科5utr200单碱基位点保守性

bmp(file ="Os5utr200bp6bra10543单个位点保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df1<- read.csv("Os5utr200bp6bra10543单个位点保守性折线图.csv")
p1<-ggplot(df1,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.7),breaks=seq(0,0.7,0.1))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("Conservation"), values = c("cyan3"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p1
dev.off()

#禾本科5utr单碱基位点BPP
bmp(file ="Os5utr200bp6bra10543单个位点BPP折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df2<- read.csv("Os5utr200bp6bra10543单个位点BPP折线图.csv")
p2<-ggplot(df2,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("BPP",limits = c(0,0.2),breaks=seq(0,0.2,0.04))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP"), values = c("orangered2"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p2
dev.off()
#######################################
#禾本科3utrcut200bp

bmp(file ="Os3utr200bp6gra10534单个位点保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df1<- read.csv("Os3utr200bp6gra10534单个位点保守性折线图.csv")
p1<-ggplot(df1,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.7),breaks=seq(0,0.7,0.1))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("Conservation"), values = c("cyan3"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p1
dev.off()

bmp(file ="Os3utr200bp6gra10534BPP保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df2<- read.csv("Os3utr200bp6gra10534BPP保守性折线图.csv")
p2<-ggplot(df2,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("BPP",limits = c(0,0.2),breaks=seq(0,0.2,0.04))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP"), values = c("orangered2"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p2
dev.off()

#############
#禾本科3utrcut300bp
library (ggplot2)
library(RColorBrewer)
bmp(file ="Os3utr300bp6gra10539单个位点保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df1<- read.csv("Os3utr300bp6gra10539单个位点保守性折线图.csv")
p1<-ggplot(df1,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.7),breaks=seq(0,0.7,0.1))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("Conservation"), values = c("cyan3"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p1
dev.off()



bmp(file ="Os3utr300bp6gra10539BPP保守性折线图.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df2<- read.csv("Os3utr300bp6gra10539BPP保守性折线图.csv")
p2<-ggplot(df2,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("BPP",limits = c(0,0.2),breaks=seq(0,0.2,0.04))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP"), values = c("orangered2"))+
  theme(
    legend.position=c(.5,1),
    legend.title = element_blank(),
    axis.text.y=element_text(size=11, family="Helvetica", hjust=1),
    #注释：注意：y轴上数字消失的方法，而不是size=0
    #axis.text.y=element_blank(),
    #axis.text.x=element_text(size=)表示x轴上数字的大小
    axis.text.x=element_text(size=11,colour = "black"),
    #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
    #axis.title = element_blank(),
    #axis.title.x = element_text(size=13,color = "black",face = "italic",hjust = 0.5,vjust = 1),
    axis.title.y = element_text(size=10,color = "black",hjust = 0.5,vjust = 0.1),
    #axis.line.x=element_line(colour="grey20", size=1),
    #axis.line.y=element_line(colour="grey20", size=0),
    #axis.ticks.y=element_blank(),
    #axis.ticks.x=element_line(colour="grey20"),
    #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
    axis.ticks.length.x=grid::unit(.1, "cm"),
    #panel.background=element_rect(colour="black",size=1,fill="grey85"),
    #panel.background中colour用来调整四个边框的颜色,fill用来调整图形背景色
    #plot.background = element_rect(fill = "grey100")
    #如果我们只对图域外的背景色进行修改，可以通过plot.background参数进行修改
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid")中
    #panel.border表示的外边框的颜色大小，粗细
    # panel.border = element_rect(fill =NA,colour = "darkred",size=2,linetype = "solid"),
    # panel.border = element_blank(),
    #另外,legend.title=element_blank()可以去除标题的文字。
    #panel.grid.major = element_blank(),
    #panel.grid.major用来去掉背景中大的网格
    #panel.grid.minor = element_blank()
    #panel.grid.minor用来去掉背景中小的网格
  )

p2
dev.off()

