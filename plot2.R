#Uses projectSubset global from week1_project.R


png(file = "plot2.png")
with(projectSubset, 
     plot(Global_active_power~DateTime, ylab = "Global Active Power (kilowatts)", type = "l"))
dev.off()

