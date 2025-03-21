Use covid19;

#COVID-19 Trends By Continent
SELECT 
    `Continent`,
    SUM(`TotalCases`) AS Total_Confirmed,
    SUM(`TotalDeaths`) AS Total_Deaths,
    SUM(`TotalRecovered`) AS Total_Recovered,
    (SUM(`TotalDeaths`) / SUM(`TotalCases`)) * 100 AS Fatality_Rate,
    (SUM(`TotalRecovered`) / SUM(`TotalCases`)) * 100 AS Recovery_Rate
FROM 
    worldmeter_data
GROUP BY 
    `Continent`
ORDER BY 
    Total_Confirmed DESC;