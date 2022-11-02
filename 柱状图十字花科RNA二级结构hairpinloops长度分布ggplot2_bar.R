#横坐标展示24个
library(ggplot2)
bmp(file ="十字花科RNA二级结构hairpinloops长度分布bar-1.bmp",width =1000*2,height = 800*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("十字花科RNA二级结构hairpinloops长度分布bar.csv")
p1<-ggplot(data=df,aes(x=Length,y=Number))+
  geom_bar(stat = 'identity',fill="red2",color="black",alpha=0.6,width=1,position = "dodge")+
  scale_y_continuous(limits = c(0,3200),breaks=seq(0,3200,400))+
  scale_x_continuous(limits = c(0,50),breaks=seq(1,48,2),
                     labels=c("3","5","7","9","11","13",
  "15","17","19","21","23","25","27",
  "29","31","33","35","37","39","41","43",
  "45","47","49"))+
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

p1
dev.off()

################################################################################
#横坐标展示48个
library(ggplot2)
bmp(file ="禾本科RNA二级结构hairpinloops长度分布bar-2.bmp",width =1500*2,height = 800*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("禾本科RNA二级结构hairpinloops长度分布bar.csv")
p2<-ggplot(data=df,aes(x=Length,y=Number))+
  geom_bar(stat = 'identity',fill="red2",color="black",alpha=0.6,width=1,position = "dodge")+
  scale_y_continuous(limits = c(0,1100),breaks=seq(0,1100,100))+
  scale_x_continuous(limits = c(0,50),breaks=seq(1,48,1),
                     labels=c("3","4","5","6","7","8","9","10","11","12","13",
                  "14","15","16","17","18","19","20","21","22","23","24","25",
                  "26","27","28","29","30","31","32","33","34","35","36","37",
                  "38","39","40","41","42","43","44","45","46","47","48","49","50"))+
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

p2
dev.off()

