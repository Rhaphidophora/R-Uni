data <- read.csv("PRUZ.txt", header=TRUE,sep="\t") 
monthID <- substr(as.character(data$DASS), 5, 6)
data$MONTH <- monthID


# Analysis for Maximum temperature and plotting to the file

#jpeg(filename = "PLOT-T-PRUZ-PRAGUE-1961-2000.jpg", width = 1000, height = 1000, pointsize = 12, quality = 100, bg = "white")

pdf("PLOT-TMAX-PRUZ-PRAGUE-1961-2000.pdf", paper = "a4")

par(mfrow=c(4,1))
#layout(heights = c(2,2,2,2))
plot(data$TMAX, type = "l", col = "blue", xlab = "day", ylab = "Tmax (°C)")
plot(data$TMAX,data$TMIN,cex = 0.1, col = "red", xlab = "Tmax (°C)", ylab = "Tmin (°C)")
boxplot(data$TMAX ~ as.factor(data$MONTH), main= "", col = rgb(13:24,5, 5,maxColorValue = 25), xlab= "Month", ylab = "Tmax (°C)" )
hist(data$TMAX, main = "", xlab = "Tmax (°C)", breaks = c(-20:40))
dev.off()

# Analysis for Minimum temperature

pdf("PLOT-TMIN-PRUZ-PRAGUE-1961-2000.pdf", paper = "a4")

par(mfrow=c(3,1))
plot(data$TMIN, type = "l", col = "blue", xlab = "day", ylab = "Tmin (°C)")
boxplot(data$TMIN ~ as.factor(data$MONTH), main= "", col = rgb(13:24,5, 5,maxColorValue = 25), xlab= "Month", ylab = "Tmin (°C)" )
hist(data$TMIN, main = "", xlab = "Tmin (°C)", breaks = c(-20:40))
dev.off()

