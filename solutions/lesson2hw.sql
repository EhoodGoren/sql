-- Exercise 1
SELECT duration
 FROM movies
 WHERE title = 'Outback'
-- Answer: 86

-- Exercise 2
SELECT title
 FROM movies
 WHERE year = '2017' AND director = 'Peter Sullivan'
-- Answer: The Sandman

-- Exercise 3
SELECT reviews_from_users
 FROM movies
 WHERE imdb_title_id = 'tt7336182'
-- Answer: 47

-- Exercise 4
SELECT votes_1
 FROM movies m JOIN ratings r ON (m.imdb_title_id = r.imdb_title_id)
 WHERE title = 'Joker'
-- Answer: 10650

-- Exercise 5
SELECT COUNT(DISTINCT production_company)
 FROM movies
-- Answer: 2321

-- Exercise 6
SELECT AVG(duration)
 FROM movies
 WHERE (
  actors LIKE '%Dharmajan Bolgatty%'
  OR
  actors LIKE '%Sugith Varughes%'
 ) AND year != '2018'
-- Answer: 136.0769

-- Exercise 7
SELECT title, genre, (worlwide_gross_income_in_USD - budget) AS profit
 FROM movies
 WHERE production_company = 'DreamWorks'
 ORDER BY profit DESC

-- Exercise 8
SELECT title, year, age_18_to_30_avg_vote as aav
 FROM movies m LEFT JOIN ratings r ON (m.imdb_title_id = r.imdb_title_id)
 WHERE actors LIKE '%Lin Shaye%'
 ORDER BY aav

-- Exercise 9
SELECT AVG(age_0_to_18_avg_vote) as avg ,'avg0_18' as age_group FROM ratings
UNION
SELECT AVG(age_18_to_30_avg_vote) as avg ,'avg18_30' as age_group FROM ratings
UNION 
SELECT AVG(age_30_to_45_avg_vote) as avg ,'avg30_45' as age_group FROM ratings
UNION
SELECT AVG(age_45_plus_avg_vote) as avg ,'avg45_plus' as age_group FROM ratings
ORDER BY avg

-- Exercise 10
SELECT genre, AVG(duration) as avg_duration
 FROM movies
 WHERE year > 2016
 GROUP BY genre
 ORDER BY avg_duration DESC
LIMIT 3

-- Exercise 11
SELECT year, avg(average_vote) as year_avg
 FROM movies m JOIN ratings r ON (m.imdb_title_id = r.imdb_title_id)
 WHERE language = 'English'
 GROUP BY year
 ORDER BY year_avg DESC


-- Exercise 12
SELECT title, females_vote_count, males_vote_count, (females_avg_vote - males_avg_vote) AS gender_avg_diff
 FROM movies m JOIN ratings r ON (m.imdb_title_id = r.imdb_title_id)
 ORDER BY gender_avg_diff DESC
limit 10

-- Exercise 13
WITH director_avg AS (
  SELECT director, AVG(duration) AS avg_duration
   FROM movies
   WHERE director IS NOT NULL
   GROUP BY director
 ),
 company_first_movie AS (
  SELECT production_company, MIN(year) AS first_year
   FROM movies
   WHERE production_company IS NOT NULL
   GROUP BY production_company
)
SELECT title, year,  m.director, d_a.avg_duration, m.production_company, c_f_m.first_year
 FROM movies m
  LEFT JOIN director_avg d_a ON (m.director = d_a.director)
  LEFT JOIN company_first_movie c_f_m ON (m.production_company = c_f_m.production_company)
 WHERE language = 'English'

-- Olympics
-- Exercise 1
WITH athlete_first_medal AS (
 SELECT athlete, MIN(year) AS first_medal
  FROM summer
  GROUP BY athlete
)
SELECT *
 FROM summer s LEFT JOIN athlete_first_medal a_f_m ON (s.athlete = a_f_m.athlete)

-- Exercise 2
WITH winter_summer AS (
 SELECT *
  FROM summer
 UNION
 SELECT *
  FROM winter
)
SELECT athlete, GROUP_CONCAT(event)
 FROM winter_summer
 GROUP BY athlete
 HAVING COUNT(DISTINCT event) > 1


-- Exercise 3
WITH winter_summer AS (
 SELECT *
  FROM summer
 UNION
 SELECT *
  FROM winter
)
SELECT athlete, GROUP_CONCAT(DISTINCT d.country) AS countries
 FROM winter_summer w_s JOIN dictionary d ON (w_s.country = d.code)
 GROUP BY athlete
 HAVING COUNT(DISTINCT w_s.country) > 1

-- Exercise 4
WITH winter_summer AS (
 SELECT *
  FROM summer
 UNION
 SELECT *
  FROM winter
)
SELECT d.country, d.population, COUNT(medal) AS medal_count, d.population / COUNT(medal) AS ratio
 FROM winter_summer w_s JOIN dictionary d ON (w_s.country = d.code)
 GROUP BY d.country, d.population
 ORDER BY ratio DESC
 LIMIT 15

-- Exercise 5
WITH country_pts AS (
 SELECT country, CASE WHEN medal = 'Gold' THEN 100
   WHEN medal = 'Silver' THEN 50
   WHEN medal = 'Bronze' THEN 30
   ELSE 0
  END as points
  FROM summer
  WHERE city = 'Barcelona'
)
SELECT country, SUM(points) * count(country) AS score
 FROM country_pts
 GROUP BY country
 ORDER BY score DESC
