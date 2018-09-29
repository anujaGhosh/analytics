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
(x=-3:2)
x[2]<-0;x #modify 2nd element
x <0
x[x<0]=5;x #whenever the condition in the bracket is <0, its coming to true and is being replaced with 5


#Matrices----


#Array


#DataFrame----


#List----

#Factor