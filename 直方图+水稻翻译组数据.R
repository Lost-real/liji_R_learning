library(ggplot2)
# bmp(file ="禾本科RNA二级结构hairpinloops长度分布histogram.bmp",width =850*2,height = 700*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("水稻翻译组数据.csv")
ggplot(data=df,aes(x=conservation,y=..count..))+
  geom_histogram(alpha=0.4,color="black",fill="red2",bins=100)+
  # scale_y_continuous(limits = c(0,1200),breaks=seq(0,1200,200))+
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