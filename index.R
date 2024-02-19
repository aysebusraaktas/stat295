#stat295 
#revision

a <- 1+1
a
vec <- 1:100
vec
class(vec)
typeof(vec) #it looks inside

#throws an error 1::100 because of the typo

1+5
100/5
#dice
1:6
mydice <- 1:6
mydice

aa <- 555
AA <- 666
#keys sensetive
ls()
mydice - 1
mydice * mydice
mydice%*%mydice #inner mult
mydice%o%mydice

dim(mydice) <- c(2,3)
mydice
dim(mydice) <- c(1,2,3)
mydice
n <- matrix(mydice, nrow=2)
n
m <- matrix(mydice, nrow=2, byrow=T)
m

myarray <- array(c(1:12),dim=c(2,2,3))
myarray

now <- Sys.time()
now
install.packages(c("devtools","roxygen2","testthat","rmarkdown","pkgdown","purrr"))

usethis::use_git_config(user.name = "aysebusraaktas",
                        user.email="busra.aktas@metu.edu.tr")

usethis::create_github_token()
gitcreds::gitcreds_set()
usethis::git_sitrep()

class(now)
unclass(now)
mil <- 1000000
now - mil

data(iris)
head(iris)
class(iris$Sepal.Length)
class(iris$Species)
str(iris)
summary(iris)
iris[1,]
iris[,1]
iris[,"Species"]
table(iris$Species)
LogicIndex <- iris[,"Petal.Length"] > 5.5
iris[LogicIndex,]
#summary stat
mean(iris$Sepal.Length)
sd(iris$Sepal.Length)

#functions
MeanAndStd <- function(x){
  c(meanVar=mean(x),std=sd(x))
}

MeanAndStd(iris$Sepal.Length)

Stats <- aggregate(Sepal.Length ~ Species, data=iris, FUN=MeanAndStd)
Stats

#visualization

plot(iris$Sepal.Length, col=as.numeric(iris$Species),
     ylab="Sepal Length")
legend('topleft',legend=levels(iris$Species),pch=1:3)

boxplot(Sepal.Length ~ Species, data=iris)









