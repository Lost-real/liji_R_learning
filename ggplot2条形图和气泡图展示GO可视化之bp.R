####################
#使用ggplot2对GO富集结果进行可视化
####使用ggplot2进行可视化:
#取前top20，并简化命名：
library(ggplot2)

Atgo_bp01<- read.table("14492top10%gobp.txt",header = T)

BP <- Atgo_bp01[1:20,]

#自定义主题
mytheme <- theme(axis.title = element_text(size = 13),
                 axis.text = element_text(size = 11),
                 plot.title = element_text(size = 14,
                                           hjust = 0.5,
                                           face = "bold"),
                 legend.title = element_text(size = 13),
                 legend.text = element_text(size = 11))
#在MF的Description中存在过长字符串，我们将长度超过50的部分用...代替：
BP2 <- BP
BP2$Description <- str_trunc(BP$Description,width = 50,side = "right")
BP2$Description

#指定绘图顺序（转换为因子）：
BP2$term <- factor(BP2$Description,levels = rev(BP2$Description))

#GO富集柱形图：
GO_bar <- function(x){
  y <- get(x)
  ggplot(data = y,
         aes(x = Count,
             y = term,
             fill = -log10(pvalue))) +
    scale_y_discrete(labels = function(y) str_wrap(y, width = 50) ) + #label换行，部分term描述太长
    geom_bar(stat = "identity",width = 0.8) +
    labs(x = "Gene Number",
         y = "Description",
         title = paste0(x," of GO enrichment barplot")) +
    theme_bw() +
    mytheme
}

#MF:
p1 <- GO_bar("BP2")+scale_fill_distiller(palette = "Blues",direction = 1)

p1

#注意这个和上述是连着的
#使用ggplot2绘制GO富集气泡图
#GO富集气泡图：
#计算富集因子(Rich Factor):
#BP:
rf<- apply(BP2,1,function(x){
  GeneRatio <- eval(parse(text = x["GeneRatio"]))
  BgRatio <- eval(parse(text = x["BgRatio"]))
  RF<- round(GeneRatio/BgRatio,2)
  RF
})
BP2$Rich_Factor <- rf
##CC和BP计算方法相同（这里省略代码，不再重复展示）

#绘制GO富集气泡图：
GO_dot <- function(x){
  y = get(x)
  ggplot(data = y,
         aes(x = Rich_Factor,
             y = term)) +
    geom_point(aes(size = Count,
                   color = -log10(pvalue))) + # 气泡大小及颜色设置
    scale_y_discrete(labels = function(y) str_wrap(y, width = 50) ) +
    labs(x = "Rich Factor",
         y = "Description",
         title = paste0(x,"of GO enrichment Dotplot"), # 设置坐标轴标题及图标题
         size = "Gene Number") + # 设置图例颜色及大小
    theme_bw()+
    mytheme
}
#BP：
pp1 <- GO_dot("BP2") + scale_color_distiller(palette = "YlOrRd",direction = 1)

pp1