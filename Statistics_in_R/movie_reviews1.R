getwd()
setwd("C:\\Users\\sha\\Documents\\R-Programming\\DATA\\Data")
getwd()

movies <- read.csv("movie_reviews.csv")
head(movies)

str(movies)
#Filters
a <- (movies$Genre == "action" | movies$Genre == "adventure" | movies$Genre == "animation" | movies$Genre == "comedy" | movies$Genre == "drama")
b <- movies$Studio %in%  c("Buena Vista Studios" , "Fox" ,"Paramount Pictures" ,"Sony" , "Universal", "WB")

mov1 <- movies[a & b, ]
#Activate  ggplot
p <- ggplot(data=mov1,aes(x=Genre,y=Gross...US)) + 
  geom_jitter(aes(size = Budget...mill.,colour=Studio)) + geom_boxplot(alpha=0.7,outlier.color=NA)

# non-data
q <- p + 
  xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")

q
#theme

q <- q + 
  theme(axis.title.x = element_text(colour="Blue",size=20),
               axis.title.y = element_text(colour="Blue",size=20),
               axis.text.x = element_text(size=10),
               axis.text.y = element_text(size= 10),
               plot.title = element_text(size=30),
               legend.title = element_text(size=10),
               legend.text = element_text(size=10),
               text = element_text(family="Comic Sana MS")
               )
q

#Final touch
q$labels$size <- "Budget $M"
q
