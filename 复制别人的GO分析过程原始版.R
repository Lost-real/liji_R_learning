setwd("E:\\R\\Rscripts")

#安装包
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("org.Hs.eg.db")
BiocManager::install("DOSE")
BiocManager::install("clusterProfiler")
BiocManager::install("enrichplot")
install.packages("colorspace")
install.packages("stringi")
install.packages("ggplot2")
install.packages("digest")
install.packages("GOplot")
#加载包
library(clusterProfiler)
library(org.Hs.eg.db)
library(enrichplot)
library(ggplot2)
library(stringi)	# 处理表格数据的包
library(GOplot)



inputFile="learingGO富集分析.txt" 
# 读取文件      
rt=read.table(inputFile,sep="\t",header=T,check.names=F) 


genes=as.vector(rt[,1])	# 选取rt第一列gene保存到genes
entrezIDs=mget(genes, org.Hs.egSYMBOL2EG, ifnotfound=NA)	# 找出基因对应的ID
entrezIDs=as.character(entrezIDs)	# 获取数据
rt=cbind(rt,entrezID=entrezIDs)		# 添加一列entrezID
rt=rt[is.na(rt[,"entrezID"])==F,]	# 删除没有基因的ID
gene=rt$entrezID


GO=enrichGO(gene = gene,
            OrgDb = org.Hs.eg.db, # 参考基因组
            pvalueCutoff =1,	# P值阈值
            qvalueCutoff = 1,	# qvalue是P值的校正值
            ont="all",	# 主要的分为三种，三个层面来阐述基因功能，生物学过程（BP），细胞组分（CC），分子功能（MF）
            readable =T)	# 是否将基因ID转换为基因名
# 强制转换为数据框
GO=as.data.frame(GO)


# 筛选显著富集的数据
GO<-GO[(GO$pvalue<0.05 & GO$p.adjust<0.05),]
# 保存数据
write.table(GO,file="GO1.txt",sep="\t",quote=F,row.names = F)
# 构建数据框矩阵
go=data.frame(Category = GO$ONTOLOGY,ID = GO$ID,Term = GO$Description, Genes = gsub("/", ", ", GO$geneID), adj_pval = GO$p.adjust)
# 构建数据框矩阵
genelist=data.frame(ID = rt$gene, logFC = rt$logFC)
row.names(genelist)=genelist[,1]
circ <- circle_dat(go, genelist)
termNum = 5	#限定GO数目
termNum=ifelse(nrow(go)<termNum,nrow(go),termNum)
geneNum = nrow(genelist)	#限定基因数目


# 差异圈图
chord <- chord_dat(circ, genelist[1:geneNum,], go$Term[1:termNum])
pdf(file="GOcircos.pdf",width = 10,height = 10.2)
GOChord(chord, 
        space = 0.001,           # 基因之间的间距
        gene.order = 'logFC',    # 排序基因
        gene.space = 0.25,       # 基因离圆圈距离
        gene.size = 3,           # 基因字体大小
        border.size = 0.1,		 # 线的大小
        process.label = 7)       # GO名称大小
dev.off()



