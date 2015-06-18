# CodeBook for Course Project on Getting and Cleaning Data (getdata-015)


***
##Table of Content:

1. Introduction
2. Decription of variables in [REQ5result.txt](REQ5result.txt)

***

## 1. Introduction

This data is result of Course Project on Getting and Cleaning Data (getdata-015) training. More details about Course Project are available in file [Purpose of Course Project.txt](Purpose of Course Project.txt)

Below one can find description of dataset saved in file [REQ5result.txt](REQ5result.txt). It is an result of transofrmation of original data (original data is described in [features_info.txt](features_info.txt)) according to Course Project requirements described in [Purpose of Course Project.txt](Purpose of Course Project.txt). Transformations are described in following steps (more details in [README.md](README.md)):

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

result of last step is saved into file [REQ5result.txt](REQ5result.txt).

## 2. Decription of variables in [REQ5result.txt](REQ5result.txt)

- "activity" - names of activity measured
- "subject" - identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

all the other variables are averages, of some variables (from original data set), for each activity and each subject. Variables form original data set were choosen according to transformation (step 2): "...only the measurements on the mean and standard deviation...".

meaning of each variable (and units) you can find in [features_info.txt](features_info.txt) and more details on [README - Course Project.txt](README - Course Project.txt).

variables names from original data set were changed in following steps:

1. to build syntetically valid names for R some special characters (i.e. "(", ")", "-" etc.) were changed into dot "." char.
2. double dots ("..") and triple dots ("...") were changed into a single dot (".").
3. "AVERAGE.of." was added in front of variable name to reflect fact that tohse are averages for each activity and each subject

few examles of name changes:

- "tBodyAcc-mean()-X" -> "AVERAGE.of.tBodyAcc.mean.X"
- "tBodyAcc-std()-X" -> "AVERAGE.of.tBodyAcc.std.X"
- "tGravityAcc-mean()-X" -> "AVERAGE.of.tGravityAcc.mean.X"
- "tGravityAcc-std()-X" -> "AVERAGE.of.tGravityAcc.std.X"

Below are the names of all other variables in [REQ5result.txt](REQ5result.txt):

- "AVERAGE.of.tBodyAcc.mean.X"
- "AVERAGE.of.tBodyAcc.mean.Y"
- "AVERAGE.of.tBodyAcc.mean.Z"
- "AVERAGE.of.tBodyAcc.std.X"
- "AVERAGE.of.tBodyAcc.std.Y"
- "AVERAGE.of.tBodyAcc.std.Z"
- "AVERAGE.of.tGravityAcc.mean.X"
- "AVERAGE.of.tGravityAcc.mean.Y"
- "AVERAGE.of.tGravityAcc.mean.Z"
- "AVERAGE.of.tGravityAcc.std.X"
- "AVERAGE.of.tGravityAcc.std.Y"
- "AVERAGE.of.tGravityAcc.std.Z"
- "AVERAGE.of.tBodyAccJerk.mean.X"
- "AVERAGE.of.tBodyAccJerk.mean.Y"
- "AVERAGE.of.tBodyAccJerk.mean.Z"
- "AVERAGE.of.tBodyAccJerk.std.X"
- "AVERAGE.of.tBodyAccJerk.std.Y"
- "AVERAGE.of.tBodyAccJerk.std.Z"
- "AVERAGE.of.tBodyGyro.mean.X"
- "AVERAGE.of.tBodyGyro.mean.Y"
- "AVERAGE.of.tBodyGyro.mean.Z"
- "AVERAGE.of.tBodyGyro.std.X"
- "AVERAGE.of.tBodyGyro.std.Y"
- "AVERAGE.of.tBodyGyro.std.Z"
- "AVERAGE.of.tBodyGyroJerk.mean.X"
- "AVERAGE.of.tBodyGyroJerk.mean.Y"
- "AVERAGE.of.tBodyGyroJerk.mean.Z"
- "AVERAGE.of.tBodyGyroJerk.std.X"
- "AVERAGE.of.tBodyGyroJerk.std.Y"
- "AVERAGE.of.tBodyGyroJerk.std.Z"
- "AVERAGE.of.tBodyAccMag.mean."
- "AVERAGE.of.tBodyAccMag.std."
- "AVERAGE.of.tGravityAccMag.mean."
- "AVERAGE.of.tGravityAccMag.std."
- "AVERAGE.of.tBodyAccJerkMag.mean."
- "AVERAGE.of.tBodyAccJerkMag.std."
- "AVERAGE.of.tBodyGyroMag.mean."
- "AVERAGE.of.tBodyGyroMag.std."
- "AVERAGE.of.tBodyGyroJerkMag.mean."
- "AVERAGE.of.tBodyGyroJerkMag.std."
- "AVERAGE.of.fBodyAcc.mean.X"
- "AVERAGE.of.fBodyAcc.mean.Y"
- "AVERAGE.of.fBodyAcc.mean.Z"
- "AVERAGE.of.fBodyAcc.std.X"
- "AVERAGE.of.fBodyAcc.std.Y"
- "AVERAGE.of.fBodyAcc.std.Z"
- "AVERAGE.of.fBodyAcc.meanFreq.X"
- "AVERAGE.of.fBodyAcc.meanFreq.Y"
- "AVERAGE.of.fBodyAcc.meanFreq.Z"
- "AVERAGE.of.fBodyAccJerk.mean.X"
- "AVERAGE.of.fBodyAccJerk.mean.Y"
- "AVERAGE.of.fBodyAccJerk.mean.Z"
- "AVERAGE.of.fBodyAccJerk.std.X"
- "AVERAGE.of.fBodyAccJerk.std.Y"
- "AVERAGE.of.fBodyAccJerk.std.Z"
- "AVERAGE.of.fBodyAccJerk.meanFreq.X"
- "AVERAGE.of.fBodyAccJerk.meanFreq.Y"
- "AVERAGE.of.fBodyAccJerk.meanFreq.Z"
- "AVERAGE.of.fBodyGyro.mean.X"
- "AVERAGE.of.fBodyGyro.mean.Y"
- "AVERAGE.of.fBodyGyro.mean.Z"
- "AVERAGE.of.fBodyGyro.std.X"
- "AVERAGE.of.fBodyGyro.std.Y"
- "AVERAGE.of.fBodyGyro.std.Z"
- "AVERAGE.of.fBodyGyro.meanFreq.X"
- "AVERAGE.of.fBodyGyro.meanFreq.Y"
- "AVERAGE.of.fBodyGyro.meanFreq.Z"
- "AVERAGE.of.fBodyAccMag.mean."
- "AVERAGE.of.fBodyAccMag.std."
- "AVERAGE.of.fBodyAccMag.meanFreq."
- "AVERAGE.of.fBodyBodyAccJerkMag.mean."
- "AVERAGE.of.fBodyBodyAccJerkMag.std."
- "AVERAGE.of.fBodyBodyAccJerkMag.meanFreq."
- "AVERAGE.of.fBodyBodyGyroMag.mean."
- "AVERAGE.of.fBodyBodyGyroMag.std."
- "AVERAGE.of.fBodyBodyGyroMag.meanFreq."
- "AVERAGE.of.fBodyBodyGyroJerkMag.mean."
- "AVERAGE.of.fBodyBodyGyroJerkMag.std."
- "AVERAGE.of.fBodyBodyGyroJerkMag.meanFreq."

