---
title: "ReadMe"
author: "Ash Thompson"
date: "9 Sep 2020"
output: html_document
---

# Getting and Cleaning Data - Assignment

## Contents

- Readme.md 
This readme file.

- codebook.md
Codebook file describing the data.

- run_analysis.R
The R code to both download the data and format it into tidy data.


- tidydata.txt
The final tidy dataset, which is produced by the run_analysis code


## Description of analysis
Running the run_analysis.R file will do the following:

1. The data is downloaded into a new created folder called data, and unzipped.
2. The Test(X, Y, Subject), Training(X, Y, Subject), Features and Activity files are all read into seperate data frames.
3. As there was a typo in the activity names, it is fixed in this step (BodyBody replaced with Body in a few instances)
4. The Test and Training data sets are merged.
5. An extract is created with only the measurements on the mean and standard deviation for each measurement.
6. A new column is added to describe the activity.
7. The variables are all labelled based on the labels from features file.
8. The Activity, Subject and Extract data is all merged.
9. The data is grouped by Subject and Activity, then summarised to create averages, this is now the tidy data set.
10. The tidy data set is written to a file called tidydata.txt.




