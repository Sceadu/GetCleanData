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
#### `Frequency`: frequency domain signal
#### `Time`: time domain signal

### Infix
#### `Accelerometer`: linear acceleration data measured using accelerometer
#### `Gyroscope`: angular velocity data measured using gyroscope
#### `Body`: body signals 
#### `Gravity`: gravity signals
#### `Jerk`: the derivative of acceleration with respect to time
#### `Magnitude`: signal magnitude

### Suffix
#### `Mean`: mean
#### `SD`: standard deviation
#### `-XYZ`: 3-axial signals in the X, Y and Z directions

### Examples
- `TimeGravityAccelerometerMean-X`: mean of the gravity linear acceleration of time domain signal in the X direction
- `FrequenceBodyGyroscopeSD-Y`: standard deviation of the body angular velocity of frequency domain signal in the Y direction
