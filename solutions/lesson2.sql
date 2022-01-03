SELECT country, COUNT(event) as cnt
 FROM summer
 GROUP BY country
 HAVING cnt > 100
 ORDER BY cnt DESC
