library(ggplot2)

#the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence
# library(extrafont)
# library(RColorBrewer)
# df02<- data.frame(a=c(2.5,2.5,3.5,3.5,2.5),
#                  b=c(2.5,3,3,2.5,2.5))
# windowsFonts()
bmp(file ="十字花科the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence.bmp",
    width =1000*3,height = 750*3,units = "px",res =72*2)
df=read.csv("十字花科the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence.csv")
# fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
# summary(fit)
ggplot(df,aes(x=the_rank_of_stem,y=the_frequency_of_stem))+
  geom_point(size=3,color="red",alpha=0.8)+
  geom_rect(aes(xmin = c(2.1),
                xmax = c(4.1),
                ymin = 3.3, ymax = 3.5),
            fill = "white",alpha=0.2,color="black",cex=1)+
  annotate('segment',x=2.15,xend = 2.35,y=3.39,yend = 3.39,
           linetype=1,cex=1.5)+
  annotate('text',x=3.25,y=3.4,label='linear fit: y= -0.794860x+3.094943',
           fontface='bold',size=12,family="serif")+
  scale_y_continuous(limits = c(0,3.5),breaks=seq(0,3.5,0.5))+
  scale_x_continuous(limits = c(0,4.2),breaks=seq(0,4.2,0.7))+
  theme_classic()+
  labs(x = "log10 rank of stem sequence", y = "log10 frequency of stem sequence")+
  theme(
    axis.line=element_line(colour="black", size=1),
    axis.text=element_text(size=29,face="bold",family = "serif"),
    axis.ticks.length=grid::unit(.3, "cm"),
    axis.title=element_text(size=35,face="bold",family = "serif"),
    # axis.title=element_blank(),
    )+
  geom_smooth(method = "lm",formula=y~x,color="black")
  # geom_line(data = df02,aes(a,b),cex=1.2)



dev.off()



df03=read.csv("十字花科the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence.csv")

cor(df03)


df=read.csv("十字花科the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence.csv")
fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
summary(fit)

##############################################################################
library(ggplot2)

#the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence
# library(extrafont)
# library(RColorBrewer)
# df02<- data.frame(a=c(2.5,2.5,3.5,3.5,2.5),
#                  b=c(2.5,3,3,2.5,2.5))
# windowsFonts()
bmp(file ="禾本科the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence.bmp",
    width =1000*3,height = 750*3,units = "px",res =72*2)
df=read.csv("禾本科the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence.csv")
# fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
# summary(fit)
ggplot(df,aes(x=the_rank_of_stem,y=the_frequency_of_stem))+
  geom_point(size=3,color="red",alpha=0.8)+
  geom_rect(aes(xmin = c(2.1),
                xmax = c(4.1),
                ymin = 3.3, ymax = 3.5),
            fill = "white",alpha=0.2,color="black",cex=1)+
  annotate('segment',x=2.15,xend = 2.35,y=3.39,yend = 3.39,
           linetype=1,cex=1.5)+
  annotate('text',x=3.25,y=3.4,label='linear fit: y= -0.714549x+2.469595',
           fontface='bold',size=12,family="serif")+
  scale_y_continuous(limits = c(0,3.5),breaks=seq(0,3.5,0.5))+
  scale_x_continuous(limits = c(0,4.2),breaks=seq(0,4.2,0.7))+
  # scale_y_continuous(limits = c(0,4),breaks=seq(0,4,1))+
  # scale_x_continuous(limits = c(0,5),breaks=seq(0,5,1))+
  theme_classic()+
  labs(x = "log10 rank of stem sequence", y = "log10 frequency of stem sequence")+
  theme(
    axis.line=element_line(colour="black", size=1),
    axis.text=element_text(size=28,face="bold",family = "serif"),
    axis.ticks.length=grid::unit(.3, "cm"),
    axis.title=element_text(size=33,face="bold",family = "serif"),
    # axis.title=element_blank(),
    panel.grid = element_blank()
  )+
  geom_smooth(method = "lm",formula=y~x,color="black")
# geom_line(data = df02,aes(a,b),cex=1.2)



dev.off()



df03=read.csv("禾本科the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence.csv")

cor(df03)


df=read.csv("禾本科the correlation of between the frequence of stem and the rank of stem去除重复的反向重复stem sequence.csv")
fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
summary(fit)

