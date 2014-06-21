#Code Book

##Description of run_analysis.R
1. install and load package ```plyr```
2. download the data from internet
3. create a result folder
4. load dataset ```feature.txt``` used for columNames
5. Merges the training and the test sets to create one data set.
6. Extracts only the measurements on the mean and standard deviation for each measurement.
7. Uses descriptive activity names to name the activities in the data set
8. Appropriately labels the data set with descriptive variable names. 
9. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
10. Save dataset1 and dataset2

##dataset1.csv
It contains the merged data from train and text folder. Moreover, it take the data from ```feature.txt``` as columnNames. And uses the data in ```activity.txt``` to replace the activity_id 

```
dataset1<-read.csv("./results/dataset1.csv")
nrow(dataset1); ncol(dataset1)
```
This dataset contains 10299 rows and 88 columns.

###columns 
```names(dataset1)```

id
activity
tBodyAcc.mean...X
tBodyAcc.mean...Y
tBodyAcc.mean...Z
tBodyAcc.std...X
tBodyAcc.std...Y
tBodyAcc.std...Z
tGravityAcc.mean...X
tGravityAcc.mean...Y
tGravityAcc.mean...Z
tGravityAcc.std...X
tGravityAcc.std...Y
tGravityAcc.std...Z
tBodyAccJerk.mean...X
tBodyAccJerk.mean...Y
tBodyAccJerk.mean...Z
tBodyAccJerk.std...X
tBodyAccJerk.std...Y
tBodyAccJerk.std...Z
tBodyGyro.mean...X
tBodyGyro.mean...Y
tBodyGyro.mean...Z
tBodyGyro.std...X
tBodyGyro.std...Y
tBodyGyro.std...Z
tBodyGyroJerk.mean...X
tBodyGyroJerk.mean...Y
tBodyGyroJerk.mean...Z
tBodyGyroJerk.std...X
tBodyGyroJerk.std...Y
tBodyGyroJerk.std...Z
tBodyAccMag.mean..
tBodyAccMag.std..
tGravityAccMag.mean..
tGravityAccMag.std..
tBodyAccJerkMag.mean..
tBodyAccJerkMag.std..
tBodyGyroMag.mean..
tBodyGyroMag.std..
tBodyGyroJerkMag.mean..
tBodyGyroJerkMag.std..
fBodyAcc.mean...X
fBodyAcc.mean...Y
fBodyAcc.mean...Z
fBodyAcc.std...X
fBodyAcc.std...Y
fBodyAcc.std...Z
fBodyAcc.meanFreq...X
fBodyAcc.meanFreq...Y
fBodyAcc.meanFreq...Z
fBodyAccJerk.mean...X
fBodyAccJerk.mean...Y
fBodyAccJerk.mean...Z
fBodyAccJerk.std...X
fBodyAccJerk.std...Y
fBodyAccJerk.std...Z
fBodyAccJerk.meanFreq...X
fBodyAccJerk.meanFreq...Y
fBodyAccJerk.meanFreq...Z
fBodyGyro.mean...X
fBodyGyro.mean...Y
fBodyGyro.mean...Z
fBodyGyro.std...X
fBodyGyro.std...Y
fBodyGyro.std...Z
fBodyGyro.meanFreq...X
fBodyGyro.meanFreq...Y
fBodyGyro.meanFreq...Z
fBodyAccMag.mean..
fBodyAccMag.std..
fBodyAccMag.meanFreq..
fBodyBodyAccJerkMag.mean..
fBodyBodyAccJerkMag.std..
fBodyBodyAccJerkMag.meanFreq..
fBodyBodyGyroMag.mean..
fBodyBodyGyroMag.std..
fBodyBodyGyroMag.meanFreq..
fBodyBodyGyroJerkMag.mean..
fBodyBodyGyroJerkMag.std..
fBodyBodyGyroJerkMag.meanFreq..
angle.tBodyAccMean.gravity.
angle.tBodyAccJerkMean..gravityMean.
angle.tBodyGyroMean.gravityMean.
angle.tBodyGyroJerkMean.gravityMean.
angle.X.gravityMean.
angle.Y.gravityMean.
angle.Z.gravityMean.

##dataset2
This dataset contains 180 rows and 88 columns
###columns
id
activity
Mean:tBodyAcc.mean...X
Mean:tBodyAcc.mean...Y
Mean:tBodyAcc.mean...Z
Mean:tBodyAcc.std...X
Mean:tBodyAcc.std...Y
Mean:tBodyAcc.std...Z
Mean:tGravityAcc.mean...X
Mean:tGravityAcc.mean...Y
Mean:tGravityAcc.mean...Z
Mean:tGravityAcc.std...X
Mean:tGravityAcc.std...Y
Mean:tGravityAcc.std...Z
Mean:tBodyAccJerk.mean...X
Mean:tBodyAccJerk.mean...Y
Mean:tBodyAccJerk.mean...Z
Mean:tBodyAccJerk.std...X
Mean:tBodyAccJerk.std...Y
Mean:tBodyAccJerk.std...Z
Mean:tBodyGyro.mean...X
Mean:tBodyGyro.mean...Y
Mean:tBodyGyro.mean...Z
Mean:tBodyGyro.std...X
Mean:tBodyGyro.std...Y
Mean:tBodyGyro.std...Z
Mean:tBodyGyroJerk.mean...X
Mean:tBodyGyroJerk.mean...Y
Mean:tBodyGyroJerk.mean...Z
Mean:tBodyGyroJerk.std...X
Mean:tBodyGyroJerk.std...Y
Mean:tBodyGyroJerk.std...Z
Mean:tBodyAccMag.mean..
Mean:tBodyAccMag.std..
Mean:tGravityAccMag.mean..
Mean:tGravityAccMag.std..
Mean:tBodyAccJerkMag.mean..
Mean:tBodyAccJerkMag.std..
Mean:tBodyGyroMag.mean..
Mean:tBodyGyroMag.std..
Mean:tBodyGyroJerkMag.mean..
Mean:tBodyGyroJerkMag.std..
Mean:fBodyAcc.mean...X
Mean:fBodyAcc.mean...Y
Mean:fBodyAcc.mean...Z
Mean:fBodyAcc.std...X
Mean:fBodyAcc.std...Y
Mean:fBodyAcc.std...Z
Mean:fBodyAcc.meanFreq...X
Mean:fBodyAcc.meanFreq...Y
Mean:fBodyAcc.meanFreq...Z
Mean:fBodyAccJerk.mean...X
Mean:fBodyAccJerk.mean...Y
Mean:fBodyAccJerk.mean...Z
Mean:fBodyAccJerk.std...X
Mean:fBodyAccJerk.std...Y
Mean:fBodyAccJerk.std...Z
Mean:fBodyAccJerk.meanFreq...X
Mean:fBodyAccJerk.meanFreq...Y
Mean:fBodyAccJerk.meanFreq...Z
Mean:fBodyGyro.mean...X
Mean:fBodyGyro.mean...Y
Mean:fBodyGyro.mean...Z
Mean:fBodyGyro.std...X
Mean:fBodyGyro.std...Y
Mean:fBodyGyro.std...Z
Mean:fBodyGyro.meanFreq...X
Mean:fBodyGyro.meanFreq...Y
Mean:fBodyGyro.meanFreq...Z
Mean:fBodyAccMag.mean..
Mean:fBodyAccMag.std..
Mean:fBodyAccMag.meanFreq..
Mean:fBodyBodyAccJerkMag.mean..
Mean:fBodyBodyAccJerkMag.std..
Mean:fBodyBodyAccJerkMag.meanFreq..
Mean:fBodyBodyGyroMag.mean..
Mean:fBodyBodyGyroMag.std..
Mean:fBodyBodyGyroMag.meanFreq..
Mean:fBodyBodyGyroJerkMag.mean..
Mean:fBodyBodyGyroJerkMag.std..
Mean:fBodyBodyGyroJerkMag.meanFreq..
Mean:angle.tBodyAccMean.gravity.
Mean:angle.tBodyAccJerkMean..gravityMean.
Mean:angle.tBodyGyroMean.gravityMean.
Mean:angle.tBodyGyroJerkMean.gravityMean.
Mean:angle.X.gravityMean.
Mean:angle.Y.gravityMean.
Mean:angle.Z.gravityMean.
