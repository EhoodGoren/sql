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
