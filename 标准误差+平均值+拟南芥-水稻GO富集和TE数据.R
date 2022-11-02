

# library(ggsignif)
library(ggplot2)
bmp(file ="标准误差+平均值+拟南芥GO富集和TE数据.bmp",width =1700*3,height = 1000*3,units = "px",res =72*3)
df<-read.csv("标准误差+平均值+拟南芥GO富集和TE数据.csv")
df$group=factor(df$group,levels = c("growth and development","response to phytohormone",
                "methylation and modification","metabolic process"))
# df$group<-sort(df$group)
ggplot(df,aes(x = description1, y = mean,colour=group)) +
  geom_errorbar(aes(ymin=mean-sem,ymax=mean+sem),width=0.6,size=1)+
  geom_point(size=3)+
  theme_classic()+
  scale_colour_manual(values=c("brown2","chocolate1","royalblue2","cadetblue3"))+
  scale_x_continuous(breaks=seq(1,24,1),
    labels=c("organic acid catabolic process","terpenoid metabolic process",
      "acyl-CoA metabolic process","organophosphate biosynthetic process",
      "tetrahydrofolate metabolic process","histone methylation","peptidyl-lysine methylation",
      "protein methylation","histone lysine methylation","DNA methylation",
      "RNA modification","macromolecule methylation","methylation",
      "gibberellin mediated signaling pathway","response to gibberellin",
      "response to auxin","developmental maturation",
      "plant epidermal cell differentiation","regulation of meristem growth",
      "meristem maintenance","meristem growth","regulation of developmental growth",
      "regulation of growth","plant-type cell wall biogenesis"))+
  scale_y_continuous(limits=c(0,3),breaks=seq(0,3,0.5))+
  labs(x="",y="The mean of TE (Top10% and Bottom10%)")+
  theme(
    axis.text.x=element_text(size=26,face="bold",family = "serif",angle = 0,hjust = 1),
    axis.text.y=element_text(size=26,face="bold",family = "serif",angle = 0),
    axis.title=element_text(size=35,face="bold",family = "serif",angle = 0),
    axis.line=element_line(colour="black", size=1),
    legend.text=element_text(colour="black",size=20,family = "serif",face="bold"),
    legend.title=element_blank()
  )+
  coord_flip()
dev.off()
