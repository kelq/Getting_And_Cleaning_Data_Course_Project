### Getting and Cleaning Data Course Project
# CodeBook
##### This codebook describes the variables used to perform the tidying of the data.

---

## Variables

### activityLabels
##### This variable stores the contents of the file activity.txt:

```sh
> activityLabels
  V1                 V2
1  1            WALKING
2  2   WALKING_UPSTAIRS
3  3 WALKING_DOWNSTAIRS
4  4            SITTING
5  5           STANDING
6  6             LAYING
```
### featureNames
##### This variable stores the contents from features.txt i.e. the 561 measured variables:
```sh
> head(featureName)
  V1                V2
1  1 tBodyAcc-mean()-X
2  2 tBodyAcc-mean()-Y
3  3 tBodyAcc-mean()-Z
4  4  tBodyAcc-std()-X
5  5  tBodyAcc-std()-Y
6  6  tBodyAcc-std()-Z
```

### selectedFeatures
##### Onlynly measurements for mean and standard deviation are required. This variables stores the column number and the measurement name for the required measurements:

```sh
> head(selectedFeatures,10)
   V1                   V2
1   1    tBodyAcc-mean()-X
2   2    tBodyAcc-mean()-Y
3   3    tBodyAcc-mean()-Z
4   4     tBodyAcc-std()-X
5   5     tBodyAcc-std()-Y
6   6     tBodyAcc-std()-Z
41 41 tGravityAcc-mean()-X
42 42 tGravityAcc-mean()-Y
43 43 tGravityAcc-mean()-Z
44 44  tGravityAcc-std()-X
```

### subjects
##### This data frame variable stores the subject ID from both the testing set and the training set:

```sh
> head(subjects)
  V1
1  2
2  2
3  2
4  2
5  2
6  2
```

### activity
##### This data frame variables stores all observations of activity (value from 1 to 6) from both testing set and training set ( from both Y_test.txt and Y_train.txt): 

```sh
> head(activity)
  V1
1  5
2  5
3  5
4  5
5  5
6  5
```

### features.test & features.train & features
##### features.test variable stores all observations of all 561 measured variables from the testing set (i.e. X_test.txt).
##### features.train stores the observations from the training set (i.e. X_train.txt). ##### features stores the combination from both features.test and features.train, and only the selected columns:

```sh
> head(features,1)
         V1          V2          V3        V4         V5         V6       V41        V42       V43        V44        V45
1 0.2571778 -0.02328523 -0.01465376 -0.938404 -0.9200908 -0.6676833 0.9364893 -0.2827192 0.1152882 -0.9254273 -0.9370141
         V46        V81       V82        V83        V84        V85        V86      V121        V122      V123       V124
1 -0.5642884 0.07204601 0.0457544 -0.1060427 -0.9066828 -0.9380164 -0.9359358 0.1199762 -0.09179234 0.1896285 -0.8830891
        V125       V126       V161       V162        V163       V164       V165       V166       V201       V202
1 -0.8161636 -0.9408812 -0.2048962 -0.1744877 -0.09338934 -0.9012242 -0.9108601 -0.9392504 -0.8669294 -0.7051911
        V214       V215       V227       V228       V240       V241       V253       V254       V266       V267       V268
1 -0.8669294 -0.7051911 -0.9297665 -0.8959942 -0.7955439 -0.7620732 -0.9251949 -0.8943436 -0.9185097 -0.9182132 -0.7890915
        V269       V270       V271       V345      V346       V347       V348       V349       V350       V424      V425
1 -0.9482903 -0.9251369 -0.6363167 -0.8996332 -0.937485 -0.9235514 -0.9244291 -0.9432104 -0.9478915 -0.8235579 -0.807916
        V426       V427      V428       V429       V503      V504       V516       V517     V529       V530       V542
1 -0.9179126 -0.9032627 -0.822677 -0.9561651 -0.7909464 -0.711074 -0.8950612 -0.8963596 -0.77061 -0.7971128 -0.8901655
        V543
1 -0.9073076
```

### allData
##### This variable stores the combination of the subject, activity and features variables:
```sh
> head(allData,1)
  Subject Activity tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z tBodyAcc-std()-X tBodyAcc-std()-Y
1       2 STANDING         0.2571778       -0.02328523       -0.01465376        -0.938404       -0.9200908
  tBodyAcc-std()-Z tGravityAcc-mean()-X tGravityAcc-mean()-Y tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y
1       -0.6676833            0.9364893           -0.2827192            0.1152882          -0.9254273          -0.9370141
  tGravityAcc-std()-Z tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X
1          -0.5642884            0.07204601             0.0457544            -0.1060427           -0.9066828
  tBodyAccJerk-std()-Y tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y tBodyGyro-mean()-Z tBodyGyro-std()-X
1           -0.9380164           -0.9359358          0.1199762        -0.09179234          0.1896285        -0.8830891
  tBodyGyro-std()-Y tBodyGyro-std()-Z tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z
1        -0.8161636        -0.9408812             -0.2048962             -0.1744877            -0.09338934
  tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z tBodyAccMag-mean() tBodyAccMag-std()
1            -0.9012242            -0.9108601            -0.9392504         -0.8669294        -0.7051911
  tGravityAccMag-mean() tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std() tBodyGyroMag-mean()
1            -0.8669294           -0.7051911             -0.9297665            -0.8959942          -0.7955439
  tBodyGyroMag-std() tBodyGyroJerkMag-mean() tBodyGyroJerkMag-std() fBodyAcc-mean()-X fBodyAcc-mean()-Y fBodyAcc-mean()-Z
1         -0.7620732              -0.9251949             -0.8943436        -0.9185097        -0.9182132        -0.7890915
  fBodyAcc-std()-X fBodyAcc-std()-Y fBodyAcc-std()-Z fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z
1       -0.9482903       -0.9251369       -0.6363167            -0.8996332             -0.937485            -0.9235514
  fBodyAccJerk-std()-X fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y fBodyGyro-mean()-Z
1           -0.9244291           -0.9432104           -0.9478915         -0.8235579          -0.807916         -0.9179126
  fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z fBodyAccMag-mean() fBodyAccMag-std() fBodyBodyAccJerkMag-mean()
1        -0.9032627         -0.822677        -0.9561651         -0.7909464         -0.711074                 -0.8950612
  fBodyBodyAccJerkMag-std() fBodyBodyGyroMag-mean() fBodyBodyGyroMag-std() fBodyBodyGyroJerkMag-mean()
1                -0.8963596                -0.77061             -0.7971128                  -0.8901655
  fBodyBodyGyroJerkMag-std()
1                 -0.9073076
```

### secondDS, finalData
##### secondDS variable stores the melt-ed version of the allData data frame.
##### finalData stores the final data data set with the mean computed for each combination of (Subject, Activity):
```sh
> head(finalData,1)
  Subject Activity tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z tBodyAcc-std()-X tBodyAcc-std()-Y
1       1   LAYING         0.2215982       -0.04051395        -0.1132036       -0.9280565       -0.8368274
  tBodyAcc-std()-Z tGravityAcc-mean()-X tGravityAcc-mean()-Y tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y
1       -0.8260614           -0.2488818            0.7055498            0.4458177            -0.89683            -0.90772
  tGravityAcc-std()-Z tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X
1          -0.8523663            0.08108653           0.003838204            0.01083424           -0.9584821
  tBodyAccJerk-std()-Y tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y tBodyGyro-mean()-Z tBodyGyro-std()-X
1           -0.9241493           -0.9548551        -0.01655309        -0.06448612          0.1486894        -0.8735439
  tBodyGyro-std()-Y tBodyGyro-std()-Z tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z
1        -0.9510904        -0.9082847             -0.1072709            -0.04151729            -0.07405012
  tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z tBodyAccMag-mean() tBodyAccMag-std()
1            -0.9186085            -0.9679072            -0.9577902         -0.8419292        -0.7951449
  tGravityAccMag-mean() tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std() tBodyGyroMag-mean()
1            -0.8419292           -0.7951449             -0.9543963            -0.9282456          -0.8747595
  tBodyGyroMag-std() tBodyGyroJerkMag-mean() tBodyGyroJerkMag-std() fBodyAcc-mean()-X fBodyAcc-mean()-Y fBodyAcc-mean()-Z
1         -0.8190102               -0.963461              -0.935841        -0.9390991        -0.8670652        -0.8826669
  fBodyAcc-std()-X fBodyAcc-std()-Y fBodyAcc-std()-Z fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z
1       -0.9244374       -0.8336256       -0.8128916            -0.9570739            -0.9224626            -0.9480609
  fBodyAccJerk-std()-X fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y fBodyGyro-mean()-Z
1           -0.9641607           -0.9322179            -0.960587         -0.8502492         -0.9521915         -0.9093027
  fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z fBodyAccMag-mean() fBodyAccMag-std() fBodyBodyAccJerkMag-mean()
1        -0.8822965         -0.951232        -0.9165825         -0.8617676        -0.7983009                 -0.9333004
  fBodyBodyAccJerkMag-std() fBodyBodyGyroMag-mean() fBodyBodyGyroMag-std() fBodyBodyGyroJerkMag-mean()
1                 -0.921804              -0.8621902             -0.8243194                  -0.9423669
  fBodyBodyGyroJerkMag-std()
1                 -0.9326607
```

