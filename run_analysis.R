# Getting and cleaning data project

library(dplyr)

# Merges the training and the test sets to create one data set
train_path <- file.path("train", grep(".txt", list.files("train"), value=T))
test_path <- file.path("test", grep(".txt", list.files("test"), value=T))
subjects <- rbind(read.table(train_path[1]), read.table(test_path[1])) 
results <- rbind(read.table(train_path[2]), read.table(test_path[2])) 
activities <- rbind(read.table(train_path[3]), read.table(test_path[3])) 

# Extracts only the measurements on the mean and standard deviation for each measurement
features <- read.table("features.txt") # features$V2 gives the column names
ncol_meanORstd <- grep("mean|std", features$V2)
results_meanORstd <- select(results, ncol_meanORstd)

# Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("activity_labels.txt")
ResAct_meanORstd <- cbind(activities, results_meanORstd)
ResAct_meanORstd <- cbind(subjects, ResAct_meanORstd)
names(ResAct_meanORstd)[1:2] <- c("subject", "activity")
for(i in 1:6) ResAct_meanORstd$activity <- sub(i, activity_labels$V2[i], ResAct_meanORstd$activity)

# Appropriately labels the data set with descriptive variable names
features_meanORstd <- features[ncol_meanORstd,2]
names(ResAct_meanORstd) <- c("subject", "activity", as.character(features_meanORstd))
names(ResAct_meanORstd) <- gsub("([a-z])([A-Z])","\\1.\\2",names(ResAct_meanORstd))
names(ResAct_meanORstd) <- gsub("()","",names(ResAct_meanORstd),fixed=T)
names(ResAct_meanORstd) <- gsub("-",".",names(ResAct_meanORstd),fixed=T)
names(ResAct_meanORstd) <- gsub("^t","time",names(ResAct_meanORstd))
names(ResAct_meanORstd) <- gsub("^f","freq",names(ResAct_meanORstd))
names(ResAct_meanORstd) <- tolower(names(ResAct_meanORstd))

# Creates a second independent tidy data set with the average of each variable for 
# each activity and each subject
New_ResAct_meanORstd <- aggregate(ResAct_meanORstd[3:80], 
                                  by=list(ResAct_meanORstd$activity, ResAct_meanORstd$subject), 
                                  FUN=mean)
names(New_ResAct_meanORstd)[1:2] <- c("activity", "subject")
write.table(New_ResAct_meanORstd, file='subset_tidy_dataset.txt', row.name=FALSE)

