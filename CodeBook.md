#Code Book

This codebook relates to the tabular data presented in tidy_table.txt.

## Data Source

The data that makes up this table is a result of merging the following file
- UCI HAR Dataset/test/X_test.txt
- UCI HAR Dataset/test/y_test.txt
- UCI HAR Dataset/train/X_train.txt
- UCI HAR Dataset/train/y_train.txt
- UCI HAR Dataset/test/subject_test.txt
And Activity lables taken from
- UCI HAR Dataset/activity_labels.txt

## Processing
- Data was first extracted from the files detailed above, with only columns relevant to std and mean being taken.
- This was then summaries to show average values for the various columns for a given Subject and Activity.

## More Information
For more information on the variables involved, please refer to the following files:
- UCI HAR Dataset/README.txt
- UCI HAR Dataset/features_info.txt


## Column Names
- Subject                        
- Activity                      
- tBodyAcc.mean...X              
- tBodyAcc.mean...Y             
- tBodyAcc.mean...Z              
- tBodyAcc.std...X              
- tBodyAcc.std...Y               
- tBodyAcc.std...Z              
- tGravityAcc.mean...X           
- tGravityAcc.mean...Y          
- tGravityAcc.mean...Z           
- tGravityAcc.std...X           
- tGravityAcc.std...Y            
- tGravityAcc.std...Z           
- tBodyAccJerk.mean...X          
- tBodyAccJerk.mean...Y         
- tBodyAccJerk.mean...Z          
- tBodyAccJerk.std...X          
- tBodyAccJerk.std...Y           
- tBodyAccJerk.std...Z          
- tBodyGyro.mean...X             
- tBodyGyro.mean...Y            
- tBodyGyro.mean...Z             
- tBodyGyro.std...X             
- tBodyGyro.std...Y              
- tBodyGyro.std...Z             
- tBodyGyroJerk.mean...X         
- tBodyGyroJerk.mean...Y        
- tBodyGyroJerk.mean...Z         
- tBodyGyroJerk.std...X         
- tBodyGyroJerk.std...Y          
- tBodyGyroJerk.std...Z         
- tBodyAccMag.mean..            
- tBodyAccMag.std..             
- tGravityAccMag.mean..         
- tGravityAccMag.std..          
- tBodyAccJerkMag.mean..        
- tBodyAccJerkMag.std..         
- tBodyGyroMag.mean..           
- tBodyGyroMag.std..            
- tBodyGyroJerkMag.mean..       
- tBodyGyroJerkMag.std..        
- fBodyAcc.mean...X             
- fBodyAcc.mean...Y             
- fBodyAcc.mean...Z             
- fBodyAcc.std...X              
- fBodyAcc.std...Y              
- fBodyAcc.std...Z              
- fBodyAcc.meanFreq...X         
- fBodyAcc.meanFreq...Y         
- fBodyAcc.meanFreq...Z         
- fBodyAccJerk.mean...X         
- fBodyAccJerk.mean...Y         
- fBodyAccJerk.mean...Z         
- fBodyAccJerk.std...X          
- fBodyAccJerk.std...Y          
- fBodyAccJerk.std...Z          
- fBodyAccJerk.meanFreq...X     
- fBodyAccJerk.meanFreq...Y     
- fBodyAccJerk.meanFreq...Z     
- fBodyGyro.mean...X            
- fBodyGyro.mean...Y            
- fBodyGyro.mean...Z            
- fBodyGyro.std...X             
- fBodyGyro.std...Y             
- fBodyGyro.std...Z             
- fBodyGyro.meanFreq...X        
- fBodyGyro.meanFreq...Y        
- fBodyGyro.meanFreq...Z        
- fBodyAccMag.mean..            
- fBodyAccMag.std..             
- fBodyAccMag.meanFreq..        
- fBodyBodyAccJerkMag.mean..    
- fBodyBodyAccJerkMag.std..     
- fBodyBodyAccJerkMag.meanFreq..
- fBodyBodyGyroMag.mean..       
- fBodyBodyGyroMag.std..        
- fBodyBodyGyroMag.meanFreq..   
- fBodyBodyGyroJerkMag.mean..   
- fBodyBodyGyroJerkMag.std..    
- fBodyBodyGyroJerkMag.meanFreq.."
