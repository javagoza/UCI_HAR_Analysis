# UCI HAR Analysis

UCI_HAR_Analysis - Getting and Cleaning Data Course Project


## Overview

This script prepares an tidy version for later analysis of Human Activity Recognition 
Using Smartphones Data Set:

Data: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

Represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ]

### Project steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard 
   deviation for each measurement. 
3. Uses descriptive activity names to name the activities 
   in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, 
   independent tidy data set with the average of each variable 
  for each activity and each subject.

## Preparation
1. Checks if library dplyr is installed
2. Checks if library reshape2 is installed
3. Load needed libraries
4. Set defaultFile paths
5. Download and unzip zip file if not exists
6. Unzip the zip file if files doesn't exists
7. Stop if files are not unzipped


## First data set

Merges the training and the test sets to create one data set.

1. Load features: complete list of variables of each feature vector is available in ```'features.txt'``` and assign  ```col.names = c("FEATURE_ID", "FEATURE")```,
2. Load activities: complete list of activities available in ```'activity_labels.txt'``` and assign ```col.names = c("ACTIVITY_ID", "ACTIVITY")```,
3. Bind training data in columns, adding subject an activity_id columns
4. Bind test data in columns, adding subject an activity_id columns
5. merge training data and test data rows


## Extract mean and standard deviation columns
Extracts only the measurements on the mean and standard deviation for each measurement. 

1. filter mean() and std() features with 
```
grep("mean\\(\\)|std\\(\\)", colnames(data))
```
2. select only searched columns with std() and mean() values

## Create Independent tidy data set

Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

1. restructure and aggregate data using melt and dcast reshape2
  1. ```melt(selectedData, id.var = c("SUBJECT", "ACTIVITY"))```
  2. ```dcast(moltenData , SUBJECT + ACTIVITY ~ variable, fun.aggregate = mean)```
2.save tidy data with row.names=FALSE
  1. ```write.table(meanData, file="tidy_data.txt", row.names=FALSE)```

## To run

1. Download run_analysis.R file
2. ```source('run_analysis.R')```
3. Tidy data in: ```tidy_data.txt'``` after ran
