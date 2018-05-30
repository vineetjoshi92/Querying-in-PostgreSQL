-- Write a query that displays only the state with the largest amount of fruit supply.
SELECT state
FROM fruit_imports
GROUP BY state
ORDER BY SUM(supply) DESC
LIMIT 1;

-- Write a query that returns the most expensive cost_per_unit of every season. 
-- The query should display 2 columns, the season and the cost_per_unit
SELECT season, MAX(cost_per_unit) AS max_cost_per_unit
FROM fruit_imports
GROUP BY season;

-- Write a query that returns the state that has more than 1 import of the same fruit.
SELECT state, name ,COUNT(name)
FROM fruit_imports
GROUP BY state, name
HAVING COUNT(name)>1;

-- Write a query that returns the seasons that produce either 3 fruits or 4 fruits.
SELECT season, COUNT(name) AS fruits_produced
FROM fruit_imports 
GROUP BY season
HAVING COUNT(name) IN (3,4);

-- Write a query that takes into consideration the  supply and cost_per_unit columns for determining the
-- total cost and returns the most expensive state with the total cost
SELECT state, SUM(supply*cost_per_unit) AS total_cost
FROM fruit_imports
GROUP BY state
ORDER BY SUM(supply*cost_per_unit) DESC
LIMIT 1;

-- 
CREATE table fruits (fruit_name varchar(10));
INSERT INTO fruits VALUES ('Orange');
INSERT INTO fruits VALUES ('Apple');
INSERT INTO fruits VALUES (NULL);
INSERT INTO fruits VALUES (NULL);

-- Write a query that returns the count of 4. You'll need to count on the column fruit_name and not use COUNT(*)
SELECT COUNT(COALESCE(fruit_name, 'No fruit name')) AS fruits_produced
FROM fruits;
