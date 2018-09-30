<<<<<<< HEAD
#Data Analysis using dplyr
library(dplyr)
dplyr::filter(mtcars,mpg > 25 & vs==1)#::is used for scope
?mtcars

mtcars%>% filter(mpg>25 & vs==1) #same as line 3
mtcars%>% filter(mpg>25 & vs==1) %>% arrange(wt) %>% count()#next function on previous stage and not on entire dataset
mtcars%>% filter(mpg>25 & vs==1) %>% arrange(wt) %>% summarize(n()) #count the number of rows using n() function
mtcars%>% group_by(am) %>% summarize(mean(mpg)) #segregate into groups then find mean
mtcars%>%group_by(gear) %>% summarize(mean(wt))
select(mtcars,mpg)
head(mtcars)
mtcars %>% group_by(am,gear) %>% summarize_all(c("min","max"))
sample_frac(mtcars,0.2,replace=F)
mtcars %>% lead()
#Filter

filter(mtcars, cyl==8, vs==0)
mutate(mtcars, dip_l=disp/61.0237)
slice(mtcars,1L) #prints first row

=======
#Data Analysis using dplyr
library(dplyr)
dplyr::filter(mtcars,mpg > 25 & vs==1)#::is used for scope
?mtcars

mtcars%>% filter(mpg>25 & vs==1) #same as line 3
mtcars%>% filter(mpg>25 & vs==1) %>% arrange(wt) %>% count()#next function on previous stage and not on entire dataset
mtcars%>% filter(mpg>25 & vs==1) %>% arrange(wt) %>% summarize(n()) #count the number of rows using n() function
mtcars%>% group_by(am) %>% summarize(mean(mpg)) #segregate into groups then find mean
mtcars%>%group_by(gear) %>% summarize(mean(wt))
select(mtcars,mpg)
head(mtcars)
mtcars %>% group_by(am,gear) %>% summarize_all(c("min","max"))
sample_frac(mtcars,0.2,replace=F)
mtcars %>% lead()
#Filter

filter(mtcars, cyl==8, vs==0)
mutate(mtcars, dip_l=disp/61.0237)
slice(mtcars,1L) #prints first row

>>>>>>> aa42554242ecbb821d2e74e1f88c3d0d67319549
