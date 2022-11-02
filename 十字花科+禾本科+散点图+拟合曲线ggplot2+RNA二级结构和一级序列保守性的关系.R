library(ggplot2)

#the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence

# windowsFonts()
bmp(file ="十字花科散点图+拟合曲线ggplot2+RNA二级结构和一级序列保守性的关系.bmp",
width =1000*3,height = 750*3,units = "px",res =72*2)
df=read.csv("十字花科散点图+拟合曲线ggplot2+RNA二级结构和一级序列保守性的关系.csv")
# fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
# summary(fit)
ggplot(df,aes(x=the_conservation_of_primary_sequence,y=the_conservation_of_RNA_secondary_structure))+
  geom_point(size=3,color="red",alpha=0.9)+
  geom_rect(aes(xmin = c(0.35),
                xmax = c(0.8),
                ymin = 0.56, ymax = 0.6),
            fill = "white",alpha=0.2,color="black",cex=0.7)+
  annotate('segment',x=0.37,xend = 0.4,y=0.58,yend = 0.58,
           linetype=1,cex=1)+
  annotate('text',x=0.6,y=0.581,label='linear fit: y=0.716909x+-0.294121',
           fontface='bold',size=14,family="serif")+
  theme_bw()+
  scale_x_continuous(limits = c(0.2,1),breaks=seq(0.2,1,0.2))+
  scale_y_continuous(limits = c(0,0.6),breaks=seq(0,6,0.1))+
  labs(x = "The conservation of primary sequence", y = "The conservation of RAN secondary structure ")+
  theme(
    axis.line=element_line(colour="black", size=1),
    axis.text=element_text(size=28,face="bold"),
    axis.ticks.length=grid::unit(.3, "cm"),
    axis.title=element_text(size=33,face="bold"),
    # axis.title=element_blank(),
    panel.grid = element_blank()
    )+
  geom_smooth(method = "lm",formula=y~x,color="black")
  # geom_line(data = df02,aes(a,b),cex=1.2)



dev.off()



df03=read.csv("十字花科散点图+拟合曲线ggplot2+RNA二级结构和一级序列保守性的关系.csv")

cor(df03)


df=read.csv("十字花科散点图+拟合曲线ggplot2+RNA二级结构和一级序列保守性的关系.csv")
fit<-lm(the_conservation_of_RNA_secondary_structure~the_conservation_of_primary_sequence,data=df)
summary(fit)

###########################################################################
##########################################################################
library(ggplot2)
#the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence
# windowsFonts()
bmp(file ="禾本科散点图+拟合曲线ggplot2+RNA二级结构和一级序列保守性的关系.bmp",
    width =1000*3,height = 750*3,units = "px",res =72*2)
df=read.csv("禾本科散点图+拟合曲线ggplot2+RNA二级结构和一级序列保守性的关系.csv")
# fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
# summary(fit)
ggplot(df,aes(x=the_conservation_of_primary_sequence,y=the_conservation_of_RNA_secondary_structure))+
  geom_point(size=3,color="red",alpha=0.9)+
  geom_rect(aes(xmin = c(0.34),
                xmax = c(0.82),
                ymin = 0.56, ymax = 0.6),
            fill = "white",alpha=0.2,color="black",cex=0.7)+
  annotate('segment',x=0.35,xend = 0.39,y=0.58,yend = 0.58,
           linetype=1,cex=1)+
  annotate('text',x=0.6,y=0.581,label='linear fit: y=0.588619x+-0.195336',
           fontface='bold',size=14,family="serif")+
  theme_bw()+
  scale_x_continuous(limits = c(0.1,1),breaks=seq(0.1,1,0.2))+
  scale_y_continuous(limits = c(0,0.6),breaks=seq(0,0.6,0.1))+
  labs(x = "The conservation of primary sequence", y = "The conservation of RAN secondary structure ")+
  theme(
    axis.line=element_line(colour="black", size=1),
    axis.text=element_text(size=28,face="bold"),
    axis.ticks.length=grid::unit(.3, "cm"),
    axis.title=element_text(size=33,face="bold"),
    # axis.title=element_blank(),
    panel.grid = element_blank()
  )+
  # geom_abline(intercept=0.4007267,slope=0.2982242 )+
  geom_smooth(method = "lm",formula=y~x,color="black")
# geom_line(data = df02,aes(a,b),cex=1.2)

dev.off()



df03=read.csv("禾本科散点图+拟合曲线ggplot2+RNA二级结构和一级序列保守性的关系.csv")

cor(df03)


df01=read.csv("禾本科散点图+拟合曲线ggplot2+RNA二级结构和一级序列保守性的关系.csv")
fit<-lm(the_conservation_of_RNA_secondary_structure~the_conservation_of_primary_sequence,data=df01)
summary(fit)

