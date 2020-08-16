df<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
df[,1]<-as.Date(df[,1],"%d/%m/%Y")
df1<-subset(df,"2007-02-01"<=Date & Date<="2007-02-02")
png("plot1.png",width=480,height = 480)
hist(as.numeric(df1[,3]),xlab="Global Active Power(Kilowatt)",main="Global Active Power",col="red")
dev.off()

