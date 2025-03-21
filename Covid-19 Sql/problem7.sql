Use covid19;

#Continent That Has The Lowest Cases

SELECT 
    `Continent`,
    SUM(`TotalCases`) AS Total_Cases
FROM 
    worldmeter_data
WHERE 
    `TotalCases` IS NOT NULL  -- Exclude NULL values
GROUP BY 
    `Continent`
HAVING 
    SUM(`TotalCases`) > 0  -- Exclude continents with 0 cases
ORDER BY 
    Total_Cases ASC
LIMIT 1;