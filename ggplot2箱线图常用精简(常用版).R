getwd()
library(ggplot2)
library(RColorBrewer)
bmp(file ="boxplot十字花科中17物种ge6物种同源和非同源.bmp",width =600*2,height = 600*2,units = "px",res =72*2)
Data<-read.csv("boxplot十字花科中17物种ge6物种同源和非同源.csv", head=TRUE)


ggplot(Data, aes(x=Type,y=TE,fill=Type))+#根据Type进行填充，fill=Type
  geom_boxplot(size=0.5)+
  theme_classic()+#背景设置为白色
  scale_fill_brewer(palette="PiYG")+
  #使用scale_fill_brewer(palette="Reds")自动设置颜色
  #除了scale_fill_brewer()，还可以手动设置颜色,scale_fill_manual(values = brewer.pal(8,"Pastel2")[1:2])+#手动设置填充颜色
  #Palettes在包RColorBrewer中 - 运行 display.brewer.all() 可以看到所有的选择：
  ggtitle("123")+#ggtitle("boxplot")设置总的标题
  theme(
        plot.title=element_text (hjust = 0.5,vjust =1,lineheight=1,color="black"),
  #plot.title用于调整上一行里面ggtitle里面"boxplot的位置,其中hjust越大越右,vjust越大越上"
  #注意windowsFonts()用来
  text=element_text(size=16,family="scans"),#family可选scans,mono#用来调整主标题的字体和大小
  panel.background=element_rect(fill="white",colour="black",size=0.5),
  #panel.background中colour用来调整四个边框的颜色,fill用来调整边框内的颜色
  axis.line.x=element_line(colour="black",size=0.1),
  #axis.line调整x,y轴的的颜色，宽度
      axis.title.x=element_text(size=16,face="plain",color="black"),
      #axis.title调控x,y轴的文字,分别是图里面的TE和Type,
      axis.text.x = element_text(size=16,face="plain",color="black"),
      #axis.tex用来调整描述x轴的文本，比如图中的conserved等
     panel.border = element_blank(),
#legend.position="right"用来调整图例的标题,除了right,还有left,top,bottom，
#另外,legend.title=element_blank()可以去除标题的文字。
panel.grid.major = element_blank(),
      #panel.grid.major用来去掉背景中大的网格
  panel.grid.minor = element_blank(),
      #panel.grid.minor用来去掉背景中小的网格
axis.ticks.x=element_line(colour="black"),
axis.ticks.length.x=grid::unit(0.2, "cm")
)+guides(fill="none")#去除边框


dev.off()
windowsFonts()

