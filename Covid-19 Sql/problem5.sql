Use covid19;

#Global Recovery Rate
SELECT 
    `WHO Region`,
    SUM(`TotalCases`) AS Total_Confirmed,
    SUM(`TotalRecovered`) AS Total_Recovered,
    (SUM(`TotalRecovered`) / SUM(`TotalCases`)) * 100 AS Recovery_Rate
FROM 
    worldmeter_data
GROUP BY 
    `WHO Region`
HAVING 
    Total_Confirmed > 0;