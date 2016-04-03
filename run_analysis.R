## Getting and Cleaning Data Course Project
## Astrid Correa

# Labes Lecture
activity_labels <- read.table("activity_labels.txt",stringsAsFactors = FALSE)
features <- read.table("features.txt")
# Test Folder
subject_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
# Train Folder
subject_train <- read.table("./train/subject_train.txt")
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")


## Label the data
names(x_test)<- features$V2
names(x_train)<-features$V2
names(subject_test)<- "Subject"
names(subject_train)<- "Subject"
y_test_label <- factor(y_test$V1, labels = activity_labels$V2)
y_train_label <- factor(y_train$V1, labels = activity_labels$V2)
## Extracting the data
colum <- grep("mean()|std()",features$V2, value = TRUE)
test_selec <- data.frame(Subject= subject_test,Activity =y_test_label,x_test[,colum])
train_selec <- data.frame(Subject= subject_train,Activity= y_train_label,x_train[,colum])
## Merge the data
x_set <- merge(test_selec,train_selec, all = TRUE)

## Tidy independents data


# Average of each variable for each activity and each subject
SplitActivity <- split(x_set,x_set$Activity)
val <- c(1,3:length(SplitActivity$WALKING))
CleanActivity <- lapply(SplitActivity,function(x) x[,val] ) #Extract the Activity
ForActivityForSubject <- lapply(CleanActivity, function(y) apply(y,2, function(x) tapply(x,y[,1],mean))) 

write.table(ForActivityForSubject,"Step5.txt",row.names = FALSE)
