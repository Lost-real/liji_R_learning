library(ggplot2)
bmp(file ="At5utr200bp6braTE14492t_test检验1柱状图+误差线.bmp",width =1000*2,height = 800*2,units = "px",res =72*2)

df=read.csv("At5utr200bp6braTE14492t_test检验1柱状图+误差线.csv")
# head(df)
df$Conservation=as.factor(df$Conservation)
ggplot(df,aes(x=Conservation,y=TE,fill=Conservation,color=Conservation))+
  scale_x_discrete(breaks=c(1,2,3,4),
                   labels=c("0.2~0.5","0.5~0.6","0.6~0.7","0.7~1.0"))+
  scale_y_continuous(expand=c(0,0),limits=c(0,1.2),breaks=seq(0,1.2,0.2))+
  theme_classic()+
  labs(x="The  Conservation  of  5'UTR  primary  sequence",y = "The  mean  of  TE")+
  scale_fill_manual(values=c("#4682BE","#707F8E","#C3792F","#EE7600"))+
  scale_color_manual(values=c("black","black","black","black"))+
  geom_errorbar(aes(ymin=TE-sem,ymax=TE+sem),width=0.2)+
  geom_col(width=0.4)+
  # geom_point(size=10)+
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 30,hjust = 0.5,family = "serif"),
        axis.title = element_text(face = 'bold',color = 'black',size = 30,
                                    hjust = 0.5,family = "serif"),
        # axis.title.x=element_blank(),
        # legend.position = 'right',
        # legend.text = element_text(face = 'bold',color = 'black',size = 10,
        #                            hjust = 0.5,family = "Times New Roman"),
        # legend.title = element_text(face = 'bold',color = 'black',
        #                             size = 12,hjust = 0.5,family = "Times New Roman"),
        plot.margin=grid::unit(c(t=1,r=1,b=1,l=0.5), "cm"),
        axis.line.y = element_line(colour="grey20", size=1),
        axis.line.x = element_line(colour="grey20", size=1),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.15, "cm"),
        panel.grid = element_blank()

  )
dev.off()
