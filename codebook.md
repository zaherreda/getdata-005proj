# Background
Refer to the readme.txt of the UCI HAR Dataset for more details on the input structure.

# Variables
* features: includes the data read from the feature.txt file; required for following scripts.
* activities: includes the data read from the activity_labels.txt file; required for following scripts.
* required_measures: includes all the data that is only standard deviation or average; required for following scripts.
* widths: represents a fixed length for each column of the data; required for the read.fwf function.
* x_test: includes the data of the X_test.txt file
* x_train: includes the data of the Y_test.txt file
* set: is the combination of x_train and x_test with parsed activity and subject appended.
* set2: is a clone of set, but is required to do further actions on it
* summary: is data of set2 but with colMeans applied to it.

#Files
* cleandata.txt: the merged tidy data
* cleandata_avg.txt: the mered tidy data but summarized by averages 

#Transformation
The raw data has not been transformed; however, it has been read into variables, cleaned, then written into new files.
The cleaning process involves combining the data sets and parsing some of the content in readable form based on supplied information.