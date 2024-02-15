


PRUZ <- read.csv("PRUZ.txt", header=TRUE,sep="\t") 
monthID <- substr(as.character(PRUZ$DASS), 5, 6)
PRUZ$MONTH <- monthID

quantile(PRUZ$TMAX, probs = c(0.25, 0.5, 0.75))

PR7Max <- subset(PRUZ$TMAX, PRUZ$MONTH == 7) 	# July temperatures only
PR7Max <- (PR7Max-mean(PR7Max))/sd(PR7Max)	# Standardize the data	
qqnorm(PR7Max)
abline(0, 1, col = 'red')