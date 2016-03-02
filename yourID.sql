/*Note: Use a coding text editor to complete this assignment, word 
processors will do weird things with the markup. Try one of the 
following:

* Sublime Text 3 https://www.sublimetext.com/3
* Text mate https://macromates.com/download
/* 

/*
> ## 1. Finding Outliers {.challenge}
>
> Normalized salinity readings are supposed to be between 0.0 and 1.0.
> Write a query that selects all records from `Survey`
> with salinity values outside this range.
*/
-- Write your query for #1 here:

SELECT * FROM Visited;

/*
> ## 2. Sorting by Known Date {.challenge}
>
> Write a query that sorts the records in `Visited` by date,
> omitting entries for which the date is not known
> (i.e., is null).
*/
-- Write your query for #2 here:



/*
> ## 3 Counting Temperature Readings {.challenge}
>
> How many temperature readings did Frank Pabodie record,
> and what was their average value?
*/
-- Write your query for #3 here:



/*
> ## 4 Averaging with NULL {.challenge}
>
> The average of a set of values is the sum of the values
> divided by the number of values.
> Does this mean that the `avg` function returns 2.0 or 3.0
> when given the values 1.0, `null`, and 5.0?
*/
-- Write your query for #4 here:


/*
> ## 5 Listing Radiation Readings {.challenge}
>
> Write a query that lists all radiation readings from the DR-1 site.
*/
-- Write your query for #5 here:



-- Once done, attach and email your work to:
-- challenges.gps.programming.ta@gmail.com

