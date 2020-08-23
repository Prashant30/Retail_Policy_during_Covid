getwd()
setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Carmen Chan/Summer 2020 XD/Hack for the People")
install.packages("quantmod")
install.packages("tidyquant")
library(quantmod)
library(tidyquant)

#download data
target <- getSymbols("TGT") 
target
walmart <- getSymbols("WMT") 

gap <- getSymbols("GPS") 
costco <- getSymbols("COST") 

?getSymbols
?TTR
?SMA

retail <- NA
#moving average over 100 days, we will use Simple moving average
retail$tar100 <- SMA(TGT$TGT.Close, n = 100)
retail$tar100 <- tail(tar100)

retail$wal100 <- SMA(WMT$WMT.Close, n = 100)
retail$wal100 <-tail(wal100)

retail$gap100 <- SMA(GPS$GPS.Close, n = 100)
retail$gap100 <-tail(gap100)

retail$cost100 <- SMA(COST$COST.Close, n = 100)
retail$cost100 <-tail(cost100)

View(retail)
write.csv(retail,"retail.csv")

covid <- read.csv("D:/UTD/Codes/TBD_hack4people/data/USData.csv")
retail <- read.csv("D:/UTD/Codes/TBD_hack4people/data/retail.csv")
combined <- read.csv("D:/UTD/Codes/TBD_hack4people/data/USData.csv")

write.csv(combined,"D:/UTD/Codes/TBD_hack4people/data/Combined.csv")
plot(combined[3])

require(ggplot2)
ggplot(covid)
ggplot(retail)

getSymbols("JCP")
getSymbols("MCS")
getSymbols("NKE")
getSymbols("RL")
getSymbols("LEVI")

chartSeries(WMT, subset = '2019-12::', TA = c(addSMA(100)))
chartSeries(COST, subset = '2019-12::', TA = c(addSMA(100)))
chartSeries(TGT, subset = '2019-12::', TA = c(addSMA(100)))
chartSeries(GPS, subset = '2019-12::', TA = c(addSMA(100)))
chartSeries(JCP, subset = '2019-12::')
chartSeries(MCS, subset = '2019-12::')
chartSeries(NKE, subset = '2019-12::')
chartSeries(RL, subset = '2019-12::')
chartSeries(LEVI, subset = '2019-12::')


?chartSeries
