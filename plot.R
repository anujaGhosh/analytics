women
plot(women)
plot(women, type='p', pch=15) # type=points, pch=19 symbol
plot(women, type='l')
plot(women, type='b', pch=18, lty=2, col=2)#lty=linetype
plot(x=women$weight, y=women$height, pch=15, xlab='weight', ylab='height', col='red', cex=2, type='b') #cex=aplification of points
#line of best fit
abline(lm(women$height~women$weight),col='red', lty=2, lwd=4)
quantile(women$height)
quantile(women$height, seq(0,1,0.01))#in terms of percentage
#stem and leaf
stem(women$height)
boxplot(women$height, col="green")
hist(women$height, breaks=10)
x=rnorm(100,50,10)
hist(x, freq=F, col=1:5)#frequency is false
plot(density(x), col="red")
xlabels=c('a','b','c','d')
pie(x,labels=xlabels)
cor(women$height,women$weight)#if height increases by 1, weight incr by 0.9
cov(women$height,women$weight) #direction of relationship
###creating intervals with interval of 15---needed for continuous data, using uniform distribution
x3=runif(100,0,150) #0 to 150 marks range, 100values
x3
x3=ceiling(x3)
x3
breaks=seq(0,150,by=15)
breaks
length(breaks)
x3.cut=cut(x3,breaks)
x3.cut
range(x3)
table(x3.cut)
(x3.cut=cut(x3, breaks, labels=letters[1:10]))
table(x3.cut)
mtcars[c('mpg','wt','hp')]



#discrete data
b
