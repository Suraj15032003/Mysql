Use covid19;

#Countries with the Highest Number of COVID-19 Cases

SELECT 
    `Country/Region`,
    `Confirmed`
FROM 
    country_wise_latest
WHERE 
    `Confirmed` IS NOT NULL  -- Exclude NULL case counts
ORDER BY 
    `Confirmed` DESC
LIMIT 10;