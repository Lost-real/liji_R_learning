library(ggplot2)
# library(ggpubr)
bmp(file ="水稻和拟南芥二级结构的相似性.bmp",width =1000*2,height = 750*2,units = "px",res =72*2)

df=read.csv("水稻和拟南芥二级结构的相似性.csv")
ggplot(df,aes(x=similarity,y=..count..))+
  geom_histogram(alpha=0.5,color="black",fill="red2",bins=30)+
  theme_classic()+
  labs(x="",y="Number")+
  # geom_density(data=phynotype,aes(x=RSRDS,..density..),size=0.4)+  
  theme(axis.text = element_text(face = 'bold',colour = 'black',
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
  scale_x_continuous(limits=c(0.4,1.1,0.1),breaks = seq(0.4,1,0.1))+
  scale_y_continuous(limits = c(0,600), breaks = seq(0,600,100))
# scale_y_continuous(expand = c(0, 0),limits = c(0,0.4), breaks = seq(0,0.4,0.1))
# geom_density(data=df,aes(x=At5UTR,..density..),size=0.8)
# +geom_vline(xintercept = 150,lty="dashed",size=1,color="black")

dev.off()

