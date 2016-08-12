## Week 1 of Exploratory Data Analysis Assignment

plot1<-function(mydir="~/R_Repo/Coursera/Exploratory Data Analysis/week1", filename="household_power_consumption.txt") {
  ## This function performs the following actions:
  ## 1. assign the working directory
  ## 2. reads the file name and assigns to the varname
  ## 3. selects dates between 2007-02-01 and 2007-02-02
  ## 4. Plots the Graphic
  
  ## Setting the working directory
  initialdirectory<-getwd()
  setwd(mydir)
  
  ## Read file (sets "?" as NA, ";" as separator and assigns first row as header)
  hpc<-read.table(filename, sep=";", header=TRUE, na.strings = "?")
  hpc$Date<-as.Date(hpc$Date, "%d/%m/%Y")
  
  ## Date selection
  hpcs<-subset.data.frame(hpc, hpc$Date=="2007-02-01" | hpc$Date=="2007-02-02")
  
  ##Plotting graphic
  png(file="plot1.png")
  hist(hpcs$Global_active_power, col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
  dev.off()
}

