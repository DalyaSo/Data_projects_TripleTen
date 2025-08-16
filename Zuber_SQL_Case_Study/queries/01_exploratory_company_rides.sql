-- Number of taxi rides per company for November 15–16, 2017 
-- Results show company_name and trip count (trips_amount), sorted in descending order 

SELECT  
    c.company_name,  
    COUNT(*) AS trips_amount 
FROM cabs c 
JOIN trips t ON t.cab_id = c.cab_id 
WHERE DATE(t.start_ts) BETWEEN '2017-11-15' AND '2017-11-16' 
GROUP BY c.company_name 
ORDER BY trips_amount DESC; 

-- Number of rides for companies containing "Yellow" or "Blue" from Nov 1–7, 2017 

SELECT  
    c.company_name, 
    COUNT(*) AS trips_amount 
FROM cabs c 
JOIN trips t ON t.cab_id = c.cab_id 
WHERE (c.company_name LIKE '%Yellow%' OR c.company_name LIKE '%Blue%') 
  AND DATE(t.start_ts) BETWEEN '2017-11-01' AND '2017-11-07' 
GROUP BY c.company_name; 

-- Ride counts for Flash Cab, Taxi Affiliation Services, and all others (Nov 2017) 

SELECT  
  CASE  
    WHEN c.company_name = 'Flash Cab' THEN 'Flash Cab' 
    WHEN c.company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services' 
    ELSE 'Other' 
  END AS company, 
  COUNT(*) AS trips_amount 
FROM cabs c 
JOIN trips t ON t.cab_id = c.cab_id 
WHERE DATE(t.start_ts) BETWEEN '2017-11-01' AND '2017-11-30' 
GROUP BY company 
ORDER BY trips_amount DESC; 
