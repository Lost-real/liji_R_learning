library(ggplot2)
# library(extrafont)
# library(RColorBrewer)
# df02<- data.frame(a=c(2.5,2.5,3.5,3.5,2.5),
#                  b=c(2.5,3,3,2.5,2.5))
# windowsFonts()
bmp(file ="the correlation of between the frequence of stem and the rank of stem.bmp",width =1000*3,height = 750*3,units = "px",res =72*2)
df=read.csv("the correlation of between the frequence of stem and the rank of stem.csv")
# fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
# summary(fit)
ggplot(df,aes(x=the_rank_of_stem,y=the_frequency_of_stem))+
  geom_point(size=3,color="red",alpha=0.9)+
  geom_rect(aes(xmin = c(2.5),
                xmax = c(4.3),
                ymin = 3.08, ymax = 3.25),
            fill = "white",alpha=0.2,color="black",cex=0.7)+
  annotate('segment',x=2.57,xend = 2.8,y=3.15,yend = 3.15,
           linetype=1,cex=1)+
  annotate('text',x=3.55,y=3.17,label='linear fit: y=-0.763916x+3.024832',
           fontface='bold',size=10,family="serif")+
  theme_classic()+
  labs(x = "log10 rank of stem sequence", y = "log10 frequency of stem sequence")+
  theme(
    axis.line=element_line(colour="black", size=1),
    axis.text=element_text(size=28,face="bold"),
    axis.ticks.length=grid::unit(.3, "cm"),
    axis.title=element_text(size=33,face="bold"),
    # axis.title=element_blank(),
    )+
  geom_smooth(method = "lm",formula=y~x,color="black")
  # geom_line(data = df02,aes(a,b),cex=1.2)



dev.off()


df03=read.csv("十字花科the correlation of between the frequence of stem and the rank of stem.csv")

cor(df03)


df=read.csv("the correlation of between the frequence of stem and the rank of stem.csv")
fit<-lm(the_frequency_of_stem~the_rank_of_stem,data=df)
summary(fit)
