#Uses projectSubset global from week1_project.R


png(file = "plot3.png")


with(projectSubset,{ 
     plot(Sub_metering_1~DateTime, ylab = "Energy sub metering", type = "l", col="black")
     lines(Sub_metering_2~DateTime, type = "l", col = "red")
     lines(Sub_metering_3~DateTime, type = "l", col = "blue")
     })
legend(x="topright", cex=0.6, col=c("black","red","blue"),pch=c("-","-","-"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()

