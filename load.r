#gd load.r
gdp <- read.table("realgdp_import.csv", header=T, sep=",")
le <- read.table("LifeExpectancy.csv", header=T, sep=",")

df <- merge(gdp, le, by="Year", all=T)
df$Year <- as.Date(paste("01 01", as.character(df$Year)), "%m %d %Y")

