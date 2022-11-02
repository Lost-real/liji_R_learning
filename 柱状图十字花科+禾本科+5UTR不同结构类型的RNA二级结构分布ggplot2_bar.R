
library(ggplot2)
bmp(file ="十字花科5UTR不同结构类型的RNA二级结构分布.bmp",width =850*2,height = 700*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("十字花科5UTR不同结构类型的RNA二级结构分布.csv")
p1<-ggplot(data=df,aes(x=type,y=number))+
  geom_bar(stat = 'identity',fill="red2",color="black",alpha=0.5,width=0.65,position = "dodge")+
  scale_y_continuous(limits = c(0,60000),breaks=seq(0,60000,10000))+
  theme_bw()+
  theme(axis.text.y = element_text(face = 'bold',color = 'black',
                                 size = 15,hjust = 0.5,family = "serif"),
        # face="bold.italic",
        axis.text.x = element_text(color = 'black',face="bold",
                                   size = 15,hjust = 0.5,family = "serif"),
        # axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
        #                             hjust = 0.5,family = "Times New Roman"),
        axis.title=element_blank(),
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

p1
dev.off()

###############################################################################
library(ggplot2)
bmp(file ="禾本科5UTR不同结构类型的RNA二级结构分布.bmp",width =850*2,height = 700*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("禾本科5UTR不同结构类型的RNA二级结构分布.csv")
p1<-ggplot(data=df,aes(x=type,y=number))+
  geom_bar(stat = 'identity',fill="red2",color="black",alpha=0.5,width=0.65,position = "dodge")+
  scale_y_continuous(limits = c(0,60000),breaks=seq(0,60000,10000))+
  theme_bw()+
  theme(axis.text.y = element_text(face = 'bold',color = 'black',
                                   size = 15,hjust = 0.5,family = "serif"),
        # face="bold.italic",
        axis.text.x = element_text(color = 'black',face="bold",
                                   size = 15,hjust = 0.5,family = "serif"),
        # axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
        #                             hjust = 0.5,family = "Times New Roman"),
        axis.title=element_blank(),
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

p1
dev.off()
