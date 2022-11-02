library(stringr)
strings <- c(
  "apple", 
  "219 733 8965", 
  "329-293-8753", 
  "Work: 579-499-7527; Home: 543.355.3679"
)
pattern <- "([1-9][0-9]{2})[- .]([0-9]{3})[- .]([0-9]{4})"

#str_view()函数是用来学习正则表达式的
# str_view(strings, pattern)

#1.查找
#str_detect，从strings中检测能否和pattern匹配，返回的是逻辑值，有点像grepl
  # str_detect(strings, pattern)

# 2.定位
# str_locate，从strings中检测能否和pattern匹配，返回匹配的起止位置
  # str_locate(strings, pattern)

# 3.取回
# 这个又分为三个层面,层层递进
# 第一，str_subset返回的是匹配到的原始条目
  # str_subset(strings, pattern)

# 第二，str_extract返回的是匹配到的模式
  # str_extract(strings, pattern)

# 第三，str_match返回的是数据框
# 第一列是str_extract的数据，后面依次是括号中的内容，
# 模式中有多少个(),就返回多少列。本例中有三对小括号。
  # str_match(strings, pattern)


# 4.替换
# str_replace从strings中能够精确匹配pattern的内容，并替换为''XXX-XXX-XXXX''(此处自定义)
str_replace(strings, pattern, "XXX-XXX-XXXX")

# 5.匹配编码区域CDS
# 这个就是我们帖子一开始的那个需求，我们来回忆一下:
#   
# 如果我们要寻找一段CDS区(蛋白编码序列)，他通常是以ATG起始，
# 以TGA,TAG,TAA三个中的任意一个结尾，
# 起始和终止中间出现的字符要是3的倍数(三联密码子)。
# 上面这段话，我们就总结了了CDS的规律，正则表达式可以展示出这个规律，可以是这样的
# ATG([ATCG]{3})+(TGA|TAG|TAA)
# 解释如下：
# 首先是以起始密码子ATG开头，
# 接着出现三联密码子，用[ATCG]{3}, 出现的次数是1次或者多次，所以整体给个加号+
# 那现在就是这个样子的 ATG([ATCG]{3})+
# 接着要出现终止密码子，有三种，分别是TGA,TGA,TAA,正则表达式中竖线|表示或的意思，
# 那么(TGA|TAG|TAA)就代表，三个终止密码子任意选择一个。
# 最终CDS区就表示成这个样子啦

# 6.转义
# 这个有点特别，有没有想过，如果一个字符串出现以下的符号，该怎么匹配
# .
# *
# ?
# +
# |
# 这些字符我们都已经碰到过，他们比较特别，因为他们除了字符串本身外，还有其他意义，
# 称为元字符。正常情况下出现的时候都是特殊意义，如果想要他代表字符本身的意思，
# 比如点号.就代表点号，就需要给他转义，转义的符号是斜杠\，那么点号就应该写作\.。
# 
# 但是，说话就怕但是，这里的斜杠\也属于元字符，需要另外一个斜杠来转义，
# 那么在R语言中，如果想要表示匹配点号本身，就应该是这个样子的\\.,
# 也就是说R语言里面的转义是两个斜杠\\, \\在R语言中算一个字符。
# 
# 那么如果特殊一点我要匹配一对括号怎么办？括号也是元字符，那就得转义\\(\\)
# 如果要匹配两个//，那就应该写成\\/\\/,十分有趣吧？
# 
# 举个例子哈，现在有个能裂解字符串的函数，也是来自于stringr这个包，叫做str_split
# 我们用点号.来裂解一个字符串a.b.c
#下面写法是错误的，因为没有加转义符号"\\"
str_split("a.b.c",pattern = ".")
str_split("a.b.c",pattern = "\\.")

strings003<-c("
I like playing playing  volleyball volleyball and basketball       basketball")
pattern003<-"(\b(\w+)\b\s+\b(\w+)\b\s+\2\b)"
str_match(strings003,pattern003)

