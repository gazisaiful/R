#VBD data
library(psych)
attach(gentest)
df<-read.csv(file.choose(), header = T, stringsAsFactors = TRUE)
summary (df)

attach(k)
dfk<-read.csv(file.choose(), header = T, stringsAsFactors = TRUE)
summary (dfk)


attach(k)
shapiro.test()
dfk=as.numeric(dfk)
str(dfk$Do.you.belive.Climate.Change.)
dfk$Do.you.belive.Climate.Change.=as.numeric(dfk$Do.you.belive.Climate.Change.)

str(dfk$Which.vector.borne.disease.is.not.transmitted.by.mosquito.)
dfk$Which.vector.borne.disease.is.not.transmitted.by.mosquito.=as.numeric(dfk$Which.vector.borne.disease.is.not.transmitted.by.mosquito.)


attach(k)

dk<-read.csv('k.csv', stringsAsFactors = TRUE)
alpha (dk)


attach(pilot)
#dp<-read.csv('pilot.csv', stringsAsFactors = TRUE)
mean(dp$Knowledge) 


attach(k)
dp<-read.csv(file.choose(), header = T, stringsAsFactors = TRUE)

summary (dp)
mean(dp$Knowledge)
mean(dp$Attitude)
mean(dp$Practices)
gendermean<- round(tapply(dp$Knowledge,dp$Gender,mean), digits=2)
gendermean
gendersd<- round(tapply(dp$Knowledge,dp$Gender,sd), digits=2)
gendersd

#normality test
shapiro.test(dp$Knowledge)
ks.test(dp$Knowledge, 'pnorm')
#Mann Whitney U test (2 variable)
wilcox.test(df$Knowledge~dp$Gender,mu=0,alt='two.sided',conf.level=0.95, conf.int=T, exact = F, paired = F,correct=T)

kruskal.test(dp$Knowledge~dp$Age)
dunnTest(dp$Knowledge~dp$Age,method='bonferroni')

agemean<- round(tapply(dp$Knowledge,dp$Age,mean), digits=2)
agemean
library(dunn.test)
library('FSA')


attach(kap)
df<-read.csv(file.choose(), header = T, stringsAsFactors = TRUE)
summary(df)
mean(df$K)
sd(df$K)

mean(df$A)
sd(df$A)

mean(df$P)
sd(df$P)

mean(df$KAP)
sd(df$KAP)


attach(kd)

dkd <- read.csv("kd.csv", stringsAsFactors = TRUE)

alpha (dkd)

attach(kd)
df<-read.csv(file.choose(), header = T, stringsAsFactors = TRUE)
dkd <- read.csv("kd.csv", stringsAsFactors = TRUE)
alpha (dkd)


