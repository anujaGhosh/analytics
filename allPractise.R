#data frame
gender<-sample(c('M','F'),size=100,replace=T)
spl<-sample(c('Marketing','Finance','HR'),size=100, replace=T, prob=c(0.1,0.5,0.4))
spl
grade<-sample(c('A','B','C','D'),size=100,replace=T,prob=c(0.2,0.4,0.1,0.3))
grade<-factor(grade,ordered=T,levels=c('D','C','B','A'))
placement<-sample(c('yes','no'),size=100,replace=T, prob=c(0.7,0.3))
age<-sample(c(21:30),size=100,replace=T)
age
experience<-round(rnorm(100,3,1),2)
experience
students<-data.frame(gender,spl,grade,placement,age,experience)
head(students)
str(students)

