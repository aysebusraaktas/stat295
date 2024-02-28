#piping in R
#shift ctrl m
library(tidyverse)

data(tips,package="reshape2")
head(tips)

tips %>% 
  subset(total_bill>19) %>% 
  aggregate(.~sex, ., mean)

tips |>
  subset(total_bill>19) |>
  {function(x) aggregate(.~sex,data=x,FUN=mean)}()
#{\(x) aggregate(.~sex,data=x,FUN=mean)}
#it is anonym function bi daha ??a??r??lm??yacak bi fonksiyon sadece o an i??in gerekli

# x %>% f(1)  f(x,1) they are same f(1,x)  x %>% f(1, .)

tips %>% 
  subset(total_bill >19) %>% 
  aggregate(.~ day, .,max)

a <- rnorm(10)
a
a1 <- abs(a)
a1
a2 <- log(a1)
a2
a3 <- round(a2,1)
a3

round(log(abs(a)),1)

a %>% abs() %>% 
  log() %>% 
  round(1)

a %<>% abs() %>% 
  log() %>% 
  round(1)
#%<>% a changes there

a <- rnorm(15)
a

round(a,2)
#sat??r47 ve 49 ayn?? ??ey
a %>% round(2)

assign("a",pi)
a
"a" %>% assign(20)
a

env <- environment()

"a" %>% assign(20, envir=env)
a

rnorm(100) %>% 
  matrix(ncol=2) %>% 
  plot() %>% 
  str()
#plot ?? str yapamad??

rnorm(100) %>% 
  matrix(ncol=2) %T>% 
  plot() %>% 
  str()
# T matrixi str i??ine koydu



