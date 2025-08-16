--   Retrieve trips that START in the Loop (id = 50) on a Saturday and END at O'Hare (id = 63). Join weather to label conditions using the same method as the previous task (rain/storm = 'Bad', else 'Good').
--   Ignore rides without weather data, sort by trip_id

WITH weather_labeled AS ( 
    SELECT  
        ts, 
        CASE  
            WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad' 
            ELSE 'Good' 
        END AS weather_conditions 
    FROM weather_records 
) 

SELECT  
    t.start_ts,
    wl.weather_conditions,
    t.duration_seconds
FROM trips t
JOIN weather_labeled wl ON wl.ts = t.start_ts
WHERE t.pickup_location_id  = 50
  AND t.dropoff_location_id = 63
  AND EXTRACT(DOW FROM t.start_ts) = 6
ORDER BY t.trip_id;
