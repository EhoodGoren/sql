CREATE VIEW Safety_rank AS (
 WITH future_casualties AS (
  SELECT cname, SUM(casualties) AS total_casualties
   FROM Prediction
   GROUP BY cname
 )
 SELECT c.cname, (c.population / f_c.total_casualties) AS safety_rank
  FROM City c JOIN future_casualties f_c ON (c.cname = f_c.cname)
  ORDER BY safety_rank
)