#rm(list=ls())
library(pheatmap)
library(RColorBrewer)
# library(gtable)
#library(colorRampPalette)
#getwd()
#创建数据集test测试矩阵
#test = matrix(rnorm(10), 2, 5)

#!/usr/bin/Rscript
# _*_ coding: utf-8 _*_
# library(getopt)
#  
# command=matrix(c( 
#      'help', 'h', 0,'loical', '显示此帮助信息',
# 	 'input', 'i', 2, 'character', '输入文件',
#      'output', 'o', 1, 'character', '输出文件'),
# 			     byrow=T, ncol=5
# 				 )
# args=getopt(command)
# 
# # 当未提供参数显示帮助信息
# if (!is.null(args$help) || is.null(args$input)) {
# 	  cat(paste(getopt(command, usage = T), "\n"))
# 	    q(status=1)
# }
#  
# # 设置默认值
#  if ( is.null(args$output)) {
# 	     args$output = "output.txt"
#  }

bmp(file ="At5utr200bpmerge1sortedreplacefillupreversecut200bp_pheatmap-3.bmp",width =2000*2,height = 2000*3,units = "px",res =72*1.5)
# df<- read.table(args$input,header = FALSE,row.names = 1)
df<- read.table("At5utr200bpmerge1sortedreplacefillupreversecut200bp",header=FALSE,row.names = 1)
#df=apply(df,2,as.numeric)#将df矩阵，逐列转为数值型变量，并再次赋值给test

#test[1:5, seq(1, 5, 2)] = test[1:5, seq(1, 5, 2)]

#rownames(df) = paste("Test", 1:4, sep = "")
#rownames(test) = paste("Gene", 1:2, sep = "")
# 用pheatmap函数画热图
#color=brewer.pal(n =6, name = "RdBu")
#color = colorRampPalette(c("black", "red"))(20)的含义是自定义颜色,show_colnames = F含义是不显示列名
# annotation_row = data.frame(
#   "Conservation_TE"= factor(rep(c("0.7-1.0: 0.991","0.6-0.7: 0.972","0.5-0.6: 0.941","0.4-0.5: 0.922","0.3-0.4: 0.890","0.1-0.3: 0.825"), c(1482,3352,4461,3391,1453,353)))
#   )#对行进行注释
# rownames(annotation_row) = paste("", 1:14492, sep = "")
# ann_colors = list(
# "Conservation_TE" = c("0.7-1.0: 0.991"="#FF0000","0.6-0.7: 0.972"="#D28181","0.5-0.6: 0.941"="#B9B9B9","0.4-0.5: 0.922"="#787878","0.3-0.4: 0.890"="#2E2E2E","0.1-0.3: 0.825"="#000000")
# 	  )#自己调整颜色
p<-pheatmap(df,clustering_method = "ward.D",cluster_cols = FALSE,color = colorRampPalette(c("black","red"))(1800),
            cellwidth =9,cellheight=1,show_rownames=F,show_colnames = F,legend_breaks=c(0:6),border=FALSE,
            legend_labels = c("0","1.0","2.0","3.0","4.0","5.0","6.0"),treeheight_row = 100,cutree_rows = 7)
#下面显示的是颜色
#x <- colorRampPalette(c("royalblue","firebrick3"))(12)
#scales::show_col(x)
#write.table(args$output,file=./,quote = FALSE,row.names = FALSE,col.names = FALSE,sep="\t")
dev.off()
# p$gtable

