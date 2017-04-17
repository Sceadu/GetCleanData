####Week 4 Project for Coursera - Getting and Cleaning Data
####R version 3.3.3 (2017-03-06) x86_64-w64-mingw32
require(dplyr)

###Prepares working directory and obtain source data for the assignment 
if(!file.exists("./data")) dir.create("./data")

##Checks whether the zip-file has already been downloaded, if not downloads the file
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filedest <- "./data/w4getdata.zip"
if(!file.exists(filedest)) download.file(fileurl, destfile = filedest)
unzip("./data/w4getdata.zip", exdir = "./data")

##Reads relevant source training and test data
trainx <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
testx <- read.table("./data/UCI HAR Dataset/test/X_test.txt")

##Reads subject ID 
trainsub <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
testsub <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

##Reads training and test labels
trainy <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
testy <- read.table("./data/UCI HAR Dataset/test/y_test.txt")

##Reads feature and activity names
features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]
activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

####Assignment Requirements
###1. Merges the training and the test sets to create one data set
train <- cbind(trainsub, trainy, trainx)
test <- cbind(testsub, testy, testx)
fulldata <- rbind(train, test)
colnames(fulldata) <- c("subject", "activity", features)

###2. Extracts only the measurements on the mean and standard deviation for each measurement
##According to the features_info.txt
##The mean and standard deviation variables were named with *mean() and *std(), respectively
##Gets column index of mean and standard deviation variables
##Double escapes indicates the parentheses need to be considered as literal parentheses 
colindex <- grep(("mean\\(\\)|std\\(\\)"), names(fulldata))

##Extacts the first column "subject", second column "activity",
##and mean and standard deviation variables
meanstd <- fulldata[, c(1, 2, colindex)]

###3. Uses descriptive activity names to name the activities in the data set
meanstd$activity <- factor(meanstd$activity, levels = activity[,1], labels = activity[,2])

###4. Appropriately labels the data set with descriptive variable names
names(meanstd) <- gsub("-mean", "Mean", names(meanstd))
names(meanstd) <- gsub("-std", "SD", names(meanstd))
names(meanstd) <- gsub("Acc", "Accelerometer", names(meanstd))
names(meanstd) <- gsub("Gyro", "Gyroscope", names(meanstd))
names(meanstd) <- gsub("Mag", "Magnitude", names(meanstd))
names(meanstd) <- gsub("^t", "Time", names(meanstd))
names(meanstd) <- gsub("^f", "Frequence", names(meanstd))
names(meanstd) <- gsub("\\(\\)", "", names(meanstd))

###5. From the data set in step 4, creates a second, independent tidy data set
###with the average of each variable for each activity and each subject

average <- meanstd %>%
  dplyr::group_by(subject, activity) %>%
  dplyr::summarize_each(funs(mean))

write.table(average, "./Average.txt", row.names = FALSE)