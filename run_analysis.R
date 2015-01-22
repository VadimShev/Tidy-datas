"I. Merges the training and the test sets to create one data set"
setwd("C:/BigData/data/UCI HAR Dataset/train")
subject_train<-read.table("subject_train.txt", header=FALSE, stringsAsFactors=FALSE)
x_train<-read.table("X_train.txt", header=FALSE, stringsAsFactors=FALSE)
y_train<-read.table("y_train.txt", header=FALSE, stringsAsFactors=FALSE)

train<-cbind( x_train, subject_train, y_train)
str(train)

setwd("C:/BigData/data/UCI HAR Dataset/test")
subject_test<-read.table("subject_test.txt", header=FALSE, stringsAsFactors=FALSE)
x_test<-read.table("X_test.txt", header=FALSE, stringsAsFactors=FALSE)
y_test<-read.table("y_test.txt", header=FALSE, stringsAsFactors=FALSE)

test<-cbind(x_test, subject_test, y_test)
str(test)

data_set<-rbind(test, train)
str(data_set)

"II Extracts only the measurements on the mean and standard deviation for each measurement"

setwd("C:/BigData/data/UCI HAR Dataset")
features<-read.table("features.txt", header=FALSE, stringsAsFactors=FALSE)
list1<-grep("mean\\(|std\\(", features[,2], value=FALSE) 
list2<-c(list1,562,563)
str(list2)

db <- subset(data_set, select=list2)
str(db)

"III Uses descriptive activity names to name the activities in the data set"
setwd("C:/BigData/data/UCI HAR Dataset")
activity_labels<-read.table("activity_labels.txt", header=FALSE, stringsAsFactors=FALSE)
str(activity_labels)

db_name<-merge(db, activity_labels, by.x="V1.2", by.y="V1", all=TRUE)
db_names<-db_name[,-1]
str(db_names)  

"IV Appropriately labels the data set with descriptive variable names"
setwd("C:/BigData/data/UCI HAR Dataset")
features<-read.table("features.txt", header=FALSE, stringsAsFactors=FALSE)
list3<-grep("mean\\(|std\\(", features[,2], value=TRUE) 
list4<-c(list3, "subject","activity")
colnames(db_names)<-list4
str(db_names) 

"V.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject"

library(dplyr)
db_average<-
  db_names %>%
  group_by(activity, subject) %>%
  summarise_each(funs(mean))%>%
print(db_average)  

setwd("C:/BigData/data")
write.table(db_average, file = "db_average.txt", row.name=FALSE)
  
  
