# gd plot.r

# TODO
# output graph to png to generate OTF
# create brew? script to output critical study to HTML/blog

# get base GDP and LE for 1929 and create index
base.gdp <- df$RealGDP[df$Year == as.Date("1929-01-01")]
base.le <- df$LifeExpectancy[df$Year == as.Date("1929-01-01")]
df$IndexGDP <- df$RealGDP / base.gdp
df$IndexLE <- df$LifeExpectancy / base.le

# plot whole dataset
plot(df$Year, df$IndexGDP, type="l", ylim=range(df$IndexGDP, df$IndexLE, na.rm=T), xlab="Year", ylab="Index")
lines(df$Year, df$IndexLE, col="green")

# create cherry picked dataset for 1920 - 1940 to mimick Tapia Granados study
cherry <- subset(df, df$Year >= as.Date("1920-01-01") & df$Year <= as.Date("1940-01-01"))

# plot only cherry picked data and range
plot(cherry$Year, cherry$IndexGDP, type="l", ylim=range(cherry$IndexGDP, cherry$IndexLE, na.rm=T), xlab="Year", ylab="Index")
lines(cherry$Year, cherry$IndexLE, col="green")
