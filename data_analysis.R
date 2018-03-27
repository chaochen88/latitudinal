require (Rmisc)
require(ggplot2)
require(readxl)
require(dplyr)


data6=read_excel("data.xlsx",sheet = "lifehistory_trait")
fulldat<-ddply(data6,.(latitude,longitude),summarize,growthrate=mean(growthrate),larvaltime=mean(larvaltime),totaltime=mean(totaltime),pupalweight=mean(pupalweight),adultweight=mean(adultweight))


fulldat
