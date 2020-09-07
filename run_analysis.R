
### Step 0 - Setup enviroment, Download the data and unzip

# clear enviroment
rm(list=ls())

# add dependencies
library(dplyr)


filename <- "UCI_HAR_Dataset.zip"

# check if file already exists before downloading
if (!file.exists(filename)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, filename, method="curl")
}  

# check if folder exists before unzipping
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}



### Step 1 - Merges the training and the test sets to create one data set.
## the data sets are in 3 parts each, measurements, activities and subjects
## first read all information into dataframes
## then use rbind to merge together each part of the training and test data sets

# create the training dataframes 
X_train <- read.table("./data/train/X_train.txt")
Y_train <- read.table("./data/train/Y_train.txt")
subject_train <- read.table("./data/train/subject_train.txt")

# create the test dataframes
X_test <- read.table("./data/test/X_test.txt")
Y_test <- read.table("./data/test/Y_test.txt")
subject_test <- read.table("./data/test/subject_test.txt")

# create the list of variable names
features <- read.table("./data/features.txt")

# fix the BodyBody error in the names
features[,2] <- gsub("BodyBody","Body",features[,2])


# create the activity labels
activity_labels <- read.table("./data/activity_labels.txt")

# merge together training and test data sets using rbind
X_total <- rbind(X_train,X_test)
Y_total <- rbind(Y_train, Y_test)
subject_total <- rbind(subject_train,subject_test)


### Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
## first work out which columns are mean or std. Using grep to search, and making sure to exclude meanFreq variables
## then create new subset of just those columns (called extract_X_total)

#find variables that are means
mean_list <- grep("mean\\(\\)",features[,2])
#find variables that are standard deviations
std_list <- grep("std\\(\\)",features[,2])
#combine the 2 lists
extract_list <- c(mean_list,std_list)
#create an extract of those variables
extract_X_total <- X_total[,extract_list]


### Step 3 - Use descriptive activity names to name the activities in the data set

# use colnames to apply the "activity" label to the single column that is the Y data
colnames(Y_total) <- "activity"
# create a new factor vector in Y_total using the activity_labels data
Y_total$activityname <- factor(Y_total$activity, labels = as.character(activity_labels[,2]))


### Step 4 - Appropriately labels the data set with descriptive variable names.

# use colnames to apply labels from the features list to the full set
colnames(X_total) <- features[,2]
# create the extract again, now with labels
extract_X_total <- X_total[,extract_list]

### Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# apply subject as the label for the subject number variable
colnames(subject_total) <- "subject"

# combine the 3 parts together into a single dataframe
data_total <- cbind(Y_total,subject_total,extract_X_total)

# drop the activity number column
data_total <- select(data_total,-activity)

# group by activityname and subject
grouped_data <- group_by(data_total,activityname,subject)

# use summarise_each to get means by the groups
summary_data <- summarise_each(grouped_data,list(mean = mean))

# write into a new file
write.table(summary_data, file = "tidydata.txt", row.names = FALSE, col.names = TRUE)
