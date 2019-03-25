# CleanDataProject

Produces 2 files based on requirements for the Course Project for Getting and Cleaning Data on Coursera.

Variable descriptions can be found in codebook.md, a markdown file

run_analysis.R does the following, per the instructions on Coursera:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

First, train and test set data files are merged into one table by getting column names from features.txt, and setting the columns subject and activity.number from subject_(train|test).txt and y_(train|test).txt respectively.

Merging is accomplished with rbind

Extraction of the wanted variables is done by using grep to get the column indexes that match the desired pattern

Activity names are merged (using merge) from the activity_labels.txt file

Variable names are expanded to be more descriptive with gsub/sub

Created the second data set is done by using dplyr's group_by and summarize_all with the mean function to get the mean of each column.

Output locations:
./output.txt
./summary_output.txt

*If data set is not detected in the same directory as the script, it is downloaded/extracted as needed.