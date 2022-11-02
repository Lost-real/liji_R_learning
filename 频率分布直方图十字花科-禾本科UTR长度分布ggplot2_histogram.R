library(ggplot2)
# library(ggpubr)
bmp(file ="拟南芥5UTR长度分布.bmp",width =650*2,height = 700*2,units = "px",res =72*2)

df=read.csv("拟南芥5-3UTR长度分布.csv")
ggplot(df,aes(x=At5UTR,y=..density..))+
  geom_histogram(bins=150,alpha=0.6,color="black",fill="red2")+
  theme_classic()+
  labs(y="Density")+
  # geom_density(data=phynotype,aes(x=RSRDS,..density..),size=0.4)+  
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
        axis.line.y = element_line(colour="black", size=1),
        axis.line.x = element_line(colour="black", size=1),
        axis.ticks.x=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm")
  )+
  scale_x_continuous(limits = c(0,1100), breaks = seq(0,1000,100))+
  scale_y_continuous(limits = c(0,0.006), breaks = seq(0,0.006,0.001))+
  # geom_density(data=df,aes(x=At5UTR,..density..),size=0.8)
  geom_vline(xintercept = 151,lty="dashed",size=1,color="black")

dev.off()


library(ggplot2)
# library(ggpubr)
bmp(file ="水稻5UTR长度分布.bmp",width =650*2,height = 700*2,units = "px",res =72*2)

df=read.csv("水稻5-3UTR长度分布.csv")
ggplot(df,aes(x=Os5UTR,y=..density..))+
  geom_histogram(bins=150,alpha=0.6,color="black",fill="red2")+
  theme_classic()+
  labs(y="Density")+
  # geom_density(data=phynotype,aes(x=RSRDS,..density..),size=0.4)+  
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
        axis.line.y = element_line(colour="black", size=1),
        axis.line.x = element_line(colour="black", size=1),
        axis.ticks.x=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm")
  )+
  scale_x_continuous(limits = c(0,1100), breaks = seq(0,1000,100))+
  scale_y_continuous(limits = c(0,0.006), breaks = seq(0,0.006,0.001))+
  # geom_density(data=df,aes(x=At5UTR,..density..),size=0.8)
  geom_vline(xintercept = 103,lty="dashed",size=1,color="black")

dev.off()


library(ggplot2)
# library(ggpubr)
bmp(file ="拟南芥3UTR长度分布.bmp",width =650*2,height = 700*2,units = "px",res =72*2)

df=read.csv("拟南芥5-3UTR长度分布.csv")
ggplot(df,aes(x=At3UTR,y=..density..))+
  geom_histogram(bins=150,alpha=0.6,color="black",fill="red2")+
  theme_classic()+
  labs(y="Density")+
  # geom_density(data=phynotype,aes(x=RSRDS,..density..),size=0.4)+  
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
        axis.line.y = element_line(colour="black", size=1),
        axis.line.x = element_line(colour="black", size=1),
        axis.ticks.x=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm")
  )+
  scale_x_continuous(limits = c(0,1100), breaks = seq(0,1000,100))+
  scale_y_continuous(limits = c(0,0.005), breaks = seq(0,0.005,0.001))+
  # geom_density(data=df,aes(x=At5UTR,..density..),size=0.8)
  geom_vline(xintercept = 255,lty="dashed",size=1,color="black")

dev.off()


library(ggplot2)
# library(ggpubr)
bmp(file ="水稻3UTR长度分布.bmp",width =650*2,height = 700*2,units = "px",res =72*2)

df=read.csv("水稻5-3UTR长度分布.csv")
ggplot(df,aes(x=Os3UTR,y=..density..))+
  geom_histogram(bins=150,alpha=0.6,color="black",fill="red2")+
  theme_classic()+
  labs(y="Density")+
  # geom_density(data=phynotype,aes(x=RSRDS,..density..),size=0.4)+  
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
        axis.line.y = element_line(colour="black", size=1),
        axis.line.x = element_line(colour="black", size=1),
        axis.ticks.x=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm")
  )+
  scale_x_continuous(limits = c(0,1100), breaks = seq(0,1000,100))+
  scale_y_continuous(limits = c(0,0.005), breaks = seq(0,0.005,0.001))+
  # geom_density(data=df,aes(x=At5UTR,..density..),size=0.8)
  geom_vline(xintercept = 312,lty="dashed",size=1,color="black")

dev.off()