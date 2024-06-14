library(psych)
library(dunn.test)
library(FSA)
library(scales)
library(formattable)




df<- read.csv(file = "C:/Users/gazi/Desktop/R program/sc.csv",stringsAsFactors = TRUE, header = T,sep = ',')
df<- read.csv(file = "C:/Users/gazi/Desktop/R program/pilot.csv",stringsAsFactors = TRUE, header = T,sep = ',')
table(df$Gender)
table(df$Gender,df$Age)
summary(pilot$Gender)
summary(pilot$Age)
mean(pilot$Knowledge)
mean(df$Knowledge)
#normality test
shapiro.test(df$Knowledge)
ks.test(df$Knowledge, 'pnorm')
#Mann Whitney U test (2 variable)
wilcox.test(df$k_score~df$Gender,mu=0,alt='two.sided',conf.level=0.95, conf.int=T, exact = F, paired = F,correct=T)

kruskal.test(df$k_score~df$Age)
dunnTest(df$k_score~df$Age,method='bonferroni')

agemean<- round(tapply(df$k_score,df$Age,mean), digits=2)
agemean

plot(df$Gender,df$Knowledge)
names(sc) 
class(df$Gender)
class(df$Knowledge)

#linear regression 

cor(df$Practice,df$Knowledge)
md<-lm(df$Practice~df$Knowledge)
md
summary(md)
view(df) 

df<- read.csv(file = "C:/Users/gazi/Desktop/R program/k_alpha.csv",stringsAsFactors = TRUE)
summary(df)

alpha(df)




df$'Knowledge %' = 100*(df$Knowledge/sum(df$Knowledge))

formattable::percent(df$Knowledge)





   