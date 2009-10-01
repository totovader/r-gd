#gd plot.r
library(ggplot2)

base.gdp <- df$RealGDP[df$Year == as.Date("1929-01-01")]
base.le <- df$LifeExpectancy[df$Year == as.Date("1929-01-01")]
df$IndexGDP <- df$RealGDP / base.gdp
df$IndexLE <- df$LifeExpectancy / base.le

plot(df$Year, df$IndexGDP, type="l", ylim=range(df$IndexGDP, df$IndexLE, na.rm=T), xlab="Year", ylab="Index")
lines(df$Year, df$IndexLE, col="green")

cherry <- subset(df, df$Year >= as.Date("1920-01-01") & df$Year <= as.Date("1940-01-01"))
plot(cherry$Year, cherry$IndexGDP, type="l", ylim=range(cherry$IndexGDP, cherry$IndexLE, na.rm=T), xlab="Year", ylab="Index")
lines(cherry$Year, cherry$IndexLE, col="green")

cor(df$IndexLE, df$IndexGDP, use="pairwise")

sd(df$LifeExpectancy, na.rm=T)
