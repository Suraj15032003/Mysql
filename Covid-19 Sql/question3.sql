Use covid19;

#3. To find out the countries with the highest infection rates also don with joins

SELECT 
    `Continent`,
    SUM(`TotalCases`) AS Total_Confirmed,
    SUM(`Population`) AS Total_Population,
    (SUM(`TotalCases`) / SUM(`Population`)) * 100 AS Infection_Rate_Percentage,
    (SUM(`TotalCases`) / SUM(`Population`) * 1000000) AS Tot_Cases_Per_Million
FROM 
    worldmeter_data
WHERE 
    `Population` > 0
    AND `TotalCases` IS NOT NULL
GROUP BY 
    `Continent`
HAVING 
    SUM(`Population`) > 0
ORDER BY 
    Infection_Rate_Percentage DESC;
    
    
    
USE covid19;

SELECT w.`Country/Region` AS Country, 
       (c.Confirmed / w.Population) * 100 AS InfectionRate
FROM country_wise_latest c
JOIN worldmeter_data w ON c.`Country/Region` = w.`Country/Region`
WHERE w.Population > 0
ORDER BY InfectionRate DESC
LIMIT 20;