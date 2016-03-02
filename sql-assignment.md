# SQL Assignment - GPS Data 101

For this assignment you will write SQL queries against the survey.db database (found here: [http://swcarpentry.github.io/sql-novice-survey/sql-novice-survey-data.zip](http://swcarpentry.github.io/sql-novice-survey/sql-novice-survey-data.zip)) we used in the class. As a reminder, the database contains the following tables: 

 **Person**: people who took readings.

 |ident   |personal |family
 |--------|---------|----------
 |dyer    |William  |Dyer
 |pb      |Frank    |Pabodie
 |lake    |Anderson |Lake
 |roe     |Valentina|Roerich
 |danforth|Frank    |Danforth

 **Site**: locations where readings were taken.

 |name |lat   |long   |
 |-----|------|-------|
 |DR-1 |-49.85|-128.57|
 |DR-3 |-47.15|-126.72|
 |MSK-4|-48.87|-123.4 |

 **Visited**: when readings were taken at specific sites.

 |ident|site |dated     |
 |-----|-----|----------|
 |619  |DR-1 |1927-02-08|
 |622  |DR-1 |1927-02-10|
 |734  |DR-3 |1930-01-07|
 |735  |DR-3 |1930-01-12|
 |751  |DR-3 |1930-02-26|
 |752  |DR-3 |-null-    |
 |837  |MSK-4|1932-01-14|
 |844  |DR-1 |1932-03-22|

 **Survey**: the actual readings.

 |taken|person|quant|reading|
 |-----|------|-----|-------|
 |619  |dyer  |rad  |9.82   |
 |619  |dyer  |sal  |0.13   |
 |622  |dyer  |rad  |7.8    |
 |622  |dyer  |sal  |0.09   |
 |734  |pb    |rad  |8.41   |
 |734  |lake  |sal  |0.05   |
 |734  |pb    |temp |-21.5  |
 |735  |pb    |rad  |7.22   |
 |735  |-null-|sal  |0.06   |
 |735  |-null-|temp |-26.0  |
 |751  |pb    |rad  |4.35   |
 |751  |pb    |temp |-18.5  |
 |751  |lake  |sal  |0.1    |
 |752  |lake  |rad  |2.19   |
 |752  |lake  |sal  |0.09   |
 |752  |lake  |temp |-16.0  |
 |752  |roe   |sal  |41.6   |
 |837  |lake  |rad  |1.46   |
 |837  |lake  |sal  |0.21   |
 |837  |roe   |sal  |22.5   |
 |844  |roe   |rad  |11.25  |

## Instructions

1. Download  the file entitled *[yourID.sql](http://ucsdlib.github.io/win2016-gps-dm101/yourID.sql)*. 
2. Rename the file to include your ID, so it will look like a12345678.sql. 
3 The file contains the following questions commented out (`/* */` and `--` are comments in SQL).  Write your queries in the blank lines between the questions. 
4. Do not uncomment the questions. 
5. After you have finished, email your file to: 

challenges.gps.programming.ta@gmail.com


## 1. Finding Outliers {.challenge}

Normalized salinity readings are supposed to be between 0.0 and 1.0. Write a query that selects all records from `Survey`
with salinity values outside this range.


## 2. Sorting by Known Date {.challenge}

Write a query that sorts the records in `Visited` by date,
omitting entries for which the date is not known
(i.e., is null).


## 3 Counting Temperature Readings {.challenge}

How many temperature readings did Frank Pabodie record,
and what was their average value?

## 4 Averaging with NULL {.challenge}

The average of a set of values is the sum of the values
divided by the number of values.
Does this mean that the `avg` function returns 2.0 or 3.0
when given the values 1.0, `null`, and 5.0?


## 5 Listing Radiation Readings {.challenge}

Write a query that lists all radiation readings from the DR-1 site.

## Turning in your work: 

Save your SQL file as yourID.sql and email it as an attachment to: 

challenges.gps.programming.ta@gmail.com




