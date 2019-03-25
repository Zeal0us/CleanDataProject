Data was gathered by accelerometer and gyroscope while subjects were performing various activities.

Time domain (starts with time.domain) data comes from accelerometer (body and gravity components) and gyroscope signals, split into X, Y, and Z axes, and magnitude.  Data pertaining to a specific axis ends with that component (i.e. time.domain.body.accelerometer.mean.x ends with x)

A Fast Fourier Transform was applied to some of the signals to produce the frequency domain data (which starts with frequency.domain)

30 subjects were used for this data, and each is identified by the number in the subject variable

In the exported summary (subject/activity.name is grouped together and each sample is averaged to produce a summarized row), summary is prepended to each variable name - i.e. summary.time.domain.body.accelerometer.mean.x

subject - Subject performing the activity during the sample - 1 to 30 

activity.name - describes the activity being performed by the subjct when the data was taken

+ Time Domain Data
    + Body
        + Accelerometer
            + Raw
                + Mean
                    - time.domain.body.accelerometer.mean.x
                    - time.domain.body.accelerometer.mean.y
                    - time.domain.body.accelerometer.mean.z
                + Standard Deviation
                    - time.domain.body.accelerometer.std.x
                    - time.domain.body.accelerometer.std.y
                    - time.domain.body.accelerometer.std.z
                + Magnitude
                    + Mean
                        - time.domain.body.accelerometer.magnitude.mean
                    + Standard Deviation
                        - time.domain.body.accelerometer.magnitude.std
            + Jerk
                + Mean
                    - time.domain.body.accelerometer.jerk.mean.x
                    - time.domain.body.accelerometer.jerk.mean.y
                    - time.domain.body.accelerometer.jerk.mean.z
                + Standard Deviation
                    - time.domain.body.accelerometer.jerk.std.x
                    - time.domain.body.accelerometer.jerk.std.y
                    - time.domain.body.accelerometer.jerk.std.z
        + Gyroscope
            + Raw
                + Mean
                    - time.domain.body.gyroscope.mean.x
                    - time.domain.body.gyroscope.mean.y
                    - time.domain.body.gyroscope.mean.z
                + Standard Deviation
                    - time.domain.body.gyroscope.std.x
                    - time.domain.body.gyroscope.std.y
                    - time.domain.body.gyroscope.std.z
                + Magnitude
                    + Mean
                        - time.domain.body.gyroscope.magnitude.mean
                    + Standard Deviation
                        - time.domain.body.gyroscope.magnitude.std
            + Jerk
                + Mean
                    - time.domain.body.gyroscope.jerk.mean.x
                    - time.domain.body.gyroscope.jerk.mean.y
                    - time.domain.body.gyroscope.jerk.mean.z
                + Standard Deviation
                    - time.domain.body.gyroscope.jerk.std.x
                    - time.domain.body.gyroscope.jerk.std.y
                    - time.domain.body.gyroscope.jerk.std.z
                + Magnitude
                    + Mean
                        - time.domain.body.gyroscope.jerk.magnitude.mean
                    + Standard Deviation
                        - time.domain.body.gyroscope.jerk.magnitude.std
    + Gravity
        + Accelerometer
            + Raw 
                + Mean
                    - time.domain.gravity.accelerometer.mean.x
                    - time.domain.gravity.accelerometer.mean.y
                    - time.domain.gravity.accelerometer.mean.z
                + Standard Deviation
                    - time.domain.gravity.accelerometer.std.x
                    - time.domain.gravity.accelerometer.std.y
                    - time.domain.gravity.accelerometer.std.z
            + Jerk
                + Mean
                    - time.domain.body.accelerometer.jerk.magnitude.mean
                + Standard Deviation
                    - time.domain.body.accelerometer.jerk.magnitude.std
            + Magnitude
                + Mean
                    - time.domain.gravity.accelerometer.magnitude.mean
                + Standard Deviation
                    - time.domain.gravity.accelerometer.magnitude.std
+ Frequency Domain Data
    + Body
        + Accelerometer
            + Mean
                - frequency.domain.body.accelerometer.mean.x
                - frequency.domain.body.accelerometer.mean.y
                - frequency.domain.body.accelerometer.mean.z
            + Standard Deviation
                - frequency.domain.body.accelerometer.std.x
                - frequency.domain.body.accelerometer.std.y
                - frequency.domain.body.accelerometer.std.z
            + Magnitude
                + Mean
                    - frequency.domain.body.accelerometer.magnitude.mean
                + Standard Deviation
                    - frequency.domain.body.accelerometer.magnitude.std
            + Jerk
                + Mean
                    - frequency.domain.body.accelerometer.jerk.mean.x
                    - frequency.domain.body.accelerometer.jerk.mean.y
                    - frequency.domain.body.accelerometer.jerk.mean.z
                + Standard Deviation
                    - frequency.domain.body.accelerometer.jerk.std.x
                    - frequency.domain.body.accelerometer.jerk.std.y
                    - frequency.domain.body.accelerometer.jerk.std.z
                + Magnitude
                    + Mean
                        - frequency.domain.body.accelerometer.jerk.magnitude.mean
                    + Standard Deviation
                        - frequency.domain.body.accelerometer.jerk.magnitude.std
        + Gyroscope
            + Raw
                + Mean
                    - frequency.domain.body.gyroscope.mean.x
                    - frequency.domain.body.gyroscope.mean.y
                    - frequency.domain.body.gyroscope.mean.z
                + Standard Deviation
                    - frequency.domain.body.gyroscope.std.x
                    - frequency.domain.body.gyroscope.std.y
                    - frequency.domain.body.gyroscope.std.z
                + Magnitude
                    + Mean
                        - frequency.domain.body.gyroscope.magnitude.mean
                    + Standard Deviation
                        - frequency.domain.body.gyroscope.magnitude.std
            + Jerk
                + Magnitude
                    + Mean
                        - frequency.domain.body.gyroscope.jerk.magnitude.mean
                    + Standard Deviation
                        - frequency.domain.body.gyroscope.jerk.magnitude.std













