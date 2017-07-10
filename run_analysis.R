library(matrixStats)
act_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt")

#read of training data
train.subject <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
train.x <- read.table("data/UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("data/UCI HAR Dataset/train/y_train.txt")
train.accx <- read.table("data/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
train.accy <- read.table("data/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
train.accz <- read.table("data/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
train.gyrox <- read.table("data/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
train.gyroy <- read.table("data/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
train.gyroz <- read.table("data/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
train.totalx <- read.table("data/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
train.totaly <- read.table("data/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
train.totalz <- read.table("data/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")

#merge of training data
train.actlabels <- merge(train.y,act_labels,by.x = "V1",by.y = "V1", sort = FALSE)
train.subject$type_data = "train" 
train.subject$mean = rowMeans(train.x,na.rm = TRUE)
train.subject$sds = rowSds(as.matrix(train.x),na.rm = TRUE)
train.subject$act = train.actlabels$V2
train.subject$mean_body_acc_x = rowMeans(train.accx,na.rm = TRUE)
train.subject$sds_body_acc_x = rowSds(as.matrix(train.accx),na.rm = TRUE)
train.subject$mean_body_acc_y = rowMeans(train.accy,na.rm = TRUE)
train.subject$sds_body_acc_y = rowSds(as.matrix(train.accx),na.rm = TRUE)
train.subject$mean_body_acc_z = rowMeans(train.accz,na.rm = TRUE)
train.subject$sds_body_acc_z = rowSds(as.matrix(train.accx),na.rm = TRUE)
train.subject$mean_gyro_x = rowMeans(train.gyrox,na.rm = TRUE)
train.subject$sds_gyro_x = rowSds(as.matrix(train.gyrox),na.rm = TRUE)
train.subject$mean_gyro_y = rowMeans(train.gyroy,na.rm = TRUE)
train.subject$sds_gyro_y = rowSds(as.matrix(train.gyroy),na.rm = TRUE)
train.subject$mean_gyro_z = rowMeans(train.gyroz,na.rm = TRUE)
train.subject$sds_gyro_z = rowSds(as.matrix(train.gyroz),na.rm = TRUE)
train.subject$mean_total_x = rowMeans(train.totalx,na.rm = TRUE)
train.subject$sds_total_x = rowSds(as.matrix(train.totalx),na.rm = TRUE)
train.subject$mean_total_y = rowMeans(train.totaly,na.rm = TRUE)
train.subject$sds_total_y = rowSds(as.matrix(train.totaly),na.rm = TRUE)
train.subject$mean_total_z = rowMeans(train.totalz,na.rm = TRUE)
train.subject$sds_total_z = rowSds(as.matrix(train.totalz),na.rm = TRUE)

#read of testing data
test.subject <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
test.x <- read.table("data/UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("data/UCI HAR Dataset/test/y_test.txt")
test.accx <- read.table("data/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
test.accy <- read.table("data/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
test.accz <- read.table("data/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
test.gyrox <- read.table("data/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
test.gyroy <- read.table("data/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
test.gyroz <- read.table("data/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
test.totalx <- read.table("data/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
test.totaly <- read.table("data/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
test.totalz <- read.table("data/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")

#merge of test data
test.actlabels <- merge(test.y,act_labels,by.x = "V1",by.y = "V1", sort = FALSE)
test.subject$type_data = "test" 
test.subject$mean = rowMeans(test.x,na.rm = TRUE)
test.subject$sds = rowSds(as.matrix(test.x),na.rm = TRUE)
test.subject$act = test.actlabels$V2
test.subject$mean_body_acc_x = rowMeans(test.accx,na.rm = TRUE)
test.subject$sds_body_acc_x = rowSds(as.matrix(test.accx),na.rm = TRUE)
test.subject$mean_body_acc_y = rowMeans(test.accy,na.rm = TRUE)
test.subject$sds_body_acc_y = rowSds(as.matrix(test.accx),na.rm = TRUE)
test.subject$mean_body_acc_z = rowMeans(test.accz,na.rm = TRUE)
test.subject$sds_body_acc_z = rowSds(as.matrix(test.accx),na.rm = TRUE)
test.subject$mean_gyro_x = rowMeans(test.gyrox,na.rm = TRUE)
test.subject$sds_gyro_x = rowSds(as.matrix(test.gyrox),na.rm = TRUE)
test.subject$mean_gyro_y = rowMeans(test.gyroy,na.rm = TRUE)
test.subject$sds_gyro_y = rowSds(as.matrix(test.gyroy),na.rm = TRUE)
test.subject$mean_gyro_z = rowMeans(test.gyroz,na.rm = TRUE)
test.subject$sds_gyro_z = rowSds(as.matrix(test.gyroz),na.rm = TRUE)
test.subject$mean_total_x = rowMeans(test.totalx,na.rm = TRUE)
test.subject$sds_total_x = rowSds(as.matrix(test.totalx),na.rm = TRUE)
test.subject$mean_total_y = rowMeans(test.totaly,na.rm = TRUE)
test.subject$sds_total_y = rowSds(as.matrix(test.totaly),na.rm = TRUE)
test.subject$mean_total_z = rowMeans(test.totalz,na.rm = TRUE)
test.subject$sds_total_z = rowSds(as.matrix(test.totalz),na.rm = TRUE)

#merge training and test set
data_set <- rbind(train.subject, test.subject)
colnames(data_set)[1] = "id"

#tidy data set with the average of each variable for each activity and each subject.
data_summ <- select(data_set, id,act, mean) %>%
  group_by(id,act) %>%
  summarize(mean = mean(mean)) %>%
  spread(act,mean)

write.table(data_summ,file = "tidy_wereable_summary", row.name = FALSE)
data_summ