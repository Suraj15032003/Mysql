Use covid19;

#5. Average number of deaths by day (Continents and Countries)
#deaths by day Countries
SELECT 
    `Country/Region`,
    COUNT(DISTINCT `Date`) AS Days_With_Deaths,
    SUM(`New deaths`) AS Total_New_Deaths,
    CASE 
        WHEN COUNT(DISTINCT `Date`) > 0 THEN SUM(`New deaths`) / COUNT(DISTINCT `Date`)
        ELSE 0
    END AS Average_Daily_Deaths
FROM 
    full_grouped
WHERE 
    `New deaths` IS NOT NULL
    AND `New deaths` > 0
GROUP BY 
    `Country/Region`
HAVING 
    SUM(`New deaths`) > 0
ORDER BY 
    Average_Daily_Deaths DESC
LIMIT 15;


### deaths by day Continents

SELECT 
    `WHO Region` AS Continent,
    COUNT(DISTINCT `Date`) AS Days_With_Deaths,
    SUM(`New deaths`) AS Total_New_Deaths,
    CASE 
        WHEN COUNT(DISTINCT `Date`) > 0 THEN SUM(`New deaths`) / COUNT(DISTINCT `Date`)
        ELSE 0
    END AS Average_Daily_Deaths
FROM 
    full_grouped
WHERE 
    `New deaths` IS NOT NULL
    AND `New deaths` > 0
GROUP BY 
    `WHO Region`
HAVING 
    SUM(`New deaths`) > 0
ORDER BY 
    Average_Daily_Deaths DESC
LIMIT 5;