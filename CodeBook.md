---
title: "Code Book"
description: "tidy_data.txt - Code Book"
author: "EAC"
---

## Overview

The data file created ```tidy_data.txt``` is an independent tidy data data table set [180 x 68] with the average of each variable for each activity and each subject extracted from the data in:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities ```(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)``` wearing a smartphone (Samsung Galaxy S II) on the waist.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

| Variable patterns   |
|:--------------------|
| tBodyAcc-XYZ        |
| tGravityAcc-XYZ     |
| tBodyAccJerk-XYZ    |
| tBodyGyro-XYZ       |
| tBodyGyroJerk-XYZ   |
| tBodyAccMag         |
| tGravityAccMag      |
| tBodyAccJerkMag     |
| tBodyGyroMag        |
| tBodyGyroJerkMag    |
| fBodyAcc-XYZ        |
| fBodyAccJerk-XYZ    |
| fBodyGyro-XYZ       |
| fBodyAccMag         |
| fBodyAccJerkMag     |
| fBodyGyroMag        |
| fBodyGyroJerkMag    |

The set of variables extracted from these signals are: 

mean(): Mean value
std(): Standard deviation"



## COLUMN NUMBERS AND NAMES

|#COL | COLUMN NAME                 |
|----:|:----------------------------|
|  1  | SUBJECT                     |
|  2  | ACTIVITY                    |
|  3  | tBodyAcc-mean()-X           |
|  4  | tBodyAcc-mean()-Y           |
|  5  | tBodyAcc-mean()-Z           |
|  6  | tBodyAcc-std()-X            |
|  7  | tBodyAcc-std()-Y            |
|  8  | tBodyAcc-std()-Z            |
|  9  | tGravityAcc-mean()-X        |
| 10  | tGravityAcc-mean()-Y        |
| 11  | tGravityAcc-mean()-Z        |
| 12  | tGravityAcc-std()-X         |
| 13  | tGravityAcc-std()-Y         |
| 14  | tGravityAcc-std()-Z         |
| 15  | tBodyAccJerk-mean()-X       |
| 16  | tBodyAccJerk-mean()-Y       |
| 17  | tBodyAccJerk-mean()-Z       |
| 18  | tBodyAccJerk-std()-X        |
| 19  | tBodyAccJerk-std()-Y        |
| 20  | tBodyAccJerk-std()-Z        |
| 21  | tBodyGyro-mean()-X          |
| 22  | tBodyGyro-mean()-Y          |
| 23  | tBodyGyro-mean()-Z          |
| 24  | tBodyGyro-std()-X           |
| 25  | tBodyGyro-std()-Y           |
| 26  | tBodyGyro-std()-Z           |
| 27  | tBodyGyroJerk-mean()-X      |
| 28  | tBodyGyroJerk-mean()-Y      |
| 29  | tBodyGyroJerk-mean()-Z      |
| 30  | tBodyGyroJerk-std()-X       |
| 31  | tBodyGyroJerk-std()-Y       |
| 32  | tBodyGyroJerk-std()-Z       |
| 33  | tBodyAccMag-mean()          |
| 34  | tBodyAccMag-std()           |
| 35  | tGravityAccMag-mean()       |
| 36  | tGravityAccMag-std()        |
| 37  | tBodyAccJerkMag-mean()      |
| 38  | tBodyAccJerkMag-std()       |
| 39  | tBodyGyroMag-mean()         |
| 40  | tBodyGyroMag-std()          |
| 41  | tBodyGyroJerkMag-mean()     |
| 42  | tBodyGyroJerkMag-std()      |
| 43  | fBodyAcc-mean()-X           |
| 44  | fBodyAcc-mean()-Y           |
| 45  | fBodyAcc-mean()-Z           |
| 46  | fBodyAcc-std()-X            |
| 47  | fBodyAcc-std()-Y            |
| 48  | fBodyAcc-std()-Z            |
| 49  | fBodyAccJerk-mean()-X       |
| 50  | fBodyAccJerk-mean()-Y       |
| 51  | fBodyAccJerk-mean()-Z       |
| 52  | fBodyAccJerk-std()-X        |
| 53  | fBodyAccJerk-std()-Y        |
| 54  | fBodyAccJerk-std()-Z        |
| 55  | fBodyGyro-mean()-X          |
| 56  | fBodyGyro-mean()-Y          |
| 57  | fBodyGyro-mean()-Z          |
| 58  | fBodyGyro-std()-X           |
| 59  | fBodyGyro-std()-Y           |
| 60  | fBodyGyro-std()-Z           |
| 61  | fBodyAccMag-mean()          |
| 62  | fBodyAccMag-std()           |
| 63  | fBodyBodyAccJerkMag-mean()  |
| 64  | fBodyBodyAccJerkMag-std()   |
| 65  | fBodyBodyGyroMag-mean()     |
| 66  | fBodyBodyGyroMag-std()      |
| 67  | fBodyBodyGyroJerkMag-mean() |
| 68  | fBodyBodyGyroJerkMag-std()  |


## SUBJECT

From 1 to 30 

## ACTIVITY :

Activities names

|ID | ACTIVITY            |
|--:|:------------------- |
| 1 | WALKING             |
| 2 | WALKING_UPSTAIRS    |
| 3 | WALKING_DOWNSTAIRS  |
| 4 | SITTING             |
| 5 | STANDING            |
| 6 | LAYING              |


## Features selected from the raw data

| ID  | FEATURE                     |
|----:|:----------------------------|
| 1   | tBodyAcc-mean()-X           |
| 2   | tBodyAcc-mean()-Y           |
| 3   | tBodyAcc-mean()-Z           |
| 4   | tBodyAcc-std()-X            |
| 5   | tBodyAcc-std()-Y            |
| 6   | tBodyAcc-std()-Z            |
| 41  | tGravityAcc-mean()-X        |
| 42  | tGravityAcc-mean()-Y        |
| 43  | tGravityAcc-mean()-Z        |
| 44  | tGravityAcc-std()-X         |
| 45  | tGravityAcc-std()-Y         |
| 46  | tGravityAcc-std()-Z         |
| 81  | tBodyAccJerk-mean()-X       |
| 82  | tBodyAccJerk-mean()-Y       |
| 83  | tBodyAccJerk-mean()-Z       |
| 84  | tBodyAccJerk-std()-X        |
| 85  | tBodyAccJerk-std()-Y        |
| 86  | tBodyAccJerk-std()-Z        |
| 121 | tBodyGyro-mean()-X          |
| 122 | tBodyGyro-mean()-Y          |
| 123 | tBodyGyro-mean()-Z          |
| 124 | tBodyGyro-std()-X           |
| 125 | tBodyGyro-std()-Y           |
| 126 | tBodyGyro-std()-Z           |
| 161 | tBodyGyroJerk-mean()-X      |
| 162 | tBodyGyroJerk-mean()-Y      |
| 163 | tBodyGyroJerk-mean()-Z      |
| 164 | tBodyGyroJerk-std()-X       |
| 165 | tBodyGyroJerk-std()-Y       |
| 166 | tBodyGyroJerk-std()-Z       |
| 201 | tBodyAccMag-mean()          |
| 202 | tBodyAccMag-std()           |
| 214 | tGravityAccMag-mean()       |
| 215 | tGravityAccMag-std()        |
| 227 | tBodyAccJerkMag-mean()      |
| 228 | tBodyAccJerkMag-std()       |
| 240 | tBodyGyroMag-mean()         |
| 241 | tBodyGyroMag-std()          |
| 253 | tBodyGyroJerkMag-mean()     |
| 254 | tBodyGyroJerkMag-std()      |
| 266 | fBodyAcc-mean()-X           |
| 267 | fBodyAcc-mean()-Y           |
| 268 | fBodyAcc-mean()-Z           |
| 269 | fBodyAcc-std()-X            |
| 270 | fBodyAcc-std()-Y            |
| 271 | fBodyAcc-std()-Z            |
| 345 | fBodyAccJerk-mean()-X       |
| 346 | fBodyAccJerk-mean()-Y       |
| 347 | fBodyAccJerk-mean()-Z       |
| 348 | fBodyAccJerk-std()-X        |
| 349 | fBodyAccJerk-std()-Y        |
| 350 | fBodyAccJerk-std()-Z        |
| 424 | fBodyGyro-mean()-X          |
| 425 | fBodyGyro-mean()-Y          |
| 426 | fBodyGyro-mean()-Z          |
| 427 | fBodyGyro-std()-X           |
| 428 | fBodyGyro-std()-Y           |
| 429 | fBodyGyro-std()-Z           |
| 503 | fBodyAccMag-mean()          |
| 504 | fBodyAccMag-std()           |
| 516 | fBodyBodyAccJerkMag-mean()  |
| 517 | fBodyBodyAccJerkMag-std()   |
| 529 | fBodyBodyGyroMag-mean()     |
| 530 | fBodyBodyGyroMag-std()      |
| 542 | fBodyBodyGyroJerkMag-mean() |
| 543 | fBodyBodyGyroJerkMag-std()  |


