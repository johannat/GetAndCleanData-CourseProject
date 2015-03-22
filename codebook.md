---
title: "Codebook for the course project in Getting and Cleaning Data"
author: "johannat"
date: "22/03/2015"
output: html_document
---

This codebook describes the variables in the data frame returned by `run_analysis()`. See `README.md` for details about the function.

The original dataset is described in `UCI HAR Dataset/README.txt` and the variables (features) therein in `UCI HAR Dataset/features_info.txt`.

The rows in the data frame summarise all the required measurements by one subject pertaining to a particular activity by calculating the mean of observed values for each measurement.

## activity

A factor. Identifies the activity. One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

## subject_id

An integer. Identifies one of the 30 test subjects.

## Measurements

These are the 66 summary variables for the original measurements giving the mean of all observations for a particular subject doing a particular activity. The variable names correspond to the original features according to the following table.

If a name ends with `X/Y/Z` it means that there's one variable corresponding to each of the axis, X, Y and Z.

| Column name/s  | Original feature/s  |
|----------------|---------------------|
|tBodyAcc.mean.X/Y/Z|tBodyAcc-mean()-X/Y/Z|
|tBodyAcc.std.X/Y/Z |tBodyAcc-std()-X/Y/Z |
|tGravityAcc.mean.X/Y/Z|tGravityAcc-mean()-X/Y/Z|
|tGravityAcc.std.X/Y/Z|tGravityAcc-std()-X/Y/Z|
|tBodyAccJerk.mean.X/Y/Z|tBodyAccJerk-mean()-X/Y/Z|
|tBodyAccJerk.std.X/Y/Z|tBodyAccJerk-std()-X/Y/Z|
|tBodyGyro.mean.X/Y/Z|tBodyGyro-mean()-X/Y/Z|
|tBodyGyro.std.X/Y/Z|tBodyGyro-std()-X/Y/Z|
|tBodyGyroJerk.mean.X/Y/Z|tBodyGyroJerk-mean()-X/Y/Z|
|tBodyGyroJerk.std.X/Y/Z|tBodyGyroJerk-std()-X/Y/Z|
|tBodyAccMag.mean|tBodyAccMag-mean()|
|tBodyAccMag.std|tBodyAccMag-std()|
|tGravityAccMag.mean|tGravityAccMag-mean()|
|tGravityAccMag.std|tGravityAccMag-std()|
|tBodyAccJerkMag.mean|tBodyAccJerkMag-mean()|
|tBodyAccJerkMag.std|tBodyAccJerkMag-std()|
|tBodyGyroMag.mean|tBodyGyroMag-mean()|
|tBodyGyroMag.std|tBodyGyroMag-std()|
|tBodyGyroJerkMag.mean|tBodyGyroJerkMag-mean()|
|tBodyGyroJerkMag.std|tBodyGyroJerkMag-std()|
|fBodyAcc.mean.X/Y/Z|fBodyAcc-mean()-X/Y/Z|
|fBodyAcc.std.X/Y/Z|fBodyAcc-std()-X/Y/Z|
|fBodyAccJerk.mean.X/Y/Z|fBodyAccJerk-mean()-X/Y/Z|
|fBodyAccJerk.std.X/Y/Z|fBodyAccJerk-std()-X/Y/Z|
|fBodyGyro.mean.X/Y/Z|fBodyGyro-mean()-X/Y/Z|
|fBodyGyro.std.X/Y/Z|fBodyGyro-std()-X/Y/Z|
|fBodyAccMag.mean|fBodyAccMag-mean()|
|fBodyAccMag.std|fBodyAccMag-std()|
|fBodyBodyAccJerkMag.mean|fBodyBodyAccJerkMag-mean()|
|fBodyBodyAccJerkMag.std|fBodyBodyAccJerkMag-std()|
|fBodyBodyGyroMag.mean|fBodyBodyGyroMag-mean()|
|fBodyBodyGyroMag.std|fBodyBodyGyroMag-std()|
|fBodyBodyGyroJerkMag.mean|fBodyBodyGyroJerkMag-mean()|
|fBodyBodyGyroJerkMag.std|fBodyBodyGyroJerkMag-std()|

Out of the 561 measurements in the original dataset, only those that include means or standard deviations of the raw measurements are included.