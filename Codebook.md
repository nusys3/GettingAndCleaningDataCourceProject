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
## AvgTimeBodyAccmeanY
## AvgTimeBodyAccmeanZ
## AvgTimeBodyAccstdX
## AvgTimeBodyAccstdY
## AvgTimeBodyAccstdZ
## AvgTimeGravityAccmeanX
## AvgTimeGravityAccmeanY
## AvgTimeGravityAccmeanZ
## AvgTimeGravityAccstdX
## AvgTimeGravityAccstdY
## AvgTimeGravityAccstdZ
## AvgTimeBodyAccJerkmeanX
## AvgTimeBodyAccJerkmeanY
## AvgTimeBodyAccJerkmeanZ
## AvgTimeBodyAccJerkstdX
## AvgTimeBodyAccJerkstdY
## AvgTimeBodyAccJerkstdZ
## AvgTimeBodyGyromeanX
## AvgTimeBodyGyromeanY
## AvgTimeBodyGyromeanZ
## AvgTimeBodyGyrostdX
## AvgTimeBodyGyrostdY
## AvgTimeBodyGyrostdZ
## AvgTimeBodyGyroJerkmeanX
## AvgTimeBodyGyroJerkmeanY
## AvgTimeBodyGyroJerkmeanZ
## AvgTimeBodyGyroJerkstdX
## AvgTimeBodyGyroJerkstdY
## AvgTimeBodyGyroJerkstdZ
## AvgTimeBodyAccMagmean
## AvgTimeBodyAccMagstd
## AvgTimeGravityAccMagmean
## AvgTimeGravityAccMagstd
## AvgTimeBodyAccJerkMagmean
## AvgTimeBodyAccJerkMagstd
## AvgTimeBodyGyroMagmean
## AvgTimeBodyGyroMagstd
## AvgTimeBodyGyroJerkMagmean
## AvgTimeBodyGyroJerkMagstd
## AvgFreqBodyAccmeanX
## AvgFreqBodyAccmeanY
## AvgFreqBodyAccmeanZ
## AvgFreqBodyAccstdX
## AvgFreqBodyAccstdY
## AvgFreqBodyAccstdZ
## AvgFreqBodyAccmeanFreqX
## AvgFreqBodyAccmeanFreqY
## AvgFreqBodyAccmeanFreqZ
## AvgFreqBodyAccJerkmeanX
## AvgFreqBodyAccJerkmeanY
## AvgFreqBodyAccJerkmeanZ
## AvgFreqBodyAccJerkstdX
## AvgFreqBodyAccJerkstdY
## AvgFreqBodyAccJerkstdZ
## AvgFreqBodyAccJerkmeanFreqX
## AvgFreqBodyAccJerkmeanFreqY
## AvgFreqBodyAccJerkmeanFreqZ
## AvgFreqBodyGyromeanX
## AvgFreqBodyGyromeanY
## AvgFreqBodyGyromeanZ
## AvgFreqBodyGyrostdX
## AvgFreqBodyGyrostdY
## AvgFreqBodyGyrostdZ
## AvgFreqBodyGyromeanFreqX
## AvgFreqBodyGyromeanFreqY
## AvgFreqBodyGyromeanFreqZ
## AvgFreqBodyAccMagmean
## AvgFreqBodyAccMagstd
## AvgFreqBodyAccMagmeanFreq
## AvgFreqBodyBodyAccJerkMagmean
## AvgFreqBodyBodyAccJerkMagstd
## AvgFreqBodyBodyAccJerkMagmeanFreq
## AvgFreqBodyBodyGyroMagmean
## AvgFreqBodyBodyGyroMagstd
## AvgFreqBodyBodyGyroMagmeanFreq
## AvgFreqBodyBodyGyroJerkMagmean
## AvgFreqBodyBodyGyroJerkMagstd
## AvgFreqBodyBodyGyroJerkMagmeanFreq





For the tidy data set list each of the variables and a brief description of what it represents. 
You can explain your reasoning about which columns (variables) were included or excluded, as you feel appropriate, to help the reader understand the tidy data set you have created. 


you are aiming for something like the quiz 1 codebook. To start with you have the features info file, but there are a bunch of things wrong with it. All the warnings are about things that will be wrong if you were to use features info as it is provided.

you have gotten rid of variables - there should only be the variables to do with mean and standard deviation left in your tidy data

you have added variables- subject and activity are not part of the orignal features.txt

Subject 1:30

Activity

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING



you have changed the units of observation- the data in the tidy data set is now grouped means rather than individual observations

you might have fixed the variable names- they are illegal in R as is (which can potentially cause anlaysis problems) and in the orginal data there are mistakes like duplicate column names and names that do not conform to it



All in all, it is suggesting that the information in features info is useful but has problems that should be dealt with.





Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
