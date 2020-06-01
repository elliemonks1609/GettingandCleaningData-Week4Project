# GettingandCleaningData-Week4Project
title:"ReadMe.md"
author: "Ellie Monks"
date: "June 1, 2020"

This repo contains 1) a tidy dataset from the Human Activity Recognition Using Smartphones Dataset
2) a code book that described the variables, data and any transformations or work that I performed to clena up the data called CodeBook.md and 3) an R script called run_analysis.r that contains annotated code that tidies the data. 

##The data source
The dataset from the accelorometers from the Samsung Galaxy S smarthphones was obtained from the followeidng link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original codebook for this data was obtained from the following link: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##The codebook
The CodeBook.md file contains information on the variables, datasets, transformations and work that was done to tidy the original data. 

##The R Script
The run_analysis.r R script contains code used to complete the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##The tidied dataset
tidy_final.txt is the output textfile from the above R Script code. 
