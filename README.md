# GetAndCleanData-CourseProject

The course project for Getting and Cleaning Data in JHU Coursera Data Science specialization

## How to run the analysis

You should have the data folder `UCI HAR Dataset` (available as a zipped file [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)) and the file `run_analysis.R` in your working directory. Then you can source the R script and the function `run_analysis()` will return a tidy data set according to the project description.

## What the analysis does

1. Use the feature names in `UCI HAR Dataset/features.txt` to generate preliminary variable names for the measurements.
2. Read measurement data for training dataset in `UCI HAR Dataset/train/X_train.txt` using the variable names from step 1 as column names.
3. Annotate the measurement data from the previous step with activity and subject information in files `UCI HAR Dataset/train/y_train.txt` and `UCI HAR Dataset/train/subject_train.txt` respectively.
4. Complete steps 2-3 similarly for the test data.
5. Merge the two data frames into one.
6. Keep only the columns identifying the subject and the activity as well as all variables that include means or standard deviations for raw measurements during a particular activity. These are identifiable by either `mean()` or `std()` in their original feature name in `UCI HAR Dataset/features.txt`.
7. As the preliminary column names generated at step 1 have excessive periods in them, all the triple or double periods are replaced by single periods and all the periods at the end of the names are removed.
8. Use the mapping in `UCI HAR Dataset/activity_labels.txt` to replace the integer activities by a factor variable.
9. Group the data by activity and subject and calculate the average value of each remaining variable for each activity and subject.
10. Return this final tidy data frame.

## What are the variables in the final data frame

The variables are described in more detail in the file `codebook.md`.
