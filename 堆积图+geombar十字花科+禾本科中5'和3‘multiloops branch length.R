
###############################################################################
#完整数据
library(ggplot2)
bmp(file ="十字花科 multiloop branch length分布2-1.bmp",width =1000*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("十字花科 multiloop branch length分布2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("2_branch","3_branch","4_branch","5_branch")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  scale_y_continuous(limits=c(0,1500),breaks=seq(0,1500,300))+
  
  # scale_x_continuous(limits=c(-1,51),breaks=seq(0,50,2),
  #                    labels=c("0","2","4","6","8","10","12","14","16","18","20","22","24","26","28",
  #                             "30","32","34","36","38","40","42","44","46","48","50"))+
  scale_x_continuous(limits=c(-1,101),breaks=seq(0,100,4),
                     labels=c("0","4","8","12","16","20","24","28","32","36","40","44","48","52","56",
                              "60","64","68","72","76","80","84","88","92","96","100"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_fill_manual(values = c("2_branch"="#CCEBC5","3_branch"="#BEBADA",
                               "4_branch"="#8DD3C7","5_branch"="#FB8072"),
limits=c("2_branch","3_branch","4_branch","5_branch"),
labels=c("2 branch multiloops","3 branch multiloops","4 branch multiloops",
         "5 branch multiloops"),
  )+
  
  labs(x="Branch Length (nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.95),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=21,family = "serif",face = "bold"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8
        #                             ),#vjust越大越上
        legend.title = element_blank(),#vjust越大越上
        plot.margin=grid::unit(c(t=0.8,r=3.8,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=25,face="bold",family = "serif"),
        axis.title=element_text(size=25,face="bold",vjust=0.2,family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()

####################################################################################
#完整数据
library(ggplot2)
bmp(file ="禾本科 multiloop branch length分布2-1.bmp",width =1000*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("禾本科 multiloop branch length分布2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("2_branch","3_branch","4_branch","5_branch")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  scale_y_continuous(limits=c(0,1500),breaks=seq(0,1500,300))+
  
  # scale_x_continuous(limits=c(-1,51),breaks=seq(0,50,2),
  #                    labels=c("0","2","4","6","8","10","12","14","16","18","20","22","24","26","28",
  #                             "30","32","34","36","38","40","42","44","46","48","50"))+
  scale_x_continuous(limits=c(-1,101),breaks=seq(0,100,4),
                     labels=c("0","4","8","12","16","20","24","28","32","36","40","44","48","52","56",
                              "60","64","68","72","76","80","84","88","92","96","100"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_fill_manual(values = c("2_branch"="#CCEBC5","3_branch"="#BEBADA",
                               "4_branch"="#8DD3C7","5_branch"="#FB8072"),
                    limits=c("2_branch","3_branch","4_branch","5_branch"),
                    labels=c("2 branch multiloops","3 branch multiloops","4 branch multiloops",
                             "5 branch multiloops"),
  )+
  
  labs(x="Branch Length (nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.95),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=21,family = "serif",face = "bold"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8
        #                             ),#vjust越大越上
        legend.title = element_blank(),#vjust越大越上
        plot.margin=grid::unit(c(t=0.8,r=3.8,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=25,face="bold",family = "serif"),
        axis.title=element_text(size=25,face="bold",vjust=0.2,family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()