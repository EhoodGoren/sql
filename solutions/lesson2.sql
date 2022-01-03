-- Exercise 1
SELECT country, COUNT(event) as cnt
 FROM summer
 GROUP BY country
 HAVING cnt > 100
 ORDER BY cnt DESC

-- Exercise 2
SELECT medal, GROUP_CONCAT(athlete), COUNT(athlete)
 FROM summer
 WHERE country='CAN'
 GROUP BY medal
