
#参考文献：https://mp.weixin.qq.com/s/9hRm6y9F3hN6C-2goTiNkg
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
# columns(org.At.tair.db)
genelist<- read.table("14492top10%.txt",header = T)
##使用clusterProfiler包自带ID转换函数bitr,把TAIR转为ENTREZID
up_entrez <- bitr(genelist$id,
                  fromType = "TAIR",#现有的ID类型
                  toType = "ENTREZID",#需转换的ID类型
                  OrgDb = "org.At.tair.db")
head(up_entrez)


#GO(Gene Ontology)富集分析：
##BP(我们以总差异基因的GO富集为例):
Atgo_bp<- enrichGO(gene=genelist$id, #用来富集的差异基因
                       OrgDb = org.At.tair.db, #指定包含该物种注释信息的org包
                       ont = "BP", #可以三选一分别富集,或者"ALL"合并
                       keyType = 'TAIR',
                       pAdjustMethod = "BH", #多重假设检验矫正方法
                       pvalueCutoff = 0.05,
                       qvalueCutoff = 0.05,
                       # readable = TRUE
                       ) #是否将gene ID映射到gene name
#提取结果表格：这一步很重要
Atgobpresult <- Atgobp@result
#保存成txt
write.table(Atgo_bp,file="Atgo_bp.txt",sep="\t")
View(Atgobpresult)

########
Atgo_mf<- enrichGO(gene=genelist$id, #用来富集的差异基因
                   OrgDb = org.At.tair.db, #指定包含该物种注释信息的org包
                   ont = "MF", #可以三选一分别富集,或者"ALL"合并
                   keyType = 'TAIR',
                   pAdjustMethod = "BH", #多重假设检验矫正方法
                   pvalueCutoff = 0.05,
                   qvalueCutoff = 0.05,
                   # readable = TRUE
) #是否将gene ID映射到gene name
#提取结果表格：这一步很重要
Atgomfresult <- Atgo_mf@result
#保存成txt
write.table(Atgo_mf,file="Atgo_mf.txt",sep="\t")

#########
Atgo_cc<- enrichGO(gene=genelist$id, #用来富集的差异基因
                   OrgDb = org.At.tair.db, #指定包含该物种注释信息的org包
                   ont = "CC", #可以三选一分别富集,或者"ALL"合并
                   keyType = 'TAIR',
                   pAdjustMethod = "BH", #多重假设检验矫正方法
                   pvalueCutoff = 0.05,
                   qvalueCutoff = 0.05,
                   # readable = TRUE
) #是否将gene ID映射到gene name
#提取结果表格：这一步很重要
Atgoccresult <- Atgo_cc@result
#保存成txt
write.table(Atgo_cc,file="Atgo_cc.txt",sep="\t")
#############
# save(Atgo_cc,Atgo_mf,Atgo_bp,file = c("Atgo_total.txt"))

# 下面，可以先使用一些包装好的函数进行富集结果快速可视化：

#####快速可视化探索(以BP为例)：
BiocManager::install("topGO")
library(topGO)
library(enrichplot)
#GO有向无环图绘制(两种形式)：
goplot(Atgo_bp) #来自enrichplot

# plotGOgraph(Atgo_bp) #来自topGO








