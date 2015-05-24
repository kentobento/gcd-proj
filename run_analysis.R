# read activity labels and feature names
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")$V2
feature.labels <- read.table("UCI HAR Dataset/features.txt")$V2

# extract indices and names of features that end with mean() or std()
mean.or.std.feature.indices <- grepl("mean()",feature.labels, fixed = TRUE) | grepl("std()", feature.labels, fixed = TRUE)
mean.or.std.feature.labels <- feature.labels[mean.or.std.feature.indices]

# read training and test set components
train.X <- read.table("UCI HAR Dataset/train/X_train.txt")[, mean.or.std.feature.indices]
train.y <- activity.labels[unlist(read.table("UCI HAR Dataset/train/y_train.txt"))]
train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
test.X <- read.table("UCI HAR Dataset/test/X_test.txt")[, mean.or.std.feature.indices]
test.y <- activity.labels[unlist(read.table("UCI HAR Dataset/test/y_test.txt"))]
test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

# construct training and test sets from respective components
training.set <- cbind(train.subject, train.y, train.X)
test.set <- cbind(test.subject, test.y, test.X)

# merge training and test sets (after renaming second columns to avoid rbind error)
activity.header.label <- "Activity"
names(training.set)[2] <- activity.header.label
names(test.set)[2] <- activity.header.label
combined.set <- rbind(training.set, test.set)


# for features, the original names are already descriptive:
# https://class.coursera.org/getdata-014/forum/thread?thread_id=179
# however, a few typos ("BodyBody" instead of "Body") must first be corrected
corrected.mean.or.std.feature.labels <- gsub("BodyBody", "Body", as.character(mean.or.std.feature.labels))

# additionally, remove special characters
corrected.mean.or.std.feature.labels <- gsub("[[:punct:]]", "", corrected.mean.or.std.feature.labels)

# capitalize Mean and Std to preserve camelcase
corrected.mean.or.std.feature.labels <- gsub("mean", "Mean", corrected.mean.or.std.feature.labels)
corrected.mean.or.std.feature.labels <- gsub("std", "Std", corrected.mean.or.std.feature.labels)

# relabel combined data set with descriptive names
names(combined.set) <- c("Subject", activity.header.label, corrected.mean.or.std.feature.labels)

# compute average of each feature for each subject and activity
combined.set.for.subject.and.activity <- group_by(combined.set, Subject, Activity) %>% summarise_each(funs(mean))

# output tidy data set
write.table(combined.set.for.subject.and.activity,
            file = "feature_averages_for_subject_and_activity.txt",
            row.name = FALSE)