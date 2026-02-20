
# Analysis of UK KS4 Education Data for 2024-2025

![Work in Progress](https://img.shields.io/badge/status-work%20in%20progress-orange)

SQL-based exploratory analysis of UK KS4 attainment data (2024–2025).

## Overview

This project analyses selected variables from the UK KS4 education dataset for 2024-2025. It uses Postgres SQL to look at school establishment types, pupil counts, Attainment 8 averages, and the percentage of pupils achieving grades 5–9 in English and Maths.

The goal is to investigate patterns in attainment across UK school types whilst demonstrating SQL-based data analysis.


**⚠️ Work in progress:** Analysis is ongoing and additional scripts, visualisations, and Python-based analyses may be added in future updates.


## Purpose

The objectives of this project were:
- To select and import data from a downloaded CSV file from the UK government website on education data
- Assess data completeness and handle missing values using Excel 
- Perform exploratory data analysis using SQL 
- Compare school types by number of schools, attainment 8 average score and English-Maths grades percent at 5-9 

This project is part of my development towards entry-level Data Analyst roles within the public sector.


## Dataset

The dataset is derived from UK KS4 national characteristics data for the academic year 2024–2025.

### Source

UK Government Education Statistics - *KS4 Performance: National Characteristics by School Type (2024–2025)*

Link: https://explore-education-statistics.service.gov.uk/data-catalogue/data-set/4322663b-7fba-4345-806f-3821c09955c4 

Accessed 19th February 2026

The full data was downloaded and initially looked at in Microsoft Excel. Here I chose the variables for further analysis using SQL and imported them into PostgreSQL.

The variables selected: 

- establishment_type_group – school category (e.g., state-funded, independent, special schools)
- pupil_count – total number of pupils per school
- attainment8_average – average Attainment 8 score
- engmath_95_percent – percentage achieving grades 5–9 in English and Maths

**Data Cleaning Notes:**

- The original dataset included “z” values indicating suppressed or unavailable data.
- These were converted to NULL values prior to import.
- Post-import validation queries were used to assess row counts and missing values.


## Tools Used

- SQL
- PostgreSQL (relational database management system)
- pgAdmin (database interface)
- Microsoft Excel (initial data inspection and cleaning)

## Project Structure

The repository is organised as follows:
```
ks4-education-analysis/
├── sql/
│ ├── 00_create_table.sql # Creates the table structure for importing the dataset
│ ├── 01_initial_exploration.sql # Exploratory queries to inspect data and check missing values
│ ├── 02_school_type_analysis.sql # Compares school types by number of schools and attainment scores
│ └── 03_subgroup_analysis.sql # Investigates unexpected results and compositional effects
└── README.md # Project overview, dataset description, instructions, and findings
```

**Execution Order:**  
1. `00_create_table.sql` – create the table in PostgreSQL  
2. `01_initial_exploration.sql` – explore and validate the data  
3. `02_school_type_analysis.sql` – compare school types by scores  
4. `03_subgroup_analysis.sql` – deeper analysis of subgroups


## Data Import Instructions

> ⚠️ Note: The raw dataset is **not included** in this repository.  

To reproduce this analysis:

1. **Download the dataset**  
   - Source: [UK Government Education Statistics – KS4 Performance: National Characteristics by School Type (2024–2025)](https://explore-education-statistics.service.gov.uk/data-catalogue/data-set/4322663b-7fba-4345-806f-3821c09955c4)  
   - Save it locally as a CSV file.

2. **Import the data**  
   - Use PostgreSQL (or pgAdmin) to create the table and import the cleaned CSV file.  
   - See `00_create_table.sql` for the table structure and import commands.

3. **Verify the import**  
   - Run a simple count query to ensure all rows were loaded correctly.

Once the data is imported, you can run the analysis scripts in order:
`01_initial_exploration.sql` → `02_school_type_analysis.sql` → `03_subgroup_analysis.sql`


## Key Analytical Steps

The analysis is structured in stages. Each stage can be expanded as more work is added:

### 1. Initial Exploration
- Examined dataset structure and column types
- Checked for missing or suppressed values (`z`)
- Verified numeric columns
- **Next additions:** Explore regional differences or additional metrics

### 2. School Type Comparison
- Counted number of schools by establishment type
- Calculated average Attainment 8 scores
- Calculated percentages of pupils achieving grades 5–9 in English and Maths
- **Next additions:** Include more performance indicators or visualizations

### 3. Subgroup Analysis
- Investigated unexpected lower attainment in independent schools
- Explored compositional effects (e.g., inclusion of special schools)
- **Next additions:** Compare state vs. independent within each subgroup

### 4. Interpretation
- Summarized patterns across school types
- Identified potential reasons behind unexpected results
- **Next additions:** Write more detailed observations or trends


## Key Findings

Initial results suggested that independent schools had lower average Attainment 8 scores than state-funded schools, which was unexpected.

I hypothesised that this may be due to compositional effects, particularly the inclusion of special schools within the independent category. Further subgroup analysis was conducted to explore this.

**More to be added**


## Limitations

**To be added**

## Work In Progress/ Future Work

**To be added**

