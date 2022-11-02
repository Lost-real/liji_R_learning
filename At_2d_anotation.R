##在只有基因ID的情况下，使用Y叔编写的"clusterProfiler"R包进行基因注释，在电脑未安装该包时，
##使用BiocManager包进行安装,具体操作如下：
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("clusterProfiler")
##安装拟南芥的注释库
BiocManager::install("org.At.tair.db")
##加载后面需要调用的R包
library(ggplot2)
library(stringr)
library(clusterProfiler)
library(org.At.tair.db)
##读取genelist的文件，该步骤需要提前将文件放入对应的路径，避免无法调用的情况，这步的genelist文件中的gene名需要将后面的转录本号去掉，否则无法识别。
genelist<- read.table("B:/Lost/R/Rfile/cdk.txt",header = T)
head(genelist)

##KEGG注释过程，
g = enrichKEGG(gene = genelist$gene_id, 
               organism="ath", 
               pvalueCutoff = 0.99,
               qvalueCutoff=0.99)
head(g)
##将注释的具体内容输出到对应的文本，以制表符间隔，后将文本复制粘贴到对应的EXCEL表格里。
write.table(g,file="At_2d_Kegg.txt",sep="\t") 

##KEGG注释可视化操作，以pvalue值为一个限定条件
g_dt<- as.data.frame(setReadable(g,org.At.tair.db,keyType = 'TAIR'))
g_kegg<- g_dt[g_dt$pvalue<0.05,];g_kegg$group=1

colnames(g_kegg)

g_kegg$pvalue = -log10(g_kegg$pvalue)
g_kegg$pvalue = g_kegg$pvalue*g_kegg$group

g_kegg=g_kegg[order(g_kegg$pvalue,decreasing = F),]

kegg <- ggplot(g_kegg,aes(x=reorder(Description,order(pvalue, decreasing = F)), y=pvalue, fill=group)) + 
  geom_bar(stat="identity") + 
  scale_fill_gradient(low="blue",high="red",guide = FALSE) + 
  scale_x_discrete(name ="Pathway names") +
  scale_y_continuous(name ="-log10P-value") +
  coord_flip() +
  ggtitle("Pathway Enrichment")
print(kegg)


##Go富集
##生物学过程的GO类别富集过程，输出到对应文件，并可视化
Atgo_bp <- enrichGO(gene = genelist$gene_id,
                 OrgDb = org.At.tair.db,
                 keyType = 'TAIR',
                 ont=  "BP",
                 pAdjustMethod = "BH",
                 pvalueCutoff  = 0.2,
                 qvalueCutoff  = 0.9)
head(Atgo)
write.table(Atgo,file="cdk_GO_bp.txt",sep="\t") 
Atgo_dt<- as.data.frame(setReadable(Atgo_bp,org.At.tair.db,keyType = 'TAIR'))
dotplot(Atgo_bp)

##分子功能的GO类别富集，输出到对应文件，并可视化
Atgo_mf <- enrichGO(gene = genelist$gene_id,
                     OrgDb = org.At.tair.db,
                     keyType = 'TAIR',
                     ont=  "MF",
                     pAdjustMethod = "BH",
                     pvalueCutoff  = 0.2,
                     qvalueCutoff  = 0.9)
head(Atgo_mf)
write.table(Atgo,file="cdk_GO_mf.txt",sep="\t") 
Atgo_dt<- as.data.frame(setReadable(Atgo_mf,org.At.tair.db,keyType = 'TAIR'))
dotplot(Atgo_mf)
##细胞成分的GO类别富集，输出到对应文件，并可视化
Atgo_cc <- enrichGO(gene = genelist$gene_id,
                    OrgDb = org.At.tair.db,
                    keyType = 'TAIR',
                    ont=  "CC",
                    pAdjustMethod = "BH",
                    pvalueCutoff  = 0.2,
                    qvalueCutoff  = 0.9)
head(Atgo_cc)
write.table(Atgo,file="cdk_GO_cc.txt",sep="\t") 
Atgo_dt<- as.data.frame(setReadable(Atgo_cc,org.At.tair.db,keyType = 'TAIR'))
dotplot(Atgo_cc)


##以上不同的富集模块需要不同步运行，不能同时运行
