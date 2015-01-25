# run_analysis.R prepared for Getting and Cleaning Data Course Project
# This script files is to perform an analysis of pre-defined data set
# in "./Dataset" directory and to create an output file in working directory

# Load required libraries
library(dplyr)
library(stringr)

# Merges the training and the test sets to create one data set.
        # Load test data
        testSubject <- read.table(file = "./Dataset/test/subject_test.txt", header = FALSE)
        testSet <- read.table(file = "./Dataset/test/X_test.txt", header = FALSE)
        testLabels <- read.table(file="./Dataset/test/y_test.txt", header = FALSE)
        
        # Load training data
        trainSubject <- read.table(file = "./Dataset/train/subject_train.txt", header = FALSE)
        trainSet <- read.table(file = "./Dataset/train/X_train.txt", header = FALSE)
        trainLabels <- read.table(file = "./Dataset/train/y_train.txt", header = FALSE)
        
        # Merge test data and training data
        mergedSubject <- rbind(testSubject, trainSubject)
        mergedLabels <- rbind(testLabels, trainLabels)
        mergedSet <- rbind(testSet, trainSet)
        
        # Optional: remove unnecessary values from environment to save memory space
        rm("testSubject", "trainSubject", "testSet", "trainSet", "testLabels", "trainLabels")


# Extracts only the measurements on the mean and standard deviation for each measurement.
        # Load features
        features <- read.table(file="./Dataset/features.txt", header = FALSE)
        
        # Select the mean and standard deviation from the features
        vMean <- grep("mean()", features$V2)
        vStd <- grep("std()", features$V2)
        vSelected <- c(vMean, vStd)
        vSelectedFeatures <- filter(features, V1 %in% vSelected)

        # Extract
        selectedSet <- select(mergedSet, vSelected)

# Uses descriptive activity names to name the activities in the data set
        # Load activity lable that contains descriptive activity names
        activitylabels <- read.table(file="./Dataset/activity_labels.txt", header = FALSE)
        names(activitylabels) <- c("ActivityID", "ActivityName")
        
        # Bind required data sets and name accordingly
        selectedSetWithActivity <- cbind(mergedLabels, mergedSubject, selectedSet)
        names(selectedSetWithActivity) <- c("ActivityNum", "SubjectNum", as.character(vSelectedFeatures$V2))
        
        # Refine names to avoid any conflicts with R interpretation or computation
        names(selectedSetWithActivity) <- gsub("-","", names(selectedSetWithActivity))
        names(selectedSetWithActivity) <- gsub("\\()","", names(selectedSetWithActivity))

# Appropriately labels the data set with descriptive variable names.
        # Merge by ActivityID (ActivityNum) to label data
        mData <- merge(activitylabels, selectedSetWithActivity,by.x="ActivityID", by.y="ActivityNum", all=TRUE)
        
        # Remove ActivityID as it's against the Tidy Data Principles that requires
        # Each variable you measure should be in one column as we have ActivityName column
        # that describes the variable better
        mData <- select(mData, -(ActivityID))
        
# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
        # create data set
        newSet <- aggregate(formula = . ~ ActivityName + SubjectNum, data = mData, FUN = "mean")

        # save as txt file to for submit with col.names TRUE and row.names FALSE to working directory.
        write.table(x = newSet, file = "./tidy_data_set.txt", row.names = FALSE, col.names = TRUE)

# End of code
