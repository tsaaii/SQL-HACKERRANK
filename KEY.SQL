Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT * FROM CITY
WHERE COUNTRYCODE='JPN';

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT NAME FROM CITY
WHERE COUNTRYCODE='JPN';


Query a list of CITY and STATE from the STATION table.

SELECT CITY,STATE FROM STATION;


Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.

Select distinct(city) from station where (id % 2)=0 order by city desc;

Let  be the number of CITY entries in STATION, and let  be the number of distinct CITY names in STATION; query the value of  from STATION. In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.


select count(city)- count(distinct city) from station;


Querying max and min length of cities by name

Select distinct(city), (length(city)) from st order by length(city) asc limit 1;
Select distinct(city), (length(city)) from st order by length(city) desc limit 1;


Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

select distinct(city)
from station
where city REGEXP'^[aeiou].*';

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

select distinct(city)
from station
where city REGEXP'[aeiou]$';

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.\
select distinct(city)
from station
where city REGEXP'^[aeiou].*[aeiou]$';

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

select distinct(city)
from station
where city REGEXP'^[^aeiou]';

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

select distinct(city)
from station
where city REGEXP'[^aeiou]$';

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

select distinct(city)
from station
where city REGEXP'^[^aeiou]| [^aeiou]$';

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

select distinct(city)
from station
where city REGEXP'^[^aeiou].*[^aeiou]$';



Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT (name)
FROM students
where marks > 75
ORDER BY substring(name,-3) asc id;


Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

select name from employee order by name asc;



Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.


select name from employee
where salary >2000 and months<10 order by employee_id asc;






