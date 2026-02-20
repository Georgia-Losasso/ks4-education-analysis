-- ======================================================
-- KS4 Education Data Analysis
-- File: 03_subgroup_analysis.sql
-- Purpose: Investigating unexpected results
-- Author: Georgia Losasso
-- Date Uploaded: 20th February 2026
-- ======================================================

-- =======
-- Three School Types Compared for Attainment 8 Score:
-- =======

/*
From the data, there appear to be three main school types: state-funded, independent schools and special schools.
I would like to compare these three school types for average attainment 8 score.
*/

SELECT establishment_type_group,
       AVG(attainment8_average) AS avg_a8,
	   AVG(engmath_95_percent) AS avg_95
      
FROM ks4_national_characteristics
WHERE establishment_type_group IN (
    'All state-funded',
    'All independent schools',
    'All special schools' -- these could also be either state-funded or independent
)
GROUP BY establishment_type_group
ORDER BY avg_a8 DESC; --highest to lowest


/* 
It was unexpected that independent schools had a lower average Attainment 8 score. 
This may reflect the inclusion of special schools within the independent category, which could lower the overall average.
*/

