#####
library(RColorBrewer)
x <- colorRampPalette(c("dodgerblue2","darkorange2"))(6)
scales::show_col(x)


####
display.brewer.all()
display.brewer.pal(n = 6, name = "Blues")
# 另外可以通过该函数来查看调色板中具体的颜色代码，然后可以挑选自己喜欢的颜色绘图，如我们像看下上面这个图中不同的颜色代码。
detail <- brewer.pal(n = 16, name = "Set3")
detail

detail <- brewer.pal(n = 4, name = "Accent")
detail

unlink("D:/software/R/R-4.2.0", recursive = TRUE)
######
######
#如何把rgb值转化为十六进制的编码,直呼牛逼
rgb(0,0,0,maxColorValue = 255)
