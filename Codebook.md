#CodeBook for run_analysis.R script
The experiment where original data (input data to the script) comes from has been carried out with a group of **30** volunteers (**Subject**) within an age bracket of 19-48.
And each person performed **6 Activities** wearing a smartphone on the waist.

What run_analysis.R script does is to come up with the **tidy data set** for the appropriate result:

1. Reads both test and training data from UCI HAR Dataset

2. Extracts only the measurements on the mean and standard deviation for each measurement.
   	* meanFreq (Weighted average of the frequency components) included

3. Loads Activity data to obtain descriptive activity names to replace numeric value for the activity.
   	* Using **"WALKING" and "SITTING"**, instead of **1 and 4**, for example

4. Labels the dataset with descriptive variable names
   	* Find **Data Dictionary** below for more detail
	* Fixed errors in variable names that contains "BodyBody" by replacing it to "Body"
	(AvgFreqBodyBodyAccJerkMagmean, AvgFreqBodyBodyAccJerkMagstd, AvgFreqBodyBodyAccJerkMagmeanFreq, AvgFreqBodyBodyGyroMagmean, AvgFreqBodyBodyGyroMagstd, AvgFreqBodyBodyGyroMagmeanFreq, AvgFreqBodyBodyGyroJerkMagmean, AvgFreqBodyBodyGyroJerkMagstd, AvgFreqBodyBodyGyroJerkMagmeanFreq)

5. Calculates the average of each measurement for each activity and each subject
   	* **6 activities * 30 subjects** for 180 observations in the result
	* **Activity and Subject value can be presented more than once as the result is grouped by ActivityName and SubjectNum**


# Data Dictionary

## ActivityName
An activity the person(subject) performed wearing a smartphone on the waist.

+ 1:6

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## SubjectNum
An identifier of the subject who carried out the experiment

+ 1:30

## AvgTimeBodyAccmeanX
Average value of means of Time to obtain the body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccmeanY
Average value of means of Time to obtain the body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccmeanZ
Average value of means of Time to obtain the body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccstdX
Average value of standard deviations of Time to obtain the body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccstdY
Average value of standard deviations of Time to obtain the body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)
 
## AvgTimeBodyAccstdZ
Average value of standard deviations of Time to obtain the body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeGravityAccmeanX
Average value of means of Time to obtain the gravity acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeGravityAccmeanY
Average value of means of Time to obtain the gravity acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeGravityAccmeanZ
Average value of means of Time to obtain the gravity acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeGravityAccstdX
Average value of standard deviations of Time to obtain the gravity acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeGravityAccstdY
Average value of standard deviations of Time to obtain the gravity acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeGravityAccstdZ
Average value of standard deviations of Time to obtain the gravity acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeBodyAccJerkmeanX
Average value of means of Time to obtain the Jerk signals of body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccJerkmeanY
Average value of means of Time to obtain the Jerk signals of body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccJerkmeanZ
Average value of means of Time to obtain the Jerk signals of body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccJerkstdX
Average value of standard deviations of Time to obtain the Jerk signals of body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccJerkstdY
Average value of standard deviations of Time to obtain the Jerk signals of body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccJerkstdZ
Average value of standard deviations of Time to obtain the Jerk signals of body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyromeanX
Average value of means of Time to obtain the body angular velocity in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyromeanY
Average value of means of Time to obtain the body angular velocity in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyromeanZ
Average value of means of Time to obtain the body angular velocity in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyrostdX
Average value of standard deviation of Time to obtain the body angular velocity in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyrostdY
Average value of standard deviations of Time to obtain the body angular velocity in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyrostdZ
Average value of standard deviations of Time to obtain the body angular velocity in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyroJerkmeanX
Average value of means of Time to obtain the Jerk signal of body angular velocity in X direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeBodyGyroJerkmeanY
Average value of means of Time to obtain the Jerk signal of body angular velocity in Y direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeBodyGyroJerkmeanZ
Average value of means of Time to obtain the Jerk signal of body angular velocity in Z direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeBodyGyroJerkstdX
Average value of standard deviations of Time to obtain the Jerk signal of body angular velocity in X direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeBodyGyroJerkstdY
Average value of standard deviations of Time to obtain the Jerk signal of body angular velocity in Y direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeBodyGyroJerkstdZ
Average value of standard deviations of Time to obtain the Jerk signal of body angular velocity in Z direction for the activity and the subject (grouped by ActivityName and Subject) 

## AvgTimeBodyAccMagmean
Average value of means of Time to obtain the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccMagstd
Average value of standard deviations of Time to obtain the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeGravityAccMagmean
Average value of means of Time to obtain the magnitude of gravity linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeGravityAccMagstd
Average value of standard deviations of Time to obtain the magnitude of gravity linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccJerkMagmean
Average value of means of Time to obtain the Jerk of the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyAccJerkMagstd
Average value of standard deviations of Time to obtain the Jerk of the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyroMagmean
Average value of means of Time to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyroMagstd
Average value of standard deviations of Time to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyroJerkMagmean
Average value of means of Time to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgTimeBodyGyroJerkMagstd
Average value of standard deviations of Time to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccmeanX
Average value of means of Frequency to obtain the body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccmeanY
Average value of means of Frequency to obtain the body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccmeanZ
Average value of means of Frequency to obtain the body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccstdX
Average value of standard deviations of Frequency to obtain the body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccstdY
Average value of standard deviations of Frequency to obtain the body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccstdZ
Average value of standard deviations of Frequency to obtain the body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccmeanFreqX
Average value of weighted averages of Frequency to obtain the body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccmeanFreqY
Average value of weighted averages of Frequency to obtain the body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccmeanFreqZ
Average value of weighted averages of Frequency to obtain the body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkmeanX
Average value of means of Frequency to obtain the Jerk signals of body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkmeanY
Average value of means of Frequency to obtain the Jerk signals of body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkmeanZ
Average value of means of Frequency to obtain the Jerk signals of body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkstdX
Average value of standard deviations of Frequency to obtain the Jerk signals of body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkstdY
Average value of standard deviations of Frequency to obtain the Jerk signals of body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkstdZ
Average value of standard deviations of Frequency to obtain the Jerk signals of body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkmeanFreqX
Average value of weighted averages of Frequency to obtain the Jerk signals of body linear acceleration in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkmeanFreqY
Average value of weighted averages of Frequency to obtain the Jerk signals of body linear acceleration in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkmeanFreqZ
Average value of weighted averages of Frequency to obtain the Jerk signals of body linear acceleration in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyromeanX
Average value of means of Frequency to obtain the body angular velocity in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyromeanY
Average value of means of Frequency to obtain the body angular velocity in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyromeanZ
Average value of means of Frequency to obtain the body angular velocity in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyrostdX
Average value of standard deviation of Frequency to obtain the body angular velocity in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyrostdY
Average value of standard deviations of Frequency to obtain the body angular velocity in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyrostdZ
Average value of standard deviations of Frequency to obtain the body angular velocity in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyromeanFreqX
Average value of weighted averages of Frequency to obtain the body angular velocity in X direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyromeanFreqY
Average value of weighted averages of Frequency to obtain the body angular velocity in Y direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyromeanFreqZ
Average value of weighted averages of Frequency to obtain the body angular velocity in Z direction for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccMagmean
Average value of means of Frequency to obtain the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccMagstd
Average value of standard deviations of Frequency to obtain the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccMagmeanFreq
Average value of weighted averages of Frequency to obtain the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkMagmean
Average value of means of Frequency to obtain the Jerk of the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkMagstd
Average value of standard deviations of Frequency to obtain the Jerk of the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyAccJerkMagmeanFreq
 Average value of weighted averages of Frequency to obtain the Jerk of the magnitude of body linear acceleration for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyroMagmean
Average value of means of Frequency to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyroMagstd
Average value of standard deviations of Frequency to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyroMagmeanFreq
Average value of weighted averages of Frequency to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyroJerkMagmean
Average value of means of Frequency to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyroJerkMagstd
Average value of standard deviations of Frequency to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

## AvgFreqBodyGyroJerkMagmeanFreq
Average value of weighted averages of Frequency to obtain the Jerk of the magnitude of body angular velocity for the activity and the subject (grouped by ActivityName and Subject)

