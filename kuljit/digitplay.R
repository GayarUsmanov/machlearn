# TODO: Add comment
# 
# Author: kvirk
###############################################################################


data <- read.csv("~/Downloads/data.csv")

for (i in 1:19 ){
	image(matrix(data.matrix(data[i,2:785]),nrow=28, byrow=TRUE),col=gray.colors(256))
}
