Use covid19;

#Recovery Rate by Continent
SELECT 
    `WHO Region` AS Continent,
    SUM(`Confirmed`) AS Total_Confirmed,
    SUM(`Recovered`) AS Total_Recovered,
    (SUM(`Recovered`) / SUM(`Confirmed`)) * 100 AS Recovery_Rate
FROM 
    full_grouped
GROUP BY 
    `WHO Region`
HAVING 
    SUM(`Confirmed`) > 0  -- Avoid division by zero
ORDER BY 
    Recovery_Rate DESC;