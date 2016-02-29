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
* we can group by multiple critera

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
