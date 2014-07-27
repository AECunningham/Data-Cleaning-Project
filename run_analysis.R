#IDENTIFY THE RELEVANT VARIABLES....
features_text <- read.table("./UCI HAR Dataset/features.txt",header=FALSE)                                        # read in list of 561 variables
features_text$relevant <- grepl("(-mean\\(\\)|-std\\(\\))",features_text$V2)                                               # identify the variables we are interested in keeping

#PROCESS THE TEST DATA....
testdata <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)                                            # read the Test data
relevantTest <- testdata[,features_text$relevant]                                                                                   # pick out the relevant columns of testdata
names(relevantTest) <- gsub("-",".",sub("BodyBody","Body",sub("()","",features_text$V2[which(features_text$relevant)],fixed=TRUE)))  
                                                                                                                                                                 # rename the retained columns 
                                                                                                                                                                 # as per features.txt, but without the brackets, 
                                                                                                                                                                 #dashes or 'BodyBody'
subjecttestdata <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)                       # read the subject data
activitytestdata <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)                                 # read the activity data
relevantTest <- cbind(relevantTest,subject = subjecttestdata$V1,activityid = activitytestdata$V1)       # add the subject and activityid columns to the 
                                                                                                                                                                 #relevant Test data

#PROCESS THE TRAIN DATA....
traindata <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)                                         # read the Train data
relevantTrain <- traindata[,features_text$relevant]                                                                                 # pick out the relevant columns of traindata
names(relevantTrain) <- gsub("-",".",sub("BodyBody","Body",sub("()","",features_text$V2[which(features_text$relevant)],fixed=TRUE)))  
                                                                                                                                                                 # rename the retained columns 
                                                                                                                                                                 # as per features.txt, but without the brackets, 
                                                                                                                                                                 #dashes or 'BodyBody'
subjecttraindata <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)                   # read the subject data
activitytraindata <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)                             # read the activity data
relevantTrain <- cbind(relevantTrain,subject = subjecttraindata$V1,activityid = activitytraindata$V1)  # add the subject and activityid columns to the 
                                                                                                                                                                 #relevant Train data

#APPEND THE TEST AND TRAIN DATA....
relevantData <- rbind(relevantTest,relevantTrain)

#READ AND APPLY THE ACTIVITY LABELS....
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE)                           #read the activity_labels data
names(activity_labels) <- c("activityid","activity")                                                                                  #rename the activity_labels columns
output1 <- merge(relevantData,activity_labels,by="activityid")                                                              #merge by matching on 'activityid'                     
output1$activityid <- NULL                                                                                                                       #remove the 'activityid' column (no longer needed)

#AVERAGING BY SUBJECT AND ACTIVITY....
output2 <- aggregate(. ~ subject+activity,data=output1,mean,na.rm=TRUE)                                            #calculate averages for each combination 
                                                                                                                                                                   #of subject and activity
write.table(output2,"output2.txt",sep=",",row.names=FALSE)                                                                   #save as a comma-delimited file
