Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns. Do not include continents without cities in your output. 

select country.continent,floor(avg(city.population)) 
from country , city 
where (city.countrycode=country.code)
group by COUNTRY.continent;


