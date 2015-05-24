###### Author - _kentobento_
###### Date - _5/24/15_

## R Version
3.1.2 (2014-10-31)

## Development Environment
RStudio 0.98.1102

## Dependencies
No additional dependencies

## Files
* **run\_analysis.R** - a script that parses the original data and outputs a tidy data set named feature\_averages\_for\_subject_and\_activity.txt.  The UCI HAR Dataset directory must be in the same directory as this script.  The transformations used to clean the original data are detailed in CodeBook.md.
* **CodeBook.md** - a markdown file that describes the original data, the variables in the tidy data set, and the transformations that were performed on the original data to obtain the tidy data set.
* **feature\_averages\_for\_subject\_and\_activity.txt**  - a tidy data set (tidy because each measured variable is in one column and each different observation of that variable is in a different row) that run\_analysis.R outputs.  Each row of the file provides the averages of the mean-and-standard-deviation-related measurements for a test subject and activity.  Descriptions of its column variables and loading instructions are detailed in CodeBook.md.

## Additional Notes
### Reading the Tidy Data Set
##### When in the same directory as feature\_averages\_for\_subject\_and\_activity.txt, run:
    tidy.data.set <- read.table("feature_averages_for_subject_and_activity.txt", header = TRUE)

### Transformation Summary
1. Read the activity labels, feature names, test set components, and training set components
2. Determine the columns in the test and training set components related to mean (mean() suffix) and standard deviation (std() suffix) measurements
3. Filter the test and training sets using the indices of the columns obtained in the previous step
4. Combine the test and training sets
5. Label resulting set with descriptive names
6. Create new data set with the average of each variable for each subject and activity
7. Output tidy data set to file
