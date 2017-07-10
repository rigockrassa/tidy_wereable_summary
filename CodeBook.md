Codebook
========

Variables
---------

Variable                                   | Comments
-------------------------------------------|-----------
act_labels                                 |  name of activity subject (LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS)
train.subject                              |  subject identifier for training set data (1-30)
train.x					                   |  x values of training set
train.y					                   |  y values of training set
train.accx				                   |  values of BodyAcc-X training set
train.accy                 				   |  values of BodyAcc-Y training set
train.accz               				   |  values of BodyAcc-Z training set
train.gyrox            					   |  values of GravityAcc-X training set
train.gyroy            					   |  values of GravityAcc-Y training set
train.gyroz            					   |  values of GravityAcc-Z training set
train.totalx            				   |  values of TotalAcc-X training set
train.totaly            				   |  values of TotalAcc-Y training set
train.totalz            				   |  values of TotalAcc-Z training set
train.actlabels              			   |  merge activity label with training data
train.subject$type_data        			   |  type of data (train or test)
train.subject$mean			               |  mean of X -mean()-training set
train.subject$sds			               |  standart deviation of X-training set
train.subject$act			               |  merge activity to training data
train.subject$mean_body_acc_x              |  mean of tBodyAcc-mean() X training set
train.subject$sds_body_acc_x               |  standard deviation of tBodyAccJerk-sds()-X training set
train.subject$mean_body_acc_y              |  mean of tBodyAcc-mean() Y training set
train.subject$sds_body_acc_y               |  standard deviation of tBodyAccJerk-sds()-Y training set
train.subject$mean_body_acc_z              |  mean of tBodyAcc-mean() Z training set
train.subject$sds_body_acc_z               |  standard deviation of tBodyAccJerk-sds()-Z training set
train.subject$mean_gyro_x                  |  mean of GyroAcc-mean() X training set
train.subject$sds_gyro_x                   |  standard deviation of GyroAccJerk-sds()-X training set
train.subject$mean_gyro_y                  |  mean of GyroAcc-mean() Y training set
train.subject$sds_gyro_y                   |  standard deviation of GyroAccJerk-sds()-Y training set
train.subject$mean_gyro_z                  |  mean of GyroAcc-mean() Z training set
train.subject$sds_gyro_z                   |  standard deviation of GyroAccJerk-sds()-Z training set
train.subject$mean_total_x                 |  mean of TotalAcc-mean() X training set
train.subject$sds_total_x                  |  standard deviation of TotalAccJerk-sds()-X training set
train.subject$mean_total_y                 |  mean of TotalAcc-mean() Y training set
train.subject$sds_total_y                  |  standard deviation of TotalAccJerk-sds()-Y training set
train.subject$mean_total_<                 |  mean of TotalAcc-mean() Z training set
train.subject$sds_total_<                  |  standard deviation of TotalAccJerk-sds()-Z training set
test.subject                               |  subject identifier for testing set data (1-30)
test.x					                   |  x values of testing set
test.y					                   |  y values of testing set
test.accx				                   |  values of BodyAcc-X testing set
test.accy                 				   |  values of BodyAcc-Y testing set
test.accz               				   |  values of BodyAcc-Z testing set
test.gyrox            					   |  values of GravityAcc-X testing set
test.gyroy            					   |  values of GravityAcc-Y testing set
test.gyroz            					   |  values of GravityAcc-Z testing set
test.totalx            				       |  values of TotalAcc-X testing set
test.totaly            				       |  values of TotalAcc-Y testing set
test.totalz            				       |  values of TotalAcc-Z testing set
test.actlabels              			   |  merge activity label with testing data
test.subject$type_data        			   |  type of data (test or test)
test.subject$mean			               |  mean of X -mean()-testing set
test.subject$sds			               |  standart deviation of X-testing set
test.subject$act			               |  merge activity to testing data
test.subject$mean_body_acc_x               |  mean of tBodyAcc-mean() X testing set
test.subject$sds_body_acc_x                |  standard deviation of tBodyAccJerk-sds()-X testing set
test.subject$mean_body_acc_y               |  mean of tBodyAcc-mean() Y testing set
test.subject$sds_body_acc_y                |  standard deviation of tBodyAccJerk-sds()-Y testing set
test.subject$mean_body_acc_z               |  mean of tBodyAcc-mean() Z testing set
test.subject$sds_body_acc_z                |  standard deviation of tBodyAccJerk-sds()-Z testing set
test.subject$mean_gyro_x                   |  mean of GyroAcc-mean() X testing set
test.subject$sds_gyro_x                    |  standard deviation of GyroAccJerk-sds()-X testing set
test.subject$mean_gyro_y                   |  mean of GyroAcc-mean() Y testing set
test.subject$sds_gyro_y                    |  standard deviation of GyroAccJerk-sds()-Y testing set
test.subject$mean_gyro_z                   |  mean of GyroAcc-mean() Z testing set
test.subject$sds_gyro_z                    |  standard deviation of GyroAccJerk-sds()-Z testing set
test.subject$mean_total_x                  |  mean of TotalAcc-mean() X testing set
test.subject$sds_total_x                   |  standard deviation of TotalAccJerk-sds()-X testing set
test.subject$mean_total_y                  |  mean of TotalAcc-mean() Y testing set
test.subject$sds_total_y                   |  standard deviation of TotalAccJerk-sds()-Y testing set
test.subject$mean_total_<                  |  mean of TotalAcc-mean() Z testing set
test.subject$sds_total_<                   |  standard deviation of TotalAccJerk-sds()-Z testing set
data_set				                   |  data set with merge of training and test set, with average and standard deviation of each measurement
data_summ				                   |  tidy data set with the average of each variable for each activity and each subject.


Transformations
---------------

1. First we load de Dataset from .txt illes into train and test variables
2. Train and test Dataset was merged with the subject id and the activity code was replace with the activity name
3. Calculate of mean and stardard deviation from varialbes of train and test set.
4. Training and dataset merge to get data_set variable.
5. another tidy dataset was create with summarize and spread data to get, activity name like a column name, and average to values for each subject
7. The last tidy data is written to `tidy_wereable_summary` file
