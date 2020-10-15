#Question 1
#Replicate Head function of Linux
#define a variable with the file to return lines from 
dataVariable <- read.csv("/Users/kearagilligan/Desktop/Biocomputing/wages.csv" , sep=",",header=TRUE,stringsAsFactors = FALSE)
#Define a variable representing the number of lines to be returned from the top of the indicated file
#Return the first two lines of the wages file
head(dataVariable, 2)


#Question 2
#Load in the file
iris <- read.table ("/Users/kearagilligan/Biocomputing2020_Tutorial09/iris.csv", sep=",",header=TRUE,stringsAsFactors = FALSE)
#print the last 2 rows in the last 2 columns to the R terminal
tail (iris[1:2,1:2]) 
#get the number of observations for each species included in the data set
observationsSetosa=iris[iris$Species=="setosa",]
nrow(observationsSetosa)
observationsVersicolor=iris[iris$Species=="versicolor",]
nrow(observationsVersicolor)
observationsVirginica=iris[iris$Species=="virginica",]
nrow(observationsVirginica)
#get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]
#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosaData=iris[iris$Species=="setosa",]
write.table(setosaData, "setosa.csv" , row.names = FALSE , sep = ",")
setosaData
#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
mean (iris[101:150,1])
min(iris[101:150,1])
max(iris[101:150,1])