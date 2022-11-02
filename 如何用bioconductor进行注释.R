#参考网址：https://www.jianshu.com/p/ae94178918bc/
BiocManager::install("AnnotationHub")
#需要的包
library('clusterProfiler')
library(topGO)
library(AnnotationHub)
library(dbplyr)
# library(pathview)


ah <- AnnotationHub()
ah
#AnnotationHub的数据来源有哪些？
unique(ah$dataprovider)
#AnnotationHub目前支持哪些物种？我想找的物种在这里面么？
unique(ah$species)
# 由于结果有391个，不方便查询。但是可以通过筛选，找找目标物种是否存在。

ah$species[which(ah$species == "Oryza sativa")]
# 比如说我想查找拟南芥相关的注释数据库，就可以去query去查找在metadata里面想关信息。
grs <- query(ah, "Arabidopsis thaliana")
grs


grs02 <- query(ah, "Oryza sativa")
grs02
# 当然我们还可以用R本身的筛选功能

ah[ah$species == 'Arabidopsis thaliana' & ah$rdataclass == 'OrgDb']
subset(ah, species == 'Arabidopsis thaliana' & rdataclass == 'OrgDb')

ah[ah$species == 'Oryza sativa' & ah$rdataclass == 'OrgDb']

# 如果我们酷爱图形界面（GUI），类似于网页搜索那样的操作，可以使用的是display函数了。
display(ah)
# AnnotationHub的注释信息的数据存放格式是什么？
unique(ah$rdataclass)

# 第二个问题后，你会得到一个ID，比如说拟南芥的OrgDb的注释数据库的ID就是”AH53758”，
# 然后根据这个ID可以进行下载。当然下载方式已经出现过了
ath <- ah[['AH53758']]#

# 之前下载完数据后，在R里面被我指向到了’ath’，那么我们先简单了解一下这个’ath’
# 
# 直接输入对象名ath，显示的就是元数据信息，太长不放。
# 
# 用str了解一下它的数据结构.好吧，我承认我自己看不出名堂。只知道他是AnnotationDbi的OrgDb类。

ath02<-query(ah,'org.At.tair.db.sqlite')
str(ath02)

# 用mode看下它的数据模式(Get or set the type or storage mode of an object.)，发现它是一个S4类。
# 大部分bioconductor的包都是S4类，然而什么是S4类呢？在R语言编程艺术，
# 我看到过这个概念，主要和S3类区别，据说更加安全。

mode(ath02)
# 用class看下它具体继承什么类（面向对象编程的概念）

class(ath02)

# 富集分析就是看不同GO，KEGG注释下，你提供的基因集的分布情况。
# 比如说我随机从拟南芥中抽样200个基因，然后观察这些基因的富集情况。
# 注：这里用的Y叔的clusterProfiler包

library("clusterProfiler")
tair.sample <- sample(keys(ath,keytype = "ENTREZID"), 100)
library("clusterProfiler")
test <- enrichGO(gene         = tair.sample,
                 OrgDb         = ath,
                 keytype = "ENTREZID",
                 pAdjustMethod = "none",
                 pvalueCutoff  = 0.1,
                 qvalueCutoff  = 0.2)
summary(test)
#######################################
#查看水稻R包都有哪些信息
Os <- ah[['AH101068']]#
columns(Os)#返回这个数据包都有哪些列:
keytypes(Os)# 返回这个数据包可以当做关键字(key)进行查找的列:
head(keys(Os,keytype = "SYMBOL"))
#keytypes告诉我们可以当做哪些列是keytype类型，那么keys则列出这个keytype下有哪些关键字。
# select则是根据你提供的key值去查找注释数据库，返回你需要的columns信息。
select(Os, keys= "AGO1", columns=c("TAIR","GO"),keytype = "SYMBOL")


##############################################
#导入数据库
ah <- AnnotationHub() 
unique(ah$dataprovider) ##可查看数据注释来源
#AH10561 | hom.Oryza_sativa.inp8.sqlite                        
#AH80658 | org.Oryza_sativa_(japonica_cultivar-group).eg.sqlite
#AH80659 | org.Oryza_sativa_Japonica_Group.eg.sqlite           
#AH80660 | org.Oryza_sativa_subsp._japonica.eg.sqlite 

#以上提到的几个数据库，我尝试了后三个，第一个不会用

Ztar_org <- ah[["AH80658"]] ##下载目标物种到org数据
keytypes(Ztar_org)#查看可使用的key
'''
 [1] "ACCNUM"      "ALIAS"       "ENTREZID"    "EVIDENCE"    "EVIDENCEALL" "GENENAME"   
 [7] "GID"         "GO"          "GOALL"       "ONTOLOGY"    "ONTOLOGYALL" "PMID"       
[13] "REFSEQ"      "SYMBOL" 
'''
ens=read.table("Os.txt")#其中gene.txt使用了david结果里的symbol名，LOC+数字
ens=as.character(ens$id)#keys要求输入字符向量

#symbol到entrezid的转换
DEG.entrez_id = mapIds(x = Ztar_org,               #### 数据库
                       keys = ens,    #####差异基因名字
                       keytype = "SYMBOL",        ####差异基因类型是SYMBOL
                       column = "ENTREZID")	
#GO富集
erich.go.BP = enrichGO(gene = DEG.entrez_id, 
                       OrgDb = Ztar_org,
                       keyType = "ENTREZID", 
                       ont = "BP", 
                       pvalueCutoff = 0.8,
                       qvalueCutoff = 0.8) 















#################################################
#ID转换
#1.Installation
BiocManager::install("biomaRt")
library(biomaRt)
#2.Data Import
a <- read.csv('testgene.txt',sep = '\t')
#3.getBM做ID转换
#getBM函数，四个参数。 getBM函数唯一用处，做各种ID转换。
#1.filter来控制根据什么东西来过滤，可是不同数据库的ID，也可以是染色体定位系统坐标。
#2.Attributes来控制我们想获得什么，一般是不同数据库的ID。
#3.Values是我们用来检索的关键词向量。
#4.Mart是我们前面选择好的数据库。

#3.1建立与ensemble数据库的链接
#在ensemble plants上能看到所有已提交的物种信息
ensembl = useMart(biomart = "plants_mart",host = "https://plants.ensembl.org")
#查看ensemble plants都有哪些物种信息，并设置为该物种信息。
dataset <- listDatasets(mart = ensembl)
head(dataset)
ensembl = useMart(biomart = "plants_mart",host = "https://plants.ensembl.org",dataset="osativa_eg_gene")
#查看该dataset上都有哪些属性，方便后面做添加
attributes <- listAttributes(ensembl)
attributes
# 转换成NCBI ID
supplements01 <- getBM(attributes =c("ensembl_gene_id",'entrezgene_id'),
                     filters = "ensembl_gene_id",values = a,mart = ensembl)
head(supplements01)
supplements02 <- getBM(attributes =c("ensembl_gene_id",'go_id','goslim_goa_description'),
                     filters = "ensembl_gene_id",values = a,mart = ensembl)
head(supplements02)
write.table(supplements01,"testgene-1.txt")






