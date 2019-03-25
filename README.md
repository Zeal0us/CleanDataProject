# CleanDataProject

Produces 2 files based on requirements for the Course Project for Getting and Cleaning Data on Coursera.

Variable descriptions can be found in codebook.md, a markdown file

run_analysis.R does the following, per the instructions on Coursera:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


This is accomplished by:


- First, the data files (i.e. X_train.txt, y_train.txt, subject_train.txt) are each merged into one table by reading in X data (i.e. X_train.txt), getting column names from features.txt, and adding the data from the subject and y files to the columns subject and activity.number.

- Merging of test and train data is accomplished with rbind

- Extraction of the wanted variables is done by using grep to get the column indexes that match the desired pattern

- Activity names are merged (using merge) from the activity_labels.txt file

- Variable names are expanded to be more descriptive with gsub/sub

- Created the second data set is done by using dplyr's group_by and summarize_all with the mean function to get the mean of each column.  Each row represents the summary of the data when grouped by subject and activity.name

Output locations: 
- ./output.txt 
- ./summary_output.txt 

Output can be read with 
``` R
input <- read.table('summary_output.txt',header=TRUE)
```
*If data set is not detected in the same directory as the script, it is downloaded/extracted as needed.


*tested by running the following from the R console (r.exe):
``` R
source('run_analysis.R')
```