-- ======================================================
-- KS4 Education Data Analysis
-- File: 00_creat_table.sql
-- Purpose: Creating table and data import
-- Author: Georgia Losasso
-- Date Uploaded: 20th February 2026
-- ======================================================

-- ==========================
-- Table Creation
-- ==========================

-- Ensures the script can be rerun without table creation errors:
DROP TABLE IF EXISTS ks4_national_characteristics; 

CREATE TABLE ks4_national_characteristics (
    establishment_type_group TEXT,
    pupil_count INTEGER,
    attainment8_average NUMERIC,
    engmath_95_percent NUMERIC
);

-- =======
-- Importing Selected Data Columns from CSV File:
-- =======

COPY ks4_national_characteristics(
    establishment_type_group, --what type of school (academies, state-run, special needs etc)
    pupil_count, --number of pupils at said school
    attainment8_average, -- average attainment 8 score for all pupils across the school
    engmath_95_percent -- percentage of students who attained a grade between 5 and 9 in english and maths
)

-- NOTE: Update file path as appropriate for your local environment.
FROM '/path/to/ks4_202425_national_characteristics_clean.csv'
DELIMITER ','
CSV HEADER;

-- Verify successful import
SELECT COUNT(*) AS total_rows
FROM ks4_national_characteristics;

-- ==========================
-- Data Cleaning Notes
-- ==========================
-- The original dataset contained 'z' values indicating suppressed or unavailable data.
-- These values were converted to NULL in Excel prior to import.
-- This ensures numeric columns are correctly interpreted and allows accurate aggregation.


