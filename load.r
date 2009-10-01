#gd load.r
gdp <- read.table("Economics/realgdp_import.csv", header=T, sep=",")
le <- read.table("Economics/LifeExpectancy.csv", header=T, sep=",")

df <- merge(gdp, le, by="Year", all=T)
df$Year <- as.Date(paste("01 01", as.character(df$Year)), "%m %d %Y")

