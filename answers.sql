-- Exercise 1
SELECT salary
 FROM emp
 WHERE emp_id = 273407
-- answer: 110241

-- Exercise 2
SELECT first_name
 FROM emp
 WHERE city='Palo Alto'
  AND gender='F'
-- answer: Dawne

-- Exercise 3
SELECT *
 FROM emp
 ORDER BY year_of_joining, month_of_joining, day_of_joining
 LIMIT 10
--  asnwer: Otha Orrell

-- Exercise 4
SELECT first_name, last_name, age_in_years, city, state
 FROM emp
 WHERE first_name = 'Jack'
--  answer: 4
