### Getting and Cleaning Data Course Project
# README

##### This document describes how to run the R program - run_analysis.R


1. Download the data required. They can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

	Unzip the following files to the same directory (Note: This might require you to copy out the files from the test and train folders).

	* activity_labels.txt
	* features.txt
	* subject_test.txt
	* subject_train.txt
	* X_test.txt
	* X_train.txt
	* y_test.txt
	* y_train.txt
	
2. Set your R session's working directory to where the following files can be found.

3. The following libraries will need to be installed. The program will load these libraries during runtime.
	* data.table
	* dplyr

4. Source and run the program - run_analysis.R

5. The program will perform the following:

	* Merged the training and the test sets to create one data set.
	* Extracts only the 68 measurements on the mean and standard deviation for each measurement.
	* Descriptive activity names (From activity_labels.txt)were used to name the activities in the data set.
	* Descriptive variable names (From features.txt) were used to label the features data set.
	* The final data set contains the average of each variable for each activity and each subject will be saved to a file tidy_data.txt

6. The cleaned data set will be written to a file (tidy_data.txt) in the working directory.
