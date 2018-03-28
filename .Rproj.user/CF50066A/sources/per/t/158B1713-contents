require (Rmisc)
require(ggplot2)
require(readxl)
require(dplyr)


data_correlation=read_excel("data.xlsx",sheet = "correlation")
ggplot(data_correlation,aes(x=hkt,y=growthrate))+geom_point()+geom_smooth(method="lm",se=F)

mod=lm(pupalweight~larvaltime,data_correlation)
summary(mod)
