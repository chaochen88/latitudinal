require (Rmisc)
require(ggplot2)
require(readxl)
require(dplyr)

#life history trait data set
data1=read_excel("data.xlsx",sheet = "lifehistory_trait")
#mean of each traits
meandat<-ddply(data1,.(latitude,longitude),summarize,growthrate=mean(growthrate),pupaltime=mean(pupaltime),larvaltime=mean(larvaltime),totaltime=mean(totaltime),pupalweight=mean(pupalweight),adultweight=mean(adultweight))



#chill comma data
data2=read_excel("data.xlsx",sheet = "chill_comma")
#mean of each traits
chill_mean<-ddply(data2,.(latitude,longitude),summarize,ccrt=mean(ccrt))

#heat knock down data
data3=read_excel("data.xlsx",sheet = "heat_knock")
#mean of each traits
heat_mean<-ddply(data3,.(latitude,longitude),summarize,hkt=mean(knockdown_time))



#starvation data
data4=read_excel("data.xlsx",sheet = "starvation")
#mean of each traits
starvation_mean<-ddply(data4,.(latitude,longitude),summarize,starvation=mean(time))



#desiccation data
data5=read_excel("data.xlsx",sheet = "desiccation")
#mean of each traits
desi_mean<-ddply(data5,.(latitude,longitude),summarize,desi=mean(time))
mod_desi=lm(time~latitude*sex*longitude,data=data5)
summary(mod_desi)

full_mean=cbind(meandat,chill_mean,heat_mean,starvation_mean,desi_mean)
write.csv(full_mean,"full_mean.csv")







mod_gr=lm(growthrate~latitude*sex*longitude,data=data1)
summary(mod_gr)






