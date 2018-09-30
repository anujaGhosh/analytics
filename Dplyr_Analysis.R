#Data Analysis using dplyr
library(dplyr)
dplyr::filter(mtcars,mpg > 25 & vs==1)#::is used for scope
?mtcars

mtcars%>% filter(mpg>25 & vs==1) #same as line 3
mtcars%>% filter(mpg>25 & vs==1) %>% arrange(wt) %>% count()#next function on previous stage and not on entire dataset
mtcars%>% filter(mpg>25 & vs==1) %>% arrange(wt) %>% summarize(n()) #count the number of rows using n() function
mtcars%>% group_by(am) %>% summarize(mean(mpg)) #segregate into groups then find mean
mtcars%>%group_by(gear) %>% summarize(mean(wt))
