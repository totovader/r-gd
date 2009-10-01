# gd load.r

# grab gdp data (1929-2008) = Year, RealGDP
gdp <- read.table("realgdp_import.csv", header=T, sep=",")

# grab life expectancy data (1900-2004) = Year, LifeExpectancy
le <- read.table("LifeExpectancy.csv", header=T, sep=",")

# merge datasets on the Year, leave NA
df <- merge(gdp, le, by="Year", all=T)

# convert Year/numeric to Year/Date for better plotting
df$Year <- as.Date(paste("01 01", as.character(df$Year)), "%m %d %Y")
