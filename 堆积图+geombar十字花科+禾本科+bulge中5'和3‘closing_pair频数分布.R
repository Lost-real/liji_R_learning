#完整数据
library(ggplot2)
bmp(file ="十字花科5UTR_bulge中5'closing pair频数统计2-1.bmp",width =1000*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("十字花科5UTR_bulge中5'closing pair频数统计2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("GC","CG","UA","AU","GU","UG","AC","CA","CC","GG","AG","UC","AA","CU","GA","UU")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  scale_y_continuous(limits=c(0,6000),breaks=seq(0,6000,1000))+
  
  scale_x_continuous(limits=c(0,31),breaks=seq(1,30,1),
                     labels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15",
                              "16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_fill_manual(values = c("GC"="#8DD3C7","CG"="#BEBADA",
                               "UA"="#CCEBC5","AU"="#FB8072",
                               "GU"="#80B1D3","UG"="#FDB462",
                               "AC"="#B3DE69","CA"="#FCCDE5",
                               "CC"="#D9D9D9","GG"="#BC80BD",
                               "AG"="#FFFFB3","UC"="#FFED6F",
                               "AA"="#7FC97F","CU"="#BEAED4",
                               "GA"="#FDC086","UU"="#FFFF99"),
                    limits=c("GC","CG","UA","AU","GU","UG","AC","CA","CC","GG","AG","UC","AA","CU","GA","UU"),
                    labels=c("G:C Closing pair(5')","C:G Closing pair(5')","U:A Closing pair(5')",
                             "A:U Closing pair(5')","G:U Closing pair(5')","U:G Closing pair(5')",
                             "A:C Closing pair(5')","C:A Closing pair(5')","C:C Closing pair(5')",
                             "G:G Closing pair(5')","A:G Closing pair(5')","U:C Closing pair(5')",
                             "A:A Closing pair(5')","C:U Closing pair(5')","G:A Closing pair(5')",
                             "U:U Closing pair(5')"),
  )+
  
  labs(x="Length of bulge(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.85),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=21,face="bold",family = "serif"),
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
        axis.title=element_text(size=30,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()
########################

#完整数据
library(ggplot2)
bmp(file ="禾本科5UTR_bulge中5'closing pair频数统计2-1.bmp",width =1000*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("禾本科5UTR_bulge中5'closing pair频数统计2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("GC","CG","UA","AU","GU","UG","AC","CA","CC","GG","AG","UC","AA","CU","GA","UU")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  scale_y_continuous(limits=c(0,6000),breaks=seq(0,6000,1000))+
  
  scale_x_continuous(limits=c(0,31),breaks=seq(1,30,1),
                     labels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15",
                              "16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_fill_manual(values = c("GC"="#8DD3C7","CG"="#BEBADA",
                               "UA"="#CCEBC5","AU"="#FB8072",
                               "GU"="#80B1D3","UG"="#FDB462",
                               "AC"="#B3DE69","CA"="#FCCDE5",
                               "CC"="#D9D9D9","GG"="#BC80BD",
                               "AG"="#FFFFB3","UC"="#FFED6F",
                               "AA"="#7FC97F","CU"="#BEAED4",
                               "GA"="#FDC086","UU"="#FFFF99"),
                    limits=c("GC","CG","UA","AU","GU","UG","AC","CA","CC","GG","AG","UC","AA","CU","GA","UU"),
                    labels=c("G:C Closing pair(5')","C:G Closing pair(5')","U:A Closing pair(5')",
                             "A:U Closing pair(5')","G:U Closing pair(5')","U:G Closing pair(5')",
                             "A:C Closing pair(5')","C:A Closing pair(5')","C:C Closing pair(5')",
                             "G:G Closing pair(5')","A:G Closing pair(5')","U:C Closing pair(5')",
                             "A:A Closing pair(5')","C:U Closing pair(5')","G:A Closing pair(5')",
                             "U:U Closing pair(5')"),
  )+
  
  labs(x="Length of bulge(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.85),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=21,face="bold",family = "serif"),
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
        axis.title=element_text(size=30,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()
#####################################################################
#####################################################################
#完整数据
library(ggplot2)
bmp(file ="十字花科5UTR_bulge中3'closing pair频数统计2-1.bmp",width =1000*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("十字花科5UTR_bulge中3'closing pair频数统计2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("GC","CG","UA","AU","GU","UG","AC","CA","CC","GG","AG","UC","AA","CU","GA","UU")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  scale_y_continuous(limits=c(0,6000),breaks=seq(0,6000,1000))+
  
  scale_x_continuous(limits=c(0,31),breaks=seq(1,30,1),
                     labels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15",
                              "16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_fill_manual(values = c("GC"="#8DD3C7","CG"="#BEBADA",
                               "UA"="#CCEBC5","AU"="#FB8072",
                               "GU"="#80B1D3","UG"="#FDB462",
                               "AC"="#B3DE69","CA"="#FCCDE5",
                               "CC"="#D9D9D9","GG"="#BC80BD",
                               "AG"="#FFFFB3","UC"="#FFED6F",
                               "AA"="#7FC97F","CU"="#BEAED4",
                               "GA"="#FDC086","UU"="#FFFF99"),
                    limits=c("GC","CG","UA","AU","GU","UG","AC","CA","CC","GG","AG","UC","AA","CU","GA","UU"),
                    labels=c("G:C Closing pair(3')","C:G Closing pair(3')","U:A Closing pair(3')",
                             "A:U Closing pair(3')","G:U Closing pair(3')","U:G Closing pair(3')",
                             "A:C Closing pair(3')","C:A Closing pair(3')","C:C Closing pair(3')",
                             "G:G Closing pair(3')","A:G Closing pair(3')","U:C Closing pair(3')",
                             "A:A Closing pair(3')","C:U Closing pair(3')","G:A Closing pair(3')",
                             "U:U Closing pair(3')"),
  )+
  
  labs(x="Length of bulge(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.85),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=21,face="bold",family = "serif"),
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
        axis.title=element_text(size=30,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()
########################

#完整数据
library(ggplot2)
bmp(file ="禾本科5UTR_bulge中3'closing pair频数统计2-1.bmp",width =1000*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("禾本科5UTR_bulge中3'closing pair频数统计2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("GC","CG","UA","AU","GU","UG","AC","CA","CC","GG","AG","UC","AA","CU","GA","UU")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  scale_y_continuous(limits=c(0,6000),breaks=seq(0,6000,1000))+
  
  scale_x_continuous(limits=c(0,31),breaks=seq(1,30,1),
                     labels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15",
                              "16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_fill_manual(values = c("GC"="#8DD3C7","CG"="#BEBADA",
                               "UA"="#CCEBC5","AU"="#FB8072",
                               "GU"="#80B1D3","UG"="#FDB462",
                               "AC"="#B3DE69","CA"="#FCCDE5",
                               "CC"="#D9D9D9","GG"="#BC80BD",
                               "AG"="#FFFFB3","UC"="#FFED6F",
                               "AA"="#7FC97F","CU"="#BEAED4",
                               "GA"="#FDC086","UU"="#FFFF99"),
                    limits=c("GC","CG","UA","AU","GU","UG","AC","CA","CC","GG","AG","UC","AA","CU","GA","UU"),
                    labels=c("G:C Closing pair(3')","C:G Closing pair(3')","U:A Closing pair(3')",
                             "A:U Closing pair(3')","G:U Closing pair(3')","U:G Closing pair(3')",
                             "A:C Closing pair(3')","C:A Closing pair(3')","C:C Closing pair(3')",
                             "G:G Closing pair(3')","A:G Closing pair(3')","U:C Closing pair(3')",
                             "A:A Closing pair(3')","C:U Closing pair(3')","G:A Closing pair(3')",
                             "U:U Closing pair(3')"),
  )+
  
  labs(x="Length of bulge(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.85),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=21,face="bold",family = "serif"),
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
        axis.title=element_text(size=30,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()
