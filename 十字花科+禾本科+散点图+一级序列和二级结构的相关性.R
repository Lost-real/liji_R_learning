library(ggplot2)

bmp(file ="十字花科散点图二级结构和一级结构的相关性.bmp",
    width =1000*3,height = 750*3,units = "px",res =72*2)
df=read.csv("十字花科散点图二级结构和一级结构的相关性.csv")
# fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
# summary(fit)
ggplot(df,aes(x=Bra_primary_sequence,y=Bra_secondary_structure))+
  geom_point(size=3,color="red",alpha=0.5)+
  geom_rect(aes(xmin = c(0.3),
                xmax = c(0.8),
                ymin = 0.564, ymax = 0.597),
            fill = "white",alpha=0.2,color="black",cex=0.9)+
  annotate('segment',x=0.318,xend = 0.358,y=0.578,yend =0.578,
           linetype=1,cex=1.5)+
  annotate('text',x=0.59,y=0.58,label='linear fit: y= 0.716909x-0.294121',
           fontface='bold',size=13,family="serif")+
  scale_y_continuous(limits = c(0,0.6),breaks=seq(0,0.6,0.1))+
  scale_x_continuous(limits = c(0,1),breaks=seq(0,1,0.2))+
  theme_classic()+
  labs(x = "The conservation of primary sequence", y = "The conservation of secondary structure")+
  theme(
    plot.margin=grid::unit(c(t=1,r=1,b=.1,l=0.5), "cm"),
    axis.line=element_line(colour="black", size=1),
    axis.title.x=element_text(size=35,face="bold",family = "serif"),
    axis.title.y=element_text(size=35,face="bold",family = "serif",vjus=2),
    axis.ticks.length=grid::unit(.3, "cm"),
    axis.text=element_text(size=35,face="bold",family = "serif"),
    # axis.title=element_blank(),
    panel.grid = element_blank()
  )+
  geom_smooth(method = "lm",formula=y~x,color="black")
# geom_line(data = df02,aes(a,b),cex=1.2)

dev.off()

df03=read.csv("十字花科散点图二级结构和一级结构的相关性.csv")

cor(df03)


df=read.csv("十字花科散点图二级结构和一级结构的相关性.csv")
fit<-lm(Bra_secondary_structure~Bra_primary_sequence,data = df)
summary(fit)


#########################################################################

library(ggplot2)

bmp(file ="禾本科散点图二级结构和一级结构的相关性.bmp",
    width =1000*3,height = 750*3,units = "px",res =72*2)
df=read.csv("禾本科散点图二级结构和一级结构的相关性.csv")
# fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
# summary(fit)
ggplot(df,aes(x=Gra_primary_sequence,y=Gra_secondary_structure))+
  geom_point(size=3,color="red",alpha=0.7)+
  geom_rect(aes(xmin = c(0.3),
                xmax = c(0.8),
                ymin = 0.564, ymax = 0.597),
            fill = "white",alpha=0.2,color="black",cex=0.9)+
  annotate('segment',x=0.318,xend = 0.358,y=0.578,yend =0.578,
           linetype=1,cex=1.5)+
  annotate('text',x=0.588,y=0.58,label='linear fit: y= 0.588619x-0.195336',
           fontface='bold',size=13,family="serif")+
  scale_y_continuous(limits = c(0,0.6),breaks=seq(0,0.6,0.1))+
  scale_x_continuous(limits = c(0,1),breaks=seq(0,1,0.2))+
  theme_classic()+
  labs(x = "The conservation of primary sequence", y = "The conservation of secondary structure")+
  theme(
    plot.margin=grid::unit(c(t=1,r=1,b=.1,l=0.5), "cm"),
    axis.line=element_line(colour="black", size=1),
    axis.title.x=element_text(size=35,face="bold",family = "serif"),
    axis.title.y=element_text(size=35,face="bold",family = "serif",vjus=2),
    axis.ticks.length=grid::unit(.3, "cm"),
    axis.text=element_text(size=35,face="bold",family = "serif"),
    # axis.title=element_blank(),
    panel.grid = element_blank()
  )+
  geom_smooth(method = "lm",formula=y~x,color="black")
# geom_line(data = df02,aes(a,b),cex=1.2)

dev.off()


df03=read.csv("禾本科散点图二级结构和一级结构的相关性.csv")

cor(df03)


df=read.csv("禾本科散点图二级结构和一级结构的相关性.csv")
fit<-lm(Gra_secondary_structure~Gra_primary_sequence,data = df)
summary(fit)
