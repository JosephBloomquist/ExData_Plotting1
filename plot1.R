#Uses projectSubset global from week1_project.R

#Default is px and 480 so we will leave it be
png(file = "plot1.png")
with(projectSubset, 
     hist(Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main="Global Active Power"))
dev.off()
