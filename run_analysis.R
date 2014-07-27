# Dir of the raw data
dir <- './UCI HAR Dataset'

#Read the features file
features <- read.table(paste(dir, "features.txt", sep="/"))[,'V2']

#Read the activities file
activities <- read.table(paste(dir, "activity_labels.txt", sep="/"))[,"V2"]

required_measures <- sort(union(grep("mean\\(\\)", features), grep("std\\(\\)", features)))


# Set the width for each col in the file 
widths <- rep(-16, length(features))
widths[required_measures] <- 16

# Read X
x_test <- read.fwf(paste(dir, "test/X_test.txt", sep="/"), col.names = features[required_measures], widths = widths);
x_train = read.fwf(paste(dir, "train/X_train.txt", sep="/"), col.names = features[required_measures], widths = widths);
set <- rbind(x_test, x_train)

# Read Y
set$activity <- activities[c(read.table(paste(dir, "test/y_test.txt", sep="/"))[,"V1"], 
                  read.table(paste(dir, "train/y_train.txt", sep="/"))[,"V1"])]

# Read subject data
set$subject <- c(read.table(paste(dir, "test/subject_test.txt", sep="/"))[,"V1"], 
                 read.table(paste(dir, "train/subject_train.txt", sep="/"))[,"V1"])

# Write tidy data to file
write.table(set, "cleandata.txt")

# Create the second data set & apply function colMeans
set2 <- set[,seq(1, length(names(set)) - 2)]
summary <- do.call(rbind, by(set2,paste(set$subject, set$activity, sep="_"), FUN=colMeans))

# Write averaged tidy data to file
write.table(summary, "cleandata_avg.txt")