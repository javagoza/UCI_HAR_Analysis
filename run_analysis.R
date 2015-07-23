# Coursera Getting and Cleaning Data - Course Project
# This script prepares an tidy version for later analysis of Human Activity Recognition 
# Using Smartphones Data Set 
# Data https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# Project steps:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard 
#    deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities 
#    in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, 
#    independent tidy data set with the average of each variable 
#   for each activity and each subject.

# check if library dplyr is installed
stopifnot(!"dplyr" %in% installed.packages()["Package"])
# check if library reshape2 is installed
stopifnot(!"reshape2" %in% installed.packages()["Package"])

# load needed libraries
library(dplyr)
library(reshape2)

# File paths
uciPath <- "./UCI HAR Dataset/"
testPath <- paste(uciPath, "test/", sep = "")
trainPath <- paste(uciPath, "train/", sep = "")

# local zip file
localZipFilePath <- "accelerometerData.zip"

# features file
featuresFilePath <- paste(uciPath, "features.txt", sep = "")
activitiesFilePath <- paste(uciPath, "activity_labels.txt", sep = "") 

# traininig files
trainingSetFilePath <- paste(trainPath, "X_train.txt", sep = "")
trainingLabelsFilePath <- paste(trainPath, "y_train.txt", sep = "")
trainingSubjectsFilePath <-  paste (trainPath ,"subject_train.txt", sep = "")

# test files
testSetFilePath <-  paste(testPath ,"X_test.txt", sep = "")
testLabelsFilePath <- paste(testPath ,"y_test.txt", sep = "")
testSubjectFilePath <- paste(testPath ,"subject_test.txt", sep = "")

# Download and unzip zip file if not exists
if(!file.exists(localZipFilePath)){
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url = url,destfile =localZipFilePath, mode = "wb")
  stopifnot(file.exists(localZipFilePath))
}

# unzip the zip file if files doesn't exists
if(!file.exists(featuresFilePath)){
  unzip(localZipFilePath)
  stopifnot(file.exists(uciPath))
}

# stop if files are not unzipped
files <- matrix(c(featuresFilePath,trainingSetFilePath, trainingLabelsFilePath,
  trainingSubjectsFilePath,testSetFilePath, testLabelsFilePath,
  testSubjectFilePath, activitiesFilePath))
stopifnot(apply(files, 1,file.exists))

# 1. Merges the training and the test sets to create one data set.

# complete list of variables of each feature vector is available in 'features.txt'
featuresData <- read.table(featuresFilePath, 
                           col.names = c("FEATURE_ID", "FEATURE"),
                           header = FALSE)

# complete list of activities available in 'activity_labels.txt'
activitiesData <- read.table(activitiesFilePath, 
                             col.names = c("ACTIVITY_ID", "ACTIVITY"),
                             header = FALSE)

# Bind training data in columns, adding subject an activity_id columns
trainingSetData <- read.table(trainingSetFilePath , nrows=7352, comment.char="")
colnames(trainingSetData) <-  featuresData[, 2]
trainSubjectData <- read.table(trainingSubjectsFilePath, col.names=c("SUBJECT"))
trainingLabelsData <- read.table(trainingLabelsFilePath, col.names=c("ACTIVITY_ID"))

trainData <- cbind(trainSubjectData, trainingLabelsData ,trainingSetData)

# Bind test data in columns, adding subject an activity_id columns
testSetData <- read.table(testSetFilePath, nrows=2947, comment.char="")
colnames(testSetData) <-  featuresData[, 2]
testSubjectData <- read.table(testSubjectFilePath, col.names=c("SUBJECT"))
testLabelsData <- read.table(testLabelsFilePath, col.names=c("ACTIVITY_ID"))

testData <- cbind(testSubjectData, testLabelsData, testSetData)


# merge training data and test data rows
data <- rbind(trainData, testData)

# 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
# filter mean() and std() features

search <- grep("mean\\(\\)|std\\(\\)", colnames(data))

# select only searched columns with std() and mean() values
selectedData <- data[,c(1,2,search)]

# 3 Uses descriptive activity names to name the activities in the data set
selectedData <- merge(selectedData, activitiesData, by="ACTIVITY_ID")

# remove ACTIVITY_ID column
selectedData <- select(selectedData,-1)

# 4 creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.

# restructure and aggregate data using melt and dcast reshape2
moltenData <- melt(selectedData, id.var = c("SUBJECT", "ACTIVITY"))
meanData <- dcast(moltenData , SUBJECT + ACTIVITY ~ variable, fun.aggregate = mean)

# save tidy data with row.names=FALSE
write.table(meanData, file="tidy_data.txt", row.names=FALSE)



