-- Write a query against the professors table that can output the following in the result: "Chong works in the Science department"
SELECT last_name || ' works in the ' || department || ' department'
FROM professors;

SELECT 'It is '||(salary > 95000) || ' that professor' || last_name || ' is higly paid.'
FROM professors;

-- Write a query that returns all of the records and columns from the professors table 
-- but shortens the department names to only the first three characters in upper case
SELECT last_name, UPPER(SUBSTRING(department, 1, 3)), salary, hire_date
FROM professors;

--Write a query that returns the highest and lowest salary from the professors table excluding the professor named 'Wilson'
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM professors
WHERE last_name != 'Wilson';

-- Write a query that will display the hire date of the professor that has been teaching the longest
SELECT MIN(hire_date)
FROM professors;