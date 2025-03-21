Use covid19;

#Countries with the Lowest Number of COVID-19 Deaths

SELECT 
    `Country/Region`,
    `Deaths`,
    `Confirmed`
FROM 
    country_wise_latest
WHERE 
    `Confirmed` > 0  -- Ensure the country has reported cases
    AND `Deaths` IS NOT NULL  -- Exclude NULL death counts
ORDER BY 
    `Deaths` ASC
LIMIT 10;
