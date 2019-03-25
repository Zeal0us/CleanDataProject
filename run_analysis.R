#The name of the folder the data is in.  Original ZIP places this in UCI HAR Dataset
library(dplyr)
data_folder <- 'UCI HAR Dataset'
download_file_name <- 'getdata_projectfiles_UCI HAR Dataset.zip'
output_file_name <- 'output.txt'

#download data
if (!file.exists(data_folder)) {
    if (!file.exists(download_file_name)) {
        download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',download_file_name,mode='wb')
    }
    unzip(download_file_name)
}

#read in features (column names)
features_file <- paste0(data_folder,'/features.txt')
features <- read.table(features_file,stringsAsFactors=FALSE)
new_column_names <- features[[2]]

#read in label map
label_map_file <- paste0(data_folder,'/activity_labels.txt')
label_map <- read.table(label_map_file,stringsAsFactors=FALSE)
colnames(label_map) <- c('activity.number','activity.name')


#read in train data set
train_data_file <- paste0(data_folder,'/train/X_train.txt')
train_labels_file <- paste0(data_folder,'/train/y_train.txt')
train_subjects_file <- paste0(data_folder,'/train/subject_train.txt')

train_data <- read.table(train_data_file,stringsAsFactors=FALSE)
train_labels <- read.table(train_labels_file,stringsAsFactors=FALSE)[[1]]
train_subjects <- read.table(train_subjects_file,stringsAsFactors=FALSE)[[1]]
colnames(train_data) <- new_column_names
train_data$subject <- train_subjects
train_data$activity.number <- train_labels

#read in the test data set
test_data_file <- paste0(data_folder,'/test/X_test.txt')
test_labels_file <- paste0(data_folder,'/test/y_test.txt')
test_subjects_file <- paste0(data_folder,'/test/subject_test.txt')

test_data <- read.table(test_data_file,stringsAsFactors=FALSE)
test_labels <- read.table(test_labels_file,stringsAsFactors=FALSE)[[1]]
test_subjects <- read.table(test_subjects_file,stringsAsFactors=FALSE)[[1]]
colnames(test_data) <- new_column_names
test_data$subject <- test_subjects
test_data$activity.number <- test_labels

#merge into one set
merged_data <- rbind(test_data,train_data)
#remove the columns we don't want - instructions indicated mean and standard deviation.
#It did not specify meanFreq, so that was sorted out as well, working under the assumption that's not included in "mean"
filtered_columns <- grep('std\\(\\)|mean\\(\\)|^subject$|^activity.number$',colnames(merged_data))
merged_data <- merged_data[,filtered_columns]
merged_data <- merge(merged_data,label_map)
merged_data <- mutate(merged_data,activity.number=NULL) 

merged_data <- select(merged_data,subject,activity.name,everything())
#clarify variables
colnames(merged_data) <- gsub('^t(Body){1,2}','time.domain.body',colnames(merged_data))
colnames(merged_data) <- gsub('^t(Gravity)','time.domain.gravity',colnames(merged_data))
colnames(merged_data) <- gsub('^f(Body){1,2}','frequency.domain.body',colnames(merged_data))
#add a . between any lower case character that is followed by an uppercase one
colnames(merged_data) <- gsub('([a-z])([A-Z])','\\1.\\2',colnames(merged_data))
#name based on sensor signal type
colnames(merged_data) <- gsub('Acc','accelerometer',colnames(merged_data))
colnames(merged_data) <- gsub('Gyro','gyroscope',colnames(merged_data))
#replace Mag with magnitude
colnames(merged_data) <- gsub('Mag','magnitude',colnames(merged_data))
#remove parens
colnames(merged_data) <- gsub('\\(|\\)','',colnames(merged_data))
#replace - with .
colnames(merged_data) <- gsub('-','.',colnames(merged_data))
colnames(merged_data) <- tolower(colnames(merged_data))
colnames(merged_data)

write.table(merged_data,output_file_name,row.name=FALSE)


summarized_data <- merged_data %>%
            group_by(subject,activity.name) %>%
            summarize_all(mean)
summarized_data <- as.data.frame(summarized_data)
colnames(summarized_data) <- sub('^(time|frequency)\\.','summary.\\1\\.',colnames(merged_data))

write.table(summarized_data,paste0('summary_',output_file_name),row.name=FALSE)