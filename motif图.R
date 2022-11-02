letterMatrix <- function(input){
  # Ensure kmers are the same length characters(ggseqlogo)
  # 首先要确保输入的碱基序列的长度都是一致的
  seq.len = sapply(input, nchar) # 计算每条序列的碱基数目
  num_pos = seq.len[1] # 第一条序列的碱基数目
  if(! all(seq.len == num_pos)) { # 所有序列的碱基数目必须一致，不一致则报错
    stop('Sequences in alignment must have identical lengths')
  }
  
  # Construct matrix of letters(ggseqlogo)
  # 接下来构建一个矩阵，每个元素是一个碱基
  split = unlist( sapply(input, function(seq){strsplit(seq, '')}) ) # strsplit可以将字符串切割成单个字符
  
  t( matrix(split, seq.len, length(split)/num_pos) )
}

make_ppm <- function(seqs, ppm=TRUE, seq_type="rna") {
  # seqs: A vector of strings, each string is a DNA or RNA sequence
  # ppm: Whether to return PPM, default is PPM, else return PFM
  # seq_type: Sequence type, can be "dna" of "rna"
  
  letter_mat = letterMatrix(seqs) # 构建碱基矩阵，每一行是一条序列，每一列是碱基位置
  
  # Get namespace(ggseqlogo)
  if(seq_type == "dna") {
    namespace = c("A", "T", "G", "C") 
  } else if (seq_type == "rna" ) {
    namespace = c("A", "U", "G", "C") 
  } else {
    stop('Wrong seq_type! Must be one of "dna" and "rna".')
  }
  
  # Construct PWM(ggseqlogo)
  pfm_mat = apply(letter_mat, 2, function(pos.data){ # apply第二个参数为2，表示对列进行操作
    # Get frequencies (ggseqlogo)
    t = table(pos.data) # 计算该位置四种碱基的频数
    # Match to aa(ggseqlogo)
    ind = match(namespace, names(t)) # 
    # Create column(ggseqlogo)
    col = t[ind] # 
    col[is.na(col)] = 0
    names(col) = namespace
    
    if(ppm) { # 若返回PPM，则将碱基频数除以该列碱基总数
      col = col / sum(col)      
    }
    col # 函数返回值col
  })
  
  num_pos = nchar(seqs[1])
  colnames(pfm_mat) = 1:num_pos
  pfm_mat
  
}
#############################################################
#整个上面这些都是在构建函数
#下面的代码能化motif图
#用ppm画motif
BiocManager::install("seqLogo")
library(seqLogo)

seqs <- read.table("Bra_tetraloop.txt",header = T)
# head(seqs)
seqs1=as.character(seqs$name)
# head(seqs1)
# seqs1
# 计算PPM(TOMTOM的输入格式)
ppm <- make_ppm(seqs1, ppm=TRUE)
# ppm

p <- makePWM(ppm)
seqLogo(p)
###############################################

#用ggseqlogo和pfm画motif图
library(ggseqlogo)

seqs <- read.table("Bra_tetraloop.txt",header = T)
# head(seqs)
seqs1=as.character(seqs$name)
# head(seqs1)
# seqs1
# 计算PPM(TOMTOM的输入格式)
# ppm <- make_ppm(seqs1, ppm=TRUE)
# ppm
pfm <- make_ppm(seqs1,ppm=FALSE,seq_type='rna')
# pfm
# p <- makePWM(pfm)

ggseqlogo(pfm)


###################
pfm <- make_ppm(seqs, ppm=FALSE) # ppm=FALSE则输出PFM
pfm



seqs1 <- c("CGTAA", "ATTAG", "CTAAG", "ATTAA", "CATAA")
head(seqs1)
seqs1

rm(list=ls())


#####################################################
##我们先下载entropy这个包
install.packages("entropy")
##加载entropy这个包
library(entropy)
##我们举一个简单的例子来计算信息熵，例如我有一个位点，在这个位点有400个A，200个G，10个C，计算该位点的信息熵
##首先我们生成一个“400个A，200个G，10个C”的长字符变量
pos_A <- rep("A",times=400)
pos_G <- rep("G",times=200)
pos_C <- rep("C",times=10)
pos <- c(pos_A,pos_G,pos_C)
##对数据进行统计
table(pos)
pos_stat<- as.data.frame(table(pos))
##展示统计结果，A:400,C:10,G:200
pos_stat[,]

##计算信息熵，使用第二列统计数目进行计算
pos_entropy <- entropy(pos_stat[,2],unit = "log2") ##[1] 1.023923
pos_entropy
##根据信息熵计算bits值
pos_bits <- log2(4)-pos_entropy
pos_bits
