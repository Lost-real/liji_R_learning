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
dotplot(Atgo_bp)


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
bmp(file ="At_gomf.bmp",width =1300*1,height = 600*1,units = "px",res =72*1)
Atgo_dt<- as.data.frame(setReadable(Atgo_mf,org.At.tair.db,keyType = 'TAIR'))
Description<-Atgo_mf$Description
p.adjust<-Atgo_mf$p.adjust
Count<-Atgo_mf$Count
GeneRation<-Atgo_mf$GeneRatio
##########################################################
# https://wenku.baidu.com/view/3f1e8f36f28583d049649b6648d7c1c708a10b01.html
#画bottom10%_mf的图
bmp(file ="Atgobottom10_bp.bmp",width =800*2,height = 800*2,units = "px",res =72*3)

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
dotplot(Atgo_bp,x="GeneRatio",color="p.adjust")+
  guides(color=guide_colorbar(title="p.adjust"),size=guide_legend(title="Count"))+
  theme(axis.title.x = element_text(size = 14),
        axis.text.x = element_text(size = 13),
        axis.text.y = element_text(size = 13)
        )
dev.off()
#########################################################################
# https://wenku.baidu.com/view/3f1e8f36f28583d049649b6648d7c1c708a10b01.html
#画bottom10%_bp的图
bmp(file ="Atgobottom10_mf.bmp",width =800*2,height = 800*2,units = "px",res =72*3)

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
dotplot(Atgo_mf,x="GeneRatio",color="p.adjust")+
  guides(color=guide_colorbar(title="p.adjust"),size=guide_legend(title="Count"))+
  theme(axis.title.x = element_text(size = 14),
        axis.text.x = element_text(size = 13),
        axis.text.y = element_text(size = 13)
  )
dev.off()
############################################################################
# 这个是尝试用ggplot2对GO可视化分析
library(RColorBrewer)
# cols <- colorRampPalette(c("black","red"))(600)
  ggplot(Atgo_mf,aes(p_value,Description, size=Count)) +
  geom_dotplot(binaxis='y', stackdir='center', 
               position=position_dodge(0.9))+
    theme_bw()+
    # scale_fill_gradientn(
    #   colours=cols,limits=c(12,27),breaks=c(12,15,18,21,24,27),
    # guide=guide_colourbar(ticks=T, nbin=300,
    # ticks.linewidth=0.5,ticks.colour="grey30",
    # #frame.colour=NULL,#控制图例四周的颜色
    # #frame.linewidth = 0.5,
    # barheight=6, label=T,barwidth=0.6))+  
    # scale_x_continuous(breaks=c(2,4),labels=c("-4","1"))+
    # labs(x="xx",y="yy")+
    # ggtitle("") +
    #注释axis.ticks.length=grid::unit(.1, "cm")表示x轴刻度线的长度  
    theme(
      # legend.background = element_rect(fill = "grey90",colour = "grey90"),
      # #legend.key适用于离散型函数
      # #legend.key,
      # #legend.key.size,
      # #legend.key.height,
      # #legend.key.width,
      # #legend.key = element_rect(fill = "blue", colour = "blue"),
      # legend.position=c(1,0.5),#legend.position=c(1,0.5)中x越大越右,y越大越上
      # legend.direction="vertical",
      # legend.text=element_text(colour="grey20",hjust=0.7,vjust=0.4),
      # legend.title = element_text(color = "black", size = 10,vjust=0.1),
      # legend.margin = margin(t = 10, r = 5, b =8, l = 5,unit = "pt"),
      # legend.key = element_rect(fill = "blue"),
      #plot.margin=grid::unit(c(a,b,c,d),"cm")表示图片离上下左右的距离上,右,下,左
      plot.margin=grid::unit(c(t=.1,r=3,b=.1,l=0.1), "cm"),
      plot.title = element_text(hjust = 0.5, color = "red", face = "italic"),
      plot.background = element_rect(fill = "white", color = "white", size = 10),
      #注释axis.text.y=element_text(size=)表示y坐标轴上数字的大小,字体,family可选字体有scans,mono
      axis.text.y=element_text(size=10, family="TimesNowRoman", hjust=1),
      #注释：注意：y轴上数字消失的方法，而不是size=0
      #axis.text.y=element_blank(),
      #axis.text.x=element_text(size=)表示x轴上数字的大小
      axis.text.x=element_text(size=10,colour = "black"),
      #注释axis.title = element_text(),中,size表示x轴文本字体的大小,hjust越大越右,vjust越大越上
      # axis.title.x = element_text(size=13,color = "black", face = "italic",
      #                             hjust = 0.5,vjust = 17),
      axis.title.y=element_blank(),
      axis.title.x=element_blank(),
      # axis.text.y = element_text(size=0,color = "black", face = "italic",hjust = 0.5,vjust = 0.01),
      # axis.line.x=element_line(colour="grey20", size=1),
      axis.line.y=element_line(colour="grey20", size=0),
      # axis.ticks.y=element_blank(),
      axis.ticks.x=element_line(colour="grey20"),
      #注释axis.ticks.length.x=grid::unit(.1, "cm")调整x轴刻度线的长度，y轴的一样 
      axis.ticks.length.x=grid::unit(.2, "cm"),
      # panel.background=element_rect(fill="white",colour="black",size=2),
      #panel.background中colour用来调整四个边框的颜色,fill用来调整边框内的颜色
      # panel.border = element_blank(),
      #另外,legend.title=element_blank()可以去除标题的文字。
      # panel.grid.major = element_blank(),
      #panel.grid.major用来去掉背景中大的网格
      # panel.grid.minor = element_blank()
      #panel.grid.minor用来去掉背景中小的网格
    )
###################################################################### 
  
ggplot(Atgo_mf,aes(p.adjust,Description, size=Count)) +
geom_point(shape=21,color="black",fill="#FF0000",stroke=0.25,alpha=0.8)+
    scale_size(range=c(1,8))
##############################################################################
  
  
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
dotplot(Atgo_cc)




















## 先卸载先前的安装控制程序
remove.packages(c("BiocInstaller", "BiocManager", "BiocVersion"))

## 再安装新版程序
install.packages("BiocManager")
BiocManager::install(update=TRUE, ask=FALSE)

