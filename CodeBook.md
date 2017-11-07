# CODEBOOK: Getting And Cleaning Data Project

### Marion Grould
7 November 2017

## Description of the run_analysis.R file

### Merge the training and the test sets to create one data set
* Get the file paths containing the words "test" and "train".
* Read and merge the training and the test sets by using the read.table() and rbind() commands, respectively.

### Extract only the measurements on the mean and standard deviation for each measurement
* Reduce the data set created by only considering the mean and the standard deviation measurements by using the grep() and select() commands.

### Use descriptive activity names to name the activities in the data set
* Replace the numbers used to distinguish the various activities by their real names listed in activity_labels.txt. The commands cbind() and sub() are used.

### Appropriately label the data set with descriptive variable names
* Rename each column of the data set by using features.txt and the commands names(), gsub() and tolower(). 

### Create a second independent tidy data set  
* Create a tidy data set with the average of each variable for each activity and each subject by using aggregate().
* Write the data table in subset_tidy_dataset.txt with write.table().

## Description of the variables wrote in subset_tidy_dataset.txt

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time.acc.xyz and time.gyro.xyz. These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time.body.acc.xyz and time.gravity.acc.xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time.body.acc.jerk.xyz and time.body.gyro.jerk.xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time.body.acc.mag, time.gravity.acc.mag, time.body.acc.jerk.mag, time.body.gyro.mag, time.body.gyro.jerk.mag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freq.body.acc.xyz, freq.body.acc.jerk.xyz, freq.body.gyro.xyz, freq.body.acc.jerk.mag, freq.body.gyro.mag, freq.body.gyro.jerk.mag. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'.xyz' is used to denote 3-axial signals in the x, y and z directions.

activity 

subject

time.body.acc.xyz

time.gravity.acc.xyz

time.body.acc.jerk.xyz

time.body.gyro.xyz

time.body.gyro.jerk.xyz

time.body.acc.mag

time.gravity.acc.mag

time.body.acc.jerk.mag

time.body.gyro.mag

time.body.gyro.JerkMag

freq.body.acc.xyz

freq.body.acc.jerk.xyz

freq.body.gyro.xyz

freq.body.acc.mag

freq.body.acc.jerk.mag

freq.body.gyro.mag

freq.body.gyro.jerk.mag

The set of variables time.body.acc.xyz to freq.body.gyro.jerk.mag that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation
