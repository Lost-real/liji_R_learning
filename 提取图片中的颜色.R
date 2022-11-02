

library(colorfindr)
library(bmp)

help(package="colorfindr")





pic2<-"At5utr200bp6braTE14492单个位点BPP折线图.bmp"
# get_colors(pic2) -> df
# df
colorfindr::get_colors(pic2,
                       exclude_col = c("white","black")) -> df
df






picture <- read.bmp("Os5utr200bp6bra10543BPP_geom_line-2.bmp")
# r <- nrow(picture)/ncol(picture) 
# plot(c(0,1),c(0,r),type = "n",xlab = "",ylab = "",asp=1)
# rasterImage(picture,0,0,1,r)
display_image(picture)

mycolor<-image_palette(picture,n=30)
scales::show_col(mycolor)
mycolor
