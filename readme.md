# Background
This script is done in partial completion of the course Getting and Cleaning Data

# How to Use
Simply put the file in the same folder where the UCI HAR Dataset folder is and execute it.
This script shall not be inside the UCI HAR Data folder.

# Actions Perfored by the Script
    * Merges the training and the test sets to create one data set.
    * Extracts only the measurements on the mean and standard deviation for each measurement. 
    * Uses descriptive activity names to name the activities in the data set
    * Appropriately labels the data set with descriptive variable names. 
    * Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Output
The clean data can be found in file cleandata.txt. Another file called cleandata_avg.txt includes the tidy data with average applies to each activity and each subject.