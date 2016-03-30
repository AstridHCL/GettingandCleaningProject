=========================================================================.
Getting and Cleaning data course project
==========================================================================
Astrid Correa
=============

# The Script is programed for just run and get the file, your working directory must be inside of UCI HAR Dataset
with all the files.

======================
The Lecture Variables
======================
# have all the read data


activity_labels <- read activity_labels.txt
features  <- read features.txt

# Test Folder

subject_test <- read subject_test.txt
x_test <- read X_test.txt
y_test <- read  y_test.txt 
body_acc_x_test <- read  body_acc_x_test.txt 
body_acc_y_test <- read  body_acc_y_test.txt 
body_acc_z_test <- read  body_acc_z_test.txt 
body_gyro_x_test <- read  body_gyro_x_test.txt 
body_gyro_y_test <- read  body_gyro_y_test.txt 
body_gyro_z_test <- read  body_gyro_z_test.txt 
total_acc_x_test <- read  total_acc_x_test.txt 
total_acc_y_test <- read  total_acc_y_test.txt 
total_acc_z_test <- read  total_acc_z_test.txt
 
# Train Folder

subject_train <- read subject_train.txt 
x_train <- read X_train.txt 
y_train <- read y_train.txt 
body_acc_x_train <- read body_acc_x_train.txt 
body_acc_y_train <- read body_acc_y_train.txt 
body_acc_z_train <- read body_acc_z_train.txt 
body_gyro_x_train <- read body_gyro_x_train.txt 
body_gyro_y_train <- read body_gyro_y_train.txt 
body_gyro_z_train <- read body_gyro_z_train.txt 
total_acc_x_train <- read total_acc_x_train.txt 
total_acc_y_train <- read total_acc_y_train.txt 
total_acc_z_train <- read total_acc_z_train.txt 

==============================
After the read, the data is label, clean and merge

x_set <- The data set obtained of merge training and test sets

ForActivityForSubject <- The tidy data with the average of each variable for each activity and each subject.

