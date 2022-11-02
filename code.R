#install.packages("colorfindr")

help(package="colorfindr")
pic1 <- system.file("extdata", "pic1.png", 
                    package = "colorfindr")
pic1

colorfindr::get_colors(pic1,
                       exclude_col = "#FFFFFF",
                       top_n = 1)

pic2<-"C:/Users/pome/Desktop/Snipaste_2021-09-21_21-47-22.png"

colorfindr::get_colors(pic2) -> df
df
colorfindr::get_colors(pic2,
                       top_n = 10,
                       exclude_col = c("white","grey")) -> df
df
df$x<-letters[1:10]
df$y<-1:10

library(ggplot2)

ggplot(data=df,aes(x=x,y=y))+
  geom_col(aes(fill=col_hex))+
  scale_fill_manual(values = df$col_hex)+
  theme_bw()+
  theme(legend.position = "top")+
  guides(fill=guide_legend(
    title.position = "top",
    title.hjust = 0.5
  ))+
  scale_y_continuous(expand = c(0,0))
