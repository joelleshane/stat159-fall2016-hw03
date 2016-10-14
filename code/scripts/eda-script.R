ad = read.csv(file = "../../data/Advertising.csv")

# Computing sumary statistics and historgrams for variables in regression

sink(file = "../../data/eda-output.txt")

means <- c()
for (i in 2:ncol(ad)){
means[i] <- mean(ad[[i]]) 
}
means <- means[-1]

maxs <- c()
for (i in 2:ncol(ad)){
maxs[i] <- max(ad[[i]]) 
}
maxs <- maxs[-1]

mins <- c()
for (i in 2:ncol(ad)){
mins[i] <- min(ad[[i]]) 
}
mins <- mins[-1]

vars <- c()
for (i in 2:ncol(ad)){
vars[i] <- var(ad[[i]]) 
}
vars <- vars[-1]

sumstats <- array(c(maxs, mins, means, vars), dim = c(4, 4, 1))
labels <- (c("TV", "Radio", "Newspaper", "Sales"))
dimnames(sumstats)[[1]] <- labels
dimnames(sumstats)[[2]] <- c("Max", "Min", "Mean", "Var")
sumstats

cor(ad)

sink()

a <- cor(ad)
save(a, file = "../../data/correlation-matrix.RData")

png(file = "../../images/histogram-sales.png")
hist(ad$Sales, main = "Histogram of Sales", xlab = "Sales")
dev.off()

png(file = "../../images/histogram-tv.png")
hist(ad$TV, main = "Histogram of TV", xlab = "TV")
dev.off()

png(file = "../../images/histogram-radio.png")
hist(ad$Radio, main = "Histogram of Radio", xlab = "Radio")
dev.off()

png(file = "../../images/histogram-newspaper.png")
hist(ad$Sales, main = "Histogram of Newspaper", xlab = "Newspaper")
dev.off()

png(file = "../../images/scatterplot-matrix.png")
pairs(ad, col = "#A780BF", main = "Pairwise Scatterplot")
dev.off()
