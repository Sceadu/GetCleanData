# Introduction of the Variables
## Base Variables
### `subject`
- Subject ID: from 1 to 30

### `activity`
- Activity Types:<br />
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTINGS
5. TANDING
6. LAYING

## Outcome Variables
The outcome variable names consisted of the following affixes.
### Prefix 
#### `Frequency`: frequency domain signal, modified from the original prefix `f`
#### `Time`: time domain signal, modified from the original prefix `t`

### Infix
#### `Accelerometer`: linear acceleration data measured using accelerometer, modified from the original infix `Acc`
#### `Gyroscope`: angular velocity data measured using gyroscope, modified from the original infix `Gyro`
#### `Body`: body signals
#### `Gravity`: gravity signals
#### `Jerk`: the derivative of acceleration with respect to time
#### `Magnitude`: signal magnitude, modified from the original infix `Mag`

### Suffix
#### `Mean`: mean, modified from the original suffix `mean()`
#### `SD`: standard deviation, modified from the original suffix `std()`
#### `-XYZ`: 3-axial signals in the X, Y and Z directions

### Examples
- `TimeGravityAccelerometerMean-X`: mean of the gravity linear acceleration of time domain signal in the X direction
- `FrequenceBodyGyroscopeSD-Y`: standard deviation of the body angular velocity of frequency domain signal in the Y direction

### Original Feature Info
#### Feature Selection
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:<br />  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ<br />
tGravityAcc-XYZ<br />
tBodyAccJerk-XYZ<br />
tBodyGyro-XYZ<br />
tBodyGyroJerk-XYZ<br />
tBodyAccMag<br />
tGravityAccMag<br />
tBodyAccJerkMag<br />
tBodyGyroMag<br />
tBodyGyroJerkMag<br />
fBodyAcc-XYZ<br />
fBodyAccJerk-XYZ<br />
fBodyGyro-XYZ<br />
fBodyAccMag<br />
fBodyAccJerkMag<br />
fBodyGyroMag<br />
fBodyGyroJerkMag<br />

The set of variables that were estimated from these signals are:<br />
mean(): Mean value<br />
std(): Standard deviation<br />
mad(): Median absolute deviation<br />
max(): Largest value in array<br />
min(): Smallest value in array<br />
sma(): Signal magnitude area<br />
energy(): Energy measure. Sum of the squares divided by the number of values.<br />
iqr(): Interquartile range<br />
entropy(): Signal entropy<br />
arCoeff(): Autorregresion coefficients with Burg order equal to 4<br />
correlation(): correlation coefficient between two signals<br />
maxInds(): index of the frequency component with largest magnitude<br />
meanFreq(): Weighted average of the frequency components to obtain a mean frequency<br />
skewness(): skewness of the frequency domain signal<br /> 
kurtosis(): kurtosis of the frequency domain signal<br /> 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.<br />
angle(): Angle between to vectors.<br />

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:<br />
gravityMean<br />
tBodyAccMean<br />
tBodyAccJerkMean<br />
tBodyGyroMean<br />
tBodyGyroJerkMean<br />
