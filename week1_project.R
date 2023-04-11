#Bring in data as data frame
inData <- read.table("household_power_consumption.txt", header = TRUE)

#Verify and look at data
head(inData)
names(inData)
dim(inData)
str(inData)
View(inData)

#It imported it as one long character vector. We need to clean it up and make it more readable.
newNames <- strsplit(names(inData), "\\.")
newNames <- unlist(newNames)
newNames

#Now we have the new header, let's rebuild this data. This took a while on my PC
i <- 1
newData <- 1
while(i<=nrow(inData)){
  newData[i] <- strsplit(inData[i,], "\\;")
  i <- i + 1
  }
#This returned a list of character vectors

#Now we bind those rows together and add to column names
newerData <- as.data.frame(do.call(rbind, newData))
names(newerData) <- newNames
str(newerData)




#Manually fixing the class types
newerData$Date <- as.Date(newerData$Date, "%d/%m/%Y")
newerData$Time <- as.POSIXct(newerData$Time, "%h:%m:%s")
newerData$DateTime <- paste(newerData$Date,newerData$Time)
newerData$DateTime <- as.POSIXct(newerData$DateTime, "%Y-%m-%d %H:%M:%S")
class(newerData$Global_active_power) = "numeric"
class(newerData$Global_reactive_power) = "numeric"
class(newerData$Voltage) = "numeric"
class(newerData$Global_intensity) = "numeric"
class(newerData$Sub_metering_1) = "numeric"
class(newerData$Sub_metering_2) = "numeric"
class(newerData$Sub_metering_3) = "numeric"
str(newerData)
View(newerData)


#Now we want to subset the data. 2007-02-01 and 2007-02-02
date1Subset <- subset(newerData, Date == "2007-02-01")
date2Subset <- subset(newerData, Date == "2007-02-02")
projectSubset <- rbind(date1Subset,date2Subset)
head(projectSubset)
View(projectSubset)
str(projectSubset)

#Examine how household energy usage varies over a 2-day period in February, 2007.
#Reconstruct 4 plots, each to be saved as a PNG with a width of 480pixels and height of 480.
#Name them like plot1.png, plot2.png
#Create a separate R code file for each plot. plot1.R, plot2.R


