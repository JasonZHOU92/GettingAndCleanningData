##install required packages
if(!is.element("plyr", installed.packages()[,1])){
    print("Installing packages")
    install.packages("plyr")
}

library(plyr)

##download the dataset
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
file<-"data.zip"
path<-"UCI HAR Dataset"

if(!file.exists(file)){
    print("downloading data")
    download.file(url, file, mode="wb")
}

##create the result folder
resultFolder<-"results"
if(!file.exists(resultFolder)){
    print("creating result folder")
    dir.create(resultFolder)
}

##read a table from the zip file to a dataframe
#tableName: choose which table to read
#cols: applies colNames
getTable<- function(tableName, cols=NULL){
    print(paste("getting table:", tableName))
    f<-unz(file, paste(path, tableName, sep="/"))
    data<-data.frame()
    if(is.null(cols)){
        data<-read.table(f, sep="", stringsAsFactors=FALSE)
    }
    else{
        #data<-read.table(f, sep=" ", cols=cols)
        data<-read.table(f, sep="", stringsAsFactors=FALSE, col.names=cols)
    }
    return(data)
}

##get train or test data with indicating features
#type: indicate train data or test data
#features: indicate the column Names 
getData<-function(type, features){
    print(paste("getting data:", type))
    subjectData<-getTable(paste(type, "/","subject_",type, ".txt", sep=""), "id")
    xData<-getTable(paste(type,"/", "X_", type, ".txt", sep=""), features)
    yData<-getTable(paste(type,"/","y_", type,".txt",sep=""), "activity")
    return(cbind(subjectData, yData, xData))
}

##1. Merges the training and the test sets to create one data set.
features<-getTable("features.txt")[,2]
trainData<-getData("train", features)
testData<-getData("test", features)
data<-rbind(trainData, testData)
data<-arrange(data, id)
print(paste("all ", nrow(data),"= train ", nrow(trainData), " + test ", nrow(testData), sep=""))

##2. Extracts only the measurements on the mean and standard deviation for each measurement.
dataset1 <- data[,c(1,2,grep("std|mean", colnames(data), ignore.case=TRUE))]

##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names. 
activityLabels <- getTable("activity_labels.txt")
dataset1$activity <- factor(dataset1$activity, levels=activityLabels[,1], labels=activityLabels[,2])

##save dataset1 into results folde
file <- paste(resultFolder, "/dataset1.csv" ,sep="")
write.csv(dataset1,file)

##5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
dataset2 <- ddply(dataset1, .(id, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })
#split(dataset1, list(dataset1$id, dataset1$activity))
colnames(dataset2)[-c(1:2)] <- paste("Mean:", colnames(dataset2)[-c(1:2)], sep="")

#save dataset2 to result folder
file <- paste(resultFolder, "/dataset2.csv" ,sep="")
write.csv(data,file)
