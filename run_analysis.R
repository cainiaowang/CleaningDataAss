## Load Features Descriptions
features = read.table("UCI HAR Dataset/features.txt",sep = " ")
headers = features[,2]

## Load Activity Info
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")

## Select those columns that are relevent to mean and std
rel_columns = grep("std|mean",features[,2]) #1:Index 2:Description

## Load Tables (relevant columns)
test_table  = read.table("UCI HAR Dataset/test/X_test.txt",
                         col.names=headers)[,rel_columns]
train_table = read.table("UCI HAR Dataset/train/X_train.txt",
                         col.names=headers)[,rel_columns]

## Add Activity Info
test_activity_nos = read.table("UCI HAR Dataset/test/y_test.txt")
test_activities = factor(test_activity_nos[,1],         # Activity Data
                         levels = activity_labels[,1],  # Number Maping
                         labels = activity_labels[,2])  # Description Maping
test_table$Activity = test_activities

train_activity_nos = read.table("UCI HAR Dataset/train/y_train.txt")
train_activities = factor(train_activity_nos[,1],           # Activity Data
                         levels = activity_labels[,1],  # Number Maping
                         labels = activity_labels[,2])  # Description Maping
train_table$Activity = train_activities


## Add Subject Info
test_subjects = read.table("UCI HAR Dataset/test/subject_test.txt")
test_table$Subject = test_subjects[,1]

train_subjects = read.table("UCI HAR Dataset/train/subject_train.txt")
train_table$Subject = train_subjects[,1]

## Merge Two tables
table = rbind(test_table,train_table)


## Create Summary Table    
# [Note as I am running R 3.0.2, none of the plyr functions are available
#  this includes dcast & melt, for this reason I am using the native 
#  aggregate function]
tidy_table = aggregate(table[seq(dim(table)[2]-2)],# Select Data Collumns 
                                                   # (all but the last 2)
                       by=table[c("Subject","Activity")],
                       FUN=mean)

# Write Table to File
write.table(tidy_table,"tidy_table.txt",row.name=FALSE)

print(colnames(tidy_table))
