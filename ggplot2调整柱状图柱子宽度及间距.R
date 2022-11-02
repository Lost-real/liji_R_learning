library(ggplot2)
library(ggprism)

#数据
df=read.csv("ggplot2调整柱状图柱子宽度及间距.csv")


p<-ggplot(df,aes(group,value,color=group,fill=group))+
  labs(x="Samples",y=NULL)+
  theme_prism(palette = "candy_bright",
              base_fontface = "plain",
              base_family = "serif",
              base_size = 16,
              base_line_size = 0.8,
              axis_text_angle = 45)+
  scale_fill_prism(palette = "candy_bright")

p+geom_bar(stat="identity",position="dodge")

#调整柱子宽度
p+geom_bar(stat="summary",fun=mean,position="dodge",width =0.5)

df$x<-c(1,2,3)#添加连续变量

p1<-ggplot(df,aes(x,value,color=group,fill=group))+
  geom_bar(stat="identity",position="dodge",width = 0.5) +
  labs(x="Samples",y=NULL)+#标题
  theme_prism(palette = "candy_bright",
              base_fontface = "plain",
              base_family = "serif",
              base_size = 16,
              base_line_size = 0.8,
              axis_text_angle = 45)+
  scale_fill_prism(palette = "candy_bright")
p1

# 改变X轴及其标签
p1+scale_x_continuous(limits=c(0.5,3.5),breaks=c(1,2,3),
                      labels = c('A','B','C'))
##############################################################
#第二个修改柱子间距
library(ggplot2)
# library(ggpubr)
# bmp(file ="十字花科RNA二级结构segment位置分布.bmp",width =750*2,height = 700*2,units = "px",res =72*2)
df=read.csv("十字花科RNA二级结构segment位置分布.csv")
df$x<-c(1,2,3,4,5,6,7,8,9)#添加连续变量，负责柱子间距
ggplot(data=df,aes(x,Percentage))+
  geom_bar(stat = 'identity',
           #牛逼，修改柱子的颜色
           #fill = ifelse(df$Percentage>10,'gold','gray40'),
           fill="red2",
           color="black",alpha=0.5,width=0.5)+
  scale_y_continuous(limits = c(0,20),breaks=seq(0,20,5))+
  theme_bw()+
  theme(axis.text = element_text(face = 'bold',color = 'black',
                                 size = 18,hjust = 0.5,family = "Times New Roman"),
        axis.title.y = element_text(face = 'bold',color = 'black',size = 20,
                                    hjust = 0.5,family = "Times New Roman"),
        axis.title.x=element_blank(),
        # legend.position = 'right',
        # legend.text = element_text(face = 'bold',color = 'black',size = 10,
        #                            hjust = 0.5,family = "Times New Roman"),
        # legend.title = element_text(face = 'bold',color = 'black',
        #                             size = 12,hjust = 0.5,family = "Times New Roman"),
        axis.line.y = element_line(colour="grey20", size=1),
        axis.line.x = element_line(colour="grey20", size=1),
        axis.ticks.x=element_line(colour="grey20"),
        axis.ticks.length=grid::unit(.15, "cm"),
        # legend.position = "top"
        panel.grid = element_blank()
  )+
  scale_x_continuous(limits=c(0,10),breaks=seq(1,9,1),
                     labels = c("0-10","2","3","4","5","6","7","8","9"))