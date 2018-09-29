#DATASTRUCTURE



#Vector----
x=1:10 #create sequence of nos from 1:10
x
x1<-1:20
x1
(x1=1:30) #create an object and print it
(X4=c(1,2,3,4,5)) #c means concatenate
(x5=letters[1:10])
(x6 = c('a',"Anuja","4"))
(x7=c(3L,5L))
(x6=seq(0,100,by=3)) #for loop
?seq #help
methods(class='numeric') #what functions could be applied here
ls() #variablesin my environment
length(x6)
x6[c(3, 4)]
x6[-c(1:10)] #print all except 1st 10
x6[-1] #everything other than first element
sort(x6,decreasing=T)
x6[-c(length(x6)-1)] #remove second last element
(x7=c(x1,x6)) #combining 2 vectors into a new one

x[2]<-0;x #modify 2nd element
x <0
x[x<0]=5;x #whenever the condition in the bracket is <0, its coming to true and is being replaced with 5
(x=seq(1.5,length.out=10)) #divided into 10 parts
(x=-3:2)
x[x<= 1 & x>=-1] = 100;x
x = rnorm(100); x #100 values with mean of 0 and SD of 1
plot(density(x))
(x1=rnorm(10000000,mean=50, sd=5)) #size large density perfectly normal
plot(density(x1))
abline(v=mean(x1), h=0.04)

#Matrices----
100:121

(m2=matrix(1:12,ncol=4,byrow=T))
matrix(x, ncol=6)
attributes(m2) #dimensions
#access elements
m2[1,2:3] #1st row, 2nd and 3rd columns
m2[c(1,3)]
m2[c(1:4)]
m2[1,]
m2[,-c(1,3)]
paste("C","D",sep="-") #concatenate
paste("C",1:12,sep="-")
(m1=matrix(1:12, nrow=4))
(colnames(m1)=paste('C',1:3,sep=''))
(rownames(m1)=paste('R',1:4,sep=''))
(z=1:12)
dim(z)=c(2,6)
z
m1[c(T,F,T,F),c(2,3)]
m1[R1]
rbind(m1,c(20,30,40))
cbind(m1,c(10,15,20,25))
rowSums(m1)
rowMeans(m1)
sweep(m1,MARGIN=1, STATS=c(2,3,4,5), FUN="+")#rowise
sweep(m1,MARGIN=2, STATS=c(2,3,4), FUN="*")
addmargins(m1,margin=1,sum)
addmargins(m1,2,mean) #colwise
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd))) #different functions for columns and different feelings for rows
m1


#Array


#DataFrame----
(rollno=1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('M','F'),size=30, replace=T, prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'), size=30, replace=T, prob=c(.7,.3)))
g=(gender=sample(c('M','F'),size=30, replace=T, prob=c(.7,.3)))
table(g)
prop.table(table(g))
(set.seed(1234))
df1=data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors=F)
df1
str(df1)
head(df1,n=3)
#List----

#Factor