library(ggplot2)
df<-data.frame(x=1,
               y=1:2,

               word=c("1","2"))
# df

ggplot(data=df,aes(x=x,y=y))+
  geom_text(aes(label=word,fontface="plain"),
  size=20)+
  ylim(0,5)