
My project involves analyzing crime data from the Chicago Crime dataset using SQL queries on Google BigQuery. The queries aim to:

Retrieve all crime data,count the total number of crimes overall and specifically for the years 2022, 2023, and 2024,
identify the most and least common crimes in 2024,find the three most common crimes on the streets in 2024,analyze the number of arrests made for each crime type in 2024,
determine the most common crime types for the years 2022 and 2023.
This project provides insights into crime trends and patterns in Chicago over recent years.
## Queries

### 1. Retrieve All Crime Records
```sql
SELECT *
FROM `bigquery-public-data.chicago_crime.crime`
2. Count All Crimes
sql
SELECT COUNT(*)
FROM `bigquery-public-data.chicago_crime.crime`
3. Most Common Crime in 2024
sql
SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024
GROUP BY primary_type
ORDER BY cases DESC
LIMIT 1
4. Least Common Crime in 2024
sql
SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024
GROUP BY primary_type
ORDER BY cases ASC
LIMIT 1
5. Top 3 Most Common Crimes on the Street in 2024
sql
SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024
AND location_description = 'STREET'
GROUP BY primary_type
ORDER BY cases DESC
LIMIT 3
6. Arrests Data for 2024
sql
SELECT primary_type, 
       COUNTIF(arrest = TRUE) AS arrests_made, 
       COUNTIF(arrest = FALSE) AS arrests_not_made
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024
GROUP BY primary_type
ORDER BY arrests_made DESC
7. Count of All Crimes by Year
sql
-- 2024
SELECT COUNT(*)
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2024

-- 2023
SELECT COUNT(*)
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2023

-- 2022
SELECT COUNT(*)
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2022
8. Most Common Crime in 2023
sql
SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2023
GROUP BY primary_type
ORDER BY cases DESC
LIMIT 1
9. Most Common Crime in 2022
sql
SELECT primary_type, COUNT(*) AS cases
FROM `bigquery-public-data.chicago_crime.crime`
WHERE year = 2022
GROUP BY primary_type
ORDER BY cases DESC
LIMIT 1
Summary
Total Crimes Analyzed: This dataset includes detailed crime records for Chicago from multiple years.
2024 Insights: Queries were used to determine the most and least common crimes, analyze arrest data, and investigate crimes specifically occurring on streets.
Trend Analysis: Comparison of crime counts across the years 2022, 2023, and 2024 to identify trends in crime patterns over time.

