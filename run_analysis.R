## Coursera Getting and Cleaning Data Course Project
## Trang Mai Xuan
## 2015-12-24

# run_Analysis.r:

# This script will perform the following steps: 
# Prepare: Download UCI HAR Dataset  from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#1. Merge the training and the test sets to create one data set

library(data.table)

#Read data from txt file to tables
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F)
activiyTypes <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)

#Create collumm names for data set
columnNames <- c("subjectID", "activity", as.vector(features[,2]))

#Read train data
trainX <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors = F)
trainY <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors = F)
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = F)


trainData <- cbind(trainSubject, trainY, trainX)
colnames(trainData) <- columnNames

#Read test data
testX <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors = F)
testY <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors = F)
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = F)

testData <- cbind(testSubject, testY , testX)
colnames(testData) <- columnNames

#Merge train data and test data
dataSet <- rbind(trainData, testData)

#2. Extract only the measurements on the mean and standard deviation for each measurement. 
extractedDataSet <- dataSet[, columnNames[grepl("subjectID", columnNames) | grepl("activity", columnNames) | grepl("mean\\()", columnNames) |  grepl("std\\()", columnNames)]]


#3. Use descriptive activity names to name the activities in the data set
extractedDataSet$activity <- factor(extractedDataSet$activity, levels=activiyTypes[,1], labels=activiyTypes[,2])
extractedDataSet$subjectID <- as.factor(extractedDataSet$subjectID)

colNames <- colnames(extractedDataSet)

# 4. Appropriately label the data set with descriptive activity names. 
colNames <- gsub("\\()","",colNames)
colNames <- gsub("-mean","Mean",colNames)
colNames <- gsub("-std","Std",colNames)
colNames <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",colNames)
colNames <- gsub("Mag", "Magnitude",colNames)

colnames(extractedDataSet) <- colNames

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)

finalDataMelted <- melt(extractedDataSet, id = c("subjectID", "activity"))

finalDataMean <- dcast(finalDataMelted,  subjectID+activity ~ variable, mean)

#write to tidy.txt file
write.table(finalDataMean, "tidy.txt", row.names = FALSE)





