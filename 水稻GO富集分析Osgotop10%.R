rm(list=ls())
getwd()
setwd("E:\\R\\Rscripts")
##在只有基因ID的情况下，使用Y叔编写的"clusterProfiler"R包进行基因注释，在电脑未安装该包时，
##使用BiocManager包进行安装,具体操作如下：
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("clusterProfiler")
BiocManager::install("DOSE")
#安装拟南芥的注释库,如果要用水稻的注释库，则需要去Bioconductor的software package中找对应物种的注释库的名字
BiocManager::install("AnnotationHub")
#加载后面需要调用的R包
library(ggplot2)
library(stringr)
library(clusterProfiler)
library(DOSE)
library(AnnotationHub)
ah <- AnnotationHub()
Os <- ah[['AH101068']]#
genelist<- read.table("Ostop10%entrezid.txt",header = T)
##读取genelist的文件，该步骤需要提前将文件放入对应的路径，避免无法调用的情况，这步的genelist文件中的gene名需要将后面的转录本号去掉，否则无法识别。


##Go富集
##生物学过程的GO类别富集过程，输出到对应文件，并可视化
Osgo_bp <- enrichGO(gene = genelist$entrezgene_id,
                    OrgDb = Os,
                    keyType = 'ENTREZID',
                    ont=  "BP",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.5,
                    qvalueCutoff  = 0.5
                    )
# head(Atgo_bp)
write.table(Osgo_bp,file="Ostop10%entrezidgobp.txt",sep="\t")
# Atgo_dt<- as.data.frame(setReadable(Atgo_bp,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_bp)#可视化


##分子功能的GO类别富集，输出到对应文件，并可视化
Osgo_mf <- enrichGO(gene = genelist$entrezgene_id,
                    OrgDb =Os,
                    keyType = 'ENTREZID',
                    ont=  "MF",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.5,#pvalue是阈值
                    qvalueCutoff  = 0.5#qvalue是p的校正值
                    )
# head(Atgo_mf)
write.table(Osgo_mf,file="Ostop10%entrezidgomf.txt",sep="\t")

# Atgo_dt<- as.data.frame(setReadable(Atgo_mf,org.At.tair.db,keyType = 'TAIR'))
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio

##细胞成分的GO类别富集，输出到对应文件，并可视化
Osgo_cc <- enrichGO(gene = genelist$entrezgene_id,
                    OrgDb = Os,
                    keyType = 'ENTREZID',
                    ont=  "CC",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.5,
                    qvalueCutoff  = 0.5
                    )

# head(Atgo_cc)
write.table(Osgo_cc,file="Ostop10%entrezidgocc.txt",sep="\t") 
# Atgo_dt<- as.data.frame(setReadable(Atgo_cc,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_cc)



genelist<- read.table("At14492bottom10%.txt",header = T)
##读取genelist的文件，该步骤需要提前将文件放入对应的路径，避免无法调用的情况，这步的genelist文件中的gene名需要将后面的转录本号去掉，否则无法识别。


##Go富集
##生物学过程的GO类别富集过程，输出到对应文件，并可视化
Atgo_bp <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "BP",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.5,
                    qvalueCutoff  = 0.5
)
# head(Atgo_bp)
write.table(Atgo_bp,file="At14492bottom10%gobp.txt",sep="\t")
Atgo_dt<- as.data.frame(setReadable(Atgo_bp,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_bp)#可视化


##分子功能的GO类别富集，输出到对应文件，并可视化
Atgo_mf <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "MF",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.5,#pvalue是阈值
                    qvalueCutoff  = 0.5#qvalue是p的校正值
)
# head(Atgo_mf)
write.table(Atgo_mf,file="At14492bottom10%gomf.txt",sep="\t")

# Atgo_dt<- as.data.frame(setReadable(Atgo_mf,org.At.tair.db,keyType = 'TAIR'))
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio

##细胞成分的GO类别富集，输出到对应文件，并可视化
Atgo_cc <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "CC",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.5,
                    qvalueCutoff  = 0.5
)

# head(Atgo_cc)
write.table(Atgo_cc,file="At14492bottom10%gocc.txt",sep="\t") 
# Atgo_dt<- as.data.frame(setReadable(Atgo_cc,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_cc)


########################################
###########################################
library(ggplot2)
library(stringr)
library(clusterProfiler)
library(org.At.tair.db)
library(DOSE)


genelist<- read.table("At14492top10%secondary_structure.txt",header = T)
##读取genelist的文件，该步骤需要提前将文件放入对应的路径，避免无法调用的情况，这步的genelist文件中的gene名需要将后面的转录本号去掉，否则无法识别。


##Go富集
##生物学过程的GO类别富集过程，输出到对应文件，并可视化
Atgo_bp <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "BP",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,
                    qvalueCutoff  = 0.05
)
# head(Atgo_bp)
write.table(Atgo_bp,file="At14492top10%secondary_structuregobp.txt",sep="\t")
Atgo_dt<- as.data.frame(setReadable(Atgo_bp,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_bp)#可视化


##分子功能的GO类别富集，输出到对应文件，并可视化
Atgo_mf <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "MF",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,#pvalue是阈值
                    qvalueCutoff  = 0.05#qvalue是p的校正值
)
# head(Atgo_mf)
write.table(Atgo_mf,file="At14492top10%secondary_structuregomf.txt",sep="\t")

# Atgo_dt<- as.data.frame(setReadable(Atgo_mf,org.At.tair.db,keyType = 'TAIR'))
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio

##细胞成分的GO类别富集，输出到对应文件，并可视化
Atgo_cc <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "CC",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,
                    qvalueCutoff  = 0.05
)

# head(Atgo_cc)
write.table(Atgo_cc,file="At14492top10%secondary_structuregocc.txt",sep="\t") 
# Atgo_dt<- as.data.frame(setReadable(Atgo_cc,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_cc)

###################################################
###################################################
library(ggplot2)
library(stringr)
library(clusterProfiler)
library(org.At.tair.db)
library(DOSE)


genelist<- read.table("At14492bottom10%secondary_structure.txt",header = T)
##读取genelist的文件，该步骤需要提前将文件放入对应的路径，避免无法调用的情况，这步的genelist文件中的gene名需要将后面的转录本号去掉，否则无法识别。


##Go富集
##生物学过程的GO类别富集过程，输出到对应文件，并可视化
Atgo_bp <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "BP",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,
                    qvalueCutoff  = 0.05
)
# head(Atgo_bp)
write.table(Atgo_bp,file="At14492bottom10%secondary_structuregobp.txt",sep="\t")
Atgo_dt<- as.data.frame(setReadable(Atgo_bp,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_bp)#可视化


##分子功能的GO类别富集，输出到对应文件，并可视化
Atgo_mf <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "MF",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,#pvalue是阈值
                    qvalueCutoff  = 0.05#qvalue是p的校正值
)
# head(Atgo_mf)
write.table(Atgo_mf,file="At14492bottom10%secondary_structuregomf.txt",sep="\t")

# Atgo_dt<- as.data.frame(setReadable(Atgo_mf,org.At.tair.db,keyType = 'TAIR'))
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio

##细胞成分的GO类别富集，输出到对应文件，并可视化
Atgo_cc <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "CC",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,
                    qvalueCutoff  = 0.05
)

# head(Atgo_cc)
write.table(Atgo_cc,file="At14492bottom10%secondary_structuregocc.txt",sep="\t") 
# Atgo_dt<- as.data.frame(setReadable(Atgo_cc,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_cc)
#########################################################################
#########################################################################
#以气泡图的形式展示
#下面分别对bp,mf,cc进行可视化
# https://wenku.baidu.com/view/3f1e8f36f28583d049649b6648d7c1c708a10b01.html
#画bottom10%_mf的图
bmp(file ="Atgotop10_bp.bmp",width =1200*2,height = 800*2,units = "px",res =72*3)

# Atgo_bp <- enrichGO(gene = genelist$id,
#                     OrgDb = org.At.tair.db,
#                     keyType = 'TAIR',
#                     ont=  "BP",
#                     pAdjustMethod = "BH",
#                     pvalueCutoff  = 0.05,
#                     qvalueCutoff  = 0.05
# )
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio
dotplot(Atgo_bp,x="GeneRatio",color="p.adjust",
#label_format=100意思是纵坐标字符长度超过100换行
#showCategory=20意思是只展示20个GO条目,
#显示前top20(enrichResult按照p.adjust值从大到小的顺序排序)
                showCategory=20,label_format=100)+
  guides(color=guide_colorbar(title="p.adjust"),size=guide_legend(title="Count"))+
  theme(axis.title.x = element_text(size = 14),
        axis.text.x = element_text(size = 13),
        axis.text.y = element_text(size = 16)
  )
dev.off()
##########################################################################
# https://wenku.baidu.com/view/3f1e8f36f28583d049649b6648d7c1c708a10b01.html
#画bottom10%_bp的图
bmp(file ="Atgotop10_mf.bmp",width =1200*2,height = 800*2,units = "px",res =72*3)

# Atgo_mf <- enrichGO(gene = genelist$id,
#                     OrgDb = org.At.tair.db,
#                     keyType = 'TAIR',
#                     ont=  "MF",
#                     pAdjustMethod = "BH",
#                     pvalueCutoff  = 0.05,#pvalue是阈值
#                     qvalueCutoff  = 0.05#qvalue是p的校正值
# )
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio
dotplot(Atgo_mf,x="GeneRatio",color="p.adjust",
        showCategory=20,label_format=100
        )+
  # guides(size=guide_legend(title="Count"),color=guide_colorbar(title="p.adjust"))+
  theme(axis.title.x = element_text(size = 14),
        axis.text.x = element_text(size = 13),
        axis.text.y = element_text(size = 16)
  )
dev.off()
############################################################################
# https://wenku.baidu.com/view/3f1e8f36f28583d049649b6648d7c1c708a10b01.html
#画top10%_bp的图
bmp(file ="Atgotop10_cc.bmp",width =1200*2,height = 800*2,units = "px",res =72*3)

Atgo_cc <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "CC",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,#pvalue是阈值
                    qvalueCutoff  = 0.05#qvalue是p的校正值
)
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio
dotplot(Atgo_cc,x="GeneRatio",color="p.adjust",
        showCategory=20,label_format=100
        )+
  guides(color=guide_colorbar(title="p.adjust"),size=guide_legend(title="Count"))+
  theme(axis.title.x = element_text(size = 14),
        axis.text.x = element_text(size = 13),
        axis.text.y = element_text(size = 16)
  )
dev.off()
#############################################################################

##############################################
#GO可视化条形图
#GO富集条形图：
barplot(
  Atgo_bp,
  x = "Count", #or "GeneRatio"
  color = "pvalue", #or "p.adjust" and "qvalue"
  showCategory = 20,
 #显示前top20(enrichResult按照p.adjust值从大到小的顺序排序)
  font.size = 12,
  title = "Biological Process enrichment barplot",
  label_format = 50 #超过30个字符串换行
)+
guides(color=guide_colorbar(title="p.adjust"))+
theme(axis.title.x = element_text(size = 14),
        axis.text.x = element_text(size = 13),
        axis.text.y = element_text(size = 10)
)
###########################################################################
# #富集网络图:
# edo <- pairwise_termsim(Atgo_bp)
# emapplot(edo,
#   layout = "kk", #布局形式
#   showCategory = 30) #展示GO terms的数量

###########################################################################
####使用ggplot2进行可视化:
#取前top20，并简化命名：
MF <- GO_MF_result[1:20,]
CC <- GO_CC_result[1:20,]
BP <- Atgo_bp[1:20,]

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
#MF:
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

#MF：
pp1 <- GO_dot("BP2") + scale_color_distiller(palette = "YlOrRd",direction = 1)

pp1





## 先卸载先前的安装控制程序
remove.packages(c("BiocInstaller", "BiocManager", "BiocVersion"))

## 再安装新版程序
install.packages("BiocManager")
BiocManager::install(update=TRUE, ask=FALSE)

