# README for Course Project on Getting and Cleaning Data (getdata-015)


***
##Table of Content:

1. Introduction
2. Files
3. Transformations performed to clean up the data

***



## 1. Introduction

Those files are result of Course Project on Getting and Cleaning Data (getdata-015) training. More details about Course Project are available in file [Purpose of Course Project.txt](Purpose of Course Project.txt) (or on [this web page](https://class.coursera.org/getdata-015/human_grading/view/courses/973502/assessments/3/submissions))

## 2. Files

Purpose of Course Project is described in file:

* [Purpose of Course Project.txt](Purpose of Course Project.txt)

R code to execute Purpose of Course project is in file

* [run_analysis.R](run_analysis.R)

results of R code ([run_analysis.R](run_analysis.R)) is in file:

* [REQ5result.txt](REQ5result.txt)

explanation of variables (columns) in [REQ5result.txt](REQ5result.txt) are in file:

* [CodeBook.md](CodeBook.md)

Original Data Set used in Course Project is described in files:

* [README - Course Project.txt](README - Course Project.txt)
* [features_info.txt](features_info.txt)
* [features.txt](features.txt) - names of columns for dataset

- For training phase:

* [train\\X_train.txt](train\X_train.txt) - dataset
* [train\\y_train.txt](train\y_train.txt) - ID's of activities for dataset
* [train\\subject_train.txt](train\subject_train.txt) - IDs of the subject who performed the activity

- For testing phase:

* [test\\X_test.txt](test\X_test.txt) - dataset
* [test\\y_test.txt](test\y_test.txt) - ID's of activities for dataset
* [test\\subject_test.txt](test\subject_test.txt) - IDs of the subject who performed the activity

- Other:

* [activity_labels.txt](activity_labels.txt) - labels to the activities


## 3. Transformations performed to clean up the data 

Transfromations performed to clean data was done in 5 steps coresponding to 5 requirements of Course Project ([Purpose of Course Project.txt](Purpose of Course Project.txt)) and was coded in R language ([run_analysis.R](run_analysis.R)):

###REQ1: Merges the training and the test sets to create one data set.

1. reading names of columns for dataset (file [features.txt](features.txt))
2. names are not valid syntactically and have to be corrected
    a. make.names() funtion was used to change it into valid names (it exchanges every invalid character into dot (.).)
    b. removing double and triplie dots in names (generated in previous step)
3. reading data of training phase:
    a. reading dataset [train\\X_train.txt](train\X_train.txt)
    b. reading IDs of activities [train\\y_train.txt](train\y_train.txt)
    c. reading IDs of the subject who performed the activity [train\\subject_train.txt](train\subject_train.txt)
    d. renaming columns for the data set (ATTENTION: This line solves REQ4 - described below)
    e. naming other columns
    f. joining data into one table
4. reading data of testing phase:
    a. reading dataset [test\\X_test.txt](test\X_test.txt)
    b. reading IDs of activities [test\\y_test.txt](test\y_test.txt)
    c. reading IDs of the subject who performed the activity [test\\subject_test.txt](test\subject_test.txt)
    d. renaming columns for the data set (ATTENTION: This line solves REQ4 - described below)
    e. naming other columns
    f. joining data into one table
5. joining TEST and TRAIN datatsets:
6. skipping files from "Interial Signals" folder. It wasn not required as explained in [FAQ](https://class.coursera.org/getdata-015/forum/thread?thread_id=26) in question: "Do we need the inertial folder"
7. **result for REQ1 is in REQ1result variable**


###REQ2: Extracts only the measurements on the mean and standard deviation for each measurement. 

1. as an input using results from REQ1
2. building vector of required column names (containing "mean" or "std")
3. Extracting required columns
4. **result for REQ2 is in REQ2result variable**


###REQ3: Uses descriptive activity names to name the activities in the data set

1. as an input using results from REQ2
2. reading activity names from [activity_labels.txt](activity_labels.txt) file.
3. changing column with activities IT into a factor.
4. updating factor levels to fit activities names.
5. changing column name to "activity"
6. **result for REQ3 is in REQ3result variable**


###REQ4: Appropriately labels the data set with descriptive variable names. 

1. as an input using results from REQ3
2. renaming columns of dataset was done already in REQ1 section (points 3d and 4d)
3. **result for REQ4 is in REQ4result variable**


###REQ5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

1. as an input using results from REQ4
2. grouping dataset by activity and subject
3. calculating average of each variable
4. renaming column names: adding "AVERAGE.of." in front of each variable where average was calculated
5. **result for REQ5 is in REQ5result variable**

saving REQ5result data frame into [REQ5result.txt](REQ5result.txt)