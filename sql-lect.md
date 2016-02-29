> ## Learning Objectives {.objectives}
>
> *   Explain the difference between a table, a record, and a field.
> *   Explain the difference between a database and a database manager.
> *   Write a query to select all values for specific fields from a single table.

* Relational database is a way to store and manipulate information
* Arranged in tables
* They have columns (fileds) that describe data & rows (records) that contain
  data
* we send queries to a db manager -- a program that manipulates the database
  * dbmanager does lookups and calcs 
* queries are written in SQL (structured query language) 

### Running sqlite 

> $ cd /path/to/survey/data
> $ sqlite3 survey.db

* sqlite command `sqlite3` opens the database `survey.db`
* to exit sqlite use `.exit` or `.quit` - `Ctr-D` can work in some contexts
* use `.help` for other `.` commands

### Inspect the database

* let's set some options first 
* `.mode` selects output mode (csv,ascii, html, etc.)
* `.header` on or off will show feild names 

> ~~~{.sqlite}
> .tables
> ~~~

> ~~~{.sqlite}
> .mode column
> .header on
> ~~~

* sql query that displays scientists' names
* `SELECT` command to get columns 
* `FROM` the table 

~~~ {.sql}
SELECT family, personal FROM Person;
~~~
* `;` at end tells database manager the query is finished
* note SQL is case insensitive - meaning we can do this:

~~~ {.sql}
SeLeCt FaMiLy, PeRsoNaL FrOm PeRsOn;
~~~

* you can use this to your advantage for readability
* I'll be using the convention of commands in ALLCAPS to distinguish from tables
  and columns

~~~{.sql}
SELECT * FROM Person
...>
...>
~~~

* what happens if you don't conclude the statement with a `;`
* sqlite prompt waiting for additional commands or for a closing `;`
* just type `;`'
* IMPORTANT to understand that the rows and columns in a database aren't
  actually in any particular order
* we can control the output that in various ways 

~~~{.sql}
SELECT personal, family FROM Person;
~~~

* we could swap columns in the output from our first query
* or repeat columns like below:

~~~{.sql}
SELECT ident, ident, ident FROM Person;
~~~

* as a shortcut we can select all columns in a table using `*`:

~~~{.sql}
SELECT * FROM Person;
~~~

> ### Challenge 
> Write a query that selects only site names from the `Site` table.

~~~{.sql}
SELECT name FROM Site;
~~~

> ## Query Style {.challenge}
>
> Many people format queries as:
>
> ~~~
> SELECT personal, family FROM person;
> ~~~
>
> or as:
>
> ~~~
> select Personal, Family from PERSON;
> ~~~
>
> What style do you find easiest to read, and why?

### Sorting and Removing Duplicates

* Write queries that display results in a particular order
* Write queries that eliminate duplicate values from data

In beginning our examination of the Antarctic data, we want to know:

* what kind of quantity measurements were taken at each site; 
* which scientists took measurements on the expedition;
* the sites where each scientist took measurements

* let's look at the `Survey` table 
* data can be redundant, so queries return redundant information
* EX: 

~~~{.sql}
SELECT quant FROM Survey;
~~~

* the results make it difficult to see the diff types of `quant` in Survey
* let's use `DISTINCT` to eliminate redundant output 

~~~{.sql}
SELECT DISTINCT quant FROM Survey;
~~~

* if we want to see what sites have what `quant` measures, we can use DISTINCT
  command on multiple columns
* distinct pairs are returned

~~~{.sql}
SELECT DISTINCT taken, quant FROM Survey;
~~~

* notice that duplicates are removed even if the rows aren't ajacent in the db
  tables

**Sorting**

* identify scientists on the expedition by looking in Person
* records aren't stored in a particular order, not sorted
* even if they were we might want to sort in diff way

~~~{.sql}
SELECT * FROM Person ORDER BY ident;
~~~

* by default results are ascending order
* use DESC to change

~~~{.sql}
SELECT * FROM Person ORDER BY ident DESC;
~~~

* look at which scientist measured quantities at each site, survey table
* we can sort several fields at once
* sort by taken, then desc by person within each group of equal taken vals

~~~{.sql}
SELECT taken, person, quant FROM Survey ORDER BY taken ASC, person DESC;
~~~

* gives us a good idea of which scientist was at which site and their
  measurements
* looking at results, seems like some scientists specialized in certain quant
* examine which scientists by selecting the appropriate columns and removing
  dups

~~~{.sql}
SELECT DISTINCT quant, person FROM Survey ORDER BY quant ASC;
~~~

stinct Dates {.challenge}
>
> Write a query that selects distinct dates from the `Visited` table.

> ## Displaying Full Names {.challenge}
>
> Write a query that displays the full names of the scientists in the `Person`
> table,
> ordered by family name.

**Filtering**

* Write queries that select records that satisfy user-specified conditions
* Explain the oder in which the clauses in a query are executed

* filter to select only records that match certain criteria
* see when a particular site was visited 
* use WHERE clause to select records from `Visited` table

~~~{.sql}
SELECT * FROM Visited WHERE site='DR-1';
~~~

DB manager executes in 2 stages:

1. checks at each row in `Visited` table to see what satisfies the `WHERE`
2. then uses the column names in `SELECT` to determine what to display

This means we can filter records using `WHERE` based on values that won't be
displayed.

~~~{.sql}
SELECT ident FROM Visited WHERE site='DR-1';
~~~

<img src="fig/sql-filter.svg" alt="SQL Filtering in Action" />

* we can use Boolean operators to filter data
* e.g. all information from DR-1 collected prior to 1930:

~~~{.sql}
SELECT * FROM Visited WHERE site='DR-1' AND dated<'1930-01-01';
~~~

**Date Types**

* most DB managers have special data for date types
* most have 2: one for dates "May 31, 1971" & durations '31 days'
* SQLITE doesn't - it stores dates as text ISO-8601 format
* the number of seconds since Nov. 24, 4714 BCE
* or integers - num seconds since Jan. 1, 1970
* complicated but dates are inherently complicated 

* find out what measures are taken by lake or Roerich
* use OR

~~~{.sql}
SELECT * FROM Survey WHERE person='lake' OR person='roe';
~~~

* we can also use `IN ('lake', 'roe');`

~~~{.sql}
SELECT * FROM Survey WHERE person IN ('lake', 'roe');
~~~

* we can combine `AND` or `OR`, but need to be careful of order or operations

~~~{.sql}
SELECT * FROM Survey WHERE quant='sal' AND person='lake' OR person='roe';
~~~

* above is salinity measurements by lake, and any measurement by Roerich
* instead:

~~~{.sql}
SELECT * FROM Survey WHERE quant='sal' AND (person='lake' or person='roe);
~~~

* partial match filters
* sites that begin with "DR" use `LIKE`
* `%` acts as wildcard

~~~{.sql}
SELECT * FROM Visited WHERE site LIKE 'DR%';
~~~

* finally use `DISTINCT` with `WHERE` to give second level filtering

~~~{.sql}
SELECT DISTINCT person, quant FROM Survey WHERE person='lake' OR person='roe';
~~~

* remember `DISTINCT` is applied to values in the chosen columns, not to the
  entire rows as they are being processed
* above example of growing SQL queries, start something simple and add more
  clauses one by one 
* good strategy for complex queries 
* quick turnaround - get subset of data in temp dataset, pull out sample dbs for
  working out queries 


> ## Fix This Query {.challenge}
>
> Suppose we want to select all sites that lie more than 30 degrees from the poles.
> Our first query is:
>
> ~~~ {.sql}
> SELECT * FROM Site WHERE (lat > -60) OR (lat < 60);
> ~~~
>
> Explain why this is wrong,
> and rewrite the query so that it is correct.

> ## Finding Outliers {.challenge}
>
> Normalized salinity readings are supposed to be between 0.0 and 1.0.
> Write a query that selects all records from `Survey`
> with salinity values outside this range.

> ## Matching Patterns {.challenge}
>
> Which of these expressions are true?
>
> * `'a' LIKE 'a'`
> * `'a' LIKE '%a'`
> * `'beta' LIKE '%a'`
> * `'alpha' LIKE 'a%%'`
> * `'alpha' LIKE 'a%p%'`

### Calculations

* say we want to correct a measure - for instance the raditaion measure --
  upwards
* we can perform calc on fly

~~~{.sql}
SELECT 1.05 * reading FROM Survey WHERE quant='rad';
~~~

* works for other arithmetic operators and functions
* let's convert temperature readings from Fahrenheit to Celsius

~~~{.sql}
SELECT taken, round(5*(reading-32)/9, 2) FROM Survey WHERE quant='temp';
~~~

* we can also combine values from different fields, using string concatenation
  operator `||`:

~~~{.sql}
SELECT personal || ' ' || family FROM Person;
~~~

**Null** 

* how dbs represent missing values 
* 3 valued logica databases use when manipulating missing information
* write queries that handle missing info correctly

* real data is nver complete 
* Databases represent missing data by using a special value called `null`
* `null` isn't:
  * zero 
  * `False`
  * or empty string
* Null is a one-of-a-kind value that means "nothing here"
* let's deal with some nulls!

* check out the visited table

~~~{.sql}
SELECT * FROM Visited;
~~~

* #752 has null for dated
* null doesn't behave like other values:

~~~{.sql}
SELECT * FROM Visited WHERE dated<'1930-01-01';
~~~

* two results
* now let's select the ones that come after 1930:

~~~{.sql}
SELECT * FROM Visited WHERE dated>='1930-01-01';
~~~

* we get five and record #752 isn't in the results 
* this is b/c `null<'1930-01-01'` is neither True or False
* null means "we don't know"
* `null>='1930-01-01' also null
* evaluates to null so not in results

Comparisons aren't the only operations like this.

`1+null` is `null`
`5*null` is `null`
`log(null)` is `null`

~~~{.sql}
SELECT * FROM Visited WHERE dated=NULL;
~~~

* produces no results, comparing things to null produces null

~~~{.sql}
SELECT * FROM Visited WHERE dated!=NULL;
~~~

* to check whether a value is `null` or not we use `IS NULL`:

~~~{.sql}
SELECT * FROM Visited WHERE dated IS NULL;
~~~

* or inverse

~~~{.sql}
SELECT * FROM Visited WHERE dated IS NOT NULL:
~~~

* null values can be a pain
* example: find all the salinity measures that weren't taken by Lake.

~~~{.sql}
SELECT * FROM Survey WHERE quant='sal' AND person!='lake';
~~~

* omits records where we don't know who took the measure (are `NULL`)
* if we want to keep these records we need to check:

~~~{.sql}
SELECT * FROM Survey WHERE quant='sal' AND (person!='lake' OR person IS NULL);
~~~

> ## Sorting by Known Date {.challenge}
>
> Write a query that sorts the records in `Visited` by date,
> omitting entries for which the date is not known
> (i.e., is null).

> ## NULL in a Set {.challenge}
>
> What do you expect the query:
>
> ~~~ {.sql}
> SELECT * FROM Visited WHERE dated IN ('1927-02-08', NULL);
> ~~~
>
> to produce?
> What does it actually produce?

> ## Pros and Cons of Sentinels {.challenge}
>
> Some database designers prefer to use
> a [sentinel value](reference.html#sentinel-value))
> to mark missing data rather than `null`.
> For example,
> they will use the date "0000-00-00" to mark a missing date,
> or -1.0 to mark a missing salinity or radiation reading
> (since actual readings cannot be negative).
> What does this simplify?
> What burdens or risks does it introduce?

