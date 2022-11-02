---
  title: "barplot"
author: "MZBJ"
date: "2020/4/14"
---
  # 导入所需的包
  library(ggplot2)
library(ggsignif)
library(ggpubr)
# setwd("F:/HJH/mzbj/cell") 
# 导入数据
plot_data1 <- read.csv(file = "TE-conservation差异柱状图.csv")
# plot_data2 <- read.csv(file = "00001散点图.csv")
#-----------------------
p<- ggplot()+ 
  geom_bar(data=plot_data1,mapping=aes(x=group,y=mean), #柱状图
           fill = "white",
           size = 1.5,
           color = c("black","black","black","black","black","black"),
           position="dodge", # 柱状图格式
           stat="identity", # 数据格式
           width = 0.6)+  # 柱状图尺寸
  # geom_jitter(data=plot_data2, #散点
  #             mapping=aes(x=group,y=Retive_Abundance,fill = group,colour = group,shape = group),
  #             size = 2,
  #             height = 0.05,#散点纵向抖动
  #             
  #             width = 0.1)+ #散点横向抖动
  # scale_color_manual(values = c("black","black","black","black","black"))+ #散点颜色
  geom_signif(data=plot_data1,
              # ,mapping=aes(x=group,y=Retive_Abundance), # 不同组别的显著性
              comparisons = list(c("a", "h"), c("b", "h"), c("c", "h")),# 哪些组进行比较
              annotation=c("**","*","**"), # 显著性差异做标记
              map_signif_level=T, # T为显著性，F为p value
              tip_length=c(0,0,0,0,0,0), # 修改显著性线两端的长短
              y_position = c(0.8,1.0,1.2), # 设置显著性线的位置高度
              size=1, # 修改线的粗细
              textsize = 7, # 修改*标记的大小
              test = "t.test")+ # 检验的类型
  geom_errorbar(data=plot_data1,mapping=aes(x = group,ymin = mean-sd, ymax = mean+sd), # 误差线添加
                width = 0.3, #误差线的宽度
                color = c("black","black","black","black","black","black"), #颜色
                size=0.8)+ #粗细
  scale_y_continuous(limits =c(0,1.5),expand = c(0,0),breaks=seq(0,1.5,0.3))+ # y轴的范围
  theme_classic(  # 主题设置，这个是无线条主题
    base_line_size = 1 # 坐标轴的粗细
  )+
  labs(title="The relationship of TE with Conservation",x="",y="The mean of TE")+ # 添加标题，x轴，y轴内容
  theme(plot.title = element_text(size = 15,
                                  colour = "black",
                                  hjust = 0.5),
        axis.title.y = element_text(size = 15, color = "black",
                                    face = "bold", 
                                    vjust = 1.9, 
                                    hjust = 0.5, 
                                    angle = 90),
        # family = "myFont"
        legend.title = element_text(color="black", # 修改图例的标题
                                    size=15, 
                                    face="bold"),
        legend.text = element_text(color="black", # 设置图例标签文字
                                   size = 10, 
                                   face = "bold"),
        axis.text.x = element_text(size = 13,  # 修改X轴上字体大小，
                                   color = "black", # 颜色
                                   face = "bold", #  face取值：plain普通，bold加粗，italic斜体，bold.italic斜体加粗
                                   vjust = 0.5, # 位置
                                   hjust = 0.5, 
                                   angle = 0), #角度
        axis.text.y = element_text(size = 13,  
                                   color = "black",
                                   face = "bold", 
                                   vjust = 0.5, 
                                   hjust = 0.5, 
                                   angle = 0) 
  ) 
p

