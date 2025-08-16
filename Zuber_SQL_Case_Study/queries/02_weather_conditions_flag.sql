-- Get neighborhood IDs for O'Hare and Loop 

SELECT name, neighborhood_id 
FROM neighborhoods 
WHERE name IN ('O''Hare', 'Loop'); 

-- Flag each hourly weather record as 'Good' or 'Bad' based on description 

SELECT  
    ts,  
    CASE  
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad' 
        ELSE 'Good' 
    END AS weather_conditions 
FROM weather_records 
ORDER BY ts; 
