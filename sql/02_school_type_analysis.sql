-- ======================================================
-- KS4 Education Data Analysis
-- File: 02_school_type_analysis.sql
-- Purpose: Main aggregation analysis
-- Author: Georgia Losasso
-- Date Uploaded: 20th February 2026
-- ======================================================

-- =======
--Comparing number of different school types:--
-- =======

SELECT establishment_type_group, --focusing on this column
COUNT(*) AS num_schools -- creating a header for these values
FROM ks4_national_characteristics -- using imported csv data
GROUP BY establishment_type_group -- separate by establishment type
ORDER BY num_schools DESC; -- highest to lowest


-- =======
-- Average Attainment 8 Score by School Type
-- =======

SELECT establishment_type_group, --focusing on this column
AVG(attainment8_average) AS avg_a8 --and creating average 
FROM ks4_national_characteristics -- data set
GROUP BY establishment_type_group -- average is for each school type group
ORDER BY avg_a8 DESC; -- highest to lowest