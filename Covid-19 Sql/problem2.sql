Use covid19;
#Comparison Of Recovery And Fatality Rates By Country
SELECT 
    `Country/Region`,
    `Confirmed`,
    `Deaths`,
    `Recovered`,
    (`Deaths` / `Confirmed`) * 100 AS Fatality_Rate,
    (`Recovered` / `Confirmed`) * 100 AS Recovery_Rate
FROM 
    country_wise_latest
WHERE 
    `Confirmed` >= 100  -- Filter for countries with at least 100 confirmed cases
    AND `Confirmed` > 0  -- Avoid division by zero
ORDER BY 
    Recovery_Rate DESC;