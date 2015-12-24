# Getting and Cleaning Data - Course Project

This is the repository for course project for the Getting and Cleaning Data Coursera course.
Steps in the `run_analysis.R` are as follows:

1. Load the activity and feature infomation
2. Loads both the train and test datasets
3. Loads the activity and subject data for each dataset, and merges those
 columns with the dataset
4. Merges train dataset and test dataset
5. Filter the data set, keeping only those columns which describe mean or standard deviation
6. Creates a tidy dataset with the average of each variable for each activity and each subject (write to `tidy.txt`)


## Code book
Belows is description of the variables in the tidy.txt:

* `subjectID` - ID of the subject
* `activity` - The type of activity


### Measurements

* `tBodyAccMean-X` 
* `tBodyAccMean-Y`
* `tBodyAccMean-Z`
* `tBodyAccStd-X`
* `tBodyAccStd-Y`
* `tBodyAccStd-Z`
* `tGravityAccMean-X`
* `tGravityAccMean-Y` 
* `tGravityAccMean-Z`
* `tGravityAccStd-X`
* `tGravityAccStd-Y`
* `tGravityAccStd-Z`
* `tBodyAccJerkMean-X`
* `tBodyAccJerkMean-Y`
* `tBodyAccJerkMean-Z`
* `tBodyAccJerkStd-X`
* `tBodyAccJerkStd-Y`
* `tBodyAccJerkStd-Z` 
* `tBodyGyroMean-X`
* `tBodyGyroMean-Y`
* `tBodyGyroMean-Z`
* `tBodyGyroStd-X`
* `tBodyGyroStd-Y`
* `tBodyGyroStd-Z`
* `tBodyGyroJerkMean-X`
* `tBodyGyroJerkMean-Y`
* `tBodyGyroJerkMean-Z`
* `tBodyGyroJerkStd-X`
* `tBodyGyroJerkStd-Y`
* `tBodyGyroJerkStd-Z`
* `tBodyAccMagnitudeMean`
* `tBodyAccMagnitudeStd`
* `tGravityAccMagnitudeMean`
* `tGravityAccMagnitudeStd`
* `tBodyAccJerkMagnitudeMean`
* `tBodyAccJerkMagnitudeStd`
* `tBodyGyroMagnitudeMean`
* `tBodyGyroMagnitudeStd` 
* `tBodyGyroJerkMagnitudeMean`
* `tBodyGyroJerkMagnitudeStd`
* `fBodyAccMean-X`
* `fBodyAccMean-Y`
* `fBodyAccMean-Z` 
* `fBodyAccStd-X`
* `fBodyAccStd-Y`
* `fBodyAccStd-Z`
* `fBodyAccJerkMean-X`
* `fBodyAccJerkMean-Y`
* `fBodyAccJerkMean-Z`
* `fBodyAccJerkStd-X` 
* `fBodyAccJerkStd-Y` 
* `fBodyAccJerkStd-Z` 
* `fBodyGyroMean-X`
* `fBodyGyroMean-Y` 
* `fBodyGyroMean-Z` 
* `fBodyGyroStd-X`
* `fBodyGyroStd-Y` 
* `fBodyGyroStd-Z`
* `fBodyAccMagnitudeMean`
* `fBodyAccMagnitudeStd` 
* `fBodyAccJerkMagnitudeMean`
* `fBodyAccJerkMagnitudeStd` 
* `fBodyGyroMagnitudeMean`
* `fBodyGyroMagnitudeStd`
* `fBodyGyroJerkMagnitudeMean` 
* `fBodyGyroJerkMagnitudeStd`


### Activity labels

* `WALKING`
* `WALKING_UPSTAIRS`
* `WALKING_DOWNSTAIRS`
* `SITTING`
* `STANDING`
* `LAYING`