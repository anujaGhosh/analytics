gr<-c('A','B','C','D')
grades<-sample(gr,size=30,replace=T,prob=c(0.2,0.3,0.4,0.1))
grades
class(grades)
grades=factor(grades)
class(grades)

#alternative
grades2<-sample(c(LETTERS[1:4]),size=30,replace=T,prob=c(0.2,0.3,0.4,0.1))
(grades2=factor(grades2)) #the two brackets at the end shows the levels
summary(grades2)
table(grades2)
(grades2=factor(grades2,ordered=T)) #create orders
(grades2O=factor(grades2, ordered=T, levels=c('B','C','A','D')))
summary(grades2O)


(marks= ceiling(rnorm(30, mean=60, sd=5)))
gender=factor(sample(c('M','F'),size=30,replace=T))
student=data.frame(marks, gender,grades2O)
student
boxplot(marks~grades2O + gender, data=student)#shows median value
boxplot(marks)
summary(marks)
abline(h=summary(marks))#each line is a value given in summar eg-min,1q---shows mean value as well
