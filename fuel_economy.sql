-- How many records are in the vehicles table?

SELECT COUNT(*) 
FROM vehicles;

-- What is the count of vehicles in the 
-- vehicles table from years 2010 to 2015, inclusive?

SELECT COUNT(*)
FROM vehicles
WHERE year BETWEEN 2010 AND 2015;

-- What is the count of all records between 1987 and 2005, 
-- except in 1990 and 2000?

SELECT COUNT(*) 
FROM vehicles 
WHERE year BETWEEN 1987 AND 2005
AND year NOT IN (1990,2000);


-- Create a query that returns the year, make, model and 
-- a field called average_mpg that calculates the average highway/city 
-- fuel consumption (with the fields in the same order only)

SELECT year, make, model, (hwy + cty) / 2 AS average_mpg
FROM vehicles;

-- 12. Create a query that counts the number of vehicles 
-- that are either Fords or Chevrolets and either 'Compact Cars' 
-- or 'Two Seaters.' Provide the query and the answer.

SELECT COUNT(*) 
FROM vehicles
WHERE
    make IN ('Ford', 'Chevrolet')
    AND class in ('Compact Cars', 'Two Seaters');


-- Write a query that returns all the records of vehicles 
-- since the year 2000 whose model name starts with a capital X. 
-- Sort the list A through Z by make.
-- If you use a lowercase “x” instead you will get a different result.

SELECT *
FROM vehicles
WHERE model LIKE 'X%'
AND year >=2000
ORDER BY make;

-- Create a query that returns all records whose model name 
-- has a (capital) X in its third position.
-- (hint: make sure your wildcard operator 
-- accommodates for any characters after the “X”!) . 

SELECT *
FROM vehicles
WHERE model LIKE '__X%';
