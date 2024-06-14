library(psych)
library(dunn.test)
library(FSA)

df<- read.csv(file = "C:/Users/gazi/Desktop/R program/pilot.csv",stringsAsFactors = TRUE, header = T,sep = ',')
table(pilot$Gender)
table(pilot$Gender,pilot$Age)
summary(pilot$Gender)
summary(pilot$Age)
mean(pilot$Knowledge)
mean(df$Knowledge)
#normality test
shapiro.test(df$Knowledge)
ks.test(df$Knowledge, 'pnorm')
#Mann Whitney U test (2 variable)
wilcox.test(df$Knowledge~dp$Gender,mu=0,alt='two.sided',conf.level=0.95, conf.int=T, exact = F, paired = F,correct=T)

kruskal.test(df$Knowledge~dp$Age)
dunnTest(df$Knowledge~dp$Age,method='bonferroni')

agemean<- round(tapply(df$Knowledge,df$Age,mean), digits=2)
agemean

edumean<- round(tapply(df$Knowledge,df$What.is.your.Education.level.,mean), digits=2)
edumean

alpha(df)


attach(k_n)
dk_n<- read.csv(file = "C:/Users/gazi/Desktop/R program/k_alpha.csv", header = T,sep = ',')
alpha()
attach(k_alpha)

table(k_n$`Do you belive Climate Change?`)
mean(k_n$`Do you belive Climate Change?`)
alpha(dk_n)

attach(k_n)



