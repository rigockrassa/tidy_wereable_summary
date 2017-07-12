Codebook
========

Variables
---------

Variable                                   | Comments
-------------------------------------------|-----------
train.subject                              |  subject identifier for training set data (1-30)
train.x					                   |  x values of training set
train.y					                   |  y values of training set
test.subject                               |  subject identifier for testing set data (1-30)
test.x					                   |  x values of testing set
test.y					                   |  y values of testing set
data_set.x				                   |  data set with merge x of training and test data
data_set.y				                   |  data set with merge y of training and test data
data_set.subject		                   |  data set with merge subject of training and test data
features				                   |  features name of x measurement
features_mean_std		                   |  features name of x measurement, with only mean and standard deviation
act_labels                                 |  name of activity subject (LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS)
all_data				                   |  tidy data set with the average for each measurement.
tidy_data				                   |  tidy data set with the average of each variable for each activity and each subject.


Transformations
---------------

1. First we load de Dataset from .txt illes into train and test variables
2. Train and test Dataset was merged with the subject id and the activity code was replace with the activity name
3. Calculate of mean and stardard deviation from varialbes of train and test set.
4. Training and dataset merge to get data_set variable.
5. another tidy dataset was create with summarize and spread data to get, activity name like a column name, and average to values for each subject
7. The last tidy data is written to `tidy_wereable_summary` file
