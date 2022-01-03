-- Exercise 1
SELECT country, COUNT(DISTINCT event) as cnt
 FROM summer
 GROUP BY country
 HAVING cnt > 100
 ORDER BY cnt DESC

-- Exercise 2
SELECT athlete
 FROM summer
 WHERE country = 'CAN'
 GROUP BY athlete
 HAVING COUNT(DISTINCT medal) = 3
