
#downloading and unzipping the dataset
URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, "./W4/Project.zip", method="curl")
unzip(zipfile="./W4/Project.zip", exdir=".W4")
setwd("~/Documents/CODING COURSES/Getting and Cleaning Data/W4/Project")
list.files(recursive=TRUE)

#reading in train data
xtrain<-read.table("./train/X_train.txt", header=FALSE)
ytrain<-read.table("./train/y_train.txt", header=FALSE)
subject_train<-read.table("./train/subject_train.txt", header=FALSE)
#reading in test data
xtest<-read.table("./test/X_test.txt", header=FALSE)
ytest<-read.table("./test/y_test.txt", header=FALSE)
subject_test<-read.table("./test/subject_test.txt", header=FALSE)
#reading in other data
activity_labels<-read.table("./activity_labels.txt", header=FALSE)
features<-read.table("./features.txt", header=FALSE)

#Create column names

colnames(xtrain)<-features[,2]
colnames(ytrain)<-"activityID"
colnames(subject_train)<-"subjectID"

colnames(xtrain)<-features[,2]
colnames(ytest)<-"activityID"
colnames(subject_test)<-"subjectID"
colnames(activity_labels)<-c("activityID", "activityType")

#Merge the train and test data

train_merge<-cbind(ytrain, subject_train, xtrain)
test_merge<-cbind(ytest, subject_test, xtest)
phone_data<-rbind(train_merge, test_merge)

#Subset mean and standard deviation data for each measurement

colNames<-colnames(phone_data)
meansd<- (grep1("activityID", colNames)|grep1("subjectID", colNames)
          |grep1("mean..", colNames)|grep1("std..", colNames))
subset_meansd<-phone_data[,meansd==TRUE]

#Use descriptive activity names to name the activities in the data set

names_activities<-merge(subset_meansd, activity_labels, by="activityID", all.x=TRUE)

#Creating a second, independent tidy data set with the average of each variable for each activity and each subject

tidy_dataset<-aggregate(.~subjectID + activityID, names_activities, mean)
tidy_final<-tidy_dataset[order(tidy_dataset$subjectID, tidy_dataset$activityID),]

#Saving the tidy data as a text file

write.table(tidy_final, "tidy_final.txt", row.name=FALSE)


