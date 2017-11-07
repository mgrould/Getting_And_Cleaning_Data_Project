# Getting And Cleaning Data Project

### Marion Grould
7 November 2017

## Abstract
This work is realized as part of the Coursera Data Science Specialization proposed by Johns Hopkins University. The aim of the project is to build a tidy data set by using the [programming language R](https://www.rstudio.com/).

The cleaned and reduced data set is obtained by downloading the Getting_And_Cleaning_Data_Project repository and running the run_analysis.R file. The installation of the [dplyr R package](https://www.rdocumentation.org/packages/dplyr/versions/0.5.0) is required.

## Context of the project
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Repository
* **test/**: Contains the test data.
* **train/**: Contains the training dta.
* **README.txt**: Explanation of the performed experiments and summary of existing files.
* **activity_labels.txt**: Links the class labels with their activity name.
* **features_info.txt**: Shows information about the variables used on the feature vector.
* **features.txt**: List of all features.
* **run_analysis.R**: Script allowing to clean and reduce the data set.
* **subset_tidy_dataset.txt**: Final tidy data set.
* **CodeBook.md**: CodeBook containing a description of the various steps performed in run_analysis.R.
