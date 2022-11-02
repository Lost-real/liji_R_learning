################################################################################

library(ggplot2)
bmp(file ="十字花科multiloop中不同长度branch 数目的分布.bmp",width =800*2,height = 700*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("十字花科multiloop中不同长度branch 数目的分布.csv")
ggplot(data=df,aes(x=length,y=number))+
  geom_bar(stat = 'identity',fill="red2",color="black",alpha=0.6,width=0.5,position = "dodge")+
  scale_y_continuous(limits = c(0,2800),breaks=seq(0,2800,400))+
  # scale_x_continuous(limits = c(0,7),breaks=seq(1,6,1),
  #                    labels=c("2","3","4","5","6","7"))+
  scale_x_continuous(breaks=c(1,2,3,4,5,6),
                     labels=c("2","3","4","5","6","7"))+
  theme_classic()+
  labs(x="Number of multiloop branches",y="Frequency")+
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 20,hjust = 0.5,family = "serif"),
        axis.title = element_text(face = 'bold',color = 'black',size = 20,
                                    hjust = 0.5,family = "serif"),

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

#####################################################################################


library(ggplot2)
bmp(file ="禾本科multiloop中不同长度branch 数目的分布.bmp",width =800*2,height = 700*2,units = "px",res =72*2)
# df$m<-c(1,2,3,4,5,6,7,9)#添加连续变量
df=read.csv("禾本科multiloop中不同长度branch 数目的分布.csv")
ggplot(data=df,aes(x=length,y=number))+
  geom_bar(stat = 'identity',fill="red2",color="black",alpha=0.6,width=0.5,position = "dodge")+
  scale_y_continuous(limits = c(0,2800),breaks=seq(0,2800,400))+
  # scale_x_continuous(limits = c(0,7),breaks=seq(1,6,1),
  #                    labels=c("2","3","4","5","6","7"))+
  scale_x_continuous(breaks=c(1,2,3,4,5,6),
                     labels=c("2","3","4","5","6","7"))+
  theme_classic()+
  labs(x="Number of multiloop branches",y="Frequency")+
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 20,hjust = 0.5,family = "serif"),
        axis.title = element_text(face = 'bold',color = 'black',size = 20,
                                  hjust = 0.5,family = "serif"),
        
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