# GettingAndCleaningDataCourceProject
This project is prepared for the course project of Getting and Cleaning Data class

## Files 
**run_analysis.R** is the script file performing the analysis.
**Codebook.md** is the codebook that indicates all the variables and summaries you calculated, along with units, and any other relevant information
**Readme.md** is describing how the script is working


## How to run "run_analysis.R" script file

### Required Packages
This script is using **dplyr** and **stringr** packages

### Input Data and Script Preparation
As an input, specific data files are required and should be placed under Dataset subdirectory as follow:

* "./Dataset/test/subject_test.txt"
* "./Dataset/test/X_test.txt"
* "./Dataset/test/y_test.txt"

* "./Dataset/train/subject_train.txt"
* "./Dataset/train/X_train.txt"
* "./Dataset/train/y_train.txt"

* "./Dataset/features.txt"
* "./Dataset/activity_labels.txt"

Place the script file as well.

* "./run_analysis.R"


### How to run the script
Make sure getwd() returns the directory where the script file and Dataset directory is located.
```R
source(file = "./run_analysis.R")
```

## What "run_analysis.R" script file is doing"
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

As a result, the script will create **tidy_data_set.txt** file in the **working directory** with col.names = TRUE and row.names = FALSE.

## How to read output data file (tidy_data_set.txt) in your R environment
```R
data <- read.table(file = "./tidy_data_set.txt", header = TRUE)
```


