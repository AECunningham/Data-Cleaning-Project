CODE BOOK FOR output2.txt (comma-delimited file)

The output2.txt file is a tidy summary of the data available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, which is collected from Samsung smartphones.
The original training and test datasets, X_train.txt and X_test.txt, have both been narrowed down to just those variables representing means and standard deviations of measurements, and joined with data 
identifying the subject and activity for each row (obtained from subject_train.txt and y_train.txt, or subject_test.txt and y_test.txt respectively). The output2.txt file contains the average of each of the retained 
variables for each subject/activity pair in the combined dataset. Variable names have been rationalised so that they do not include brackets, dashes, or the inadvertent repetition of the word 'Body'.

The columns contained in the output2.txt file are:

subject
     	Integer from 1 to 30, denoting the person whose measurements we are considering

activity
       	The activity being undertaken, one of:
	WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING

tBodyAcc.mean.X
	Average of mean of body acceleration in X direction (time domain)

tBodyAcc.mean.Y
     	Average of mean of body acceleration in Y direction (time domain)

tBodyAcc.mean.Z
	Average of mean of body acceleration in Z direction (time domain)

tBodyAcc.std.X
	Average of standard deviation of body acceleration in X direction (time domain)

tBodyAcc.std.Y
	Average of standard deviation of body acceleration in Y direction (time domain)

tBodyAcc.std.Z
	Average of standard deviation of body acceleration in Z direction (time domain)

tGravityAcc.mean.X
	Average of mean of gravity acceleration in X direction (time domain)

tGravityAcc.mean.Y
	Average of mean of gravity acceleration in Y direction (time domain)

tGravityAcc.mean.Z
	Average of mean of gravity acceleration in Z direction (time domain)

tGravityAcc.std.X
	Average of standard deviation of gravity acceleration in X direction (time domain)

tGravityAcc.std.Y
	Average of standard deviation of gravity acceleration in Y direction (time domain)

tGravityAcc.std.Z
	Average of standard deviation of gravity acceleration in Z direction (time domain)

tBodyAccJerk.mean.X
	Average of mean of body acceleration jerk in X direction (time domain)

tBodyAccJerk.mean.Y
	Average of mean of body acceleration jerk in Y direction (time domain)

tBodyAccJerk.mean.Z
	Average of mean of body acceleration jerk in Z direction (time domain)

tBodyAccJerk.std.X
	Average of standard deviation of body acceleration jerk in X direction (time domain)

tBodyAccJerk.std.Y
	Average of standard deviation of body acceleration jerk in Y direction (time domain)

tBodyAccJerk.std.Z
	Average of standard deviation of body acceleration jerk in Z direction (time domain)

tBodyGyro.mean.X
	Average of mean of body gyro in X direction (time domain)

tBodyGyro.mean.Y
	Average of mean of body gyro in Y direction (time domain)

tBodyGyro.mean.Z
	Average of mean of body gyro in Z direction (time domain)

tBodyGyro.std.X
	Average of standard deviation of body gyro in X direction (time domain)

tBodyGyro.std.Y
	Average of standard deviation of body gyro in Y direction (time domain)

tBodyGyro.std.Z
	Average of standard deviation of body gyro in Z direction (time domain)

tBodyGyroJerk.mean.X
	Average of mean of body gyro jerk in X direction (time domain)

tBodyGyroJerk.mean.Y
	Average of mean of body gyro jerk in Y direction (time domain)

tBodyGyroJerk.mean.Z
	Average of mean of body gyro jerk in Z direction (time domain)

tBodyGyroJerk.std.X
	Average of standard deviation of body gyro jerk in X direction (time domain)

tBodyGyroJerk.std.Y
	Average of standard deviation of body gyro jerk in Y direction (time domain)

tBodyGyroJerk.std.Z
	Average of standard deviation of body gyro jerk in Z direction (time domain)

tBodyAccMag.mean
	Average of mean of body acceleration magnitude [time domain)

tBodyAccMag.std
	Average of standard deviation of body acceleration magnitude [time domain)

tGravityAccMag.mean
	Average of mean of gravity acceleration magnitude [time domain)

tGravityAccMag.std
	Average of standard deviation of gravity acceleration magnitude [time domain)

tBodyAccJerkMag.mean
	Average of mean of body acceleration jerk magnitude [time domain)

tBodyAccJerkMag.std
	Average of standard deviation of body acceleration jerk magnitude [time domain)

tBodyGyroMag.mean
	Average of mean of body gyro magnitude [time domain)

tBodyGyroMag.std
	Average of standard deviation of body gyro magnitude [time domain)

tBodyGyroJerkMag.mean
	Average of mean of body gyro jerk magnitude [time domain)

tBodyGyroJerkMag.std
	Average of standard deviation of body gyro jerk magnitude [time domain)

fBodyAcc.mean.X
	Average of mean of body acceleration in X direction [frequency domain)

fBodyAcc.mean.Y
	Average of mean of body acceleration in Y direction [frequency domain)

fBodyAcc.mean.Z
	Average of mean of body acceleration in Z direction [frequency domain)

fBodyAcc.std.X
	Average of standard deviation of body acceleration in X direction [frequency domain)

fBodyAcc.std.Y
	Average of standard deviation of body acceleration in Y direction [frequency domain)

fBodyAcc.std.Z
	Average of standard deviation of body acceleration in Z direction [frequency domain)

fBodyAccJerk.mean.X
	Average of mean of body acceleration jerk in X direction [frequency domain)

fBodyAccJerk.mean.Y
	Average of mean of body acceleration jerk in Y direction [frequency domain)

fBodyAccJerk.mean.Z
	Average of mean of body acceleration jerk in Z direction [frequency domain)

fBodyAccJerk.std.X
	Average of standard deviation of body acceleration jerk in X direction [frequency domain)

fBodyAccJerk.std.Y
	Average of standard deviation of body acceleration jerk in Y direction [frequency domain)

fBodyAccJerk.std.Z
	Average of standard deviation of body acceleration jerk in Z direction [frequency domain)

fBodyGyro.mean.X
	Average of mean of body gyro in X direction [frequency domain)

fBodyGyro.mean.Y
	Average of mean of body gyro in Y direction [frequency domain)

fBodyGyro.mean.Z
	Average of mean of body gyro in Z direction [frequency domain)

fBodyGyro.std.X
	Average of standard deviation of body gyro in X direction [frequency domain)

fBodyGyro.std.Y
	Average of standard deviation of body gyro in Y direction [frequency domain)

fBodyGyro.std.Z
	Average of standard deviation of body gyro in Z direction [frequency domain)

fBodyAccMag.mean
	Average of mean of body acceleration magnitude [frequency domain)

fBodyAccMag.std
	Average of standard deviation of body acceleration magnitude [frequency domain)

fBodyAccJerkMag.mean
	Average of mean of body acceleration jerk magnitude [frequency domain)

fBodyAccJerkMag.std
	Average of standard deviation of body acceleration jerk magnitude [frequency domain)

fBodyGyroMag.mean
	Average of mean of body gyro magnitude [frequency domain)

fBodyGyroMag.std
	Average of standard deviation of body gyro magnitude [frequency domain)

fBodyGyroJerkMag.mean
	Average of mean of body gyro jerk magnitude [frequency domain)

fBodyGyroJerkMag.std
	Average of standard deviation of body gyro jerk magnitude [frequency domain)

