=========================================================================.

Getting and Cleaning data course project

==========================================================================

Astrid Correa

=============

CODEBOOK

activity_labels <- read activity_labels.txt

features <- read features.txt

# Test Folder

subject_test <- read subject_test.txt

x_test <- read X_test.txt data.frame with numeric 
data

y_test <- read  y_test.txt data.frame with numeric data



 
# Train Folder



subject_train <- read subject_train.txt 


x_train <- read X_train.txt data.frame with numeric data


y_train <- read y_train.txt data.frame with numeric data




# Data label

y_test_label and y_train_label <- Name the activities in the data set


# Extracting the data

colum <- Are the columns with mean and sd selected
test_select and train_select <- are the data.frame withe the columns in the variable colum

x_set <- Is the merde of trainig and test sets

SplitActivity <- generat a list with the data.frame from de x_set for activiy

val <- select the range of columns to work

CleanActivity <- Extract the column Activity from the data

ForActivityForSubject <- The tidy data with the average of each variable for each activity and each subject, list of data.frames with numeric data
