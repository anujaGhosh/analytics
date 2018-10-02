#creating data
sname<-paste('student', c(1:100), sep='-')
gender<-sample(c('M','F'),size=100,replace=T)
spl<-sample(c('Marketing','Finance','HR'),size=100, replace=T, prob=c(0.1,0.5,0.4))
spl
grade<-sample(c('A','B','C','D'),size=100,replace=T,prob=c(0.2,0.4,0.1,0.3))
grade<-factor(grade,ordered=T,levels=c('D','C','B','A'))
placement<-sample(c('yes','no'),size=100,replace=T, prob=c(0.7,0.3))
age<-sample(c(21:30),size=100,replace=T)
experience<-round(rnorm(100,4,1),2)
students<-data.frame(sname,gender,spl,grade,placement,age,experience,stringAsFactors=T)
head(students)
str(students)
summary(students)
plot(students)
write.csv(students,file='./Data/FinalPractise.csv')




#queries
#1.find 1 female and 1 male who has highest experience in each specialization
library(dplyr)
a<-students %>% dplyr::group_by(gender,spl)  %>% summarise(max(experience))
a
a<-students %>% filter(spl==c('Finance','HR')) %>% dplyr::group_by(gender,spl) %>% summarise(max(experience))
groupGender<-group_by(students$gender)
#find students having highest experience in each spl
students %>% group_by(spl,gender) %>% arrange(spl,gender,experience) %>% top_n(1,experience)

#plots

hist(students$experience)
boxplot(students$age)
t1=table(students$placement)#count
barplot(t1, col=1:2)#counts required for this
pairs(students[,c('age','experience')])
par(mfrow=c(2,2))
pie(table(students$gender))
pie(table(students$placement))
pie(table(students$grade))
pie(table(students$spl))


#clustering
km1=kmeans(students[,c(6,7)],centers=3)
km1
km1$centers

#decision trees
library(rpart)
library(rpart.plot)
