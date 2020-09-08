---
title: "Codebook"
author: "Ash Thompson"
date: "8 Sep 2020"
output: html_document
---


### Codebook/Data Dictionary for tidy dataset based on "Human Activity Recognition Using Smartphones Data Set

## Overall details
There are 30 subjects, with 6 activities each for a total of 180 rows.
Each row contains the activity name and subject id, and 66 averaged values

## Description of the variables from 'tidy_data.txt'

````
activityname -  Activity in progress while measurement taken.
                Factor with the following levels:
                WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject -       Subject id number.
                Integer from 1 to 30


All the following variables are numeric averages between -1 and 1

tBodyAcc-mean()-X_mean - Average of means for time domain, body acceleration, X direction
tBodyAcc-mean()-Y_mean - Average of means for time domain, body acceleration, Y direction
tBodyAcc-mean()-Z_mean - Average of means for time domain, body acceleration, Z direction
tGravityAcc-mean()-X_mean - Average of means for time domain, gravity acceleration, X direction
tGravityAcc-mean()-Y_mean - Average of means for time domain, gravity acceleration, Y direction
tGravityAcc-mean()-Z_mean - Average of means for time domain, gravity acceleration, Z direction
tBodyAccJerk-mean()-X_mean - Average of means for time domain, body acceleration jerk, X direction
tBodyAccJerk-mean()-Y_mean - Average of means for time domain, body acceleration jerk, Y direction
tBodyAccJerk-mean()-Z_mean - Average of means for time domain, body acceleration jerk, Z direction
tBodyGyro-mean()-X_mean - Average of means for time domain, body gyro, X direction
tBodyGyro-mean()-Y_mean - Average of means for time domain, body gyro, Y direction
tBodyGyro-mean()-Z_mean - Average of means for time domain, body gyro, Z direction
tBodyGyroJerk-mean()-X_mean - Average of means for time domain, body gyro jerk, X direction
tBodyGyroJerk-mean()-Y_mean - Average of means for time domain, body gyro jerk, Y direction
tBodyGyroJerk-mean()-Z_mean - Average of means for time domain, body gyro jerk, Z direction
tBodyAccMag-mean()_mean - Average of means for time domain, body acceleration magnitude
tGravityAccMag-mean()_mean - Average of means for time domain, gravity acceleration magnitude
tBodyAccJerkMag-mean()_mean - Average of means for time domain, body acceleration jerk magnitude
tBodyGyroMag-mean()_mean - Average of means for time domain, body gyro magnitude
tBodyGyroJerkMag-mean()_mean - Average of means for time domain, body gyro jerk magnitude
fBodyAcc-mean()-X_mean - Average of means for frequency domain, body acceleration, X direction
fBodyAcc-mean()-Y_mean - Average of means for frequency domain, body acceleration, Y direction
fBodyAcc-mean()-Z_mean - Average of means for frequency domain, body acceleration, Z direction
fBodyAccJerk-mean()-X_mean - Average of means for frequency domain, body acceleration jerk, X direction
fBodyAccJerk-mean()-Y_mean - Average of means for frequency domain, body acceleration jerk, Y direction
fBodyAccJerk-mean()-Z_mean - Average of means for frequency domain, body acceleration jerk, Z direction
fBodyGyro-mean()-X_mean - Average of means for frequency domain, body gyro, X direction
fBodyGyro-mean()-Y_mean - Average of means for frequency domain, body gyro, Y direction
fBodyGyro-mean()-Z_mean - Average of means for frequency domain, body gyro, Z direction
fBodyAccMag-mean()_mean - Average of means for frequency domain, body acceleration magnitude
fBodyAccJerkMag-mean()_mean - Average of means for frequency domain, body acceleration jerk magnitude
fBodyGyroMag-mean()_mean - Average of means for frequency domain, body gyro magnitude
fBodyGyroJerkMag-mean()_mean - Average of means for frequency domain, body gyro jerk magnitude
tBodyAcc-std()-X_mean - Average of standard deviation for time domain, body acceleration, X direction
tBodyAcc-std()-Y_mean - Average of standard deviation for time domain, body acceleration, Y direction
tBodyAcc-std()-Z_mean - Average of standard deviation for time domain, body acceleration, Z direction
tGravityAcc-std()-X_mean - Average of standard deviation for time domain, gravity acceleration, X direction
tGravityAcc-std()-Y_mean - Average of standard deviation for time domain, gravity acceleration, Y direction
tGravityAcc-std()-Z_mean - Average of standard deviation for time domain, gravity acceleration, Z direction
tBodyAccJerk-std()-X_mean - Average of standard deviation for time domain, body acceleration jerk, X direction
tBodyAccJerk-std()-Y_mean - Average of standard deviation for time domain, body acceleration jerk, Y direction
tBodyAccJerk-std()-Z_mean - Average of standard deviation for time domain, body acceleration jerk, Z direction
tBodyGyro-std()-X_mean - Average of standard deviation for time domain, body gyro, X direction
tBodyGyro-std()-Y_mean - Average of standard deviation for time domain, body gyro, Y direction
tBodyGyro-std()-Z_mean - Average of standard deviation for time domain, body gyro, Z direction
tBodyGyroJerk-std()-X_mean - Average of standard deviation for time domain, body gyro jerk, X direction
tBodyGyroJerk-std()-Y_mean - Average of standard deviation for time domain, body gyro jerk, Y direction
tBodyGyroJerk-std()-Z_mean - Average of standard deviation for time domain, body gyro jerk, Z direction
tBodyAccMag-std()_mean - Average of standard deviation for time domain, body acceleration magnitude
tGravityAccMag-std()_mean - Average of standard deviation for time domain, gravity acceleration magnitude
tBodyAccJerkMag-std()_mean - Average of standard deviation for time domain, body acceleration jerk magnitude
tBodyGyroMag-std()_mean - Average of standard deviation for time domain, body gyro magnitude
tBodyGyroJerkMag-std()_mean - Average of standard deviation for time domain, body gyro jerk magnitude
fBodyAcc-std()-X_mean - Average of standard deviation for frequency domain, body acceleration, X direction
fBodyAcc-std()-Y_mean - Average of standard deviation for frequency domain, body acceleration, Y direction
fBodyAcc-std()-Z_mean - Average of standard deviation for frequency domain, body acceleration, Z direction
fBodyAccJerk-std()-X_mean - Average of standard deviation for frequency domain, body acceleration jerk, X direction
fBodyAccJerk-std()-Y_mean - Average of standard deviation for frequency domain, body acceleration jerk, Y direction
fBodyAccJerk-std()-Z_mean - Average of standard deviation for frequency domain, body acceleration jerk, Z direction
fBodyGyro-std()-X_mean - Average of standard deviation for frequency domain, body gyro, X direction
fBodyGyro-std()-Y_mean - Average of standard deviation for frequency domain, body gyro, Y direction
fBodyGyro-std()-Z_mean - Average of standard deviation for frequency domain, body gyro, Z direction
fBodyAccMag-std()_mean - Average of standard deviation for frequency domain, body acceleration magnitude
fBodyAccJerkMag-std()_mean - Average of standard deviation for frequency domain, body acceleration jerk magnitude
fBodyGyroMag-std()_mean - Average of standard deviation for frequency domain, body gyro magnitude
fBodyGyroJerkMag-std()_mean - Average of standard deviation for frequency domain, body gyro jerk magnitude

````

