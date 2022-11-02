getwd()

library (ggplot2)
library(RColorBrewer)



#Atggplot2折线图双Y轴5UTR6brage200bpTE3614last200bp使用版
#数据有两个分别是At5UTR6brage200bpTE3614last200bp-1.csv和At5UTR6brage200bpTE3614last200bp-2.csv
#绘图时应该使用"At5UTR6brage200bpTE3614last200bp-2.csv"，因为-1.csv是原始数据，未经过加工

bmp(file ="At5utr6brage200bpTE3614last200bpBPP_geom_line-2.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df1<- read.csv("At5utr6brage200bpTE3614last200bpBPP_geom_line-2.csv")
p1<-ggplot(df1,aes(x=position,y=value,col=var))+
 # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
    #theme_get()+#R最常见的主题 #theme_gray()+
   # theme_grey()+ #theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.72),breaks=seq(0,0.72,0.12),
        sec.axis = sec_axis(~ ./4 , name = "BPP",breaks=seq(0,0.18,0.03)))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
#注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
#是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP","Conservation"), values = c("orangered2", "cyan3"))+
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

#十字花科5UTR最终使用的是这个
bmp(file ="At5utr200bp6braTE14492BPP_geom_line-2.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df2<- read.csv("At5utr200bp6braTE14492BPP_geom_line-2.csv")
p2<-ggplot(df2,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+
  #theme_get()+#R最常见的主题 #theme_gray()+
  # theme_grey()+ #theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.64),breaks=seq(0,0.64,0.16),
                     sec.axis = sec_axis(~ ./4 , name = "BPP",breaks=seq(0,0.16,0.04)))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP","Conservation"), values = c("orangered2", "cyan3"))+
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



####十字花科ATG上游截取500bp
bmp(file ="At5utr500bp6braTE14433BPP_geom_line-2.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df3<- read.csv("At5utr500bp6braTE14433BPP_geom_line-2.csv")
p3<-ggplot(df3,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+#theme_get()+#R最常见的主题
  #theme_gray()+# theme_grey()+#theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.64),breaks=seq(0,0.64,0.16),
          sec.axis = sec_axis(~ ./4 , name = "BPP",breaks=seq(0,0.16,0.04)))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP","Conservation"), values = c("orangered2", "cyan3"))+
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
p3
dev.off()

#######十字花科3utr终止密码子下游截取300bp

bmp(file ="At3utr200bpcut200bp16852BPPgeom_line-2.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df4<- read.csv("At3utr200bpcut200bp16852BPPgeom_line-2.csv")
p4<-ggplot(df4,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+#theme_get()+#R最常见的主题
  #theme_gray()+# theme_grey()+#theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.66),breaks=seq(0,0.66,0.22),
                     sec.axis = sec_axis(~ ./3.3 , name = "BPP",breaks=seq(0,0.2,0.05)))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色,注意labels中，BPP和Conservation的位置
  scale_color_manual(labels = c("BPP","Conservation"), values = c("orangered2", "cyan3"))+
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
p4
dev.off()

####十字花科3utr终止密码子下游截取300bp
bmp(file ="At3utr300bpcut200bp16815BPPgeom_line-2.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df5<- read.csv("At3utr300bpcut200bp16815BPPgeom_line-2.csv")
p5<-ggplot(df5,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+#theme_get()+#R最常见的主题
  #theme_gray()+# theme_grey()+#theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.63),breaks=seq(0,0.63,0.21),
                     sec.axis = sec_axis(~ ./3 , name = "BPP",breaks=seq(0,0.21,0.07)))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP","Conservation"), values = c("orangered2", "cyan3"))+
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
p5
dev.off()



###################################
##################################
#禾本科5utr
####禾本科5utr,ATG上游截取200bp
bmp(file ="Os5utr200bp6bra10543BPP_geom_line-2.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df6<- read.csv("Os5utr200bp6bra10543BPP_geom_line-2.csv")
p6<-ggplot(df6,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+#theme_get()+#R最常见的主题
  #theme_gray()+# theme_grey()+#theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.4),breaks=seq(0,0.4,0.1),
                     sec.axis = sec_axis(~ ./4 , name = "BPP",breaks=seq(0,0.1,0.025)))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP","Conservation"), values = c("orangered2", "cyan3"))+
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
p6
dev.off()

#禾本科3utr
####禾本科3utr,终止密码子下游截取200bp
bmp(file ="Os3utr200bpcut200bp10534BPPgeom_line-2.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df7<- read.csv("Os3utr200bpcut200bp10534BPPgeom_line-2.csv")
p7<-ggplot(df7,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+#theme_get()+#R最常见的主题
  #theme_gray()+# theme_grey()+#theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.45),breaks=seq(0,0.45,0.09),
                     sec.axis = sec_axis(~ ./4.5 , name = "BPP",breaks=seq(0,0.1,0.02)))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP","Conservation"), values = c("orangered2", "cyan3"))+
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
p7
dev.off()


#禾本科3utr
####禾本科3utr,终止密码子下游截取200bp
bmp(file ="Os3utr300bpcut200bp10532BPPgeom_line-2.bmp",width =1000*1,height = 750*1,units = "px",res =72*2)

df8<- read.csv("Os3utr300bpcut200bp10532BPPgeom_line-2.csv")
p8<-ggplot(df8,aes(x=position,y=value,col=var))+
  # geom_line(colour="black",size=0.9)+
  geom_line(size=1)+theme_classic()+
  #theme_bw()+# theme_dark()+#theme_get()+#R最常见的主题
  #theme_gray()+# theme_grey()+#theme_light()+
  scale_y_continuous("Conservation",limits = c(0,0.45),breaks=seq(0,0.45,0.09),
                     sec.axis = sec_axis(~ ./3.75 , name = "BPP",breaks=seq(0,0.12,0.03)))+
  guides(col=guide_legend(nrow = 1, byrow = T))+
  #注意scale_color_manual(labels = c("BBP","Conservation"), values = c("green", "red"))目的
  #是自动修改图中两条line的颜色
  scale_color_manual(labels = c("BPP","Conservation"), values = c("orangered2", "cyan3"))+
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
p8
dev.off()




