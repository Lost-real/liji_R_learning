#完整数据
library(ggplot2)
bmp(file ="十字花科 multiloop branch 长度和closing pair分布2-1.bmp",width =1000*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("十字花科 multiloop branch 长度和closing pair分布2-1.csv")

table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("C:G_G:C","C:G_U:A","A:U_A:U","A:U_G:C","G:C_A:U","G:C_G:C",
  "U:A_G:C","C:G_A:U","C:G_C:G","U:A_U:A","A:U_C:G","U:A_A:U","U:A_C:G",
  "A:U_U:A","G:C_C:G","G:C_U:A")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  scale_y_continuous(limits=c(0,1500),breaks=seq(0,1500,300))+
  
  scale_x_continuous(limits=c(-1,51),breaks=seq(0,50,2),
    labels=c("0","2","4","6","8","10","12","14","16","18","20","22","24","26",
        "28","30","32","34","36","38","40","42","44","46","48","50"))+
#scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_fill_manual(values = c("C:G_G:C"="#8DD3C7","C:G_U:A"="#BEBADA",
                               "A:U_A:U"="#CCEBC5","A:U_G:C"="#FB8072",
                               "G:C_A:U"="#80B1D3","G:C_G:C"="#FDB462",
                               "U:A_G:C"="#B3DE69","C:G_A:U"="#FCCDE5",
                               "C:G_C:G"="#D9D9D9","U:A_U:A"="#BC80BD",
                               "A:U_C:G"="#FFFFB3","U:A_A:U"="#FFED6F",
                               "U:A_C:G"="#7FC97F","A:U_U:A"="#BEAED4",
                               "G:C_C:G"="#FDC086","G:C_U:A"="#FFFF99"),
limits=c("C:G_G:C","C:G_U:A","A:U_A:U","A:U_G:C","G:C_A:U","G:C_G:C",
         "U:A_G:C","C:G_A:U","C:G_C:G","U:A_U:A","A:U_C:G","U:A_A:U","U:A_C:G",
         "A:U_U:A","G:C_C:G","G:C_U:A"),
labels=c("C:G G:C Closing pair(5' and 3')","C:G U:A Closing pair(5' and 3')","A:U A:U Closing pair(5' and 3')",
         "A:U G:C Closing pair(5' and 3')","G:C A:U Closing pair(5' and 3')","G:C G:C Closing pair(5' and 3')",
         "U:A G:C Closing pair(5' and 3')","C:G A:U Closing pair(5' and 3')","C:G C:G Closing pair(5' and 3')",
         "U:A U:A Closing pair(5' and 3')","A:U C:G Closing pair(5' and 3')","U:A A:U Closing pair(5' and 3')",
         "U:A C:G Closing pair(5' and 3')","A:U U:A Closing pair(5' and 3')","G:C C:G Closing pair(5' and 3')",
         "G:C U:A Closing pair(5' and 3')"),
  )+
  
  labs(x="5' Multiloop branch length(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.875,0.845),
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
        axis.ticks.length=grid::unit(0.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()
###############################################################################
#完整数据
library(ggplot2)
bmp(file ="禾本科 multiloop branch 长度和closing pair分布2-1.bmp",width =1000*3,height = 800*3,units = "px",res =72*2)
df<- read.csv("禾本科 multiloop branch 长度和closing pair分布2-1.csv")
table(df$y)
df$y<-factor(
  df$y,
  levels = rev(c("C:G_G:C","C:G_U:A","A:U_A:U","A:U_G:C","G:C_A:U","G:C_G:C",
                 "U:A_G:C","C:G_A:U","C:G_C:G","U:A_U:A","A:U_C:G","U:A_A:U","U:A_C:G",
                 "A:U_U:A","G:C_C:G","G:C_U:A")))


ggplot(data = df,aes(x=x,y=number,fill=y))+
  geom_bar(stat = "identity",position = "stack")+
  theme_bw()+
  scale_y_continuous(limits=c(0,1500),breaks=seq(0,1500,300))+
  
  scale_x_continuous(limits=c(-1,51),breaks=seq(0,50,2),
                     labels=c("0","2","4","6","8","10","12","14","16","18","20","22","24","26",
                              "28","30","32","34","36","38","40","42","44","46","48","50"))+
  #scale_fill_discrete(limits=c("CG","GC","AU","UA","GU","UG","GG","AC","CA","CC","AG","CU","GA","UC","AA","UU"))+
  scale_fill_manual(values = c("C:G_G:C"="#8DD3C7","C:G_U:A"="#BEBADA",
                               "A:U_A:U"="#CCEBC5","A:U_G:C"="#FB8072",
                               "G:C_A:U"="#80B1D3","G:C_G:C"="#FDB462",
                               "U:A_G:C"="#B3DE69","C:G_A:U"="#FCCDE5",
                               "C:G_C:G"="#D9D9D9","U:A_U:A"="#BC80BD",
                               "A:U_C:G"="#FFFFB3","U:A_A:U"="#FFED6F",
                               "U:A_C:G"="#7FC97F","A:U_U:A"="#BEAED4",
                               "G:C_C:G"="#FDC086","G:C_U:A"="#FFFF99"),
                    limits=c("C:G_G:C","C:G_U:A","A:U_A:U","A:U_G:C","G:C_A:U","G:C_G:C",
                             "U:A_G:C","C:G_A:U","C:G_C:G","U:A_U:A","A:U_C:G","U:A_A:U","U:A_C:G",
                             "A:U_U:A","G:C_C:G","G:C_U:A"),
                    labels=c("C:G G:C Closing pair(5' and 3')","C:G U:A Closing pair(5' and 3')","A:U A:U Closing pair(5' and 3')",
                             "A:U G:C Closing pair(5' and 3')","G:C A:U Closing pair(5' and 3')","G:C G:C Closing pair(5' and 3')",
                             "U:A G:C Closing pair(5' and 3')","C:G A:U Closing pair(5' and 3')","C:G C:G Closing pair(5' and 3')",
                             "U:A U:A Closing pair(5' and 3')","A:U C:G Closing pair(5' and 3')","U:A A:U Closing pair(5' and 3')",
                             "U:A C:G Closing pair(5' and 3')","A:U U:A Closing pair(5' and 3')","G:C C:G Closing pair(5' and 3')",
                             "G:C U:A Closing pair(5' and 3')"),
  )+
  
  labs(x="5' Multiloop branch length(nt)",y="Frequency")+
  theme(legend.background = element_rect(colour = "black"),
        legend.position=c(0.875,0.845),
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
        axis.ticks.length=grid::unit(0.2, "cm"),
        panel.grid=element_blank()
  )
dev.off()

