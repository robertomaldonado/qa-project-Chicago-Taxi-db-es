SELECT * FROM (
  SELECT ts, 
  CASE 
    WHEN description LIKE '%rain%' THEN 'Bad' 
    WHEN description LIKE '%storm%' THEN 'Bad' 
    ELSE 'Good' END 
    AS weather_conditions FROM weather_records
  ) AS subquery 
  WHERE subquery.ts BETWEEN '11-05-2017 00:00:00' AND '11-06-2017 00:00:00';
