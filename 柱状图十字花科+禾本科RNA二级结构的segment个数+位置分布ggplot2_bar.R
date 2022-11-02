
library(ggplot2)
# library(ggpubr)
bmp(file ="十字花科RNA二级结构segment个数分布.bmp",width =750*2,height = 700*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("十字花科RNA二级结构segment个数分布.csv")
ggplot(data=df,aes(x=stem_number,y=Percentage))+
  geom_bar(stat = 'identity',fill="red2",color="black",alpha=0.5,width=0.75,position = "dodge")+
  scale_y_continuous(limits = c(0,60),breaks=seq(0,60,10))+
  scale_x_continuous(breaks=seq(1,9,1),
                     labels=c("0","1","2","3","4","5","6","7","8"))+
  theme_bw()+
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 18,hjust = 0.5,family = "serif"),
        axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
                                    hjust = 0.5,family = "serif"),
        axis.title.x=element_blank(),
        # legend.position = 'right',
        # legend.text = element_text(face = 'bold',color = 'black',size = 10,
        #                            hjust = 0.5,family = "Times New Roman"),
        # legend.title = element_text(face = 'bold',color = 'black',
        #                             size = 12,hjust = 0.5,family = "Times New Roman"),
        axis.line.y = element_line(colour="grey20", size=1),
        axis.line.x = element_line(colour="grey20", size=1),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.15, "cm"),
        panel.grid = element_blank()
        # legend.position = "top"
         )

dev.off()
##############################################################################

library(ggplot2)
# library(ggpubr)
bmp(file ="十字花科RNA二级结构segment位置分布.bmp",width =750*2,height = 700*2,units = "px",res =72*2)
df=read.csv("十字花科RNA二级结构segment位置分布.csv")

ggplot(data=df,aes(location,Percentage))+
  geom_bar(stat = 'identity',
#牛逼，修改柱子的颜色
           #fill = ifelse(df$Percentage>10,'gold','gray40'),
           fill="red2",
           color="black",alpha=0.5,width=0.5)+
  scale_y_continuous(limits = c(0,25),breaks=seq(0,25,5))+
  theme_bw()+
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 18,hjust = 0.5,family = "serif"),
        axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
                                    hjust = 0.5,family = "serif"),
        axis.title.x=element_blank(),
        # legend.position = 'right',
        # legend.text = element_text(face = 'bold',color = 'black',size = 10,
        #                            hjust = 0.5,family = "Times New Roman"),
        # legend.title = element_text(face = 'bold',color = 'black',
        #                             size = 12,hjust = 0.5,family = "Times New Roman"),
        axis.line.y = element_line(colour="grey20", size=1),
        axis.line.x = element_line(colour="grey20", size=1),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.15, "cm"),
        # legend.position = "top"
        panel.grid = element_blank()
  )

dev.off()

################################
####################################

library(ggplot2)
# library(ggpubr)
bmp(file ="禾本科RNA二级结构segment个数分布.bmp",width =750*2,height = 700*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("禾本科RNA二级结构segment个数分布.csv")
ggplot(data=df,aes(x=segment_number,y=Percentage))+
  geom_bar(stat = 'identity',fill="red2",color="black",alpha=0.5,width=0.75,position = "dodge")+
  scale_y_continuous(limits = c(0,60),breaks=seq(0,60,10))+
  scale_x_continuous(breaks=seq(1,9,1),
                     labels=c("0","1","2","3","4","5","6","7","8"))+
  theme_bw()+
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 18,hjust = 0.5,family = "serif"),
        axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
                                    hjust = 0.5,family = "serif"),
        axis.title.x=element_blank(),
        # legend.position = 'right',
        # legend.text = element_text(face = 'bold',color = 'black',size = 10,
        #                            hjust = 0.5,family = "Times New Roman"),
        # legend.title = element_text(face = 'bold',color = 'black',
        #                             size = 12,hjust = 0.5,family = "Times New Roman"),
        axis.line.y = element_line(colour="grey20", size=1),
        axis.line.x = element_line(colour="grey20", size=1),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.15, "cm"),
        panel.grid = element_blank()
        # legend.position = "top"
  )

dev.off()



library(ggplot2)
# library(ggpubr)
bmp(file ="禾本科RNA二级结构segment位置分布.bmp",width =750*2,height = 700*2,units = "px",res =72*2)
df=read.csv("禾本科RNA二级结构segment位置分布.csv")

ggplot(data=df,aes(location,Percentage))+
  geom_bar(stat = 'identity',
           #牛逼，修改柱子的颜色
           #fill = ifelse(df$Percentage>10,'gold','gray40'),
           fill="red2",
           color="black",alpha=0.5,width=0.5)+
  scale_y_continuous(limits = c(0,25),breaks=seq(0,25,5))+
  theme_bw()+
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 18,hjust = 0.5,family = "serif"),
        axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
                                    hjust = 0.5,family = "serif"),
        axis.title.x=element_blank(),
        # legend.position = 'right',
        # legend.text = element_text(face = 'bold',color = 'black',size = 10,
        #                            hjust = 0.5,family = "Times New Roman"),
        # legend.title = element_text(face = 'bold',color = 'black',
        #                             size = 12,hjust = 0.5,family = "Times New Roman"),
        axis.line.y = element_line(colour="grey20", size=1),
        axis.line.x = element_line(colour="grey20", size=1),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.15, "cm"),
        # legend.position = "top"
        panel.grid = element_blank()
  )
dev.off()

