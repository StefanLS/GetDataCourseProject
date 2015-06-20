## This script poduces a tidy data set from the data contained in 
## "getdata_projectfiles_UCI HAR Dataset.zip".
##
## The "UCI HAR Dataset" folder (i.e. the extracted zip-file) is supposed to be
## in the working directory, if not: change the path variable 'fn_p'
##
## Output file name:    "feature means UCI HAR Dataset.txt"

library(dplyr)

## Filenames
fn_p <- "UCI HAR Dataset/"                                ## path
fn_subtest   <- paste0(fn_p,"test/subject_test.txt")      ## subject
fn_subtrain  <- paste0(fn_p,"train/subject_train.txt")
fn_actest    <- paste0(fn_p,"test/y_test.txt")            ## activity
fn_actrain   <- paste0(fn_p,"train/y_train.txt")
fn_meastest  <- paste0(fn_p,"test/X_test.txt")            ## measurements
fn_meastrain <- paste0(fn_p,"train/X_train.txt")
fn_aclabels  <- paste0(fn_p,"activity_labels.txt")        ## activity labels
fn_feat      <- paste0(fn_p,"features.txt")               ## feature names

## Read in the lists of the subjects of the two sets and concatenate them
subject.test <- as.numeric(readLines(fn_subtest))
subject.train <- as.numeric(readLines(fn_subtrain))
subject <- c(subject.test, subject.train)

## Read in the activities and the labels of the activities,
## concatenate the two sets and label the activities
acvy.test <- as.numeric(readLines(fn_actest))
acvy.train <- as.numeric(readLines(fn_actrain))
acLabels <- read.table(fn_aclabels)
activity <- factor(c(acvy.test, acvy.train), labels=acLabels$V2)

## Read in the names of the features and generate column names
featureNames <- read.table(fn_feat)
colNames <- make.names(featureNames[,2],unique=TRUE)
colNames <- sub("\\.\\.","",colNames)

## Read in the measurements of the two sets, concatenate them and
## name the columns
data.test <- read.table(fn_meastest)
data.train <- read.table(fn_meastrain)
data <- bind_rows(data.test, data.train)
names(data) <- colNames

## Bind together the three parts, select the relevant columns, 
## do the math (i.e. calculate the mean) and write the result into a file
result <- cbind(subject, activity, data) %>%
     select(matches("subject|activity|mean|std", ignore.case=FALSE)) %>%
     select(-matches("meanFreq")) %>%
     group_by(subject, activity) %>% 
     summarise_each(funs(mean))

write.table(result,"feature means UCI HAR Dataset.txt",row.names=FALSE)
