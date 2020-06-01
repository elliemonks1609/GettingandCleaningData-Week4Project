# SUMMARY
The following codebook has modified and updated the original available codebook for the Human Activity Reocgnition  Using Spartphones dataset (available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute information

For each record in the dataset it is provided: 
1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
2. Triaxial Angular velocity from the gyroscope. 
3. A 561-feature vector with time and frequency domain variables. 
4. Its activity label. 
5. An identifier of the subject who carried out the experiment.

## The Data 

The dataset includes the following files:
'features.txt'
'activity_labels.txt'
'subject_train.txt'
'x_train.txt'
'y_train.txt'
'subject_test.txt'
'x_test.txt'
'y_test.txt'

The above textfiles were imported and merged in to a final dataset containing the mean and standard deviation of each variable for each activity and each subject. This was done by completing the following:

### Extracting mean and standard deviation
A logical vector was created that identified TRUE for the ID, mean & stdev columns and FALSE for other values. Merged data was then subsetted to only keep the relevant columns. 

### Renaming activities in the dataset with descriptive activity names
'activity_labels.txt' was merged with the subsetted data to add descriptive activity names to merged and subsetted data set. Values in 'activityId' column were then replaced with the matching values from the 'activityType' column in order to make the data easier to read.

### Appropriately labelling the dataset with descriptive activity names
This is completed by including the activity_labels, by="activityID" code within the merge function. 

### Creating the final independnet dataset containing the average for each variable and subject
The average (using the mean() function) and standard deviation (using the std() function) were used to calculate the average for each variable and subject. The final output is saved to the local text file names "tidy_final.txt"






