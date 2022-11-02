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
BiocManager::install("org.At.tair.db")

#加载后面需要调用的R包
library(ggplot2)
library(stringr)
library(clusterProfiler)
library(org.At.tair.db)
library(DOSE)


genelist<- read.table("14492bottom10%.txt",header = T)
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
write.table(Atgo_bp,file="14492bottom10%gobp.txt",sep="\t")
Atgo_dt<- as.data.frame(setReadable(Atgo_bp,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_bp)


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
write.table(Atgo_mf,file="14492bottom10%gomf.txt",sep="\t")

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
write.table(Atgo_cc,file="14492bottom10%gocc.txt",sep="\t") 
# Atgo_dt<- as.data.frame(setReadable(Atgo_cc,org.At.tair.db,keyType = 'TAIR'))
# dotplot(Atgo_cc)


#########################################################################
#########################################################################
#以气泡图的形式展示
#下面分别对bp,mf,cc进行可视化
# https://wenku.baidu.com/view/3f1e8f36f28583d049649b6648d7c1c708a10b01.html
#画bottom10%_mf的图
bmp(file ="Atgobottom10_bp.bmp",width =1200*2,height = 800*2,units = "px",res =72*3)

Atgo_bp <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "BP",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,
                    qvalueCutoff  = 0.05
)
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio
dotplot(Atgo_bp,x="GeneRatio",color="p.adjust",
#label_format=100意思是纵坐标字符长度超过100换行
#showCategory=20意思是只展示20个GO条目
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
bmp(file ="Atgobottom10_mf.bmp",width =1200*2,height = 800*2,units = "px",res =72*3)

Atgo_bp <- enrichGO(gene = genelist$id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "MF",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.05,#pvalue是阈值
                    qvalueCutoff  = 0.05#qvalue是p的校正值
)
# Description<-Atgo_mf$Description
# p.adjust<-Atgo_mf$p.adjust
# Count<-Atgo_mf$Count
# GeneRation<-Atgo_mf$GeneRatio
dotplot(Atgo_mf,x="GeneRatio",color="p.adjust",
        showCategory=20,label_format=100
        )+
  guides(color=guide_colorbar(title="p.adjust"),size=guide_legend(title="Count"))+
  theme(axis.title.x = element_text(size = 14),
        axis.text.x = element_text(size = 13),
        axis.text.y = element_text(size = 16)
  )
dev.off()
############################################################################
# https://wenku.baidu.com/view/3f1e8f36f28583d049649b6648d7c1c708a10b01.html
#画top10%_bp的图
bmp(file ="Atgobottom10_cc.bmp",width =1200*2,height = 800*2,units = "px",res =72*3)

Atgo_bp <- enrichGO(gene = genelist$id,
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
















## 先卸载先前的安装控制程序
remove.packages(c("BiocInstaller", "BiocManager", "BiocVersion"))

## 再安装新版程序
install.packages("BiocManager")
BiocManager::install(update=TRUE, ask=FALSE)

