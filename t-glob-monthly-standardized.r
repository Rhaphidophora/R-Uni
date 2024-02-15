data <- read.csv("T-GLOB-MONTHLY.txt", header=TRUE , sep="\t") 

data_std <- data
columns <- colnames(data)
for (COLUMN in columns[3:length(columns)]) {
  MEAN <- mean(data[[COLUMN]])
  SD <- sd(data[[COLUMN]])
  data_std[[COLUMN]] <- (data[[COLUMN]] - MEAN)/SD
  hist(data_std[[COLUMN]])
}

sink(file="STANDARDIZED.TXT", append=FALSE)
print(data_std)
