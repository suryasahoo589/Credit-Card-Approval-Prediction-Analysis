-- 1.	Group the customers based on their income type and find the average of their annual income.

SELECT Employment_status, AVG(income) as Average_income
FROM Credit_data
GROUP BY Employment_status;

-- 2.	Find the female owners of cars and property.

SELECT *
FROM Credit_data
WHERE Gender = 'F' AND has_a_car = 'Y' AND has_a_property = 'Y';


-- 3.	Find the male customers who are staying with their families.


SELECT *
FROM Credit_data
WHERE Gender = 'M' AND Family_Members > 1;


-- 4.	Please list the top five people having the highest income.

SELECT *
FROM Credit_data
ORDER BY income DESC
LIMIT 5;



-- 5.	How many married people are having bad credit?


SELECT COUNT(*)
FROM Credit_data
WHERE Marital_status = 'Married' AND Label = 1;



-- 6.	What is the highest education level and what is the total count?

SELECT Education_level, COUNT(*) as Total_Count
FROM Credit_data
GROUP BY Education_level
ORDER BY Total_Count DESC
LIMIT 1;

-- 7.	Between married males and females, who is having more bad credit? 


SELECT Gender, COUNT(*) as Count
FROM Credit_data
WHERE Marital_status = 'Married' AND Label = 1
GROUP BY Gender;





































































