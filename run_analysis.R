library(plyr)

# Step 1
# Merge the training and test sets to create one data set
###############################################################################

#read of training data
train.subject <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
train.x <- read.table("data/UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("data/UCI HAR Dataset/train/y_train.txt")

#read of testing data
test.subject <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
test.x <- read.table("data/UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("data/UCI HAR Dataset/test/y_test.txt")

# merge training and test data
data_set.x <- rbind(train.x, test.x)
data_set.y <- rbind(train.y, test.y)
data_set.subject <- rbind(train.subject, test.subject)

# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement
###############################################################################
features <- read.table("data/UCI HAR Dataset/features.txt")
features_mean_std <- grep("(mean|std)", features$V2)
data_set.x <- data_set.x[, features_mean_std]
names(data_set.x) <- features[features_mean_std, 2]

# Step 3
# Use descriptive activity names to name the activities in the data set
###############################################################################
act_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt")
data_set.y$V1 <- act_labels[data_set.y$V1, 2]

# Step 4
# Appropriately label the data set with descriptive variable names
###############################################################################
names(data_set.y) <- "activity"
names(data_set.subject) <- "subject"
all_data <- cbind(data_set.x, data_set.y, data_set.subject)

# Step 5
# Create a second, independent tidy data set with the average of each variable for each activity and each subject
###############################################################################
tidy_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:79]))
write.table(tidy_data, "tidy_data.txt", row.name = FALSE)