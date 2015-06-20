
This database contains the mean values for selected features of the 'UCI HAR Dataset' data set.  
The means are listed for each subject and each activity.

Structure of the database (called: "feature means UCI HAR Dataset.txt"):

- 1st column: subject ID  
values: 1 to 30
- 2nd column: performed activity  
values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIR, SITTING, STANDING, LAYING
- columns 3 to 68: means of the relevant features (as described below)  
the names of the features are listed in the header line

The relevant features are the mean value and the standard deviation (indicated by 'mean' and 'std' in the feature name) of the following list of signals: ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions)   
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

E.g.: the column tBodyAcc.std.X contains the mean of the standard deviation of tBodyAcc-X, i.e. the mean of tBodyAcc-std()-X of the UCI HAR Dataset, for each subject and each activity.

The original data come from accelerometer and gyroscope 3-axial measurments tAcc-XYZ and tGyro-XYZ. These signals (prefix 't' to denote time) were then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). The time derivate of these signals was calculated to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. ('f' to indicate frequency domain signals). 

For more information c.f. the explanatory files of the UCI HAR Dataset:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

 
