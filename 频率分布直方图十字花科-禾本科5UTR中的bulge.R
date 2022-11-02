library(ggplot2)
# library(ggpubr)
bmp(file ="禾本科5UTR中bulges的长度分布.bmp",width =1000*2,height = 750*2,units = "px",res =72*2)

df=read.csv("禾本科5UTR中bulges的长度分布.csv")
ggplot(df,aes(x=length,y=..count..))+
  geom_histogram(alpha=0.5,color="black",fill="red2")+
  theme_classic()+
  labs(x="Length of bulge (nt)",y="Frequency")+
  # geom_density(data=phynotype,aes(x=RSRDS,..density..),size=0.4)+  
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 18,hjust = 0.5,family = "serif"),
        #注意axis.title.x中vjust越小越偏下
        axis.title.x = element_text(face = 'bold',color = 'black',size = 20,
                                    vjust=0.1,hjust = 0.5,family = "serif"),
#注意axis.title.y中vjust越大越偏左;
        axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
                                    vjust = 2,hjust = 0.5,family = "serif"),
        # axis.title.x=element_blank(),
        # legend.position = 'right',
        # legend.text = element_text(face = 'bold',color = 'black',size = 10,
        #                            hjust = 0.5,family = "Times New Roman"),
        # legend.title = element_text(face = 'bold',color = 'black',
        #                             size = 12,hjust = 0.5,family = "Times New Roman"),
        axis.line.y = element_line(colour="grey20", size=1),
        axis.line.x = element_line(colour="grey20", size=1),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.15, "cm")
  )+
  scale_x_continuous(limits = c(0,31), breaks = seq(1,30,2))+
  scale_y_continuous(limits = c(0,6000), breaks = seq(0,6000,1000))
# scale_y_continuous(expand = c(0, 0),limits = c(0,0.4), breaks = seq(0,0.4,0.1))
# geom_density(data=df,aes(x=At5UTR,..density..),size=0.8)
# +geom_vline(xintercept = 150,lty="dashed",size=1,color="black")

dev.off()


#######################################################################################


library(ggplot2)
# library(ggpubr)
bmp(file ="十字花科5UTR中bulges的长度分布.bmp",width =1000*2,height = 750*2,units = "px",res =72*2)

df=read.csv("十字花科5UTR中bulges的长度分布.csv")
ggplot(df,aes(x=length,y=..count..))+
  geom_histogram(alpha=0.5,color="black",fill="red2")+
  theme_classic()+
  labs(x="Length of bulge (nt)",y="Frequency")+
  # geom_density(data=phynotype,aes(x=RSRDS,..density..),size=0.4)+  
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 18,hjust = 0.5,family = "serif"),
#注意axis.title.x中vjust越大越偏下
        axis.title.x = element_text(face = 'bold',color = 'black',size = 20,
                            vjust=0.1,hjust = 0.5,family = "serif"),
#注意axis.title.y中vjust越大越偏左
        axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
                          vjust = 2,hjust = 0.5,family = "serif"),
        # axis.title.x=element_blank(),
        # legend.position = 'right',
        # legend.text = element_text(face = 'bold',color = 'black',size = 10,
        #                            hjust = 0.5,family = "Times New Roman"),
        # legend.title = element_text(face = 'bold',color = 'black',
        #                             size = 12,hjust = 0.5,family = "Times New Roman"),
        axis.line.y = element_line(colour="grey20", size=1),
        axis.line.x = element_line(colour="grey20", size=1),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.15, "cm")
  )+
  scale_x_continuous(limits = c(0,31), breaks = seq(1,30,2))+
  scale_y_continuous(limits = c(0,6000), breaks = seq(0,6000,1000))
# scale_y_continuous(expand = c(0, 0),limits = c(0,0.4), breaks = seq(0,0.4,0.1))
# geom_density(data=df,aes(x=At5UTR,..density..),size=0.8)
# +geom_vline(xintercept = 150,lty="dashed",size=1,color="black")

dev.off()
