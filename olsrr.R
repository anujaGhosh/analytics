library(olsrr)
mtcars
m1=lm(mpg~wt, data=mtcars)
m1
model<-lm(mpg~disp+hp+wt+qsec,data=mtcars)
k<-ols_step_all_possible(model)#for all combinantions of independant variable---create all posiible moels from this
plot(k)
anova(m1,model) #p value is less than 0.05 reject null hypothesis
#Ho: model m1 is better, Ha: model is better
