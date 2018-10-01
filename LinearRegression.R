fit1=lm(weight~height, data=women)
summary(fit1)
range(women$height)
ndata=data.frame(height=c(58.5,60.7))
p=predict(fit1,newdata=ndata)#fit1=model name
cbind(ndata,p)
plot(fit1)#assm:variance should be same