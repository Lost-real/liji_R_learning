##��ֻ�л���ID������£�ʹ��Y���д��"clusterProfiler"R�����л���ע�ͣ��ڵ���δ��װ�ð�ʱ��
##ʹ��BiocManager�����а�װ,����������£�
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("clusterProfiler")
##��װ���Ͻ��ע�Ϳ�
BiocManager::install("org.At.tair.db")
##���غ�����Ҫ���õ�R��
library(ggplot2)
library(stringr)
library(clusterProfiler)
library(org.At.tair.db)
##��ȡgenelist���ļ����ò�����Ҫ��ǰ���ļ������Ӧ��·���������޷����õ�������ⲽ��genelist�ļ��е�gene����Ҫ�������ת¼����ȥ���������޷�ʶ��
genelist<- read.table("B:/Lost/R/Rfile/cdk.txt",header = T)
head(genelist)

##KEGGע�͹��̣�
g = enrichKEGG(gene = genelist$gene_id, 
               organism="ath", 
               pvalueCutoff = 0.99,
               qvalueCutoff=0.99)
head(g)
##��ע�͵ľ��������������Ӧ���ı������Ʊ�����������ı�����ճ������Ӧ��EXCEL�����
write.table(g,file="At_2d_Kegg.txt",sep="\t") 

##KEGGע�Ϳ��ӻ���������pvalueֵΪһ���޶�����
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


##Go����
##����ѧ���̵�GO��𸻼����̣��������Ӧ�ļ��������ӻ�
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

##���ӹ��ܵ�GO��𸻼����������Ӧ�ļ��������ӻ�
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
##ϸ���ɷֵ�GO��𸻼����������Ӧ�ļ��������ӻ�
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


##���ϲ�ͬ�ĸ���ģ����Ҫ��ͬ�����У�����ͬʱ����