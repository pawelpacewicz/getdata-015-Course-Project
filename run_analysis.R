library(dplyr)

#REQ 1: Merges the training and the test sets to create one data set.
#====================================================================

#reading labels for the data set
features<-read.table(".\\features.txt",header=FALSE, stringsAsFactors=FALSE)
#it will be used as column names so this line makes sure to build syntactically valid names out of character vectors
features$V2<-make.names(features$V2,unique=TRUE)
#removing double and triplie dots in features$V2
features$V2<-gsub("\\.\\.\\.","..",features$V2)
features$V2<-gsub("\\.\\.",".",features$V2)


#READING TRAIN DATA:
#-------------------
#reading dataset
dataset<-read.table(".\\train\\X_train.txt",header=FALSE)
#reading labels - IDs of activities
labels<-read.table(".\\train\\y_train.txt",header=FALSE)
#reading subjects - IDs of the subject who performed the activity
subject<-read.table(".\\train\\subject_train.txt",header=FALSE)

#renaming columns for the data set
#ATTENTION: This line solves REQ4 (described below)
colnames(dataset)<-features[,2]

# naming other columns
colnames(labels)[1]<-"labels"
colnames(subject)[1]<-"subject"

# joining data into one table
resultTRAIN<-cbind(type="train",labels,subject,dataset)


#READING TEST DATA:
#------------------
#reading dataset
dataset<-read.table(".\\test\\X_test.txt",header=FALSE)
#reading labels - IDs of activities
labels<-read.table(".\\test\\y_test.txt",header=FALSE)
#reading subjects - IDs of the subject who performed the activity
subject<-read.table(".\\test\\subject_test.txt",header=FALSE)

#renaming columns for the data set
#ATTENTION: This line solves REQ4 (described below)
colnames(dataset)<-features[,2]

# naming other columns
colnames(labels)[1]<-"labels"
colnames(subject)[1]<-"subject"

# joining data into one table
resultTEST<-cbind(type="test",labels,subject,dataset)

#joining TEST and TRAIN datatsets:
REQ1result=rbind(resultTRAIN,resultTEST)

# processing files from "Interial Signals" folder is not required. It was explained in FAQ:
# https://class.coursera.org/getdata-015/forum/thread?thread_id=26
# in question: "Do we need the inertial folder"

#result for REQ1 is in REQ1result


#REQ 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
#==============================================================================================

#using results from REQ1
REQ2result<-REQ1result

#building required column names vector
req2_columns<-grep("mean|std",colnames(REQ2result), value=TRUE)
req2_columns=c(colnames(REQ2result)[1:3],req2_columns)

#Extracting required columns
REQ2result<-REQ2result[,req2_columns]

#result for REQ2 is in REQ2result


#REQ 3: Uses descriptive activity names to name the activities in the data set
#=============================================================================

#using results from REQ2
REQ3result<-REQ2result

#reading activity labels
activity_labels<-read.table(".\\activity_labels.txt",header=FALSE, stringsAsFactors=FALSE)

#assigning descriptive activity names
REQ3result$labels<-as.factor(REQ3result$labels)
levels(REQ3result$labels)<-activity_labels$V2

#renaming column with activity names
colnames(REQ3result)[colnames(REQ3result) == "labels"]<-"activity"

#result for REQ3 is in REQ3result


#REQ 4: Appropriately labels the data set with descriptive variable names. 
#=========================================================================

#using results from REQ3
REQ4result<-REQ3result

#renaming columns of dataset was done already above (in REQ1 section) 

#result for REQ4 is in REQ4result


#REQ 5: From the data set in step 4, creates a second, independent tidy data set
#with the average of each variable for each activity and each subject.
#===============================================================================

#using results from REQ4
REQ5result<-REQ4result

#grouping by activity and subject
REQ5result<-group_by(REQ5result,activity,subject)

#calculating average of each variable
REQ5result<-summarise_each(REQ5result,funs(mean),4:ncol(REQ5result))

#renaming column names to "AVERAGE.of. ..."
names(REQ5result)[3:length(REQ5result)]<-paste("AVERAGE.of.",names(REQ5result)[3:length(REQ5result)],sep="")

#result for REQ5 is in REQ5result


#writing final result into a file
#================================
write.table(REQ5result,"REQ5result.txt", row.names=FALSE)
