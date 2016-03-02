### Aggregation and Combining

* Understand what aggregation is
* Write queries that compute aggregated values
* Trace the execution of a query that performs aggregation
* Explain how missing data is handled during aggregation

~~~{.sql}
SELECT dated FROM Visited;
~~~

* want to calculate ranges and averages for our data
* use aggregation functions such as `min` or `max`
* each takes a set of records as input & produces single result

~~~{.sql}
SELECT min(dated) FROM Visited;
~~~

<img src="fig/sql-aggregation.svg" alt="SQL Aggregation" />

~~~{.sql}
SELECT max(dated) FROM Visited;
~~~

* others: `avg`, `count` and `sum`

~~~{.sql}
SELECT avg(reading) FROM Survey WHERE quant='sal';
~~~

~~~{.sql}
SELECT count(reading) FROM Survey WHERE quant='sal';
~~~

~~~{.sql}
SELECT sum(reading) FROM Survey WHERE quant='sal';
~~~

* we counted reading here but we could have counted `quant` or any other field
  in the table, or even used count(*)* - just counts the values.
* SQL lets us do several aggregations at once
* range of sensible salinity measurements:

~~~{.sql}
SELECT min(reading), max(reading), FROM Survey WHERE quant='sal' AND
reading<=1.0;
~~~

* we can also combine aggregate results with raw

~~~{.sql}
SELECT person, count(*) FROM Survey WHERE quant='sal' AND reading,=1.0;
~~~

* *) why does lake's name appear rather than Roerich's or dyers'
* when db aggregate a field chooses an actual value - might be 1st last etc
* what happens when there are no values to aggregate? 

~~~{.sql}
SELECT person, max(reading), sum(reading) FROM Survey WHERE quant='missing';
~~~

* aggre result is 'don't know'
* remember if we add two values and one is null, result will be null
* aggregation functions ignore the nulls (think of them being dropped)

~~~{.sql}
SELECT min(dated) FROM Visited;
~~~

* instead of having to filter explicitly

~~~{.sql}
SELECT min(dated) FROM Visited WHERE dated IS NOT NULL:
~~~

* suppose GINA suspects systematic bias in her data and some scientists'
  radiation readings are higher than others
* this will not work: 

~~~{.sql}
SELECT person, count(reading), round(avg(reading), 2)
FROM Survey
WHERE quant='rad';
~~~

* the db manager selects a single arbitrary scientist's name rather than
  aggregating separately for each scientist
* we could write a query for each scientist: 

~~~{.sql}
SELECT person, count(reading), round(avg(reading), 2)
FROM Survey
WHERE quant='rad'
AND person='dyer';
~~~

* but this would be tedious 
* we need to tell the db mgr to aggregate the hours for each scientist
  separately using `GROUP BY`

~~~{.sql}
SELECT person, count(reading), round(avg(reading), 2)
FROM Survey
WHERE quant='rad'
GROUP BY person;
~~~
* `GROUP BY` groups all the records with the same value for specified field
  together
* we can group by multiple criteria

~~~ {.sql}
SELECT   person, quant, count(reading), round(avg(reading), 2)
FROM     Survey
GROUP BY person, quant;
~~~

* lets remove the entries where we don't know who took the measures 

~~~ {.sql}
SELECT   person, quant, count(reading), round(avg(reading), 2)
FROM     Survey
WHERE    person IS NOT NULL
GROUP BY person, quant
ORDER BY person, quant;
~~~

Looking more closely,
this query:

1.  selected records from the `Survey` table
    where the `person` field was not null;

2.  grouped those records into subsets
    so that the `person` and `quant` values in each subset
    were the same;

3.  ordered those subsets first by `person`,
    and then within each sub-group by `quant`;
    and

4.  counted the number of records in each subset,
    calculated the average `reading` in each,
    and chose a `person` and `quant` value from each
    (it doesn't matter which ones,
    since they're all equal).

> ## Counting Temperature Readings {.challenge}
>
> How many temperature readings did Frank Pabodie record,
> and what was their average value?

> ## Averaging with NULL {.challenge}
>
> The average of a set of values is the sum of the values
> divided by the number of values.
> Does this mean that the `avg` function returns 2.0 or 3.0
> when given the values 1.0, `null`, and 5.0?

> ## What Does This Query Do? {.challenge}
>
> We want to calculate the difference between
> each individual radiation reading
> and the average of all the radiation readings.
> We write the query:
>
> ~~~ {.sql}
> SELECT reading - avg(reading) FROM Survey WHERE quant='rad';
> ~~~
>
> What does this actually produce, and why?

> ## Ordering When Concatenating {.challenge}
>
> The function `group_concat(field, separator)`
> concatenates all the values in a field
> using the specified separator character
> (or ',' if the separator isn't specified).
> Use this to produce a one-line list of scientists' names,
> such as:
>
> ~~~ {.sql}
> William Dyer, Frank Pabodie, Anderson Lake, Valentina Roerich, Frank Danforth
> ~~~
>
> Can you find a way to order the list by surname?`


### Combining data

In order to submit her data to a web site that aggregates historical meteorological data, Gina needs to format it as **latitude**, **longitude**, **date**, **quantity**, and **reading**. However, her latitudes and longitudes are in the Site table, while the dates of measurements are in the Visited table and the readings themselves are in the Survey table. She needs to combine these tables somehow.

* we use the SQL command JOIN for this

~~~{.sql}
SELECT * FROM Site JOIN Visited;
~~~

* `JOIN` creates the cross product of two tables 
  * Joins each record of one table with each record of the other table to give all possible combos
* 3 records in `Site` and 8 in `Visited` the join's output has 24 records (3*8=24)
* each table has 3 cols so 6 fields are returned
* JOIN doesn't figure out if the records are related - have to tell SQLITE how to combine
* Have to add clause telling we're only interested in combos that have same site name

~~~{.sql}
SElECT * FROM Site Join Visited On Site.name=Visited.site;
~~~

* `ON` similar to `WHERE` - can use interchangeably 
* Once we add this to our query, the database manager throws away records that combined information about the two different sites 
* Notice we use `Table.field` to specify names in the output of the join
* do this b/c tables can have fields with same name
* we can now use same dotted notation to select the three columns we actually want in our task 

~~~{.sql}
SELECT Site.lat, Site.long, Visited.dated
FROM   Site JOIN Visited
ON     Site.name=Visited.site;
~~~

* we can join multiple tables
* by adding more JOIN clauses

~~~{.sql}
SELECT Site.lat, Site.long, Visited.dated, Survey.quant Survey.reading
FROM Site
JOIN Visited ON Site.name=Visited.site
JOIN Survey ON Visited.ident=Survey.taken
WHERE Visited.dated IS NOT NULL;
~~~

* We can tell which records from `Site`, `Visited`, and `Survey` correspond to each other b/c those tables contain primary keys and foreign keys
*`primary key` is a value (or combination of values) that uniquely identifies  each record in a table
* `foreign key` is a value (or combination of values) from one table that identifies a unique record in another table
* E.g. Person.ident is the primary key in the Person table, while Survey.person is the foreign key relating the survey table's entries to entreis in Person


> ## Listing Radiation Readings {.challenge}
>
> Write a query that lists all radiation readings from the DR-1 site.

> ## Where's Frank? {.challenge}
>
> Write a query that lists all sites visited by people named "Frank".

> ## Reading Queries {.challenge}
>
> Describe in your own words what the following query produces:
>
> ~~~ {.sql}
> SELECT Site.name FROM Site JOIN Visited
> ON Site.lat<-49.0 AND Site.name=Visited.site AND Visited.dated>='1932-01-01';
> ~~~

> ## Who has been where? {.challenge}
>
> Write a query that shows each site with exact location (lat, long) ordered by visited date,
> followed by personal name and family name of the person who visited the site
> and the type of measurement taken and its reading. Please avoid all null values.
> Tip: you should get 15 records with 8 fields.

[OUTER]: http://en.wikipedia.org/wiki/Join_%28SQL%29#Outer_join
[rowid]: https://www.sqlite.org/lang_createtable.html#rowid

