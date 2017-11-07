# CODEBOOK: Getting And Cleaning Data Project

### Marion Grould
7 November 2017

## Merge the training and the test sets to create one data set
* Get the file paths containing the words "test" and "train".
* Read and merge the training and the test sets by using the read.table() and rbind() commands, respectively.

## Extract only the measurements on the mean and standard deviation for each measurement
* Reduce the data set created by only considering the mean and the standart deviation measurements by using the grep() and select() commands.

## Use descriptive activity names to name the activities in the data set
* Replace the numbers used to distinguish the various activities by their real names listed in activity_labels.txt. The commands cbind() and sub() are used.

## Appropriately label the data set with descriptive variable names
* Rename each column of the data set by using features.txt and the commands names(), gsub() and tolower(). 

## Create a second independent tidy data set  
* Create a tidy data set with the average of each variable for each activity and each subject.
* Write the data table in subset_tidy_dataset.txt.
