# Tidy-datas
Getting and Cleaning Data Course Project 

Script "run_analysis.R"  

I. Merges the training and the test sets to create one data set
1. Set working Directory 
2. Read datas from .txt files
3. Merges the training sets and control there structura: "train"
4. Set working Directory 
5. Read datas features from .txt files
6. Merges the test sets and control there structura: "test""
7. Merges the training and the test sets to create one data set: "data_set" and control there structura 

II. Extracts only the measurements on the mean and standard deviation for each measurement
1. Set working Directory 
2. Read datas features from .txt file
3. Creat vector with mean and standard deviation numbers of variables: "list1"
4. Added 2 numbers 562 and 563 to the end of vector: "list2"
5. Select only the measurements on the mean and standard deviation for each measurement: "db"

III. Uses descriptive activity names to name the activities in the data set
1. Set working Directory 
2. Read activity labels from activity_labels.txt file 
3. Merge datas and rename activities as there named in activity_labels.txt file

IV. Appropriately labels the data set with descriptive variable names
1. Set working Directory 
2. Read datas features from .txt file
3. Creat vector "list3" with names of variables (parametr "value=TRUE"", instead "FALSE"" in II variant)
4. Aded 2 names "subject", "activity" to vector "list4"
5. Rename columns of main Datas "db_names"

V.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

1. Read package "dplyr"
2. Creates a tidy data set with the average of each variable for each activity and each subject
3. Write text file "db_average.txt" to the directory "C:/BigData/data"


