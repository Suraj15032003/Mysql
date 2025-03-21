Use covid19;

#1. To find out the death percentage locally and globally
#################

SELECT 
    (SUM(`TotalDeaths`) / SUM(`TotalCases`)) * 100 AS Global_Death_Percentage
FROM 
    worldmeter_data
WHERE 
    `TotalCases` > 0
HAVING 
    SUM(`TotalCases`) > 0;
SELECT 
    `Country/Region`,
    `TotalCases` AS Confirmed,
    `TotalDeaths` AS Deaths,
    (`TotalDeaths` / `TotalCases`) * 100 AS Local_Death_Percentage
FROM 
    worldmeter_data
WHERE 
    `TotalCases` > 0
ORDER BY 
    Local_Death_Percentage DESC;
    
##
SELECT 
    `WHO Region` AS Continent,
    SUM(`Confirmed`) AS Total_Confirmed,
    SUM(`Deaths`) AS Total_Deaths,
    (SUM(`Deaths`) / SUM(`Confirmed`)) * 100 AS Death_Percentage
FROM 
    full_grouped
WHERE 
    `Date` = (SELECT MAX(`Date`) FROM full_grouped)
GROUP BY 
    `WHO Region`
HAVING 
    SUM(`Confirmed`) > 0
ORDER BY 
    Death_Percentage DESC;