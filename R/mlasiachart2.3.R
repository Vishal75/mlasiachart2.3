#' Plot Rainfall Data
#'
mlasiachart2.3 <- function() {
  
  rain<-read.csv("../data/cityrain.csv",header=TRUE)
  
  p1 <- plot(rain$Tokyo,type="l",col="red",
  	ylim=c(0,300),
  	main="Monthly Rainfall in major cities",
  	xlab="Month of Year",
  	ylab="Rainfall (mm)",
  	lwd=2)
  	
  print(p1)
  lines(rain$NewYork,type="l",col="blue",lwd=2)
  lines(rain$London,type="l",col="green",lwd=2)
  lines(rain$Berlin,type="l",col="orange",lwd=2)
  
  legend("topright",
	  legend=c("Tokyo","NewYork","London","Berlin"),
	  col=c("red","blue","green","orange"),
	  lty=1,lwd=2)

}


