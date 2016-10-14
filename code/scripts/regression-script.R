ad <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")

regtv <- lm(Sales ~ TV, data = ad)
sumtv <- summary(regtv)

regradio <- lm(Sales ~ Radio, data = ad)
sumradio <- summary(regradio)

regnews <- lm(Sales ~ Newspaper, data = ad)
sumnews <- summary(regnews)

multreg <- lm(Sales ~ TV + Radio + Newspaper, data = ad)
sumreg <- summary(multreg)

save(sumtv, sumradio, sumnews, sumreg, file = "../../data/regression.RData")

png(file = "../../images/scatterplot-tv-sales.png")
plot(ad$TV, ad$Sales, main = "Effect of Advertising on Sales", xlab = "TV Advertising", ylab = "Sales")
abline(regtv, col = "red")
dev.off()

png(file = "../../images/scatterplot-radio-sales.png")
plot(ad$Radio, ad$Sales, main = "Effect of Radio on Sales", xlab = "Radio Advertising", ylab = "Sales")
abline(regtv, col = "#28D1EA")
dev.off()

png(file = "../../images/scatterplot-newspaper-sales.png")
plot(ad$Newspaper, ad$Sales, main = "Effect of Newspaper on Sales", xlab = "Newspaper Advertising", ylab = "Sales")
abline(regtv, col = "#9BF815")
dev.off()

png(file = "../../images/residual-plot.png")
plot(fitted(multreg), resid(multreg), main = "Residual Plot", ylab = "Residuals", xlab = "Fitted Values", pch = 17, col = "#44D6A1")
dev.off()

png(file = "../../images/scale-location-plot.png")
plot(fitted(multreg), sqrt(abs(resid(multreg))), main = "Scale Location Plot", ylab = "Sqare root of Residuals", xlab = "Fitted Values", pch = 20, col = "#D822C1")
dev.off()

png(file = "../../images/normal-qq-plot.png")
qqplot(fitted(multreg), resid(multreg), main = "Q-Q plot", xlab = "Fitted Values", ylab = "Residuals")
dev.off()
