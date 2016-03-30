=========================================================================.
Getting and Cleaning data course project
==========================================================================
Astrid Correa
=============

The Script is programed for just run and get the file, your working directory must be inside of UCI HAR Dataset
with all the files.

======================
The Lecture Variables
======================
Have all the read data


activity_labels <- read activity_labels.txt  data.frame with integers and characters data

features  <- read features.txt  data.frame with integers and characters data

# Test Folder

subject_test <- read subject_test.txt

x_test <- read X_test.txt data.frame with numeric data

y_test <- read  y_test.txt data.frame with numeric data

body_acc_x_test <- read  body_acc_x_test.txt data.frame with numeric data

body_acc_y_test <- read  body_acc_y_test.txt  data.frame with numeric data

body_acc_z_test <- read  body_acc_z_test.txt data.frame with numeric data

body_gyro_x_test <- read  body_gyro_x_test.txt data.frame with numeric data

body_gyro_y_test <- read  body_gyro_y_test.txt data.frame with numeric data

body_gyro_z_test <- read  body_gyro_z_test.txt data.frame with numeric data

total_acc_x_test <- read  total_acc_x_test.txt data.frame with numeric data

total_acc_y_test <- read  total_acc_y_test.txt data.frame with numeric data

total_acc_z_test <- read  total_acc_z_test.txt data.frame with numeric data
 
# Train Folder

subject_train <- read subject_train.txt 

x_train <- read X_train.txt data.frame with numeric data

y_train <- read y_train.txt data.frame with numeric data

body_acc_x_train <- read body_acc_x_train.txt data.frame with numeric data

body_acc_y_train <- read body_acc_y_train.txt data.frame with numeric data

body_acc_z_train <- read body_acc_z_train.txt data.frame with numeric data

body_gyro_x_train <- read body_gyro_x_train.txt data.frame with numeric data

body_gyro_y_train <- read body_gyro_y_train.txt data.frame with numeric data

body_gyro_z_train <- read body_gyro_z_train.txt data.frame with numeric data

total_acc_x_train <- read total_acc_x_train.txt data.frame with numeric data

total_acc_y_train <- read total_acc_y_train.txt data.frame with numeric data

total_acc_z_train <- read total_acc_z_train.txt data.frame with numeric data


==============================
After the read, the data is label, clean and merge

x_set <- The data set obtained of merge training and test sets data.frame with numeric and factor data

ForActivityForSubject <- The tidy data with the average of each variable for each activity and each subject, list of data.frames with numeric data

