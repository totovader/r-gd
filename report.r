<% 
	sd.le <- sd(df$LifeExpectancy, na.rm=T) 
	cor.gdple <- cor(df$IndexLE, df$IndexGDP, use="pairwise")
%>

The standard deviation on life expectancy is <%=round(sd.le)%> years.

A couple years ago I picked up a 