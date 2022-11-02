#完整数据
library(ggplot2)
bmp(file ="十字花科5UTR_internal loops5'closing pair频数统计2-1.bmp",width =900*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("十字花科5UTR_internal loops5'closing pair频数统计2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("AU","CG","UA","GC","UG","GU","AA","CA","AC","AG","GA","GG","CU","CC","UU","UC")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  # scale_x_continuous(limits=c(0,28),breaks=seq(1,27,2),
  #                    labels=c("1","3","5","7","9",
  #                             "11","13","15","17","19","21","23"
  #                             ,"25","27"))+
  
  scale_x_continuous(limits=c(0,28),breaks=seq(1,27,1),
                     labels=c("1","2","3","4","5","6","7","8","9","10","11","12","13",
                              "14","15","16","17","18","19","20","21","22","23","24","25","26","27"))+
#scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_y_continuous(limits=c(0,6300),breaks=seq(0,6300,900))+
  scale_fill_manual(values = c("AU"="#8DD3C7","CG"="#BEBADA",
                               "UA"="#CCEBC5","GC"="#FB8072",
                               "UG"="#80B1D3","GU"="#FDB462",
                               "AA"="#B3DE69","CA"="#FCCDE5",
                               "AC"="#D9D9D9","AG"="#BC80BD",
                               "GA"="#FFFFB3","GG"="#FFED6F",
                               "CU"="#7FC97F","CC"="#BEAED4",
                               "UU"="#FDC086","UC"="#FFFF99"),
limits=c("AU","CG","UA","GC","UG","GU","AA","CA","AC","AG","GA","GG","CU","CC","UU","UC"),
labels=c("A:U Closing pair(5')","C:G Closing pair(5')","U:A Closing pair(5')",
        "G:C Closing pair(5')","U:G Closing pair(5')","G:U Closing pair(5')",
      "A:A Closing pair(5')","C:A Closing pair(5')","A:C Closing pair(5')",
      "A:G Closing pair(5')","G:A Closing pair(5')","G:G Closing pair(5')",
      "C:U Closing pair(5')","C:C Closing pair(5')","U:U Closing pair(5')",
      "U:C Closing pair(5')"),
  )+
  
  labs(x="5' internal loop length(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.85),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=20,family = "serif",face="bold"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8
        #                             ),#vjust越大越上
        legend.title = element_blank(),#vjust越大越上
        plot.margin=grid::unit(c(t=0.8,r=4,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=20,face="bold",family = "serif"),
        axis.title=element_text(size=30,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()

########################################################################
#完整数据
library(ggplot2)
bmp(file ="禾本科5UTR_internal loops中5'closingpair频数统计2-1.bmp",width =900*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("禾本科5UTR_internal loops中5'closingpair频数统计2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("AU","CG","UA","GC","UG","GU","AA","CA","AC","AG","GA","GG","CU","CC","UU","UC")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  # scale_x_continuous(limits=c(0,28),breaks=seq(1,27,2),
  #                    labels=c("1","3","5","7","9",
  #                             "11","13","15","17","19","21","23"
  #                             ,"25","27"))+
  
  scale_x_continuous(limits=c(0,28),breaks=seq(1,27,1),
                     labels=c("1","2","3","4","5","6","7","8","9","10","11","12","13",
                              "14","15","16","17","18","19","20","21","22","23","24","25","26","27"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_y_continuous(limits=c(0,6300),breaks=seq(0,6300,900))+
  scale_fill_manual(values = c("AU"="#8DD3C7","CG"="#BEBADA",
                               "UA"="#CCEBC5","GC"="#FB8072",
                               "UG"="#80B1D3","GU"="#FDB462",
                               "AA"="#B3DE69","CA"="#FCCDE5",
                               "AC"="#D9D9D9","AG"="#BC80BD",
                               "GA"="#FFFFB3","GG"="#FFED6F",
                               "CU"="#7FC97F","CC"="#BEAED4",
                               "UU"="#FDC086","UC"="#FFFF99"),
                    limits=c("AU","CG","UA","GC","UG","GU","AA","CA","AC","AG","GA","GG","CU","CC","UU","UC"),
                    labels=c("A:U Closing pair(5')","C:G Closing pair(5')","U:A Closing pair(5')",
                             "G:C Closing pair(5')","U:G Closing pair(5')","G:U Closing pair(5')",
                             "A:A Closing pair(5')","C:A Closing pair(5')","A:C Closing pair(5')",
                             "A:G Closing pair(5')","G:A Closing pair(5')","G:G Closing pair(5')",
                             "C:U Closing pair(5')","C:C Closing pair(5')","U:U Closing pair(5')",
                             "U:C Closing pair(5')"),
  )+
  
  labs(x="5' internal loop length(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.85),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=20,family = "serif",face="bold"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8
        #                             ),#vjust越大越上
        legend.title = element_blank(),#vjust越大越上
        plot.margin=grid::unit(c(t=0.8,r=4,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=20,face="bold",family = "serif"),
        axis.title=element_text(size=30,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()

################################################################
###############################################################
#完整数据
library(ggplot2)
bmp(file ="十字花科5UTR_internal loops3'closing pair频数统计2-1.bmp",width =900*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("十字花科5UTR_internal loops3'closing pair频数统计2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("AU","CG","UA","GC","UG","GU","AA","CA","AC","AG","GA","GG","CU","CC","UU","UC")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  # scale_x_continuous(limits=c(0,28),breaks=seq(1,27,2),
  #                    labels=c("1","3","5","7","9",
  #                             "11","13","15","17","19","21","23"
  #                             ,"25","27"))+
  
  scale_x_continuous(limits=c(0,30),breaks=seq(1,29,1),
                     labels=c("1","2","3","4","5","6","7","8","9","10","11","12","13",
                              "14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_y_continuous(limits=c(0,6300),breaks=seq(0,6300,900))+
  scale_fill_manual(values = c("AU"="#8DD3C7","CG"="#BEBADA",
                               "UA"="#CCEBC5","GC"="#FB8072",
                               "UG"="#80B1D3","GU"="#FDB462",
                               "AA"="#B3DE69","CA"="#FCCDE5",
                               "AC"="#D9D9D9","AG"="#BC80BD",
                               "GA"="#FFFFB3","GG"="#FFED6F",
                               "CU"="#7FC97F","CC"="#BEAED4",
                               "UU"="#FDC086","UC"="#FFFF99"),
                    limits=c("AU","CG","UA","GC","UG","GU","AA","CA","AC","AG","GA","GG","CU","CC","UU","UC"),
                    labels=c("A:U Closing pair(3')","C:G Closing pair(3')","U:A Closing pair(3')",
                             "G:C Closing pair(3')","U:G Closing pair(3')","G:U Closing pair(3')",
                             "A:C Closing pair(3')","G:G Closing pair(3')","A:G Closing pair(3')",
                             "C:A Closing pair(3')","A:A Closing pair(3')","G:A Closing pair(3')",
                             "U:U Closing pair(3')","C:C Closing pair(3')","C:U Closing pair(3')",
                             "U:C Closing pair(3')"),
  )+
  
  labs(x="3' internal loop length(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.85),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=20,family = "serif",face="bold"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8
        #                             ),#vjust越大越上
        legend.title = element_blank(),#vjust越大越上
        plot.margin=grid::unit(c(t=0.8,r=4,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=20,face="bold",family = "serif"),
        axis.title=element_text(size=30,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()

########################################################################
#完整数据
library(ggplot2)
bmp(file ="禾本科5UTR_internal loops3'closing pair频数统计2-1.bmp",width =900*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("禾本科5UTR_internal loops3'closing pair频数统计2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("AU","CG","UA","GC","UG","GU","AA","CA","AC","AG","GA","GG","CU","CC","UU","UC")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  # scale_x_continuous(limits=c(0,28),breaks=seq(1,27,2),
  #                    labels=c("1","3","5","7","9",
  #                             "11","13","15","17","19","21","23"
  #                             ,"25","27"))+
  
  scale_x_continuous(limits=c(0,30),breaks=seq(1,29,1),
                     labels=c("1","2","3","4","5","6","7","8","9","10","11","12","13",
                              "14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_y_continuous(limits=c(0,6300),breaks=seq(0,6300,900))+
  scale_fill_manual(values = c("AU"="#8DD3C7","CG"="#BEBADA",
                               "UA"="#CCEBC5","GC"="#FB8072",
                               "UG"="#80B1D3","GU"="#FDB462",
                               "AA"="#B3DE69","CA"="#FCCDE5",
                               "AC"="#D9D9D9","AG"="#BC80BD",
                               "GA"="#FFFFB3","GG"="#FFED6F",
                               "CU"="#7FC97F","CC"="#BEAED4",
                               "UU"="#FDC086","UC"="#FFFF99"),
                    limits=c("AU","CG","UA","GC","UG","GU","AA","CA","AC","AG","GA","GG","CU","CC","UU","UC"),
                    labels=c("A:U Closing pair(3')","C:G Closing pair(3')","U:A Closing pair(3')",
                             "G:C Closing pair(3')","U:G Closing pair(3')","G:U Closing pair(3')",
                             "A:C Closing pair(3')","G:G Closing pair(3')","A:G Closing pair(3')",
                             "C:A Closing pair(3')","A:A Closing pair(3')","G:A Closing pair(3')",
                             "U:U Closing pair(3')","C:C Closing pair(3')","C:U Closing pair(3')",
                             "U:C Closing pair(3')"),
  )+
  
  labs(x="3' internal loop length(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.90,0.85),
        legend.direction="vertical",
        legend.text=element_text(colour="black",hjust=0.7,vjust=0.5,size=20,family = "serif",face="bold"),
        legend.margin = margin(t = 8, r = 1.5, b =8, l = 5,unit = "pt"),
        #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
        # legend.title = element_text(color = "black", size = 15,vjust=1.8
        #                             ),#vjust越大越上
        legend.title = element_blank(),#vjust越大越上
        plot.margin=grid::unit(c(t=0.8,r=4,b=.1,l=0.1), "cm"),
        #axis.text.y=element_text(size=)表示y轴文本字体的大小,字体
        # axis.text.y=element_blank(),
        # axis.text.y=element_text(size=0, family="TimesNewRoman", hjust=1),
        #axis.text.x=element_text(size=)表示x轴文本字体的大小
        axis.text=element_text(size=20,face="bold",family = "serif"),
        axis.title=element_text(size=30,face="bold",family = "serif"),
        axis.line=element_line(colour="black", size=1),
        # 		    axis.line.y=element_line(colour="grey20", size=1.5),
        # axis.ticks.y=element_blank(),
        axis.ticks=element_line(colour="black"),
        axis.ticks.length=grid::unit(.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()