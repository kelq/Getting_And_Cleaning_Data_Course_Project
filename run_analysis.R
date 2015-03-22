###
# Getting and Cleaning Data - Course Project
###

# load required libraries
library(data.table)
library(dplyr)

# Load activity labels (The values range from 1 to 6)
activityLabels<-read.table("activity_labels.txt")

# Load file containing list of feature names (The measured variables - 561 of them)
featureNames<-read.table("features.txt")

# Subset only the measured variables representing mean or standard deviation.
# The following will exclude measured variables like meanFreq.
selectedFeatures<-featureNames[tolower(featureNames$V2) %like% 'mean\\(' | tolower(featureNames$V2) %like% 'std\\(', ]

# Combine all subject ID from test set and training set.
subjects<-rbind(read.table("subject_test.txt"), read.table("subject_train.txt"))

# Combine all observations of activity of subjects from test set and training set.
activity<-rbind(read.table("y_test.txt"), read.table("y_train.txt"))

# Combine all observations of measured features of subjects
features.test<-read.table("X_test.txt")
features.train<-read.table("X_train.txt")
features<-rbind(features.test[, selectedFeatures$V1], features.train[, selectedFeatures$V1])

# Merges subject, activity and features data into a data frame
allData<-NULL
allData <- cbind(subjects, activity, features)

# Labels the data set with descriptive variables names specified in features.txt
names(allData) <- c("Subject", "Activity", as.character(selectedFeatures$V2))

# Uses descriptive activity to name the activities in the data set.
allData[,2]=as.character(activityLabels[allData$Activity, 2])

# Create another tidy data set. Melt first data set by Subject and Activity. 
secondDS<-melt(allData, id=c("Subject", "Activity"))
# Apply mean function for each measured variables for different combinations of (Subject, Activity)
finalData<-dcast(secondDS, Subject + Activity ~ variable, mean)

# Write contents of final tidy data set to the file tidy_data.txt
write.table(finalData, file = "~/tidy_data.txt", row.names = FALSE)

# End

