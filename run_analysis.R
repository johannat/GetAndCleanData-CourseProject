library(dplyr)

run_analysis <- function() {
    # read first metadata
    features <- read.table("UCI HAR Dataset//features.txt", sep = " ",
                           col.names = c("feat_id", "feat_name"))
    activity_labels <- read.table("UCI HAR Dataset//activity_labels.txt",
                                  sep = " ", 
                                  col.names = c("act_id", "act_label"))
    
    # make valid descriptive column names out of feature names
    features <- mutate(features, 
                       valid_col_names = make.names(feat_name, unique = TRUE))
    
    # read actual data and name columns simultaneously
    train_data <- read.table("UCI HAR Dataset//train//X_train.txt", 
                             as.is = TRUE,
                             col.names = features$valid_col_names)
    train_data$act_id <- read.table("UCI HAR Dataset//train//y_train.txt",
                                    sep = " ", col.names = "act_id")$act_id
    train_data$subject_id <- read.table("UCI HAR Dataset//train//subject_train.txt",
                                        sep = " ", 
                                        col.names = "subj_id")$subj_id
    test_data <- read.table("UCI HAR Dataset//test//X_test.txt", as.is = TRUE,
                            col.names = features$valid_col_names)
    test_data$act_id <- read.table("UCI HAR Dataset//test//y_test.txt", sep = " ",
                                   col.names = "act_id")$act_id
    test_data$subject_id <- read.table("UCI HAR Dataset//test//subject_test.txt",
                                       sep = " ",
                                       col.names = "subj_id")$subj_id
    
    # merge training and test data sets
    full_data <- rbind(train_data, test_data)
    
    # extract measurements on the mean and standard deviation
    # the measurements had originally "mean()" or "std()" in their name
    # and the columns have not been rearranged
    mean_indices <- grep("mean()", as.vector(features$feat_name), fixed = TRUE)
    std_indices <- grep("std()", as.vector(features$feat_name), fixed = TRUE)
    all_indices <- sort(c(mean_indices, std_indices))
    data <- select(full_data, subject_id, act_id, all_indices)
    
    # remove extra periods from column names
    names <- names(data)
    names <- sub("...", ".", names, fixed = TRUE) # triple and double periods
    names <- sub("..", ".", names, fixed = TRUE)
    names <- sub("mean.$", "mean", names) # periods at the end of names
    names <- sub("std.$", "std", names)
    names(data) <- names
    
    # replace activity id by descriptive activity names as a factor
    data$activity <- factor(data$act_id, activity_labels$act_id,
                            activity_labels$act_label)
    data <- select(data, -act_id)
    
    # data by activity and subject
    grouped_data <- group_by(data, activity, subject_id)
    summarise_each(grouped_data, funs(mean))
}