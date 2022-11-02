
#参考视频：https://www.bilibili.com/video/BV1GA4113798?spm_id_from=333.337.search-card.all.click&vd_source=07879989db353493e76487f679609922

#select()是选择列；mutate()是增加新的列；arrange()是排序
library(dplyr)#select()
library(tidyr)#separate()
library(reshape2)#melt()
library(stringr)#str_split()

df<-read.csv("Os_GO1.csv",header=T,na.strings = "#NA")
head(df)
df %>% separate(
  col=GO_term,
  into=paste("new_col",1:10,sep="_"),
  sep=",") %>%
  melt(id.vars="genename",value.name="GO_term") %>%
  arrange(genename) %>% #对genename这一列排序
  select(c("genename","GO_term")) %>%
  na.omit() %>% head()
  write.table(file="Os_GO1-1.csv",quote = F,row.names = F,
              sep="\t")
  
#计算长度是多少
max_go<-max(unlist(lapply(str_split(df$GO_term,","),length)))
max_go




df<-read.csv("At_GO1.csv",header=T,na.strings = "#NA")
head(df)
df %>% separate(
  col=GO_term,
  into=paste("new_col",1:10,sep="_"),
  sep=",") %>%
  melt(id.vars="genename",value.name="GO_term") %>% 
write.table(file="At_GO1-2.csv",quote = F,row.names = F,
            sep="\t")

max_go<-max(unlist(lapply(str_split(df$GO_term,","),length)))
max_go