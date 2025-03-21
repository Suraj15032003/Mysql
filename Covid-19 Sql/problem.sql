Use covid19;

#Top 10 Countries By COVID-19 Recovery Rates
SELECT 
    `Country/Region`,
    `Confirmed`,
    `Recovered`,
    (`Recovered` / `Confirmed`) * 100 AS Recovery_Rate
FROM 
    country_wise_latest
WHERE 
    `Confirmed` >= 100  -- Filter for countries with at least 100 confirmed cases
    AND `Confirmed` > 0  -- Avoid division by zero
ORDER BY 
    Recovery_Rate DESC
LIMIT 10;