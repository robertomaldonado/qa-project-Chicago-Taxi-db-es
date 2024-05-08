SELECT cabs.company_name, 
  COUNT(trips.trip_id) AS trips_amount 
FROM trips 
  INNER JOIN cabs ON cabs.cab_id = trips.cab_id 
  WHERE (trips.start_ts :: date) BETWEEN '2017-11-15 00:00:00' AND '2017-11-16 23:59:59' 
GROUP BY cabs.company_name 
ORDER BY COUNT(trips.trip_id) DESC;