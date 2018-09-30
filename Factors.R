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