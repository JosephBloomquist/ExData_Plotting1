#Uses projectSubset global from week1_project.R


png(file = "plot4.png")

#Change layout to 2x2
par(mfrow = c(2,2))

with(projectSubset,{ 
  plot(Global_active_power~DateTime, ylab = "Global Active Power", type = "l")
  plot(Voltage~DateTime, type = "l")
  plot(Sub_metering_1~DateTime, ylab = "Energy sub metering", type = "l", col="black")
  lines(Sub_metering_2~DateTime, type = "l", col = "red")
  lines(Sub_metering_3~DateTime, type = "l", col = "blue")
  plot(Global_reactive_power~DateTime, type = "l")
})




dev.off()

