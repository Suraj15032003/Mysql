Use covid19;

#2. To find out the infected population percentage locally and globally
    
SELECT 
    w.`Continent`,
    SUM(c.`Confirmed`) AS Total_Confirmed,
    SUM(w.`Population`) AS Total_Population,
    (SUM(c.`Confirmed`) / SUM(w.`Population`)) * 100 AS Infected_Percentage
FROM 
    country_wise_latest c
JOIN 
    worldmeter_data w 
    ON c.`Country/Region` = w.`Country/Region`
WHERE 
    w.`Population` > 0
    AND c.`Confirmed` IS NOT NULL
GROUP BY 
    w.`Continent`
HAVING 
    SUM(w.`Population`) > 0
ORDER BY 
    Infected_Percentage DESC;
