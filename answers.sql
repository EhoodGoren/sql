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

-- Exercise 5
SELECT *
 FROM emp
 WHERE first_name LIKE 'J%'
 AND gender = 'F'
 AND age_in_years > 55
 AND e_mail LIKE '%gmail.com'

-- Exercise 6
SELECT first_name, last_name, age_in_years, city, state
 FROM emp
 WHERE first_name LIKE 'J%'
 AND gender = 'M'
 AND age_in_years > 50
 AND state = 'IL'

-- Exercise 7
SELECT first_name, last_name, salary, city, state
 FROM emp
 WHERE fathers_name LIKE '%j%'
 AND age_in_years > 50
 AND state = 'NY'
 AND salary > 100000

-- Exercise 8
SELECT first_name, last_name, gender, age_in_years, salary, city, state
 FROM emp
 WHERE gender = 'M'
 AND last_name LIKE 'B%'
 AND age_in_years BETWEEN 30 AND 50
 AND state = 'NY'
 AND salary > 80000

-- Exercise 9
SELECT first_name, last_name, gender
 FROM emp
 WHERE first_name IN (
  SELECT first_name
  FROM emp
  WHERE gender='M')
 LIMIT 100

--  Exercise 10
SELECT first_name, last_name, gender, salary, age_in_years
 from emp
 WHERE last_name IN (
  SELECT last_name
  FROM emp
  WHERE salary > 70000)

-- Exercise 11
SELECT first_name, last_name, gender, salary, age_in_years
 FROM emp
 WHERE first_name LIKE '_____'
 AND last_name IN (
  SELECT last_name
  FROM emp
  WHERE years_in_company > 5)

-- Exercise 12
SELECT *,
 CASE
  WHEN age_in_years < 30 THEN 'Young'
  WHEN age_in_years BETWEEN 30 AND 50 THEN 'Adult'
  WHEN age_in_years > 50 THEN 'Old'
 END AS Explained_Age
FROM emp
LIMIT 100

-- Exercise 13
SELECT *,
 CASE
  WHEN years_in_company < 5 THEN 'Rookie'
  WHEN years_in_company BETWEEN 5 AND 15 THEN 'Experienced'
  WHEN years_in_company > 15 THEN 'Old'
  WHEN years_in_company > 15 AND name_prefix = 'Dr.' THEN 'Medical expert'
 END AS Explained_company_experience
FROM emp
ORDER BY years_in_company
LIMIT 1000
