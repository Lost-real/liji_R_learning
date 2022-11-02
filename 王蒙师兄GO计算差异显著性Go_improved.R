#????????????https://blog.csdn.net/viancheng/article/details/107063611
#phyper??????????????????????????????????????????
gene2anno<-read.table("D:/qqOBTX5DND<~/GO7VNv7=7(/gma_GO.txt",header=F,sep="\t")
colnames(gene2anno) <- c("gene", "anno")
anno_name <- read.table("D:/qqOBTX5DND<~/GO7VNv7=7(/go_name.txt", sep="\t", header = FALSE)
colnames(anno_name) <- c("Anno", "name","class")
gene_bg<-read.table("./S_total.txt",header=F,sep="\t")
colnames(gene_bg)<-c("gene")
gene2anno_bg <- merge(gene2anno, gene_bg, by="gene")
bg_anno_freq <- as.data.frame(table(gene2anno_bg$anno))
gene_sig<-read.table("./S_four_tissue_hub_nonadditive.txt",header=F,sep="\t")
colnames(gene_sig)<-c("gene")
gene2anno_sig <- merge(gene2anno_bg, gene_sig, by = "gene")
sig_anno_freq <- as.data.frame(table(as.vector(gene2anno_sig$anno)))


num_D <- length(unique(gene2anno_bg$gene))
num_C <- length(unique(gene2anno_sig$gene))
Anno <- intersect(as.vector(bg_anno_freq[bg_anno_freq$Freq > 3,]$Var1), as.vector(sig_anno_freq[sig_anno_freq$Freq > 0,]$Var1))
pvalue <- vector(length=length(Anno))
num_M <- vector(length=length(Anno))
num_m <- vector(length=length(Anno))
for (i in 1:length(Anno)){
num_A <- nrow(gene2anno_sig[gene2anno_sig$anno == Anno[i], ]) 
num_B <- nrow(gene2anno_bg[gene2anno_bg$anno == Anno[i], ])
num_M[i] <- num_B
num_m[i] <- num_A
pvalue[i] <- phyper((num_A-1),num_B,(num_D - num_B), num_C, lower.tail=FALSE)
}
qvalue <- p.adjust(pvalue, method = "fdr", n = length(pvalue))
enrich.test.result <- data.frame(Anno, num_M, num_m, pvalue, qvalue)
named.test.result <- merge(enrich.test.result, anno_name, by="Anno")
Ord1 <- order(named.test.result$pvalue)
ordered.test.result <- named.test.result[Ord1,]
write.csv(ordered.test.result[ordered.test.result$pvalue < 0.05,],file="./GO/S_four_tissue_hub_nonadditive.csv",row.names = FALSE,quote = TRUE)


pvalue <- phyper(58,497,25535,1449,lower.tail=FALSE)
