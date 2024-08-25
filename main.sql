--all

SELECT*
FROM `bigquery-public-data.chicago_crime.crime`

--count all crimes
SELECT COUNT(*)
FROM `bigquery-public-data.chicago_crime.crime`

--most common crime in 2024
SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024
GROUP BY primary_type
ORDER BY cases DESC
LIMIT 1

--least current crime in 2024

SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024
GROUP BY primary_type
ORDER BY cases ASC
LIMIT 1

--3 most common crimes on the street

SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024
AND location_description= 'STREET'
GROUP BY primary_type
ORDER BY cases DESC
LIMIT 3


--arrests
SELECT primary_type, 
 COUNTIF(arrest = TRUE) AS arrests_made, 
 COUNTIF(arrest = FALSE) AS arrests_not_made
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024
GROUP BY primary_type
ORDER BY arrests_made DESC

--count all crimes in 2024
SELECT COUNT(*)
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year=2024

SELECT COUNT(*)
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year=2023

SELECT COUNT(*)
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year=2022


--most common crime in 2023
SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2023
GROUP BY primary_type
ORDER BY cases DESC
LIMIT 1

--2022
SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2022
GROUP BY primary_type
ORDER BY cases DESC
LIMIT 1