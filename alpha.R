library(psych)
library(dunn.test)
library(FSA)

#Read in data file
df<- read.csv(file = "C:/Users/gazi/Desktop/R program/pr.csv",stringsAsFactors = TRUE, header = T,sep = ',')
names(df)
attach(k)
#dk<- read.csv(file = "C:/Users/gazi/Desktop/R program/k_n.csv", header = T,sep = ',')
table(k$`Do you belive Climate Change?`)
mean(k$`Do you belive Climate Change?`)
alpha(df)

#practice selecting one variable
df$Do.you.know.that.climate.change..temperature..rainfall.change..can.affect.on.the.number.of.vector..such.as.Dengue.and.Chikungunya.transmitting..mosquito.

tempdf<-subset(df,select = Do.you.know.that.climate.change..temperature..rainfall.change..can.affect.on.the.number.of.vector..such.as.Dengue.and.Chikungunya.transmitting..mosquito.)

# removing one variable
df$Do.you.know.that.climate.change..temperature..rainfall.change..can.affect.on.the.number.of.vector..such.as.Dengue.and.Chikungunya.transmitting..mosquito.