Use covid19;

#4. To find out the countries and continents with the highest death counts

##countries
SELECT 
    `Country/Region`,
    SUM(`Deaths`) AS Death_Count
FROM 
    full_grouped
WHERE 
    `Date` = (SELECT MAX(`Date`) FROM full_grouped)
    AND `Deaths` IS NOT NULL
GROUP BY 
    `Country/Region`
HAVING 
    SUM(`Deaths`) > 0
ORDER BY 
    Death_Count DESC
LIMIT 10;

##continents
SELECT 
    `WHO Region` AS Continent,
    SUM(`Deaths`) AS Death_Count
FROM 
    full_grouped
WHERE 
    `Date` = (SELECT MAX(`Date`) FROM full_grouped)
    AND `Deaths` IS NOT NULL
GROUP BY 
    `WHO Region`
HAVING 
    SUM(`Deaths`) > 0
ORDER BY 
    Death_Count DESC
LIMIT 5;
