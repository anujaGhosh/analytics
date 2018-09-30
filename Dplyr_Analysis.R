#Data Analysis using dplyr
library(dplyr)
dplyr::filter(mtcars,mpg > 25 & vs==1)#::is used for scope
?mtcars

mtcars%>% filter(mpg>25 & vs==1) #same as line 3