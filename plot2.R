library(dplyr)

df<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
df<-tbl_df(df)
df1<-subset(df,df$Date=="1/2/2007"|df$Date=="2/2/2007")
df2<-df1$Global_active_power
df3<-as.numeric(as.character(df2))
png("plot2.png", width=480, height=480)
datetime <- strptime(paste(df1$Date, df1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, df3, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()