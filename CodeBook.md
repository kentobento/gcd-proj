##### Author - _kentobento_
##### Date - _5/24/15_

# Overview
This file describes the data, the variables, and the transformations that were performed to clean the data.

# Data
The original data is taken from the Human Activity Recognition Using Smartphones Dataset (version 1.0).  
*Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws*

# Variables
##  
#### Each of the variables listed below is a column in the tidy data set.  Features [3]-[68] are normalized and bounded within [-1,1].  Each variable name is taken from the original data set [(see discussion thread)](https://class.coursera.org/getdata-014/forum/thread?thread\_id=179) unless it contains errors.  This naming convention is used to avoid verbosity (tBodyAccMeanX vs. Mean X-Direction Linear Body Acceleration in Time Domain).  The following section provides detailed descriptions of each variable.

##  
### [1] Subject:
##### The identifier of the subject who carried out the experiment.  

### [2] Activity:
##### The name of the activity performed by the subject, which is one of:
* WALKING
* WALKING\_UPSTAIRS
* WALKING\_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

### [3] tBodyAccMeanX:
##### The average over the mean x-direction, linear body acceleration signals in the time domain.

### [4] tBodyAccMeanY:
##### The average over the mean y-direction, linear body acceleration signals in the time domain.

### [5] tBodyAccMeanZ:
##### The average over the mean z-direction, linear body acceleration signals in the time domain.

### [6] tBodyAccStdX:
##### The average over the standard deviation of the x-direction, linear body acceleration signals in the time domain.

### [7] tBodyAccStdY:
##### The average over the standard deviation of the y-direction, linear body acceleration signals in the time domain.

### [8] tBodyAccStdZ:
##### The average over the standard deviation of the z-direction, linear body acceleration signals in the time domain.

### [9] tGravityAccMeanX:
##### The average over the mean x-direction, linear gravity acceleration signals in the time domain.

### [10] tGravityAccMeanY:
##### The average over the mean y-direction, linear gravity acceleration signals in the time domain.

### [11] tGravityAccMeanZ:
##### The average over the mean z-direction, linear gravity acceleration signals in the time domain.

### [12] tGravityAccStdX:
##### The average over the standard deviation of the x-direction, linear gravity acceleration signals in the time domain.

### [13] tGravityAccStdY:
##### The average over the standard deviation of the y-direction, linear gravity acceleration signals in the time domain.

### [14] tGravityAccStdZ:
##### The average over the standard deviation of the z-direction, linear gravity acceleration signals in the time domain.

### [15] tBodyAccJerkMeanX:
##### The average over the mean x-direction, time derivative of the linear body acceleration signals in the time domain.

### [16] tBodyAccJerkMeanY:
##### The average over the mean y-direction, time derivative of the linear body acceleration signals in the time domain.

### [17] tBodyAccJerkMeanZ:
##### The average over the mean z-direction, time derivative of the linear body acceleration signals in the time domain.

### [18] tBodyAccJerkStdX:
##### The average over the standard deviation of the x-direction, time derivative of the linear body acceleration signals in the time domain.

### [19] tBodyAccJerkStdY:
##### The average over the standard deviation of the y-direction, time derivative of the linear body acceleration signals in the time domain.

### [20] tBodyAccJerkStdZ:
##### The average over the standard deviation of the z-direction, time derivative of the linear body acceleration signals in the time domain.

### [21] tBodyGyroMeanX:
##### The average over the mean x-direction, angular body acceleration signals in the time domain.

### [22] tBodyGyroMeanY:
##### The average over the mean y-direction, angular body acceleration signals in the time domain.

### [23] tBodyGyroMeanZ:
##### The average over the mean z-direction, angular body acceleration signals in the time domain.

### [24] tBodyGyroStdX:
##### The average over the standard deviation of the x-direction, angular body acceleration signals in the time domain.

### [25] tBodyGyroStdY:
##### The average over the standard deviation of the y-direction, angular body acceleration signals in the time domain.

### [26] tBodyGyroStdZ:
##### The average over the standard deviation of the z-direction, angular body acceleration signals in the time domain.

### [27] tBodyGyroJerkMeanX:
##### The average over the mean x-direction, time derivative of the angular body acceleration signals in the time domain.

### [28] tBodyGyroJerkMeanY:
##### The average over the mean y-direction, time derivative of the angular body acceleration signals in the time domain.

### [29] tBodyGyroJerkMeanZ:
##### The average over the mean z-direction, time derivative of the angular body acceleration signals in the time domain.

### [30] tBodyGyroJerkStdX:
##### The average over the standard deviation of the x-direction, time derivative of the angular body acceleration signals in the time domain.

### [31] tBodyGyroJerkStdY:
##### The average over the standard deviation of the y-direction, time derivative of the angular body acceleration signals in the time domain.

### [32] tBodyGyroJerkStdZ:
##### The average over the standard deviation of the z-direction, time derivative of the angular body acceleration signals in the time domain.

### [33] tBodyAccMagMean:
##### The average over the mean magnitude of the linear body acceleration signals in the time domain.

### [34] tBodyAccMagStd:
##### The average over the standard deviation of the magnitude of the linear body acceleration signals in the time domain.

### [35] tGravityAccMagMean:
##### The average over the mean magnitude of the linear gravity acceleration signals in the time domain.

### [36] tGravityAccMagStd:
##### The average over the standard deviation of the magnitude of the linear gravity acceleration signals in the time domain.

### [37] tBodyAccJerkMagMean:
##### The average over the mean magnitude of the time derivative of the linear body acceleration signals in the time domain.

### [38] tBodyAccJerkMagStd:
##### The average over the standard deviation of the magnitude of the time derivative of the linear body acceleration signals in the time domain.

### [39] tBodyGyroMagMean:
##### The average over the mean magnitude of the angular body acceleration signals in the time domain.

### [40] tBodyGyroMagStd:
##### The average over the standard deviation of the magnitude of the angular body acceleration signals in the time domain.

### [41] tBodyGyroJerkMagMean:
##### The average over the mean magnitude of the time derivative of the angular body acceleration signals in the time domain.

### [42] tBodyGyroJerkMagStd:
##### The average over the standard deviation of the magnitude of the time derivative of the angular body acceleration signals in the time domain.

### [43] fBodyAccMeanX:
##### The average over the mean x-direction, linear body acceleration signals in the frequency domain.

### [44] fBodyAccMeanY:
##### The average over the mean y-direction, linear body acceleration signals in the frequency domain.

### [45] fBodyAccMeanZ:
##### The average over the mean z-direction, linear body acceleration signals in the frequency domain.

### [46] fBodyAccStdX:
##### The average over the standard deviation of the x-direction, linear body acceleration signals in the frequency domain.

### [47] fBodyAccStdY:
##### The average over the standard deviation of the y-direction, linear body acceleration signals in the frequency domain.

### [48] fBodyAccStdZ:
##### The average over the standard deviation of the z-direction, linear body acceleration signals in the frequency domain.

### [49] fBodyAccJerkMeanX:
##### The average over the mean x-direction, time derivative of the linear body acceleration signals in the frequency domain.

### [50] fBodyAccJerkMeanY:
##### The average over the mean y-direction, time derivative of the linear body acceleration signals in the frequency domain.

### [51] fBodyAccJerkMeanZ:
##### The average over the mean z-direction, time derivative of the linear body acceleration signals in the frequency domain.

### [52] fBodyAccJerkStdX:
##### The average over the standard deviation of the x-direction, time derivative of the linear body acceleration signals in the frequency domain.

### [53] fBodyAccJerkStdY:
##### The average over the standard deviation of the y-direction, time derivative of the linear body acceleration signals in the frequency domain.

### [54] fBodyAccJerkStdZ:
##### The average over the standard deviation of the z-direction, time derivative of the linear body acceleration signals in the frequency domain.

### [55] fBodyGyroMeanX:
##### The average over the mean x-direction, angular body acceleration signals in the frequency domain.

### [56] fBodyGyroMeanY:
##### The average over the mean y-direction, angular body acceleration signals in the frequency domain.

### [57] fBodyGyroMeanZ:
##### The average over the mean z-direction, angular body acceleration signals in the frequency domain.

### [58] fBodyGyroStdX:
##### The average over the standard deviation of the x-direction, angular body acceleration signals in the frequency domain.

### [59] fBodyGyroStdY:
##### The average over the standard deviation of the y-direction, angular body acceleration signals in the frequency domain.

### [60] fBodyGyroStdZ:
##### The average over the standard deviation of the z-direction, angular body acceleration signals in the frequency domain.

### [61] fBodyAccMagMean:
##### The average over the mean magnitude of the linear body acceleration signals in the frequency domain.

### [62] fBodyAccMagStd:
##### The average over the standard deviation of the magnitude of the linear body acceleration signals in the frequency domain.

### [63] fBodyAccJerkMagMean:
##### The average over the mean magnitude of the time derivative of the linear body acceleration signals in the frequency domain.

### [64] fBodyAccJerkMagStd:
##### The average over the standard deviation of the magnitude of the time derivative of the linear body acceleration signals in the frequency domain.

### [65] fBodyGyroMagMean:
##### The average over the mean magnitude of the angular body acceleration signals in the frequency domain.

### [66] fBodyGyroMagStd:
##### The average over the standard deviation of the magnitude of the angular body acceleration signals in the frequency domain.

### [67] fBodyGyroJerkMagMean:
##### The average over the mean magnitude of the time derivative of the angular body acceleration signals in the frequency domain.

### [68] fBodyGyroJerkMagStd:
##### The average over the standard deviation of the magnitude of the time derivative of the angular body acceleration signals in the frequency domain.

# Transformations
1. Read the activity labels, feature names, test set components, and training set components
2. Determine the columns in the test and training set components related to mean (mean() suffix) and standard deviation (std() suffix) measurements using grepl
3. Filter the test and training sets using the indices of the columns obtained in the previous step
4. Combine the test and training sets using rbind
5. Label resulting set with descriptive names while:
  * Correcting any typos in original labels
  * Removing special characters from labels
  * Capitalizing labels accordingly to preserve camel-case labels
6. Create new data set with the average of each variable for each subject and activity using group\_by and summarise\_each
7. Output tidy data set to file using write.table
