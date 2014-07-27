It is assumed that the folder called 'UCI HAR Dataset', containing all the Samsung data, is held in the working directory.

EXPLAINING THE R SCRIPT ("run_analysis.R")
======================================
Identifying the relevant variables
-----------------------------------------------------
The first action of the run_analysis.R script is to read the features.txt file, which contains the names of the 561 variables. The grepl function then creates a new 'TRUE/FALSE' column 
called 'relevant', which states whether the corresponding variable name contains the expression "-mean()" or "-std()", and thus whether we want to keep that variable or not.

Processing the Test data
----------------------------------------
The next few lines carry out the processing of the Test data. All 561 columns of data are read from the X_test.txt file. Then the 'TRUE/FALSE' column created in the previous step is used to 
pick out which of those variables we want to keep, and a new data frame called relevantTest is created consisting of just these columns. The retained columns still do not have descriptive
names, so the 'which' function is used to single out the names of those variables which correspond to a 'TRUE' in the 'TRUE/FALSE' column. Before these variable names are applied as 
column names, any occurrences of "()" are removed, any dashes are changed to dots, and any occurrences of 'BodyBody' are reduced to 'Body'.

The subject_test.txt and y_test.txt files are now read, containing the details of which individual and which activity each of the rows in the X_test.txt file corresponds to. At this stage, the
activity is represented by a number from 1 to 6. These items of data are added to the existing test data as two new columns called 'subject' and 'activityid'. 

Processing the Training data
----------------------------------------------
All the steps described in the previous two paragraphs are now repeated on the Training data (replacing 'test' by 'train' throughout). By the completion of this stage, we have a 2947-row 
data frame of Test data, and a 7352-row data frame of Training data. Each of these contains 66 columns of measurement data plus 'subject' and 'activityid' columns.

Appending the Test and Train data
-------------------------------------------------------
The two data frames are now appended to each other to create one long dataframe of 10299 rows.

Reading and Applying the Activity Labels
------------------------------------------------------------------
The activity label (e.g. "WALKING") to which each of the six activity numbers corresponds is now read from the activity_labels.txt file. Its two columns are given the names 'activityid' and 
'activity', and it is then merged with the main data frame by matching on the 'activityid' column. This results in an 'activity' column being added to the main data frame, so the 'activityid' 
column is no longer needed, and is removed. The resulting data frame, called 'output1', represents the first required output of this exercise.

Averaging by Subject and Activity
------------------------------------------------------
The 'aggregate' function is now used to calculate an average of each of the 66 measurement columns for each combination of 'subject' and 'activity'. The resulting data frame is 
called 'output2', and represents the second required output of this exercise. It is saved in the working directory as a comma-delimited file called 'output2.txt'.

EXPLAINING WHY "output2" REPRESENTS "TIDY DATA"
==============================================
Hadley Wickham's paper on Tidy Data (http://vita.had.co.nz/papers/tidy-data.pdf) states that in a tidy dataset, each variable should form a column and each observation should form a row. 
In the 'output2' dataset, there are 180 rows of data, each giving the result of one subject doing one activity, which conforms to Hadley's examples of an 'observation' (e.g. Table 3 in his 
paper). Hadley acknowledges that what counts as a 'variable' depends on the context. For instance, "if x and y represent length of left and right arms", then they are two separate variables, 
but if they represented measurements of the same kind taken  "on day 1 and day 10", then they should appear in a single column (perhaps called 'Day'), with a separate 'Value' column 
alongside. Not being a physicist, I have no idea whether the various measurements are fundamentally different from each other, in the same way as the length of left and right arms, 
or height and weight, but it seems safest to assume that they are. Also, a mean and a standard deviation, even when calculated on the same set of measurements, would seem to be 
sufficiently different to count as two separate variables. This implies that we are indeed dealing with 66 separate variables, thus it is appropriate to have one column for each of them.