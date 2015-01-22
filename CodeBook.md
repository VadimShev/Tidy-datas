I. Merges the training and the test sets to create one data set
 subject_train - datas from file "subject_train.txt"
 x_train from x_train.txt
 y_train from y_train.txt
 "train" - merge of all train datas
 
 subject_test - datas from file "subject_test.txt"
 x_test from x_test.txt
 y_test from y_test.txt
 "test" - merge of all test datas
 
 "data_set" - merge of all train fnd test datas

II. Extracts only the measurements on the mean and standard deviation for each measurement
features - datas from file "features.txt"
list1 - list of nambers of measurements on the mean and standard deviation
list2 - list1 with numbers 562 and 563 - subject and activity
db - sampling frame from initial datas by list2

III. Uses descriptive activity names to name the activities in the data set
activity_labels - datas from activity_labels.txt (names of activity)
db_name - merge file of db and names of activity
db_names - file without first column - true data set with activity names

IV. Appropriately labels the data set with descriptive variable names
list3 - list of names of measurements with the mean and standard deviation
list4 - list3 with "activity" and "subject"

V.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

db_average - tidy data set with the average of each variable for each activity and each subject
db_average.txt - txt file with tidy datas 
