# 查看帮助：
help("ggplot2")
?ggplot2
help(package="ggplot2")
#安装生信常用的包
BiocManager::install("")
ls()

a<-paste("a","b","c",1:3,sep=",")
a

c<-paste("a","b","c",1:3,sep="+",collapse = "----")
c

x<-c(1:10)
x
which.min(x)
which.max(x)
var(x)#计算方差
mean(x)
median(x)#计算中位数
prod(1,2)#求积

y<-c(4,6,2,1,8)
y
x<-c("7","9","6","5","8","3","2")
sort(y)
rev(x)#倒序
order(x)#给出递增的顺序号
x[order(x)]
x[1:2]

mode(order(x))


mode(y)#查看变量类型
mode(x)

#字符大小写串转换
toupper("abc")
tolower("ABc")
#统计字符串长度
nchar("中文",type = "bytes")#统计字节长度
nchar("中文",type="char")#统计字符数量

#截取字符串：substring()函数
substr("123456789",1,5)#截取字符串1到5
substring("1234567890",5)#截取字符串从5到结束，默认从第一个开始

#将字符串转换为数字
as.numeric("12")
#将数字转换为字符串
as.character("12.34")
#分隔符拆分字符串，非常重要
strsplit("2019;10;1",";")

#替换字符串
gsub("/","-","2019/10/1")


##矩阵学习


#data是向量，矩阵的数据nrow行数，ncol为列数，
#byrow为逻辑值，为FALSE按列排列，为TRUE按照行排列，dimname为设置行和列的名称
matrix(data=NA,nrow=1,ncol=1,byrow=FALSE,dimnames = list(rnames,cnames))

#N中byrow为FALSE，说明按照列排列
N<-matrix(c(1:12),nrow = 4,byrow = FALSE)
#行名和列名也在创建矩阵后再定义
rownames(N)=c("row1","row2","row3","row4")
colnames(N)=c("col1","col2","col3")
N[,2:3]#取2，3列

N[,3]<-c(10:13)#修改第三列
N

dim(N)#获取矩阵的维度

#获取矩阵的行和列
dim(N)[1]#获取矩阵的行
dim(N)[2]#获取矩阵的列
nrow(N)#获取矩阵的行
ncol(N)#获取矩阵的列

#矩阵转置
t(N)

#矩阵求行列的和，平均数
rowSums(N)
colSums(N)
rowMeans(N)
colMeans(N)

#矩阵的行拼接和列拼接
a<-matrix(rnorm(15),5,3)
b<-matrix(rnorm(15),5,3)
a
b
cbind(a,b)
rbind(a,b)

#######################################数组
table<-data.frame("姓名"=c("张三","李四"),
                  "工号"=c("001","002"),
                  "月薪"=c(1000,2000))

table
str(table)#获取数据结构
summary(table)#显示概要
table$姓名
table$部门<-c("运营","技术")#添加新的列
table
#####################################因子
factor(x=character(),levels,labels=levels,ordered = is.ordered(x))

a<-c("small","middle","large","middle")
a1<-factor(a)
a1

a2<-c("small","large","middle","large")
sort(a2)
a3<-factor(a2,levels = c("small","middle","large"),labels=c("小","中","大"))
a3
sort(a3)
#注意，as.factor(x)是把x强制转为因子

#使用gl()函数快速生成因子
a4<-gl(2,4,labels = c("M","F"))
a4


##########################################for循环
vec<-runif(10,min=0,max=10)
vec
length(vec)

sum1<-0
for (i in 1:length(vec))
{sum1<-sum1+vec[i]
  
}
sum1
