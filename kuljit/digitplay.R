# TODO: Add comment
# 
# Author: kvirk
###############################################################################
library('neuralnet')
data <- read.csv("~/GitHub/train.csv")

# Create the formula: <output>~<Inputs>
xname <- paste0("pixel",0:783)
model <- as.formula(paste("label ~ ",paste(xname, collapse= "+")))
net <- neuralnet(model, data,hidden=0, rep=1, err.fct="sse",threshold=0.01,linear.output=FALSE)
#for (i in 1:19 )
#  {
#	image(matrix(data.matrix(data[i,2:785]),nrow=28, byrow=TRUE),col=gray.colors(256))
#}
